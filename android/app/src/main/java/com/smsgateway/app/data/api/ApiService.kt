package com.smsgateway.app.data.api

import com.smsgateway.app.data.model.*
import retrofit2.Response
import retrofit2.http.*

interface ApiService {
    
    // Phone registration
    @POST("api/phones/register")
    suspend fun registerPhone(@Body phoneRegistration: PhoneRegistration): Response<ApiResponse<Map<String, Any>>>
    
    // Heartbeat
    @POST("api/phones/heartbeat")
    suspend fun sendHeartbeat(@Body heartbeat: Heartbeat): Response<ApiResponse<String>>
    
    // Get pending messages
    @GET("api/messages/pending/{phoneId}")
    suspend fun getPendingMessages(@Path("phoneId") phoneId: String): Response<ApiResponse<List<Message>>>
    
    // Update message status
    @PUT("api/messages/{messageId}/status")
    suspend fun updateMessageStatus(
        @Path("messageId") messageId: String,
        @Body statusUpdate: MessageStatusUpdate
    ): Response<ApiResponse<String>>
    
    // Send SMS
    @POST("api/messages/send")
    suspend fun sendSms(@Body message: SendMessageRequest): Response<ApiResponse<SendMessageResponse>>
    
    // Get phone details
    @GET("api/phones/{phoneId}")
    suspend fun getPhoneDetails(@Path("phoneId") phoneId: String): Response<ApiResponse<Phone>>
    
    // Update phone
    @PUT("api/phones/{phoneId}")
    suspend fun updatePhone(
        @Path("phoneId") phoneId: String,
        @Body phone: Phone
    ): Response<ApiResponse<Phone>>
    
    // SIM Management
    @GET("api/sims")
    suspend fun getAllSims(): Response<ApiResponse<List<SimCard>>>
    
    @GET("api/sims/{simId}")
    suspend fun getSimById(@Path("simId") simId: Int): Response<ApiResponse<SimCard>>
    
    @PUT("api/sims/{simId}/limits")
    suspend fun updateSimLimits(
        @Path("simId") simId: Int,
        @Body limits: SimLimitsUpdate
    ): Response<ApiResponse<SimCard>>
    
    @PUT("api/sims/{simId}/status")
    suspend fun updateSimStatus(
        @Path("simId") simId: Int,
        @Body status: SimStatusUpdate
    ): Response<ApiResponse<String>>
    
    @GET("api/sims/{simId}/stats")
    suspend fun getSimStats(@Path("simId") simId: Int): Response<ApiResponse<SimCard>>

    // Synchroniser les SIM avec le serveur
    @POST("api/sims/sync")
    suspend fun syncSims(@Body request: SimSyncRequest): Response<ApiResponse<SimSyncResponse>>
}

// Generic API Response wrapper
data class ApiResponse<T>(
    val success: Boolean,
    val data: T?,
    val message: String? = null,
    val error: String? = null
)


