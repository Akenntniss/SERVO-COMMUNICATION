.class final Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/ui/MainActivity;->registerPhone(Ljava/util/List;)V
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
    c = "com.smsgateway.app.ui.MainActivity$registerPhone$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0xee
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
            "Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

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

    new-instance v0, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;

    iget-object v1, p0, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-direct {v0, v1, p2}, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;-><init>(Lcom/smsgateway/app/ui/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "MODEL"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 227
    iget v2, p0, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->label:I

    const-string v3, "tvStatus"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    move-object v0, p1

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    goto/16 :goto_9

    .line 227
    .end local v0    # "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 228
    .local v2, "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 229
    :try_start_1
    iget-object v6, v2, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v6}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_0
    const-string v7, "\ud83d\udd04 Enregistrement du t\u00e9l\u00e9phone..."

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v6, Lcom/smsgateway/app/data/model/PhoneRegistration;

    .line 232
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v9, "RELEASE"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    const-string v9, "1.0.0"

    .line 231
    invoke-direct {v6, v7, v8, v0, v9}, Lcom/smsgateway/app/data/model/PhoneRegistration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 238
    .local v0, "phoneData":Lcom/smsgateway/app/data/model/PhoneRegistration;
    sget-object v6, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v6}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v4, v2, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->label:I

    invoke-interface {v6, v0, v7}, Lcom/smsgateway/app/data/api/ApiService;->registerPhone(Lcom/smsgateway/app/data/model/PhoneRegistration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v0    # "phoneData":Lcom/smsgateway/app/data/model/PhoneRegistration;
    if-ne v6, v1, :cond_1

    .line 227
    return-object v1

    .line 238
    :cond_1
    move-object v0, p1

    move-object p1, v6

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast p1, Lretrofit2/Response;

    goto :goto_1

    .line 255
    :catch_1
    move-exception v1

    move-object p1, v0

    move-object v0, v2

    goto/16 :goto_9

    .line 238
    .local v0, "phoneData":Lcom/smsgateway/app/data/model/PhoneRegistration;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_2
    move-object v0, p1

    move-object p1, v5

    .line 239
    .local v0, "$result":Ljava/lang/Object;
    .local p1, "response":Lretrofit2/Response;
    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v6

    if-ne v6, v4, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    if-eqz v6, :cond_c

    .line 240
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smsgateway/app/data/api/ApiResponse;

    move-object p1, v6

    .line 241
    .local p1, "responseBody":Lcom/smsgateway/app/data/api/ApiResponse;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/smsgateway/app/data/api/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    goto :goto_3

    .end local p1    # "responseBody":Lcom/smsgateway/app/data/api/ApiResponse;
    :cond_4
    move-object v6, v5

    :goto_3
    instance-of p1, v6, Ljava/util/Map;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object v6, v5

    :goto_4
    move-object p1, v6

    .line 242
    .local p1, "phoneDataResponse":Ljava/util/Map;
    if-eqz p1, :cond_6

    const-string v6, "phone_id"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local p1    # "phoneDataResponse":Ljava/util/Map;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_6
    move-object p1, v5

    .line 244
    .local p1, "newPhoneId":Ljava/lang/String;
    :goto_5
    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    goto :goto_6

    :cond_7
    move v6, v1

    goto :goto_7

    :cond_8
    :goto_6
    move v6, v4

    :goto_7
    if-nez v6, :cond_b

    .line 245
    iget-object v6, v2, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v6}, Lcom/smsgateway/app/ui/MainActivity;->access$getPreferencesManager$p(Lcom/smsgateway/app/ui/MainActivity;)Lcom/smsgateway/app/utils/PreferencesManager;

    move-result-object v6

    if-nez v6, :cond_9

    const-string v6, "preferencesManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_9
    invoke-virtual {v6, p1}, Lcom/smsgateway/app/utils/PreferencesManager;->setPhoneId(Ljava/lang/String;)V

    .line 246
    .end local p1    # "newPhoneId":Ljava/lang/String;
    iget-object p1, v2, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {p1}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_a
    const-string v6, "\u2705 T\u00e9l\u00e9phone enregistr\u00e9 avec succ\u00e8s"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object p1, v2, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    check-cast p1, Landroid/content/Context;

    const-string v6, "T\u00e9l\u00e9phone enregistr\u00e9 avec succ\u00e8s"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {p1, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    .line 249
    :cond_b
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "ID t\u00e9l\u00e9phone non re\u00e7u"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    throw p1

    .line 252
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    .local p1, "response":Lretrofit2/Response;
    :cond_c
    new-instance v1, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Erreur lors de l\'enregistrement: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .end local p1    # "response":Lretrofit2/Response;
    :cond_d
    move-object v7, v5

    :goto_8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 255
    .restart local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    .local p1, "$result":Ljava/lang/Object;
    :catch_2
    move-exception v1

    move-object v0, v2

    .line 256
    .end local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    .local v0, "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    .local v1, "e":Ljava/lang/Exception;
    :goto_9
    iget-object v2, v0, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v2}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    move-object v5, v2

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u274c Erreur d\'enregistrement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, v0, Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    check-cast v2, Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Erreur: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move-object v2, v0

    move-object v0, p1

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$registerPhone$1;
    :goto_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
