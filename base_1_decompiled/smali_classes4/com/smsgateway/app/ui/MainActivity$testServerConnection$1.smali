.class final Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/ui/MainActivity;->testServerConnection()V
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
    c = "com.smsgateway.app.ui.MainActivity$testServerConnection$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x263,
        0x265
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/smsgateway/app/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/smsgateway/app/ui/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/ui/MainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;

    iget-object v1, p0, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-direct {v0, v1, p2}, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;-><init>(Lcom/smsgateway/app/ui/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 605
    iget v1, p0, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->label:I

    const-string v2, "MainActivity"

    const/4 v3, 0x1

    const-string v4, "tvConnectionStatus"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .line 622
    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 605
    .end local v0    # "this":Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 622
    :catch_1
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_4

    .line 605
    .end local v1    # "this":Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 606
    .restart local v1    # "this":Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 607
    :try_start_2
    iget-object v6, v1, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v6}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvConnectionStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_0
    const-string v7, "Connexion: \ud83d\udd04 Test en cours..."

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v6, v1, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v6}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvConnectionStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_1
    const/16 v7, -0x6800

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, v1, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->label:I

    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8, v6}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_2

    .line 605
    return-object v0

    .line 613
    :cond_2
    :goto_0
    sget-object v6, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v6}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object v7, v1

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v8, 0x2

    iput v8, v1, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->label:I

    invoke-interface {v6, v7}, Lcom/smsgateway/app/data/api/ApiService;->getAllSims(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v6, v0, :cond_3

    .line 605
    return-object v0

    .line 613
    :cond_3
    move-object v0, p1

    move-object p1, v6

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_1
    :try_start_3
    check-cast p1, Lretrofit2/Response;

    goto :goto_2

    .line 622
    :catch_2
    move-exception p1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v9

    goto :goto_4

    .line 613
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_4
    move-object v0, p1

    move-object p1, v5

    .line 614
    .restart local v0    # "$result":Ljava/lang/Object;
    .local p1, "response":Lretrofit2/Response;
    :goto_2
    const/4 v6, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v7

    if-ne v7, v3, :cond_5

    move v6, v3

    :cond_5
    if-eqz v6, :cond_8

    .line 615
    .end local p1    # "response":Lretrofit2/Response;
    iget-object p1, v1, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {p1}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvConnectionStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_6
    const-string v6, "Connexion: \u2705 Connect\u00e9"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object p1, v1, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {p1}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvConnectionStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_7
    const v6, -0xb350b0

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    const-string p1, "\u2705 Connexion au serveur r\u00e9ussie"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 619
    .restart local p1    # "response":Lretrofit2/Response;
    :cond_8
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Erreur serveur: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_3

    .end local p1    # "response":Lretrofit2/Response;
    :cond_9
    move-object v8, v5

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "this":Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 623
    .local v0, "this":Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;
    .local v1, "e":Ljava/lang/Exception;
    .local p1, "$result":Ljava/lang/Object;
    :goto_4
    iget-object v6, v0, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v6}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvConnectionStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_a
    const-string v7, "Connexion: \u274c Erreur"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v6, v0, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v6}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvConnectionStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move-object v5, v6

    :goto_5
    const v4, -0xbbcca

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u274c Erreur de connexion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v2, v0, Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    check-cast v2, Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

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

    move-object v1, v0

    move-object v0, p1

    .line 628
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/smsgateway/app/ui/MainActivity$testServerConnection$1;
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
