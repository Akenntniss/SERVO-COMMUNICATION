.class final Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EnhancedSmsService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/service/EnhancedSmsService;->handleMultipartSuccess(Ljava/lang/String;I)V
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
    c = "com.smsgateway.app.service.EnhancedSmsService$handleMultipartSuccess$1"
    f = "EnhancedSmsService.kt"
    i = {}
    l = {
        0xdd
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $messageId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/smsgateway/app/service/EnhancedSmsService;


# direct methods
.method constructor <init>(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/service/EnhancedSmsService;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    iput-object p2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->$messageId:Ljava/lang/String;

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

    new-instance v0, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;

    iget-object v1, p0, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->$messageId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;-><init>(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 220
    iget v1, p0, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 221
    .local v1, "this":Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, v1, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->label:I

    const-wide/32 v3, 0xafc8

    invoke-static {v3, v4, v2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 220
    return-object v0

    .line 221
    :cond_0
    move-object v0, v1

    .line 222
    .end local v1    # "this":Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;
    .restart local v0    # "this":Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;
    :goto_0
    iget-object v1, v0, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    iget-object v2, v0, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;->$messageId:Ljava/lang/String;

    const-string v3, "sent"

    invoke-static {v1, v2, v3}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$reportSuccess(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
