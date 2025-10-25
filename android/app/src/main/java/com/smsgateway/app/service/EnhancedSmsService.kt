package com.smsgateway.app.service

import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Build
import android.telephony.SmsManager
import android.telephony.SubscriptionManager
import android.util.Log
import com.smsgateway.app.data.api.ApiClient
import com.smsgateway.app.data.model.Message
import com.smsgateway.app.data.model.MessageStatusUpdate
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

class EnhancedSmsService(private val context: Context) {
    companion object {
        private const val TAG = "EnhancedSmsService"
        private const val SMS_SENT = "SMS_SENT"
        private const val SMS_DELIVERED = "SMS_DELIVERED"
        private const val FAILURE_DETECTION_DELAY = 45000L // 45 secondes - délai plus long pour détecter les vrais échecs
    }
    
    // Tracking des SMS multipart : messageId -> (parties envoyées avec succès, total parties)
    private val multipartTracker = mutableMapOf<String, Pair<Int, Int>>()

    private val sentReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val messageId = intent?.getStringExtra("messageId") ?: return
            val partIndex = intent?.getIntExtra("partIndex", -1) ?: -1
            
            when (resultCode) {
                android.app.Activity.RESULT_OK -> {
                    if (partIndex >= 0) {
                        // SMS multipart - une partie envoyée avec succès
                        Log.d(TAG, "📋 SMS multipart partie $partIndex envoyée: $messageId")
                        handleMultipartSuccess(messageId, partIndex)
                    } else {
                        // SMS simple - envoyé avec succès
                        Log.d(TAG, "✅ SMS simple envoyé: $messageId")
                        // Attendre avant de confirmer le succès pour détecter les échecs tardifs
                        CoroutineScope(Dispatchers.IO).launch {
                            delay(FAILURE_DETECTION_DELAY)
                            reportSuccess(messageId, "sent")
                        }
                    }
                }
                SmsManager.RESULT_ERROR_GENERIC_FAILURE -> {
                    Log.e(TAG, "❌ Échec générique SMS: $messageId (partie $partIndex)")
                    reportFailure(messageId, "GENERIC_FAILURE")
                    cleanupMultipartTracker(messageId)
                }
                SmsManager.RESULT_ERROR_NO_SERVICE -> {
                    Log.e(TAG, "📶 Pas de service SMS: $messageId (partie $partIndex)")
                    reportFailure(messageId, "NO_SERVICE")
                    cleanupMultipartTracker(messageId)
                }
                SmsManager.RESULT_ERROR_NULL_PDU -> {
                    Log.e(TAG, "📱 PDU null SMS: $messageId (partie $partIndex)")
                    reportFailure(messageId, "NULL_PDU")
                    cleanupMultipartTracker(messageId)
                }
                SmsManager.RESULT_ERROR_RADIO_OFF -> {
                    Log.e(TAG, "📡 Radio éteinte SMS: $messageId (partie $partIndex)")
                    reportFailure(messageId, "RADIO_OFF")
                    cleanupMultipartTracker(messageId)
                }
                else -> {
                    Log.e(TAG, "❓ Échec SMS inconnu ($resultCode): $messageId (partie $partIndex)")
                    reportFailure(messageId, "UNKNOWN_ERROR_$resultCode")
                    cleanupMultipartTracker(messageId)
                }
            }
        }
    }

    private val deliveredReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val messageId = intent?.getStringExtra("messageId") ?: return
            
            when (resultCode) {
                android.app.Activity.RESULT_OK -> {
                    Log.d(TAG, "SMS livré avec succès: $messageId")
                    reportSuccess(messageId, "delivered")
                }
                else -> {
                    Log.w(TAG, "Échec de livraison SMS ($resultCode): $messageId")
                    // Ne pas marquer comme échec car le SMS a été envoyé
                }
            }
        }
    }

    fun initialize() {
        Log.d(TAG, "Initialisation du service SMS amélioré")
        
        val sentFilter = IntentFilter(SMS_SENT)
        val deliveredFilter = IntentFilter(SMS_DELIVERED)
        
        context.registerReceiver(sentReceiver, sentFilter)
        context.registerReceiver(deliveredReceiver, deliveredFilter)
    }

    fun cleanup() {
        Log.d(TAG, "Nettoyage du service SMS")
        try {
            context.unregisterReceiver(sentReceiver)
            context.unregisterReceiver(deliveredReceiver)
        } catch (e: Exception) {
            Log.w(TAG, "Erreur lors du nettoyage: ${e.message}")
        }
    }

    fun sendSms(message: Message) {
        try {
            Log.d(TAG, "📱 Envoi SMS: ${message.content.length} caractères vers ${message.recipient}")
            
            val smsManager = getSmsManagerForMessage(message)
            
            // Diviser le message en parties si nécessaire (gestion des messages longs + emojis)
            val messageParts = smsManager.divideMessage(message.content)
            Log.d(TAG, "📋 Message divisé en ${messageParts.size} partie(s)")
            
            if (messageParts.size == 1) {
                // SMS simple - une seule partie
                val sentIntent = PendingIntent.getBroadcast(
                    context, 
                    message.id.hashCode(), 
                    Intent(SMS_SENT).putExtra("messageId", message.id), 
                    PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
                )
                
                val deliveredIntent = PendingIntent.getBroadcast(
                    context, 
                    message.id.hashCode() + 1, 
                    Intent(SMS_DELIVERED).putExtra("messageId", message.id), 
                    PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
                )
                
                smsManager.sendTextMessage(
                    message.recipient,
                    null,
                    message.content,
                    sentIntent,
                    deliveredIntent
                )
                
                Log.d(TAG, "✅ SMS simple envoyé: ${message.id}")
                
            } else {
                // SMS multipart - plusieurs parties (messages longs / emojis)
                
                // Initialiser le tracker pour ce message multipart
                multipartTracker[message.id] = Pair(0, messageParts.size)
                Log.d(TAG, "📊 Tracker initialisé pour ${message.id}: 0/${messageParts.size} parties")
                
                val sentIntents = ArrayList<PendingIntent>()
                val deliveredIntents = ArrayList<PendingIntent>()
                
                // Créer des PendingIntent pour chaque partie
                for (i in messageParts.indices) {
                    val sentIntent = PendingIntent.getBroadcast(
                        context,
                        message.id.hashCode() + i,
                        Intent(SMS_SENT).putExtra("messageId", message.id).putExtra("partIndex", i),
                        PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
                    )
                    
                    val deliveredIntent = PendingIntent.getBroadcast(
                        context,
                        message.id.hashCode() + i + 1000,
                        Intent(SMS_DELIVERED).putExtra("messageId", message.id).putExtra("partIndex", i),
                        PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
                    )
                    
                    sentIntents.add(sentIntent)
                    deliveredIntents.add(deliveredIntent)
                }
                
                // Envoyer le SMS multipart
                smsManager.sendMultipartTextMessage(
                    message.recipient,
                    null,
                    messageParts,
                    sentIntents,
                    deliveredIntents
                )
                
                Log.d(TAG, "✅ SMS multipart envoyé: ${message.id} (${messageParts.size} parties)")
            }
            
        } catch (e: Exception) {
            Log.e(TAG, "❌ Erreur lors de l'envoi SMS: ${e.message}")
            reportFailure(message.id, "SEND_EXCEPTION: ${e.message}")
        }
    }

    /**
     * Gère le succès d'envoi d'une partie d'un SMS multipart
     */
    private fun handleMultipartSuccess(messageId: String, partIndex: Int) {
        val tracker = multipartTracker[messageId]
        if (tracker != null) {
            val (sentParts, totalParts) = tracker
            val newSentParts = sentParts + 1
            multipartTracker[messageId] = Pair(newSentParts, totalParts)
            
            Log.d(TAG, "📊 SMS multipart ${messageId}: ${newSentParts}/${totalParts} parties envoyées")
            
            if (newSentParts >= totalParts) {
                // Toutes les parties envoyées avec succès !
                Log.d(TAG, "🎉 SMS multipart complet envoyé: $messageId")
                multipartTracker.remove(messageId)
                
                // Attendre avant de confirmer le succès pour détecter les échecs tardifs
                CoroutineScope(Dispatchers.IO).launch {
                    delay(FAILURE_DETECTION_DELAY)
                    reportSuccess(messageId, "sent")
                }
            }
        } else {
            Log.w(TAG, "⚠️ Tracker non trouvé pour SMS multipart: $messageId")
        }
    }
    
    /**
     * Nettoie le tracker multipart en cas d'échec
     */
    private fun cleanupMultipartTracker(messageId: String) {
        if (multipartTracker.remove(messageId) != null) {
            Log.d(TAG, "🧹 Tracker nettoyé pour SMS multipart échoué: $messageId")
        }
    }

    private fun reportSuccess(messageId: String, status: String) {
        CoroutineScope(Dispatchers.IO).launch {
            try {
                val statusUpdate = MessageStatusUpdate(
                    status = status,
                    sentAt = if (status == "sent") System.currentTimeMillis().toString() else null,
                    deliveredAt = if (status == "delivered") System.currentTimeMillis().toString() else null
                )
                
                val response = ApiClient.getApiService()?.updateMessageStatus(messageId, statusUpdate)
                if (response?.isSuccessful == true) {
                    Log.d(TAG, "Statut mis à jour avec succès: $status pour $messageId")
                } else {
                    Log.e(TAG, "Erreur mise à jour statut: ${response?.code()}")
                }
            } catch (e: Exception) {
                Log.e(TAG, "Erreur lors de la mise à jour du statut: ${e.message}")
            }
        }
    }

    private fun reportFailure(messageId: String, reason: String) {
        CoroutineScope(Dispatchers.IO).launch {
            try {
                val statusUpdate = MessageStatusUpdate(
                    status = "failed",
                    errorMessage = "Échec envoi SMS: $reason"
                )
                
                val response = ApiClient.getApiService()?.updateMessageStatus(messageId, statusUpdate)
                if (response?.isSuccessful == true) {
                    Log.d(TAG, "Échec reporté avec succès: $reason pour $messageId")
                } else {
                    Log.e(TAG, "Erreur rapport échec: ${response?.code()}")
                }
            } catch (e: Exception) {
                Log.e(TAG, "Erreur lors du rapport d'échec: ${e.message}")
            }
        }
    }

    fun cleanupStaleMessages() {
        // Méthode pour nettoyer les messages en attente (placeholder)
        Log.d(TAG, "🧹 Nettoyage des messages en attente")
    }

    fun getPendingMessagesCount(): Int {
        // Retourner le nombre de messages en attente (placeholder)
        return 0
    }

    private fun getSmsManagerForMessage(message: Message): SmsManager {
        Log.d(TAG, "🔍 Sélection SIM - simId: ${message.simId}, slotIndex: ${message.slotIndex}, subscriptionId: ${message.subscriptionId}")

        return when {
            // 1. Si subscriptionId est fourni ET valide (> 0), l'utiliser en priorité
            message.subscriptionId != null && message.subscriptionId > 0 && Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP_MR1 -> {
                try {
                    val smsManager = SmsManager.getSmsManagerForSubscriptionId(message.subscriptionId)
                    Log.d(TAG, "🎯 Utilisation SIM subscription ID: ${message.subscriptionId}")
                    smsManager
                } catch (e: Exception) {
                    Log.w(TAG, "⚠️ Erreur avec subscription ID ${message.subscriptionId}: ${e.message}")
                    fallbackToSlotOrDefault(message)
                }
            }

            // 2. Si slotIndex est fourni ET valide (> 0), essayer de l'utiliser  
            message.slotIndex != null && message.slotIndex > 0 && Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP_MR1 -> {
                try {
                    val subscriptionId = getSubscriptionIdForSlot(message.slotIndex)
                    if (subscriptionId != null && subscriptionId > 0) {
                        val smsManager = SmsManager.getSmsManagerForSubscriptionId(subscriptionId)
                        Log.d(TAG, "🎯 Utilisation SIM slot ${message.slotIndex} -> subscription ID: $subscriptionId")
                        smsManager
                    } else {
                        Log.w(TAG, "⚠️ Aucune subscription active pour slot ${message.slotIndex}")
                        fallbackToAvailableSlot(message)
                    }
                } catch (e: Exception) {
                    Log.w(TAG, "⚠️ Erreur avec slot ${message.slotIndex}: ${e.message}")
                    fallbackToAvailableSlot(message)
                }
            }

            // 3. Si simId est fourni, essayer de deviner le slot à partir du simId
            message.simId != null -> {
                Log.d(TAG, "🔄 Tentative de déduction du slot à partir du simId: ${message.simId}")
                val deducedSlot = deduceSlotFromSimId(message.simId)
                if (deducedSlot != null) {
                    try {
                        val subscriptionId = getSubscriptionIdForSlot(deducedSlot)
                        if (subscriptionId != null && subscriptionId > 0) {
                            val smsManager = SmsManager.getSmsManagerForSubscriptionId(subscriptionId)
                            Log.d(TAG, "🎯 SIM déduite: slot $deducedSlot -> subscription ID: $subscriptionId")
                            smsManager
                        } else {
                            fallbackToAvailableSlot(message)
                        }
                    } catch (e: Exception) {
                        Log.w(TAG, "⚠️ Erreur avec slot déduit $deducedSlot: ${e.message}")
                        fallbackToAvailableSlot(message)
                    }
                } else {
                    fallbackToAvailableSlot(message)
                }
            }

            // 4. Par défaut, essayer de trouver une SIM active
            else -> {
                Log.d(TAG, "📱 Aucune info SIM spécifique, recherche SIM active")
                fallbackToAvailableSlot(message)
            }
        }
    }

    private fun getSubscriptionIdForSlot(slotIndex: Int): Int? {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP_MR1) {
            try {
                val subscriptionManager = context.getSystemService(Context.TELEPHONY_SUBSCRIPTION_SERVICE) as? SubscriptionManager
                val activeSubscriptions = subscriptionManager?.activeSubscriptionInfoList
                return activeSubscriptions?.find { it.simSlotIndex == slotIndex }?.subscriptionId
            } catch (e: Exception) {
                Log.w(TAG, "Erreur récupération subscription ID pour slot $slotIndex: ${e.message}")
            }
        }
        return null
    }

    private fun fallbackToSlotOrDefault(message: Message): SmsManager {
        return if (message.slotIndex != null && message.slotIndex > 0) {
            fallbackToAvailableSlot(message)
        } else {
            Log.d(TAG, "📱 Fallback vers SIM par défaut")
            SmsManager.getDefault()
        }
    }

    private fun fallbackToAvailableSlot(message: Message): SmsManager {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP_MR1) {
            try {
                val subscriptionManager = context.getSystemService(Context.TELEPHONY_SUBSCRIPTION_SERVICE) as? SubscriptionManager
                val activeSubscriptions = subscriptionManager?.activeSubscriptionInfoList
                
                if (!activeSubscriptions.isNullOrEmpty()) {
                    val firstActive = activeSubscriptions[0]
                    Log.d(TAG, "🎯 Utilisation première SIM active: subscription ID ${firstActive.subscriptionId}")
                    return SmsManager.getSmsManagerForSubscriptionId(firstActive.subscriptionId)
                }
            } catch (e: Exception) {
                Log.w(TAG, "Erreur lors du fallback: ${e.message}")
            }
        }
        
        Log.d(TAG, "📱 Fallback final vers SIM par défaut")
        return SmsManager.getDefault()
    }

    private fun deduceSlotFromSimId(simId: String?): Int? {
        // Heuristique simple - dans la vraie vie, il faudrait une logique plus sophistiquée
        return when {
            simId == null -> null
            simId.contains("1") || simId.contains("first") -> 0
            simId.contains("2") || simId.contains("second") -> 1
            else -> null
        }
    }
}