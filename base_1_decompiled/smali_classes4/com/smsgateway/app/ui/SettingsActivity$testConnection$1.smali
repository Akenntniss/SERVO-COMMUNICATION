.class final Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/ui/SettingsActivity;->testConnection()V
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
    c = "com.smsgateway.app.ui.SettingsActivity$testConnection$1"
    f = "SettingsActivity.kt"
    i = {}
    l = {
        0xe2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/smsgateway/app/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/smsgateway/app/ui/SettingsActivity;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/ui/SettingsActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

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

    new-instance v0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;

    iget-object v1, p0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    invoke-direct {v0, v1, p2}, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;-><init>(Lcom/smsgateway/app/ui/SettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 214
    iget v1, p0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "tvStatus"

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 214
    .end local v0    # "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 215
    .local v1, "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 216
    :try_start_1
    iget-object v5, v1, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    invoke-static {v5}, Lcom/smsgateway/app/ui/SettingsActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_0
    const-string v6, "\ud83d\udd04 Test de connexion en cours..."

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v5, v1, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    invoke-static {v5}, Lcom/smsgateway/app/ui/SettingsActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_1
    const v6, -0xff2b01

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v5, v1, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    invoke-static {v5}, Lcom/smsgateway/app/ui/SettingsActivity;->access$getCurrentServerUrl(Lcom/smsgateway/app/ui/SettingsActivity;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "testUrl":Ljava/lang/String;
    sget-object v6, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v6, v5}, Lcom/smsgateway/app/data/api/ApiClient;->updateBaseUrl(Ljava/lang/String;)V

    .line 223
    .end local v5    # "testUrl":Ljava/lang/String;
    sget-object v5, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v5}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v5

    .line 224
    .local v5, "apiService":Lcom/smsgateway/app/data/api/ApiService;
    nop

    .end local v5    # "apiService":Lcom/smsgateway/app/data/api/ApiService;
    if-eqz v5, :cond_5

    .line 226
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, v1, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->label:I

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, v5}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v5, v0, :cond_2

    .line 214
    return-object v0

    .line 226
    :cond_2
    move-object v0, v1

    .line 228
    .end local v1    # "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    .restart local v0    # "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    invoke-static {v1}, Lcom/smsgateway/app/ui/SettingsActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    const-string v5, "\u2705 Connexion r\u00e9ussie !"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, v0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    invoke-static {v1}, Lcom/smsgateway/app/ui/SettingsActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_4
    const v5, -0xb350b0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v1, v0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    check-cast v1, Landroid/content/Context;

    const-string v5, "Connexion r\u00e9ussie !"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 233
    .end local v0    # "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    .restart local v1    # "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v5, "Impossible de cr\u00e9er le service API"

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v1    # "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 236
    .restart local v1    # "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 237
    .restart local v0    # "this":Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v5, v0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    invoke-static {v5}, Lcom/smsgateway/app/ui/SettingsActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u274c Erreur de connexion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v5, v0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    invoke-static {v5}, Lcom/smsgateway/app/ui/SettingsActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v3, v5

    :goto_2
    const v4, -0xbbcca

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v3, v0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;->this$0:Lcom/smsgateway/app/ui/SettingsActivity;

    check-cast v3, Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Erreur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
