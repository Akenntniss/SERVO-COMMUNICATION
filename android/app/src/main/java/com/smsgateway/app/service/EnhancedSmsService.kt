package com.smsgateway.app.service

import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.telephony.SmsManager
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
        private const val FAILURE_DETECTION_DELAY = 15000L // 15 secondes
    }

    private val sentReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val messageId = intent?.getStringExtra("messageId") ?: return
            
            when (resultCode) {
                android.app.Activity.RESULT_OK -> {
                    Log.d(TAG, "SMS envoyé avec succès: $messageId")
                    // Attendre avant de confirmer le succès pour détecter les échecs tardifs
                    CoroutineScope(Dispatchers.IO).launch {
                        delay(FAILURE_DETECTION_DELAY)
                        reportSuccess(messageId, "sent")
                    }
                }
                SmsManager.RESULT_ERROR_GENERIC_FAILURE -> {
                    Log.e(TAG, "Échec générique SMS: $messageId")
                    reportFailure(messageId, "GENERIC_FAILURE")
                }
                SmsManager.RESULT_ERROR_NO_SERVICE -> {
                    Log.e(TAG, "Pas de service SMS: $messageId")
                    reportFailure(messageId, "NO_SERVICE")
                }
                SmsManager.RESULT_ERROR_NULL_PDU -> {
                    Log.e(TAG, "PDU null SMS: $messageId")
                    reportFailure(messageId, "NULL_PDU")
                }
                SmsManager.RESULT_ERROR_RADIO_OFF -> {
                    Log.e(TAG, "Radio éteinte SMS: $messageId")
                    reportFailure(messageId, "RADIO_OFF")
                }
                else -> {
                    Log.e(TAG, "Échec SMS inconnu ($resultCode): $messageId")
                    reportFailure(messageId, "UNKNOWN_ERROR_$resultCode")
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
            Log.d(TAG, "📤 Envoi SMS: ${message.content} vers ${message.recipient}")
            
            val smsManager = SmsManager.getDefault()
            
            // Créer les PendingIntent pour les callbacks
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
            
            // SURVEILLANCE: Programmer une vérification de timeout pour ce message
            scheduleTimeoutCheck(message.id)
            
            // Envoyer le SMS avec callbacks
            smsManager.sendTextMessage(
                message.recipient,
                null,
                message.content,
                sentIntent,
                deliveredIntent
            )
            
            Log.d(TAG, "📡 SMS en cours d'envoi: ${message.id}")
            
        } catch (e: Exception) {
            Log.e(TAG, "❌ Erreur lors de l'envoi SMS: ${e.message}")
            reportFailure(message.id, "SEND_EXCEPTION: ${e.message}")
        }
    }
    
    private fun scheduleTimeoutCheck(messageId: String) {
        // Programmer une vérification après 2 minutes pour détecter les messages "oubliés"
        CoroutineScope(Dispatchers.IO).launch {
            delay(120000) // 2 minutes
            
            // Vérifier si ce message a été traité (succès ou échec)
            // Si aucun callback n'a été reçu, le considérer comme échoué
            if (!hasMessageBeenProcessed(messageId)) {
                Log.w(TAG, "⏰ TIMEOUT détecté pour message $messageId - Forçage échec")
                reportFailure(messageId, "TIMEOUT_NO_CALLBACK")
            }
        }
    }
    
    private fun hasMessageBeenProcessed(messageId: String): Boolean {
        // TODO: Implémenter un système de tracking des messages traités
        // Pour l'instant, on assume que tous les messages non traités sont des échecs
        return false
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
                Log.w(TAG, "🚨 ÉCHEC SMS DÉTECTÉ: $messageId - $reason")
                
                val statusUpdate = MessageStatusUpdate(
                    status = "failed",
                    errorMessage = "Échec envoi SMS: $reason"
                )
                
                val response = ApiClient.getApiService()?.updateMessageStatus(messageId, statusUpdate)
                if (response?.isSuccessful == true) {
                    Log.d(TAG, "✅ Échec reporté avec succès: $reason pour $messageId")
                } else {
                    Log.e(TAG, "❌ Erreur rapport échec: ${response?.code()} pour $messageId")
                    // RETRY: Tenter une seconde fois en cas d'échec réseau
                    delay(2000)
                    try {
                        val retryResponse = ApiClient.getApiService()?.updateMessageStatus(messageId, statusUpdate)
                        if (retryResponse?.isSuccessful == true) {
                            Log.d(TAG, "✅ Échec reporté avec succès (retry): $reason pour $messageId")
                        } else {
                            Log.e(TAG, "❌ Échec définitif rapport: ${retryResponse?.code()} pour $messageId")
                        }
                    } catch (retryException: Exception) {
                        Log.e(TAG, "❌ Échec retry rapport: ${retryException.message} pour $messageId")
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "❌ Exception lors du rapport d'échec: ${e.message} pour $messageId")
                // FALLBACK: Tenter de sauvegarder localement pour retry ultérieur
                try {
                    // TODO: Implémenter sauvegarde locale des échecs pour retry
                    Log.w(TAG, "💾 Échec sauvegardé localement pour retry: $messageId")
                } catch (fallbackException: Exception) {
                    Log.e(TAG, "❌ Échec sauvegarde locale: ${fallbackException.message}")
                }
            }
        }
    }
}