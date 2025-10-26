.class public final Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "EnhancedSmsService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/service/EnhancedSmsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/smsgateway/app/service/EnhancedSmsService$sentReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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


# instance fields
.field final synthetic this$0:Lcom/smsgateway/app/service/EnhancedSmsService;


# direct methods
.method constructor <init>(Lcom/smsgateway/app/service/EnhancedSmsService;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/smsgateway/app/service/EnhancedSmsService;

    iput-object p1, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 33
    if-eqz p2, :cond_2

    const-string v0, "messageId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 34
    .local v0, "messageId":Ljava/lang/String;
    :cond_0
    const-string v1, "partIndex"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 36
    .local v1, "partIndex":I
    invoke-virtual {p0}, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->getResultCode()I

    move-result v2

    const/16 v3, 0x29

    const-string v4, " (partie "

    const-string v5, "EnhancedSmsService"

    packed-switch v2, :pswitch_data_0

    .line 73
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u2753 \u00c9chec SMS inconnu ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->getResultCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN_ERROR_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->getResultCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$reportFailure(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-static {v2, v0}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$cleanupMultipartTracker(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udcf6 Pas de service SMS: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    const-string v3, "NO_SERVICE"

    invoke-static {v2, v0, v3}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$reportFailure(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-static {v2, v0}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$cleanupMultipartTracker(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udcf1 PDU null SMS: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    const-string v3, "NULL_PDU"

    invoke-static {v2, v0, v3}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$reportFailure(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-static {v2, v0}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$cleanupMultipartTracker(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udce1 Radio \u00e9teinte SMS: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    const-string v3, "RADIO_OFF"

    invoke-static {v2, v0, v3}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$reportFailure(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-static {v2, v0}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$cleanupMultipartTracker(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u274c \u00c9chec g\u00e9n\u00e9rique SMS: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    const-string v3, "GENERIC_FAILURE"

    invoke-static {v2, v0, v3}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$reportFailure(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-static {v2, v0}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$cleanupMultipartTracker(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :pswitch_5
    if-ltz v1, :cond_1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83d\udccb SMS multipart partie "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " envoy\u00e9e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    invoke-static {v2, v0, v1}, Lcom/smsgateway/app/service/EnhancedSmsService;->access$handleMultipartSuccess(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;I)V

    goto :goto_0

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2705 SMS simple envoy\u00e9: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1$onReceive$1;

    iget-object v6, p0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;->this$0:Lcom/smsgateway/app/service/EnhancedSmsService;

    const/4 v7, 0x0

    invoke-direct {v2, v6, v0, v7}, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1$onReceive$1;-><init>(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 78
    :goto_0
    return-void

    .line 33
    .end local v0    # "messageId":Ljava/lang/String;
    .end local v1    # "partIndex":I
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
