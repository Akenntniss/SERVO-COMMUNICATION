.class public interface abstract Lcom/smsgateway/app/data/api/ApiService;
.super Ljava/lang/Object;
.source "ApiService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00040\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J-\u0010\u0008\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00050\u00040\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\'\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00040\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ#\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00050\u00040\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\'\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00040\u00032\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0012H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\'\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00040\u00032\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0012H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J3\u0010\u0015\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00010\u00160\u00040\u00032\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0018H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\'\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\'\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u00040\u00032\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u001eH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ\'\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u00040\u00032\u0008\u0008\u0001\u0010\"\u001a\u00020#H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J1\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\u0008\u0008\u0001\u0010&\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\'\u001a\u00020(H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)J1\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00040\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010+\u001a\u00020\u000eH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,J1\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00040\u00032\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0001\u0010.\u001a\u00020/H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00100J1\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0001\u00102\u001a\u000203H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00065"
    }
    d2 = {
        "Lcom/smsgateway/app/data/api/ApiService;",
        "",
        "getAllSims",
        "Lretrofit2/Response;",
        "Lcom/smsgateway/app/data/api/ApiResponse;",
        "",
        "Lcom/smsgateway/app/data/model/SimCard;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPendingMessages",
        "Lcom/smsgateway/app/data/model/Message;",
        "phoneId",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPhoneDetails",
        "Lcom/smsgateway/app/data/model/Phone;",
        "getPhones",
        "getSimById",
        "simId",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSimStats",
        "registerPhone",
        "",
        "phoneRegistration",
        "Lcom/smsgateway/app/data/model/PhoneRegistration;",
        "(Lcom/smsgateway/app/data/model/PhoneRegistration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendHeartbeat",
        "sendSms",
        "Lcom/smsgateway/app/data/model/SendMessageResponse;",
        "message",
        "Lcom/smsgateway/app/data/model/SendMessageRequest;",
        "(Lcom/smsgateway/app/data/model/SendMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "syncSims",
        "Lcom/smsgateway/app/data/model/SimSyncResponse;",
        "request",
        "Lcom/smsgateway/app/data/model/SimSyncRequest;",
        "(Lcom/smsgateway/app/data/model/SimSyncRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateMessageStatus",
        "messageId",
        "statusUpdate",
        "Lcom/smsgateway/app/data/model/MessageStatusUpdate;",
        "(Ljava/lang/String;Lcom/smsgateway/app/data/model/MessageStatusUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updatePhone",
        "phone",
        "(Ljava/lang/String;Lcom/smsgateway/app/data/model/Phone;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateSimLimits",
        "limits",
        "Lcom/smsgateway/app/data/model/SimLimitsUpdate;",
        "(ILcom/smsgateway/app/data/model/SimLimitsUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateSimStatus",
        "status",
        "Lcom/smsgateway/app/data/model/SimStatusUpdate;",
        "(ILcom/smsgateway/app/data/model/SimStatusUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getAllSims(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/sims"
    .end annotation
.end method

.method public abstract getPendingMessages(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "phoneId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/Message;",
            ">;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/messages/pending/{phoneId}"
    .end annotation
.end method

.method public abstract getPhoneDetails(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "phoneId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Lcom/smsgateway/app/data/model/Phone;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/phones/{phoneId}"
    .end annotation
.end method

.method public abstract getPhones(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/Phone;",
            ">;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/phones"
    .end annotation
.end method

.method public abstract getSimById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "simId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/sims/{simId}"
    .end annotation
.end method

.method public abstract getSimStats(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "simId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/sims/{simId}/stats"
    .end annotation
.end method

.method public abstract registerPhone(Lcom/smsgateway/app/data/model/PhoneRegistration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/smsgateway/app/data/model/PhoneRegistration;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/data/model/PhoneRegistration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/phones/register"
    .end annotation
.end method

.method public abstract sendHeartbeat(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "phoneId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/phones/{phoneId}/heartbeat"
    .end annotation
.end method

.method public abstract sendSms(Lcom/smsgateway/app/data/model/SendMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/smsgateway/app/data/model/SendMessageRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/data/model/SendMessageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Lcom/smsgateway/app/data/model/SendMessageResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/messages/send"
    .end annotation
.end method

.method public abstract syncSims(Lcom/smsgateway/app/data/model/SimSyncRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/smsgateway/app/data/model/SimSyncRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/data/model/SimSyncRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Lcom/smsgateway/app/data/model/SimSyncResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/sims/sync"
    .end annotation
.end method

.method public abstract updateMessageStatus(Ljava/lang/String;Lcom/smsgateway/app/data/model/MessageStatusUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "messageId"
        .end annotation
    .end param
    .param p2    # Lcom/smsgateway/app/data/model/MessageStatusUpdate;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smsgateway/app/data/model/MessageStatusUpdate;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/messages/{messageId}/status"
    .end annotation
.end method

.method public abstract updatePhone(Ljava/lang/String;Lcom/smsgateway/app/data/model/Phone;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "phoneId"
        .end annotation
    .end param
    .param p2    # Lcom/smsgateway/app/data/model/Phone;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smsgateway/app/data/model/Phone;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Lcom/smsgateway/app/data/model/Phone;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/phones/{phoneId}"
    .end annotation
.end method

.method public abstract updateSimLimits(ILcom/smsgateway/app/data/model/SimLimitsUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "simId"
        .end annotation
    .end param
    .param p2    # Lcom/smsgateway/app/data/model/SimLimitsUpdate;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/smsgateway/app/data/model/SimLimitsUpdate;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/sims/{simId}/limits"
    .end annotation
.end method

.method public abstract updateSimStatus(ILcom/smsgateway/app/data/model/SimStatusUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "simId"
        .end annotation
    .end param
    .param p2    # Lcom/smsgateway/app/data/model/SimStatusUpdate;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/smsgateway/app/data/model/SimStatusUpdate;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/smsgateway/app/data/api/ApiResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/sims/{simId}/status"
    .end annotation
.end method
