.class final Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/ui/MainActivity;->showServerConfigDialog()V
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
    c = "com.smsgateway.app.ui.MainActivity$showServerConfigDialog$3$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x1f9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $etCloudUrl:Landroid/widget/EditText;

.field final synthetic $etLocalIp:Landroid/widget/EditText;

.field final synthetic $rbLocal:Landroid/widget/RadioButton;

.field label:I

.field final synthetic this$0:Lcom/smsgateway/app/ui/MainActivity;


# direct methods
.method constructor <init>(Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/smsgateway/app/ui/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RadioButton;",
            "Landroid/widget/EditText;",
            "Landroid/widget/EditText;",
            "Lcom/smsgateway/app/ui/MainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->$rbLocal:Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->$etLocalIp:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->$etCloudUrl:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;

    iget-object v1, p0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->$rbLocal:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->$etLocalIp:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->$etCloudUrl:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;-><init>(Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/smsgateway/app/ui/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 492
    iget v1, p0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 508
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 492
    .end local v0    # "this":Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 493
    .local v1, "this":Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 494
    :try_start_1
    iget-object v4, v1, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->$rbLocal:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "local"

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v4, "cloud"

    .line 495
    .local v4, "testServerType":Ljava/lang/String;
    :goto_0
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .end local v4    # "testServerType":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 496
    iget-object v4, v1, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->$etLocalIp:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "ip":Ljava/lang/String;
    const-string v5, "http"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v2, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .end local v4    # "ip":Ljava/lang/String;
    goto :goto_1

    .line 499
    :cond_2
    iget-object v4, v1, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->$etCloudUrl:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    :goto_1
    nop

    .line 502
    .local v4, "testUrl":Ljava/lang/String;
    sget-object v5, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v5, v4}, Lcom/smsgateway/app/data/api/ApiClient;->updateBaseUrl(Ljava/lang/String;)V

    .line 505
    .end local v4    # "testUrl":Ljava/lang/String;
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, v1, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->label:I

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v4, v0, :cond_3

    .line 492
    return-object v0

    .line 505
    :cond_3
    move-object v0, v1

    .line 506
    .end local v1    # "this":Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;
    .restart local v0    # "this":Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;
    :goto_2
    :try_start_3
    iget-object v1, v0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    check-cast v1, Landroid/content/Context;

    const-string v4, "\u2705 Test de connexion r\u00e9ussi !"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 508
    .end local v0    # "this":Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;
    .restart local v1    # "this":Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;
    :catch_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 509
    .restart local v0    # "this":Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    iget-object v2, v0, Lcom/smsgateway/app/ui/MainActivity$showServerConfigDialog$3$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    check-cast v2, Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u274c Erreur de connexion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 511
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
