package com.smsgateway.app.service

import android.app.*
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.os.PowerManager
import android.util.Log
import androidx.core.app.NotificationCompat
import com.smsgateway.app.R
import com.smsgateway.app.ui.MainActivity
import kotlinx.coroutines.*

/**
 * Service de premier plan pour maintenir l'application active en arrière-plan
 * même quand le téléphone est verrouillé
 */
class SmsService : Service() {
    
    companion object {
        private const val TAG = "SmsService"
        private const val NOTIFICATION_ID = 1001
        private const val CHANNEL_ID = "SMS_GATEWAY_CHANNEL"
        private const val WAKELOCK_TAG = "SmsGateway:KeepAlive"
    }
    
    private var enhancedSmsService: EnhancedSmsService? = null
    private var wakeLock: PowerManager.WakeLock? = null
    private val serviceScope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    
    override fun onCreate() {
        super.onCreate()
        Log.i(TAG, "SMS Service créé")
        
        // Créer le canal de notification
        createNotificationChannel()
        
        // Acquérir un WakeLock pour empêcher la mise en veille
        acquireWakeLock()
        
        // Initialiser le service SMS
        enhancedSmsService = EnhancedSmsService(this)
        
        // Démarrer en foreground
        startForeground(NOTIFICATION_ID, createNotification())
        
        Log.i(TAG, "SMS Service démarré en foreground")
    }
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        Log.i(TAG, "SMS Service command reçu")
        
        // Redémarrer automatiquement si le service est tué
        return START_STICKY
    }
    
    override fun onBind(intent: Intent?): IBinder? {
        return null
    }
    
    override fun onDestroy() {
        Log.i(TAG, "SMS Service détruit")
        
        // Libérer le WakeLock
        releaseWakeLock()
        
        // Annuler toutes les coroutines
        serviceScope.cancel()
        
        super.onDestroy()
    }
    
    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "SMS Gateway Service",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "Service pour maintenir l'application SMS Gateway active"
                setShowBadge(false)
                setSound(null, null)
                enableVibration(false)
            }
            
            val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            notificationManager.createNotificationChannel(channel)
        }
    }
    
    private fun createNotification(): Notification {
        val intent = Intent(this, MainActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
        }
        
        val pendingIntent = PendingIntent.getActivity(
            this, 0, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("SMS Gateway Active")
            .setContentText("Service en cours d'exécution en arrière-plan")
            .setSmallIcon(R.drawable.ic_launcher_legacy)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setCategory(NotificationCompat.CATEGORY_SERVICE)
            .build()
    }
    
    private fun acquireWakeLock() {
        try {
            val powerManager = getSystemService(Context.POWER_SERVICE) as PowerManager
            wakeLock = powerManager.newWakeLock(
                PowerManager.PARTIAL_WAKE_LOCK,
                WAKELOCK_TAG
            ).apply {
                acquire(10 * 60 * 1000L) // 10 minutes
            }
            Log.i(TAG, "WakeLock acquis")
        } catch (e: Exception) {
            Log.e(TAG, "Erreur lors de l'acquisition du WakeLock", e)
        }
    }
    
    private fun releaseWakeLock() {
        try {
            wakeLock?.let {
                if (it.isHeld) {
                    it.release()
                    Log.i(TAG, "WakeLock libéré")
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Erreur lors de la libération du WakeLock", e)
        }
    }
    
    /**
     * Demande l'exemption d'optimisation de batterie
     */
    fun requestBatteryOptimizationExemption() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            val intent = Intent().apply {
                action = android.provider.Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS
                data = android.net.Uri.parse("package:$packageName")
            }
            
            try {
                startActivity(intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
                Log.i(TAG, "Demande d'exemption d'optimisation de batterie envoyée")
            } catch (e: Exception) {
                Log.e(TAG, "Erreur lors de la demande d'exemption de batterie", e)
            }
        }
    }
}