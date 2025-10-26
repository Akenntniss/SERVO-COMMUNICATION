package com.smsgateway.app.utils

import android.Manifest
import android.content.Context
import android.os.Build
import android.telephony.SubscriptionInfo
import android.telephony.SubscriptionManager
import android.telephony.TelephonyManager
import android.util.Log
import androidx.core.app.ActivityCompat
import androidx.core.content.pm.PackageInfoCompat
import com.smsgateway.app.data.model.SimInfo
import android.content.pm.PackageManager

object SimUtils {
    private const val TAG = "SimUtils"

    fun getAvailableSimCards(context: Context): List<SimInfo> {
        Log.d(TAG, "🔍 Début de la détection des cartes SIM")
        
        if (!hasRequiredPermissions(context)) {
            Log.w(TAG, "❌ Permissions manquantes pour la détection des SIM")
            return emptyList()
        }
        
        Log.d(TAG, "✅ Toutes les permissions requises sont accordées")
        
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP_MR1) {
            Log.d(TAG, "📱 Utilisation de SubscriptionManager (Android 5.1+)")
            getSimCardsFromSubscriptionManager(context)
        } else {
            Log.d(TAG, "📱 Utilisation de TelephonyManager (Android < 5.1)")
            getSimCardsFromTelephonyManager(context)
        }
    }
    
    private fun hasRequiredPermissions(context: Context): Boolean {
        val requiredPermissions = arrayOf(
            Manifest.permission.READ_PHONE_STATE
        )
        
        return requiredPermissions.all { permission ->
            ActivityCompat.checkSelfPermission(context, permission) == PackageManager.PERMISSION_GRANTED
        }
    }
    
    private fun getSimCardsFromSubscriptionManager(context: Context): List<SimInfo> {
        val simCards = mutableListOf<SimInfo>()
        
        try {
            // Vérification supplémentaire pour Android 10+
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                if (ActivityCompat.checkSelfPermission(context, Manifest.permission.READ_PHONE_NUMBERS) != PackageManager.PERMISSION_GRANTED) {
                    Log.w(TAG, "❌ Permission READ_PHONE_NUMBERS manquante pour Android 10+")
                    return simCards
                }
            }
            
            val subscriptionManager = context.getSystemService(Context.TELEPHONY_SUBSCRIPTION_SERVICE) as? SubscriptionManager
            
            if (subscriptionManager == null) {
                Log.e(TAG, "❌ SubscriptionManager non disponible")
                return simCards
            }
            
            Log.d(TAG, "🔍 Récupération des abonnements actifs...")
            val activeSubscriptions = subscriptionManager.activeSubscriptionInfoList
            
            if (activeSubscriptions.isNullOrEmpty()) {
                Log.w(TAG, "⚠️ Aucun abonnement actif trouvé")
                return simCards
            }
            
            Log.d(TAG, "📱 ${activeSubscriptions.size} abonnement(s) actif(s) trouvé(s)")
            
            for ((index, subscription) in activeSubscriptions.withIndex()) {
                try {
                    val simInfo = createSimInfoFromSubscription(subscription, index)
                    simCards.add(simInfo)
                    Log.d(TAG, "✅ SIM ${index + 1}: ${simInfo.carrierName ?: "Opérateur inconnu"} (slot ${simInfo.slotIndex})")
                    Log.d(TAG, "   📞 Numéro: ${simInfo.phoneNumber ?: "Non disponible"}")
                    Log.d(TAG, "   🌍 Pays: ${simInfo.countryCode ?: "Non disponible"}")
                    Log.d(TAG, "   🆔 ID: ${simInfo.subscriptionId}")
                    Log.d(TAG, "   📡 Opérateur: ${simInfo.carrierName ?: "Non disponible"}")
                    Log.d(TAG, "   📍 Slot: ${simInfo.slotIndex}")
                    Log.d(TAG, "   ✅ Actif: ${simInfo.isActive}")
                    Log.d(TAG, "   📊 Nom d'affichage: ${subscription.displayName}")
                    Log.d(TAG, "   🏷️ Couleur: ${subscription.iconTint}")
                    Log.d(TAG, "   📱 Code MCC/MNC: ${subscription.mcc}${subscription.mnc}")
                    Log.d(TAG, "   ⚠️ Champs NULL: phone=${simInfo.phoneNumber == null}, carrier=${simInfo.carrierName == null}, country=${simInfo.countryCode == null}")
                } catch (e: Exception) {
                    Log.e(TAG, "❌ Erreur lors du traitement de l'abonnement $index: ${e.message}")
                }
            }
            
            Log.d(TAG, "🎉 Détection terminée: ${simCards.size} SIM(s) configurée(s)")
            
        } catch (e: Exception) {
            Log.e(TAG, "❌ Erreur lors de la détection des SIM: ${e.message}")
        }
        
        return simCards
    }
    
    private fun createSimInfoFromSubscription(subscription: SubscriptionInfo, index: Int): SimInfo {
        return SimInfo(
            slotIndex = subscription.simSlotIndex,
            phoneNumber = if (subscription.number.isNullOrEmpty()) null else subscription.number,
            carrierName = if (subscription.carrierName.isNullOrEmpty()) null else subscription.carrierName?.toString(),
            countryCode = if (subscription.countryIso.isNullOrEmpty()) null else subscription.countryIso,
            subscriptionId = subscription.subscriptionId,
            isActive = true
        )
    }
    
    private fun getSimCardsFromTelephonyManager(context: Context): List<SimInfo> {
        val simCards = mutableListOf<SimInfo>()
        
        try {
            if (ActivityCompat.checkSelfPermission(context, Manifest.permission.READ_PHONE_STATE) != PackageManager.PERMISSION_GRANTED) {
                Log.w(TAG, "❌ Permission READ_PHONE_STATE manquante")
                return simCards
            }
            
            val telephonyManager = context.getSystemService(Context.TELEPHONY_SERVICE) as? TelephonyManager
            
            if (telephonyManager == null) {
                Log.e(TAG, "❌ TelephonyManager non disponible")
                return simCards
            }
            
            // Pour les versions Android anciennes, on ne peut détecter qu'une seule SIM
            val simInfo = SimInfo(
                slotIndex = 0,
                phoneNumber = if (telephonyManager.line1Number.isNullOrEmpty()) null else telephonyManager.line1Number,
                carrierName = if (telephonyManager.networkOperatorName.isNullOrEmpty()) null else telephonyManager.networkOperatorName,
                countryCode = if (telephonyManager.networkCountryIso.isNullOrEmpty()) null else telephonyManager.networkCountryIso,
                subscriptionId = 0,
                isActive = true
            )
            
            simCards.add(simInfo)
            Log.d(TAG, "📱 SIM détectée (méthode legacy): ${simInfo.carrierName}")
            
        } catch (e: Exception) {
            Log.e(TAG, "❌ Erreur lors de la détection SIM legacy: ${e.message}")
        }
        
        return simCards
    }
    
    /**
     * Méthode utilitaire pour obtenir des informations sur une SIM spécifique
     */
    fun getSimInfo(context: Context, slotIndex: Int): SimInfo? {
        return getAvailableSimCards(context).find { it.slotIndex == slotIndex }
    }
    
    /**
     * Méthode utilitaire pour vérifier si au moins une SIM est disponible
     */
    fun hasAvailableSim(context: Context): Boolean {
        return getAvailableSimCards(context).isNotEmpty()
    }
    
    /**
     * Méthode utilitaire pour obtenir le nombre de SIM disponibles
     */
    fun getSimCount(context: Context): Int {
        return getAvailableSimCards(context).size
    }
}