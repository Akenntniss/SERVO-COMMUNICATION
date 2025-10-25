package com.smsgateway.app.data.model

import com.google.gson.annotations.SerializedName

data class SimInfo(
    @SerializedName("slot_index")
    val slotIndex: Int,
    @SerializedName("phone_number")
    val phoneNumber: String?,
    @SerializedName("carrier_name")
    val carrierName: String?,
    @SerializedName("country_code")
    val countryIso: String?,
    @SerializedName("subscription_id")
    val subscriptionId: Int?,
    @SerializedName("is_active")
    val isActive: Boolean = true,
    @SerializedName("is_roaming")
    val isRoaming: Boolean = false
)
