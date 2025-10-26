.class final Lcom/smsgateway/app/service/MessageManager$processMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MessageManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/service/MessageManager;->processMessage(Lcom/smsgateway/app/data/model/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.smsgateway.app.service.MessageManager$processMessage$1"
    f = "MessageManager.kt"
    i = {}
    l = {
        0x69,
        0x74
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $message:Lcom/smsgateway/app/data/model/Message;

.field label:I

.field final synthetic this$0:Lcom/smsgateway/app/service/MessageManager;


# direct methods
.method constructor <init>(Lcom/smsgateway/app/data/model/Message;Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/data/model/Message;",
            "Lcom/smsgateway/app/service/MessageManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smsgateway/app/service/MessageManager$processMessage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->$message:Lcom/smsgateway/app/data/model/Message;

    iput-object p2, p0, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->this$0:Lcom/smsgateway/app/service/MessageManager;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/smsgateway/app/service/MessageManager$processMessage$1;

    iget-object v1, p0, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->$message:Lcom/smsgateway/app/data/model/Message;

    iget-object v2, p0, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->this$0:Lcom/smsgateway/app/service/MessageManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/smsgateway/app/service/MessageManager$processMessage$1;-><init>(Lcom/smsgateway/app/data/model/Message;Lcom/smsgateway/app/service/MessageManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/service/MessageManager$processMessage$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 100
    iget v1, p0, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->label:I

    const-string v2, "MessageManager"

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/smsgateway/app/service/MessageManager$processMessage$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "this":Lcom/smsgateway/app/service/MessageManager$processMessage$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/smsgateway/app/service/MessageManager$processMessage$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v3

    goto :goto_1

    .line 100
    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager$processMessage$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 101
    .restart local v1    # "this":Lcom/smsgateway/app/service/MessageManager$processMessage$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 103
    :try_start_1
    iget-object v3, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->$message:Lcom/smsgateway/app/data/model/Message;

    invoke-virtual {v3}, Lcom/smsgateway/app/data/model/Message;->getRetryCount()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x3

    const-string v5, "Message "

    if-lt v3, v4, :cond_1

    .line 104
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->$message:Lcom/smsgateway/app/data/model/Message;

    invoke-virtual {v4}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a atteint le nombre max de tentatives"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->this$0:Lcom/smsgateway/app/service/MessageManager;

    iget-object v4, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->$message:Lcom/smsgateway/app/data/model/Message;

    invoke-virtual {v4}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->label:I

    invoke-static {v3, v4, v5}, Lcom/smsgateway/app/service/MessageManager;->access$markMessageAsFinalFailure(Lcom/smsgateway/app/service/MessageManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 100
    return-object v0

    .line 106
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 110
    :cond_1
    iget-object v3, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->this$0:Lcom/smsgateway/app/service/MessageManager;

    invoke-static {v3}, Lcom/smsgateway/app/service/MessageManager;->access$getEnhancedSmsService$p(Lcom/smsgateway/app/service/MessageManager;)Lcom/smsgateway/app/service/EnhancedSmsService;

    move-result-object v3

    iget-object v4, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->$message:Lcom/smsgateway/app/data/model/Message;

    invoke-virtual {v3, v4}, Lcom/smsgateway/app/service/EnhancedSmsService;->sendSms(Lcom/smsgateway/app/data/model/Message;)V

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->$message:Lcom/smsgateway/app/data/model/Message;

    invoke-virtual {v4}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " envoy\u00e9 au service SMS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Erreur lors du traitement du message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->$message:Lcom/smsgateway/app/data/model/Message;

    invoke-virtual {v5}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->this$0:Lcom/smsgateway/app/service/MessageManager;

    iget-object v4, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->$message:Lcom/smsgateway/app/data/model/Message;

    invoke-virtual {v4}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROCESSING_ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x2

    iput v7, v1, Lcom/smsgateway/app/service/MessageManager$processMessage$1;->label:I

    invoke-static {v2, v4, v5, v6}, Lcom/smsgateway/app/service/MessageManager;->access$handleMessageError(Lcom/smsgateway/app/service/MessageManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v3    # "e":Ljava/lang/Exception;
    if-ne v2, v0, :cond_2

    .line 100
    return-object v0

    .line 116
    :cond_2
    move-object v0, v1

    .line 118
    .end local v1    # "this":Lcom/smsgateway/app/service/MessageManager$processMessage$1;
    .restart local v0    # "this":Lcom/smsgateway/app/service/MessageManager$processMessage$1;
    :goto_2
    move-object v1, v0

    .end local v0    # "this":Lcom/smsgateway/app/service/MessageManager$processMessage$1;
    .restart local v1    # "this":Lcom/smsgateway/app/service/MessageManager$processMessage$1;
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
