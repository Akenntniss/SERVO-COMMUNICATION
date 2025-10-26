package com.smsgateway.app.service

import android.content.Context
import android.util.Log
import com.smsgateway.app.data.api.ApiClient
import com.smsgateway.app.data.model.Message
import com.smsgateway.app.data.model.Heartbeat
import com.smsgateway.app.service.EnhancedSmsService
import com.smsgateway.app.utils.PreferencesManager
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.delay
import java.util.concurrent.ConcurrentHashMap

class MessageManager(
    private val context: Context,
    private val scope: CoroutineScope
) {
    companion object {
        private const val TAG = "MessageManager"
        private const val POLLING_INTERVAL = 10000L // 10 secondes
        private const val HEARTBEAT_INTERVAL = 60000L // 1 minute
        private const val MAX_RETRY_ATTEMPTS = 3
        private const val CLEANUP_INTERVAL = 300000L // 5 minutes - nettoyage des messages obsolètes
    }
    
    private val preferencesManager = PreferencesManager(context)
    private val enhancedSmsService = EnhancedSmsService(context)
    private val processingMessages = ConcurrentHashMap<String, Message>()
    private var isPolling = false
    private var isHeartbeatRunning = false
    
    fun startMessagePolling() {
        if (isPolling) return
        
        isPolling = true
        enhancedSmsService.initialize()
        Log.d(TAG, "Démarrage du polling des messages")
        
        // Démarrer le polling des messages
        scope.launch(Dispatchers.IO) {
            while (isPolling) {
                try {
                    pollPendingMessages()
                } catch (e: Exception) {
                    Log.e(TAG, "Erreur lors du polling: ${e.message}")
                }
                delay(POLLING_INTERVAL)
            }
        }
        
        // Démarrer les heartbeats
        startHeartbeat()
        
        // Démarrer le nettoyage périodique
        startPeriodicCleanup()
    }
    
    fun stopMessagePolling() {
        isPolling = false
        isHeartbeatRunning = false
        enhancedSmsService.cleanup()
        Log.d(TAG, "Arrêt du polling des messages et heartbeats")
    }
    
    private suspend fun pollPendingMessages() {
        val phoneId = preferencesManager.getPhoneId() ?: return
        
        try {
            val response = ApiClient.getApiService()?.getPendingMessages(phoneId)
            
            if (response?.isSuccessful == true) {
                val apiResponse = response.body()
                if (apiResponse?.success == true) {
                    val messages = apiResponse.data ?: emptyList()
                    
                    Log.d(TAG, "Messages en attente trouvés: ${messages.size}")
                    
                    for (message in messages) {
                        if (!processingMessages.containsKey(message.id)) {
                            processMessage(message)
                        }
                    }
                }
            } else {
                Log.e(TAG, "Erreur API lors du polling: ${response?.code()}")
            }
            
        } catch (e: Exception) {
            Log.e(TAG, "Exception lors du polling: ${e.message}")
        }
    }
    
    private fun processMessage(message: Message) {
        Log.d(TAG, "Traitement du message ${message.id} vers ${message.recipient}")
        
        // Marquer comme en cours de traitement
        processingMessages[message.id] = message
        
        scope.launch(Dispatchers.Main) {
            try {
                // Vérifier si on a déjà essayé ce message
                if (message.retryCount >= MAX_RETRY_ATTEMPTS) {
                    Log.w(TAG, "Message ${message.id} a atteint le nombre max de tentatives")
                    markMessageAsFinalFailure(message.id)
                    return@launch
                }
                
                // Envoyer via le service amélioré
                enhancedSmsService.sendSms(message)
                
                Log.d(TAG, "Message ${message.id} envoyé au service SMS")
                
            } catch (e: Exception) {
                Log.e(TAG, "Erreur lors du traitement du message ${message.id}: ${e.message}")
                handleMessageError(message.id, "PROCESSING_ERROR: ${e.message}")
            }
        }
    }
    
    private suspend fun handleMessageError(messageId: String, errorMessage: String) {
        Log.e(TAG, "Gestion d'erreur pour message $messageId: $errorMessage")
        
        try {
            // Signaler l'erreur au serveur pour déclencher le retry
            val statusUpdate = com.smsgateway.app.data.model.MessageStatusUpdate(
                status = "failed",
                errorMessage = errorMessage
            )
            
            ApiClient.getApiService()?.updateMessageStatus(messageId, statusUpdate)
            
        } catch (e: Exception) {
            Log.e(TAG, "Erreur lors du signalement d'erreur: ${e.message}")
        } finally {
            processingMessages.remove(messageId)
        }
    }
    
    private suspend fun markMessageAsFinalFailure(messageId: String) {
        Log.w(TAG, "Marquage du message $messageId comme échec final")
        
        try {
            val statusUpdate = com.smsgateway.app.data.model.MessageStatusUpdate(
                status = "failed",
                errorMessage = "MAX_RETRIES_EXCEEDED"
            )
            
            ApiClient.getApiService()?.updateMessageStatus(messageId, statusUpdate)
            
        } catch (e: Exception) {
            Log.e(TAG, "Erreur lors du marquage d'échec final: ${e.message}")
        } finally {
            processingMessages.remove(messageId)
        }
    }
    
    fun getProcessingMessagesCount(): Int {
        return processingMessages.size
    }
    
    fun isMessageProcessing(messageId: String): Boolean {
        return processingMessages.containsKey(messageId)
    }
    
    fun clearProcessingMessages() {
        processingMessages.clear()
        Log.d(TAG, "Messages en cours de traitement effacés")
    }
    
    private fun startHeartbeat() {
        if (isHeartbeatRunning) return
        
        isHeartbeatRunning = true
        Log.d(TAG, "Démarrage des heartbeats (toutes les minutes)")
        
        scope.launch(Dispatchers.IO) {
            while (isHeartbeatRunning) {
                try {
                    sendHeartbeat()
                } catch (e: Exception) {
                    Log.e(TAG, "Erreur lors de l'envoi heartbeat: ${e.message}")
                }
                delay(HEARTBEAT_INTERVAL)
            }
        }
    }
    
    private suspend fun sendHeartbeat() {
        val phoneId = preferencesManager.getPhoneId() ?: return
        
        try {
            Log.d(TAG, "Envoi heartbeat pour téléphone: $phoneId")
            val heartbeat = Heartbeat(phoneId = phoneId)
            val response = ApiClient.getApiService()?.sendHeartbeat(heartbeat)
            
            if (response?.isSuccessful == true) {
                Log.d(TAG, "Heartbeat envoyé avec succès")
                preferencesManager.setLastHeartbeat(System.currentTimeMillis())
            } else {
                Log.w(TAG, "Échec envoi heartbeat: ${response?.code()}")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Erreur envoi heartbeat: ${e.message}")
        }
    }
    
    private fun startPeriodicCleanup() {
        Log.d(TAG, "Démarrage du nettoyage périodique des messages obsolètes")
        
        scope.launch(Dispatchers.IO) {
            while (isPolling) {
                try {
                    // Log des statistiques
                    val processingCount = processingMessages.size
                    
                    if (processingCount > 0) {
                        Log.d(TAG, "Statistiques: $processingCount messages en traitement")
                    }
                    
                } catch (e: Exception) {
                    Log.e(TAG, "Erreur lors du nettoyage périodique: ${e.message}")
                }
                
                delay(CLEANUP_INTERVAL)
            }
        }
    }
    
    /**
     * Obtenir les statistiques détaillées du gestionnaire de messages
     */
    fun getDetailedStats(): String {
        val processingCount = processingMessages.size
        
        return "Messages: $processingCount en traitement"
    }
}























