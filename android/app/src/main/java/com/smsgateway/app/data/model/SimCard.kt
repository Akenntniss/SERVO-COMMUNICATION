package com.smsgateway.app.data.model

import android.os.Parcelable
import kotlinx.parcelize.Parcelize
import com.google.gson.annotations.SerializedName

@Parcelize
data class SimCard(
    @SerializedName("id")
    val id: Int,
    
    @SerializedName("phone_id")
    val phoneId: String,
    
    @SerializedName("slot_index")
    val slotIndex: Int,
    
    @SerializedName("phone_number")
    val phoneNumber: String?,
    
    @SerializedName("carrier_name")
    val carrierName: String?,
    
    @SerializedName("country_code")
    val countryCode: String?,
    
    @SerializedName("subscription_id")
    val subscriptionId: Int?,
    
    @SerializedName("is_active")
    val isActive: Boolean,
    
    @SerializedName("monthly_limit")
    val monthlyLimit: Int,
    
    @SerializedName("recipients_monthly_limit")
    val recipientsMonthlyLimit: Int,
    
    @SerializedName("messages_sent_month")
    val messagesSentMonth: Int,
    
    @SerializedName("recipients_monthly")
    val recipientsMonthly: Int,
    
    @SerializedName("created_at")
    val createdAt: String,
    
    @SerializedName("updated_at")
    val updatedAt: String,
    
    @SerializedName("phone_model")
    val phoneModel: String?,
    
    @SerializedName("phone_status")
    val phoneStatus: String?,
    
    // Champs calculés pour les statistiques (optionnels)
    @SerializedName("remaining_monthly")
    val remainingMonthly: Int? = null,
    
    @SerializedName("remaining_recipients_monthly")
    val remainingRecipientsMonthly: Int? = null,
    
    @SerializedName("monthly_usage_percent")
    val monthlyUsagePercent: Double? = null,
    
    @SerializedName("recipients_monthly_usage_percent")
    val recipientsMonthlyUsagePercent: Double? = null
) : Parcelable {
    
    fun getRemainingMonthlyMessages(): Int {
        return maxOf(0, monthlyLimit - messagesSentMonth)
    }
    
    fun getRemainingMonthlyRecipients(): Int {
        return maxOf(0, recipientsMonthlyLimit - recipientsMonthly)
    }
    
    fun getMonthlyUsagePercentage(): Float {
        return if (monthlyLimit > 0) {
            (messagesSentMonth.toFloat() / monthlyLimit.toFloat()) * 100f
        } else 0f
    }
    
    fun getMonthlyRecipientsUsagePercentage(): Float {
        return if (recipientsMonthlyLimit > 0) {
            (recipientsMonthly.toFloat() / recipientsMonthlyLimit.toFloat()) * 100f
        } else 0f
    }
    
    fun getStatusText(): String {
        return when {
            !isActive -> "Inactive"
            getRemainingMonthlyMessages() == 0 -> "Limite mensuelle atteinte"
            getRemainingMonthlyRecipients() == 0 -> "Limite de destinataires atteinte"
            getMonthlyUsagePercentage() > 90 -> "Limite mensuelle proche"
            getMonthlyRecipientsUsagePercentage() > 90 -> "Limite de destinataires proche"
            else -> "Disponible"
        }
    }
    
    fun getDisplayName(): String {
        return "SIM ${slotIndex + 1} - ${carrierName ?: "Inconnu"}"
    }
}

data class SimLimitsUpdate(
    @SerializedName("monthly_limit")
    val monthlyLimit: Int? = null,
    
    @SerializedName("recipients_monthly_limit")
    val recipientsMonthlyLimit: Int? = null
)

data class SimStatusUpdate(
    @SerializedName("is_active")
    val isActive: Boolean
)

// Modèle pour la synchronisation des SIM
data class SimSyncRequest(
    @SerializedName("phone_id")
    val phoneId: String,
    @SerializedName("sims")
    val sims: List<SimInfo>
)

data class SimSyncResponse(
    @SerializedName("phone_id")
    val phoneId: String,
    @SerializedName("synced_count")
    val syncedCount: Int,
    @SerializedName("sims")
    val sims: List<SimCard>
)
