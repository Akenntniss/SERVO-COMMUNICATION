package com.smsgateway.app.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey
import com.google.gson.annotations.SerializedName

@Entity(tableName = "messages")
data class Message(
    @PrimaryKey
    val id: String,
    @SerializedName("phone_id")
    val phoneId: String,
    @SerializedName("sim_id")
    val simId: String?,
    val recipient: String,
    val content: String,
    val status: String = "pending", // pending, sent, failed, delivered
    @SerializedName("created_at")
    val createdAt: String? = null,
    @SerializedName("sent_at")
    val sentAt: String? = null,
    @SerializedName("delivered_at")
    val deliveredAt: String? = null,
    @SerializedName("error_message")
    val errorMessage: String? = null,
    val priority: Int = 0,
    @SerializedName("retry_count")
    val retryCount: Int = 0,
    @SerializedName("max_retries")
    val maxRetries: Int = 3
)

data class SendMessageRequest(
    val recipient: String,
    val content: String,
    @SerializedName("phone_id")
    val phoneId: String? = null,
    @SerializedName("sim_slot")
    val simSlot: Int? = null,
    val priority: Int = 0,
    @SerializedName("scheduled_at")
    val scheduledAt: String? = null
)

data class SendMessageResponse(
    @SerializedName("message_id")
    val messageId: String,
    val status: String,
    val message: String? = null
)

data class MessageStatusUpdate(
    val status: String,
    @SerializedName("error_message")
    val errorMessage: String? = null,
    @SerializedName("sent_at")
    val sentAt: String? = null,
    @SerializedName("delivered_at")
    val deliveredAt: String? = null
)

data class PendingMessagesResponse(
    val messages: List<Message>,
    val count: Int
)

 
 