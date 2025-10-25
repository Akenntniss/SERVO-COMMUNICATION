package com.smsgateway.app.data.model

import com.google.gson.annotations.SerializedName

data class Phone(
    val id: String,
    val model: String,
    @SerializedName("android_version")
    val androidVersion: String,
    @SerializedName("app_version")
    val appVersion: String,
    val status: String,
    @SerializedName("last_heartbeat")
    val lastHeartbeat: String?,
    @SerializedName("created_at")
    val createdAt: String,
    @SerializedName("updated_at")
    val updatedAt: String,
    @SerializedName("sim_count")
    val simCount: Int = 0,
    @SerializedName("active_sims")
    val activeSims: Int = 0
)

data class PhoneRegistration(
    @SerializedName("tel_id")
    val telId: String,
    val model: String,
    @SerializedName("android_version")
    val androidVersion: String,
    @SerializedName("app_version")
    val appVersion: String
)
