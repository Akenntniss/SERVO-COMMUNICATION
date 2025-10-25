package com.smsgateway.app.utils

import android.content.Context
import android.content.SharedPreferences

class PreferencesManager(context: Context) {
    
    private val sharedPreferences: SharedPreferences = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
    
    companion object {
        private const val PREFS_NAME = "sms_gateway_prefs"
        private const val KEY_PHONE_ID = "phone_id"
        private const val KEY_SERVER_URL = "server_url"
        private const val KEY_API_KEY = "api_key"
        private const val KEY_IS_SETUP_COMPLETE = "is_setup_complete"
        private const val KEY_LAST_HEARTBEAT = "last_heartbeat"
        private const val KEY_AUTO_START = "auto_start"
        private const val KEY_NOTIFICATION_ENABLED = "notification_enabled"
        private const val KEY_SERVER_TYPE = "server_type"
        private const val KEY_LOCAL_SERVER_IP = "local_server_ip"
        private const val KEY_CLOUD_SERVER_URL = "cloud_server_url"
    }
    
    // Phone ID
    fun getPhoneId(): String? {
        return sharedPreferences.getString(KEY_PHONE_ID, null)
    }
    
    fun setPhoneId(phoneId: String) {
        sharedPreferences.edit().putString(KEY_PHONE_ID, phoneId).apply()
    }
    
    // Server URL
    fun getServerUrl(): String {
        return sharedPreferences.getString(KEY_SERVER_URL, "http://localhost:3001") ?: "http://localhost:3001"
    }
    
    fun setServerUrl(url: String) {
        sharedPreferences.edit().putString(KEY_SERVER_URL, url).apply()
    }
    
    // API Key
    fun getApiKey(): String? {
        return sharedPreferences.getString(KEY_API_KEY, null)
    }
    
    fun setApiKey(apiKey: String) {
        sharedPreferences.edit().putString(KEY_API_KEY, apiKey).apply()
    }
    
    // Setup completion
    fun isSetupComplete(): Boolean {
        return sharedPreferences.getBoolean(KEY_IS_SETUP_COMPLETE, false)
    }
    
    fun setSetupComplete(complete: Boolean) {
        sharedPreferences.edit().putBoolean(KEY_IS_SETUP_COMPLETE, complete).apply()
    }
    
    // Last heartbeat
    fun getLastHeartbeat(): Long {
        return sharedPreferences.getLong(KEY_LAST_HEARTBEAT, 0)
    }
    
    fun setLastHeartbeat(timestamp: Long) {
        sharedPreferences.edit().putLong(KEY_LAST_HEARTBEAT, timestamp).apply()
    }
    
    // Auto start
    fun isAutoStartEnabled(): Boolean {
        return sharedPreferences.getBoolean(KEY_AUTO_START, true)
    }
    
    fun setAutoStartEnabled(enabled: Boolean) {
        sharedPreferences.edit().putBoolean(KEY_AUTO_START, enabled).apply()
    }
    
    // Notifications
    fun isNotificationEnabled(): Boolean {
        return sharedPreferences.getBoolean(KEY_NOTIFICATION_ENABLED, true)
    }
    
    fun setNotificationEnabled(enabled: Boolean) {
        sharedPreferences.edit().putBoolean(KEY_NOTIFICATION_ENABLED, enabled).apply()
    }
    
    // Server type (local/cloud)
    fun getServerType(): String? {
        return sharedPreferences.getString(KEY_SERVER_TYPE, "local")
    }
    
    fun setServerType(serverType: String) {
        sharedPreferences.edit().putString(KEY_SERVER_TYPE, serverType).apply()
    }
    
    // Local server IP
    fun getLocalServerIp(): String? {
        return sharedPreferences.getString(KEY_LOCAL_SERVER_IP, "192.168.1.155:3001")
    }
    
    fun setLocalServerIp(ip: String) {
        sharedPreferences.edit().putString(KEY_LOCAL_SERVER_IP, ip).apply()
    }
    
    // Cloud server URL
    fun getCloudServerUrl(): String? {
        return sharedPreferences.getString(KEY_CLOUD_SERVER_URL, "")
    }
    
    fun setCloudServerUrl(url: String) {
        sharedPreferences.edit().putString(KEY_CLOUD_SERVER_URL, url).apply()
    }
    
    // Get current server URL based on type
    fun getCurrentServerUrl(): String {
        val serverType = getServerType() ?: "local"
        return if (serverType == "cloud") {
            getCloudServerUrl() ?: "http://localhost:3001"
        } else {
            val ip = getLocalServerIp() ?: "192.168.1.155:3001"
            if (ip.startsWith("http")) ip else "http://$ip"
        }
    }

    // Clear all preferences
    fun clearAll() {
        sharedPreferences.edit().clear().apply()
    }
}




