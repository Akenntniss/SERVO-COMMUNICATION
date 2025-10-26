package com.smsgateway.app.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey
import com.google.gson.annotations.SerializedName

@Entity(tableName = "phones")
data class Phone(
    @PrimaryKey
    val id: String,
    val model: String,
    @SerializedName("android_version")
    val androidVersion: String,
    @SerializedName("app_version")
    val appVersion: String,
    @SerializedName("is_active")
    val isActive: Boolean = true,
    @SerializedName("last_seen")
    val lastSeen: String? = null,
    @SerializedName("created_at")
    val createdAt: String? = null,
    @SerializedName("updated_at")
    val updatedAt: String? = null
)

data class PhoneRegistration(
    val model: String,
    @SerializedName("android_version")
    val androidVersion: String,
    @SerializedName("app_version")
    val appVersion: String,
    val sims: List<SimInfo>
)

data class Heartbeat(
    @SerializedName("phone_id")
    val phoneId: String,
    val timestamp: Long = System.currentTimeMillis(),
    @SerializedName("battery_level")
    val batteryLevel: Int? = null,
    @SerializedName("network_type")
    val networkType: String? = null
)

data class SimInfo(
    @SerializedName("slot_index")
    val slotIndex: Int,
    @SerializedName("phone_number")
    val phoneNumber: String?,
    @SerializedName("carrier_name")
    val carrierName: String?,
    @SerializedName("country_code")
    val countryCode: String? = null,
    @SerializedName("subscription_id")
    val subscriptionId: Int?,
    @SerializedName("is_active")
    val isActive: Boolean = true
)

 
 