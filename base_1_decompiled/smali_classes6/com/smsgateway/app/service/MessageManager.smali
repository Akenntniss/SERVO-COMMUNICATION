.class public final Lcom/smsgateway/app/service/MessageManager;
.super Ljava/lang/Object;
.source "MessageManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smsgateway/app/service/MessageManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0010J\u0006\u0010\u0015\u001a\u00020\u0016J!\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0010J\u0019\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u0011\u0010\u001e\u001a\u00020\u0013H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ\u0010\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0011H\u0002J\u0011\u0010\"\u001a\u00020\u0013H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001fJ\u0008\u0010#\u001a\u00020\u0013H\u0002J\u0006\u0010$\u001a\u00020\u0013J\u0008\u0010%\u001a\u00020\u0013H\u0002J\u0006\u0010&\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006("
    }
    d2 = {
        "Lcom/smsgateway/app/service/MessageManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V",
        "enhancedSmsService",
        "Lcom/smsgateway/app/service/EnhancedSmsService;",
        "isHeartbeatRunning",
        "",
        "isPolling",
        "preferencesManager",
        "Lcom/smsgateway/app/utils/PreferencesManager;",
        "processingMessages",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/smsgateway/app/data/model/Message;",
        "clearProcessingMessages",
        "",
        "getDetailedStats",
        "getProcessingMessagesCount",
        "",
        "handleMessageError",
        "messageId",
        "errorMessage",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isMessageProcessing",
        "markMessageAsFinalFailure",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pollPendingMessages",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processMessage",
        "message",
        "sendHeartbeat",
        "startHeartbeat",
        "startMessagePolling",
        "startPeriodicCleanup",
        "stopMessagePolling",
        "Companion",
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


# static fields
.field private static final CLEANUP_INTERVAL:J = 0x493e0L

.field public static final Companion:Lcom/smsgateway/app/service/MessageManager$Companion;

.field private static final HEARTBEAT_INTERVAL:J = 0xea60L

.field private static final MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final POLLING_INTERVAL:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "MessageManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private final enhancedSmsService:Lcom/smsgateway/app/service/EnhancedSmsService;

.field private isHeartbeatRunning:Z

.field private isPolling:Z

.field private final preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

.field private final processingMessages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/smsgateway/app/data/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smsgateway/app/service/MessageManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smsgateway/app/service/MessageManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smsgateway/app/service/MessageManager;->Companion:Lcom/smsgateway/app/service/MessageManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/smsgateway/app/service/MessageManager;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/smsgateway/app/service/MessageManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 27
    new-instance v0, Lcom/smsgateway/app/utils/PreferencesManager;

    invoke-direct {v0, p1}, Lcom/smsgateway/app/utils/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    .line 28
    new-instance v0, Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-direct {v0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->enhancedSmsService:Lcom/smsgateway/app/service/EnhancedSmsService;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    return-void
.end method

.method public static final synthetic access$getEnhancedSmsService$p(Lcom/smsgateway/app/service/MessageManager;)Lcom/smsgateway/app/service/EnhancedSmsService;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/service/MessageManager;

    .line 15
    iget-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->enhancedSmsService:Lcom/smsgateway/app/service/EnhancedSmsService;

    return-object v0
.end method

.method public static final synthetic access$getProcessingMessages$p(Lcom/smsgateway/app/service/MessageManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/service/MessageManager;

    .line 15
    iget-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$handleMessageError(Lcom/smsgateway/app/service/MessageManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/service/MessageManager;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/smsgateway/app/service/MessageManager;->handleMessageError(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isHeartbeatRunning$p(Lcom/smsgateway/app/service/MessageManager;)Z
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/service/MessageManager;

    .line 15
    iget-boolean v0, p0, Lcom/smsgateway/app/service/MessageManager;->isHeartbeatRunning:Z

    return v0
.end method

.method public static final synthetic access$isPolling$p(Lcom/smsgateway/app/service/MessageManager;)Z
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/service/MessageManager;

    .line 15
    iget-boolean v0, p0, Lcom/smsgateway/app/service/MessageManager;->isPolling:Z

    return v0
.end method

.method public static final synthetic access$markMessageAsFinalFailure(Lcom/smsgateway/app/service/MessageManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/service/MessageManager;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/smsgateway/app/service/MessageManager;->markMessageAsFinalFailure(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$pollPendingMessages(Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/service/MessageManager;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 15
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/MessageManager;->pollPendingMessages(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$sendHeartbeat(Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/service/MessageManager;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 15
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/MessageManager;->sendHeartbeat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final handleMessageError(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;

    iget v1, v0, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;

    invoke-direct {v0, p0, p3}, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;-><init>(Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 121
    iget v2, p3, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->label:I

    const-string v3, "MessageManager"

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p3, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .local p1, "messageId":Ljava/lang/String;
    iget-object p2, p3, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/smsgateway/app/service/MessageManager;

    .local p2, "this":Lcom/smsgateway/app/service/MessageManager;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 133
    :catch_0
    move-exception v1

    goto :goto_3

    .line 121
    .end local p1    # "messageId":Ljava/lang/String;
    .end local p2    # "this":Lcom/smsgateway/app/service/MessageManager;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .local v2, "this":Lcom/smsgateway/app/service/MessageManager;
    move-object v6, p2

    .line 122
    .local v6, "errorMessage":Ljava/lang/String;
    .restart local p1    # "messageId":Ljava/lang/String;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gestion d\'erreur pour message "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    nop

    .line 126
    :try_start_1
    new-instance p2, Lcom/smsgateway/app/data/model/MessageStatusUpdate;

    .line 127
    const-string v5, "failed"

    .line 128
    nop

    .line 126
    .end local v6    # "errorMessage":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Lcom/smsgateway/app/data/model/MessageStatusUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    .local p2, "statusUpdate":Lcom/smsgateway/app/data/model/MessageStatusUpdate;
    sget-object v4, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v4}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v4

    if-eqz v4, :cond_2

    iput-object v2, p3, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p3, Lcom/smsgateway/app/service/MessageManager$handleMessageError$1;->label:I

    invoke-interface {v4, p1, p2, p3}, Lcom/smsgateway/app/data/api/ApiService;->updateMessageStatus(Ljava/lang/String;Lcom/smsgateway/app/data/model/MessageStatusUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local p2    # "statusUpdate":Lcom/smsgateway/app/data/model/MessageStatusUpdate;
    if-ne v4, v1, :cond_1

    .line 121
    return-object v1

    .line 131
    :cond_1
    move-object p2, v2

    .end local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .local p2, "this":Lcom/smsgateway/app/service/MessageManager;
    :goto_1
    :try_start_2
    check-cast v4, Lretrofit2/Response;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p2

    nop

    .line 136
    .end local p2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    :cond_2
    iget-object p2, v2, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .end local p1    # "messageId":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 136
    .restart local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local p1    # "messageId":Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object p2, v2

    goto :goto_5

    .line 133
    :catch_1
    move-exception v1

    move-object p2, v2

    .line 134
    .end local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .local v1, "e":Ljava/lang/Exception;
    .restart local p2    # "this":Lcom/smsgateway/app/service/MessageManager;
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Erreur lors du signalement d\'erreur: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, p2, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local p1    # "messageId":Ljava/lang/String;
    .end local p2    # "this":Lcom/smsgateway/app/service/MessageManager;
    goto :goto_2

    .line 138
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 136
    .restart local p1    # "messageId":Ljava/lang/String;
    .restart local p2    # "this":Lcom/smsgateway/app/service/MessageManager;
    :goto_5
    iget-object v2, p2, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local p1    # "messageId":Ljava/lang/String;
    .end local p2    # "this":Lcom/smsgateway/app/service/MessageManager;
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final markMessageAsFinalFailure(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;

    iget v1, v0, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;

    invoke-direct {v0, p0, p2}, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;-><init>(Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 140
    iget v2, p2, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->label:I

    const-string v3, "MessageManager"

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .local p1, "messageId":Ljava/lang/String;
    iget-object v1, p2, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/smsgateway/app/service/MessageManager;

    .local v1, "this":Lcom/smsgateway/app/service/MessageManager;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    goto :goto_1

    .line 154
    :catchall_0
    move-exception v2

    goto/16 :goto_5

    .line 151
    :catch_0
    move-exception v2

    goto :goto_3

    .line 140
    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    .end local p1    # "messageId":Ljava/lang/String;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 141
    .local v2, "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local p1    # "messageId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Marquage du message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " comme \u00e9chec final"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    nop

    .line 144
    :try_start_1
    new-instance v4, Lcom/smsgateway/app/data/model/MessageStatusUpdate;

    .line 145
    const-string v6, "failed"

    .line 146
    const-string v7, "MAX_RETRIES_EXCEEDED"

    .line 144
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/smsgateway/app/data/model/MessageStatusUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    .local v4, "statusUpdate":Lcom/smsgateway/app/data/model/MessageStatusUpdate;
    sget-object v5, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v5}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-object v2, p2, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p2, Lcom/smsgateway/app/service/MessageManager$markMessageAsFinalFailure$1;->label:I

    invoke-interface {v5, p1, v4, p2}, Lcom/smsgateway/app/data/api/ApiService;->updateMessageStatus(Ljava/lang/String;Lcom/smsgateway/app/data/model/MessageStatusUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "statusUpdate":Lcom/smsgateway/app/data/model/MessageStatusUpdate;
    if-ne v5, v1, :cond_1

    .line 140
    return-object v1

    .line 149
    :cond_1
    move-object v1, v2

    .end local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    :goto_1
    :try_start_2
    check-cast v5, Lretrofit2/Response;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    nop

    .line 154
    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    :cond_2
    iget-object v1, v2, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .end local p1    # "messageId":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 154
    .restart local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local p1    # "messageId":Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_5

    .line 151
    :catch_1
    move-exception v1

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 152
    .restart local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Erreur lors du marquage d\'\u00e9chec final: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    .end local p1    # "messageId":Ljava/lang/String;
    goto :goto_2

    .line 156
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 154
    .restart local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local p1    # "messageId":Ljava/lang/String;
    :goto_5
    iget-object v3, v1, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    .end local p1    # "messageId":Ljava/lang/String;
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final pollPendingMessages(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;

    iget v1, v0, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;

    invoke-direct {v0, p0, p1}, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;-><init>(Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 66
    iget v2, p1, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;->label:I

    const/4 v3, 0x0

    const-string v4, "MessageManager"

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/smsgateway/app/service/MessageManager;

    .local v1, "this":Lcom/smsgateway/app/service/MessageManager;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_1

    .line 89
    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    :catch_0
    move-exception v1

    goto/16 :goto_6

    .line 66
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 67
    .local v2, "this":Lcom/smsgateway/app/service/MessageManager;
    iget-object v6, v2, Lcom/smsgateway/app/service/MessageManager;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    invoke-virtual {v6}, Lcom/smsgateway/app/utils/PreferencesManager;->getPhoneId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 69
    .local v6, "phoneId":Ljava/lang/String;
    :cond_1
    nop

    .line 70
    :try_start_1
    sget-object v7, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v7}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v7

    if-eqz v7, :cond_3

    iput-object v2, p1, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;->L$0:Ljava/lang/Object;

    iput v5, p1, Lcom/smsgateway/app/service/MessageManager$pollPendingMessages$1;->label:I

    invoke-interface {v7, v6, p1}, Lcom/smsgateway/app/data/api/ApiService;->getPendingMessages(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v6    # "phoneId":Ljava/lang/String;
    if-ne v7, v1, :cond_2

    .line 66
    return-object v1

    .line 70
    :cond_2
    move-object v1, v2

    .end local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    :goto_1
    check-cast v7, Lretrofit2/Response;

    move-object v2, v1

    goto :goto_2

    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v6    # "phoneId":Ljava/lang/String;
    :cond_3
    move-object v7, v3

    .end local v6    # "phoneId":Ljava/lang/String;
    :goto_2
    move-object v1, v7

    .line 72
    .local v1, "response":Lretrofit2/Response;
    const/4 v6, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v7

    if-ne v7, v5, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    move v7, v6

    :goto_3
    if-eqz v7, :cond_8

    .line 73
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smsgateway/app/data/api/ApiResponse;

    move-object v1, v3

    .line 74
    .local v1, "apiResponse":Lcom/smsgateway/app/data/api/ApiResponse;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/smsgateway/app/data/api/ApiResponse;->getSuccess()Z

    move-result v3

    if-ne v3, v5, :cond_5

    goto :goto_4

    :cond_5
    move v5, v6

    :goto_4
    if-eqz v5, :cond_a

    .line 75
    invoke-virtual {v1}, Lcom/smsgateway/app/data/api/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .end local v1    # "apiResponse":Lcom/smsgateway/app/data/api/ApiResponse;
    if-nez v3, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_6
    move-object v1, v3

    .line 77
    .local v1, "messages":Ljava/util/List;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Messages en attente trouv\u00e9s: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "messages":Ljava/util/List;
    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smsgateway/app/data/model/Message;

    .line 80
    .local v1, "message":Lcom/smsgateway/app/data/model/Message;
    iget-object v5, v2, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 81
    invoke-direct {v2, v1}, Lcom/smsgateway/app/service/MessageManager;->processMessage(Lcom/smsgateway/app/data/model/Message;)V

    .end local v1    # "message":Lcom/smsgateway/app/data/model/Message;
    goto :goto_5

    .line 86
    .end local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .local v1, "response":Lretrofit2/Response;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Erreur API lors du polling: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    .end local v1    # "response":Lretrofit2/Response;
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception lors du polling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final processMessage(Lcom/smsgateway/app/data/model/Message;)V
    .locals 8
    .param p1, "message"    # Lcom/smsgateway/app/data/model/Message;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Traitement du message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vers "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/smsgateway/app/service/MessageManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v0, Lcom/smsgateway/app/service/MessageManager$processMessage$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/smsgateway/app/service/MessageManager$processMessage$1;-><init>(Lcom/smsgateway/app/data/model/Message;Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 119
    return-void
.end method

.method private final sendHeartbeat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;

    iget v1, v0, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;

    invoke-direct {v0, p0, p1}, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;-><init>(Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 189
    iget v2, p1, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "MessageManager"

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/smsgateway/app/service/MessageManager;

    .local v1, "this":Lcom/smsgateway/app/service/MessageManager;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_1

    .line 202
    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 189
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 190
    .local v2, "this":Lcom/smsgateway/app/service/MessageManager;
    iget-object v6, v2, Lcom/smsgateway/app/service/MessageManager;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    invoke-virtual {v6}, Lcom/smsgateway/app/utils/PreferencesManager;->getPhoneId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 192
    .local v6, "phoneId":Ljava/lang/String;
    :cond_1
    nop

    .line 193
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Envoi heartbeat pour t\u00e9l\u00e9phone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v7, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v7}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v7

    if-eqz v7, :cond_3

    iput-object v2, p1, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;->L$0:Ljava/lang/Object;

    iput v4, p1, Lcom/smsgateway/app/service/MessageManager$sendHeartbeat$1;->label:I

    invoke-interface {v7, v6, p1}, Lcom/smsgateway/app/data/api/ApiService;->sendHeartbeat(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    .end local v6    # "phoneId":Ljava/lang/String;
    if-ne v7, v1, :cond_2

    .line 189
    return-object v1

    .line 194
    :cond_2
    move-object v1, v2

    .end local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    :goto_1
    check-cast v7, Lretrofit2/Response;

    move-object v2, v1

    goto :goto_2

    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v6    # "phoneId":Ljava/lang/String;
    :cond_3
    move-object v7, v3

    .end local v6    # "phoneId":Ljava/lang/String;
    :goto_2
    move-object v1, v7

    .line 196
    .local v1, "response":Lretrofit2/Response;
    const/4 v6, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v7

    if-ne v7, v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    if-eqz v4, :cond_5

    .line 197
    .end local v1    # "response":Lretrofit2/Response;
    const-string v1, "Heartbeat envoy\u00e9 avec succ\u00e8s"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, v2, Lcom/smsgateway/app/service/MessageManager;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/smsgateway/app/utils/PreferencesManager;->setLastHeartbeat(J)V

    goto :goto_5

    .line 200
    .end local v2    # "this":Lcom/smsgateway/app/service/MessageManager;
    .restart local v1    # "response":Lretrofit2/Response;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00c9chec envoi heartbeat: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    .end local v1    # "response":Lretrofit2/Response;
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Erreur envoi heartbeat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final startHeartbeat()V
    .locals 8

    .line 172
    iget-boolean v0, p0, Lcom/smsgateway/app/service/MessageManager;->isHeartbeatRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 174
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smsgateway/app/service/MessageManager;->isHeartbeatRunning:Z

    .line 175
    const-string v0, "MessageManager"

    const-string v1, "D\u00e9marrage des heartbeats (toutes les minutes)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/smsgateway/app/service/MessageManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v0, Lcom/smsgateway/app/service/MessageManager$startHeartbeat$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smsgateway/app/service/MessageManager$startHeartbeat$1;-><init>(Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 187
    return-void
.end method

.method private final startPeriodicCleanup()V
    .locals 8

    .line 208
    const-string v0, "MessageManager"

    const-string v1, "D\u00e9marrage du nettoyage p\u00e9riodique des messages obsol\u00e8tes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/smsgateway/app/service/MessageManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v0, Lcom/smsgateway/app/service/MessageManager$startPeriodicCleanup$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smsgateway/app/service/MessageManager$startPeriodicCleanup$1;-><init>(Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 231
    return-void
.end method


# virtual methods
.method public final clearProcessingMessages()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 168
    const-string v0, "MessageManager"

    const-string v1, "Messages en cours de traitement effac\u00e9s"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public final getDetailedStats()Ljava/lang/String;
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 238
    .local v0, "processingCount":I
    iget-object v1, p0, Lcom/smsgateway/app/service/MessageManager;->enhancedSmsService:Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-virtual {v1}, Lcom/smsgateway/app/service/EnhancedSmsService;->getPendingMessagesCount()I

    move-result v1

    .line 240
    .local v1, "pendingCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Messages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " en traitement, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " en attente de confirmation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getProcessingMessagesCount()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final isMessageProcessing(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    const-string v0, "messageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->processingMessages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final startMessagePolling()V
    .locals 8

    .line 34
    iget-boolean v0, p0, Lcom/smsgateway/app/service/MessageManager;->isPolling:Z

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smsgateway/app/service/MessageManager;->isPolling:Z

    .line 37
    iget-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->enhancedSmsService:Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-virtual {v0}, Lcom/smsgateway/app/service/EnhancedSmsService;->initialize()V

    .line 38
    const-string v0, "MessageManager"

    const-string v1, "D\u00e9marrage du polling des messages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v2, p0, Lcom/smsgateway/app/service/MessageManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v0, Lcom/smsgateway/app/service/MessageManager$startMessagePolling$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smsgateway/app/service/MessageManager$startMessagePolling$1;-><init>(Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 53
    invoke-direct {p0}, Lcom/smsgateway/app/service/MessageManager;->startHeartbeat()V

    .line 56
    invoke-direct {p0}, Lcom/smsgateway/app/service/MessageManager;->startPeriodicCleanup()V

    .line 57
    return-void
.end method

.method public final stopMessagePolling()V
    .locals 2

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smsgateway/app/service/MessageManager;->isPolling:Z

    .line 61
    iput-boolean v0, p0, Lcom/smsgateway/app/service/MessageManager;->isHeartbeatRunning:Z

    .line 62
    iget-object v0, p0, Lcom/smsgateway/app/service/MessageManager;->enhancedSmsService:Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-virtual {v0}, Lcom/smsgateway/app/service/EnhancedSmsService;->cleanup()V

    .line 63
    const-string v0, "MessageManager"

    const-string v1, "Arr\u00eat du polling des messages et heartbeats"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method
