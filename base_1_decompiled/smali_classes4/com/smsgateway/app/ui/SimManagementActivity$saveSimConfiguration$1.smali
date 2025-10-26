.class final Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SimManagementActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/ui/SimManagementActivity;->saveSimConfiguration(Lcom/smsgateway/app/data/model/SimCard;I)V
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
    c = "com.smsgateway.app.ui.SimManagementActivity$saveSimConfiguration$1"
    f = "SimManagementActivity.kt"
    i = {}
    l = {
        0x161
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $monthlyLimit:I

.field final synthetic $recipientsMonthlyLimit:I

.field final synthetic $sim:Lcom/smsgateway/app/data/model/SimCard;

.field label:I

.field final synthetic this$0:Lcom/smsgateway/app/ui/SimManagementActivity;


# direct methods
.method public static synthetic $r8$lambda$2j2jusB_ZROHMmToGoQU3vSaaVY(Lretrofit2/Response;Lcom/smsgateway/app/ui/SimManagementActivity;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->invokeSuspend$lambda$1(Lretrofit2/Response;Lcom/smsgateway/app/ui/SimManagementActivity;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$5TGAIj8JrvBR4Xb-9k-wQM6KmVg(Lcom/smsgateway/app/ui/SimManagementActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->invokeSuspend$lambda$0(Lcom/smsgateway/app/ui/SimManagementActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KUGicMnT3iAMP1WZyn6ZK7In7Xc(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->invokeSuspend$lambda$2(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method constructor <init>(Lcom/smsgateway/app/ui/SimManagementActivity;IILcom/smsgateway/app/data/model/SimCard;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/ui/SimManagementActivity;",
            "II",
            "Lcom/smsgateway/app/data/model/SimCard;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    iput p2, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$monthlyLimit:I

    iput p3, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$recipientsMonthlyLimit:I

    iput-object p4, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$sim:Lcom/smsgateway/app/data/model/SimCard;

    iput p5, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$index:I

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/smsgateway/app/ui/SimManagementActivity;)V
    .locals 3
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SimManagementActivity;

    .line 340
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 341
    const-string v1, "\u274c Service API non disponible"

    check-cast v1, Ljava/lang/CharSequence;

    .line 342
    nop

    .line 339
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 344
    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lretrofit2/Response;Lcom/smsgateway/app/ui/SimManagementActivity;III)V
    .locals 5
    .param p0, "$response"    # Lretrofit2/Response;
    .param p1, "this$0"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p2, "$index"    # I
    .param p3, "$recipientsMonthlyLimit"    # I
    .param p4, "$monthlyLimit"    # I

    .line 356
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/data/api/ApiResponse;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smsgateway/app/data/api/ApiResponse;->getSuccess()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    .line 358
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2705 Configuration SIM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sauvegard\u00e9e\nRecipients/mois: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 360
    nop

    .line 359
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 360
    nop

    .line 359
    const-string v3, "\nSMS/mois: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 361
    nop

    .line 359
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 362
    nop

    .line 357
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/data/api/ApiResponse;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smsgateway/app/data/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Erreur lors de la sauvegarde"

    .line 367
    .local v0, "errorMsg":Ljava/lang/String;
    :cond_3
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u274c Erreur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 369
    nop

    .line 366
    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 372
    .end local v0    # "errorMsg":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "$e"    # Ljava/lang/Exception;

    .line 378
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c Erreur lors de la sauvegarde: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 380
    nop

    .line 377
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 382
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;

    iget-object v1, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    iget v2, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$monthlyLimit:I

    iget v3, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$recipientsMonthlyLimit:I

    iget-object v4, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$sim:Lcom/smsgateway/app/data/model/SimCard;

    iget v5, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$index:I

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;IILcom/smsgateway/app/data/model/SimCard;ILkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 334
    iget v1, p0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 334
    .end local v0    # "this":Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 335
    .local v1, "this":Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 336
    :try_start_1
    iget-object v2, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    invoke-static {v2}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getApiClient$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Lcom/smsgateway/app/data/api/ApiClient;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "apiClient"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v2

    .line 337
    .local v2, "apiService":Lcom/smsgateway/app/data/api/ApiService;
    if-nez v2, :cond_1

    .line 338
    .end local v2    # "apiService":Lcom/smsgateway/app/data/api/ApiService;
    iget-object v0, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    new-instance v2, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1$$ExternalSyntheticLambda0;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;)V

    invoke-virtual {v0, v2}, Lcom/smsgateway/app/ui/SimManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 345
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 348
    .restart local v2    # "apiService":Lcom/smsgateway/app/data/api/ApiService;
    :cond_1
    new-instance v3, Lcom/smsgateway/app/data/model/SimLimitsUpdate;

    .line 349
    iget v4, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$monthlyLimit:I

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    .line 350
    iget v5, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$recipientsMonthlyLimit:I

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    .line 348
    invoke-direct {v3, v4, v5}, Lcom/smsgateway/app/data/model/SimLimitsUpdate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 353
    .local v3, "limitsUpdate":Lcom/smsgateway/app/data/model/SimLimitsUpdate;
    iget-object v4, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$sim:Lcom/smsgateway/app/data/model/SimCard;

    invoke-virtual {v4}, Lcom/smsgateway/app/data/model/SimCard;->getId()I

    move-result v4

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->label:I

    invoke-interface {v2, v4, v3, v5}, Lcom/smsgateway/app/data/api/ApiService;->updateSimLimits(ILcom/smsgateway/app/data/model/SimLimitsUpdate;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v2    # "apiService":Lcom/smsgateway/app/data/api/ApiService;
    .end local v3    # "limitsUpdate":Lcom/smsgateway/app/data/model/SimLimitsUpdate;
    if-ne v4, v0, :cond_2

    .line 334
    return-object v0

    .line 353
    :cond_2
    move-object v0, p1

    move-object p1, v4

    .line 334
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    move-object v3, p1

    check-cast v3, Lretrofit2/Response;

    .line 355
    .local v3, "response":Lretrofit2/Response;
    iget-object p1, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    iget v5, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$index:I

    iget v6, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$recipientsMonthlyLimit:I

    iget v7, v1, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->$monthlyLimit:I

    new-instance v8, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1$$ExternalSyntheticLambda1;

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1$$ExternalSyntheticLambda1;-><init>(Lretrofit2/Response;Lcom/smsgateway/app/ui/SimManagementActivity;III)V

    invoke-virtual {p1, v8}, Lcom/smsgateway/app/ui/SimManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v3    # "response":Lretrofit2/Response;
    goto :goto_2

    .line 374
    :catch_1
    move-exception p1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v9

    goto :goto_1

    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 375
    .local v0, "this":Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, v0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    invoke-static {v2}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getTAG$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u274c Erreur lors de la sauvegarde"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    iget-object v2, v0, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    new-instance v3, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v1}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1$$ExternalSyntheticLambda2;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Lcom/smsgateway/app/ui/SimManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object v1, v0

    move-object v0, p1

    .line 384
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
