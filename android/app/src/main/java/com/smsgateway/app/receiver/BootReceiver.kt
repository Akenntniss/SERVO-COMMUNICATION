package com.smsgateway.app.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.smsgateway.app.service.SmsService

/**
 * Receiver pour redémarrer automatiquement le service après le boot
 * ou la mise à jour de l'application
 */
class BootReceiver : BroadcastReceiver() {
    
    companion object {
        private const val TAG = "BootReceiver"
    }
    
    override fun onReceive(context: Context, intent: Intent) {
        Log.d(TAG, "Received intent: ${intent.action}")
        
        when (intent.action) {
            Intent.ACTION_BOOT_COMPLETED -> {
                Log.i(TAG, "Device boot completed - Starting SMS Service")
                startSmsService(context)
            }
            Intent.ACTION_MY_PACKAGE_REPLACED,
            Intent.ACTION_PACKAGE_REPLACED -> {
                Log.i(TAG, "Package updated - Restarting SMS Service")
                startSmsService(context)
            }
        }
    }
    
    private fun startSmsService(context: Context) {
        try {
            val serviceIntent = Intent(context, SmsService::class.java)
            context.startForegroundService(serviceIntent)
            Log.i(TAG, "SMS Service started successfully")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start SMS Service", e)
        }
    }
}
        if (intent.action == Intent.ACTION_BOOT_COMPLETED ||
            intent.action == "android.intent.action.QUICKBOOT_POWERON") {
            
            val preferencesManager = PreferencesManager(context)
            
            // Vérifier si l'auto-démarrage est activé et si l'application est configurée
            if (preferencesManager.isAutoStartEnabled() && 
                preferencesManager.isConfigured() &&
                preferencesManager.isServiceEnabled()) {
                
                // Démarrer le service
                val serviceIntent = Intent(context, SmsService::class.java).apply {
                    action = SmsService.ACTION_START
                }
                
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    context.startForegroundService(serviceIntent)
                } else {
                    context.startService(serviceIntent)
                }
            }
        }
    }
} 