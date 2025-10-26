.class final Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/ui/MainActivity;->syncSimsWithServer()V
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
    c = "com.smsgateway.app.ui.MainActivity$syncSimsWithServer$2"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x140
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $phoneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/smsgateway/app/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/smsgateway/app/ui/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/ui/MainActivity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    iput-object p2, p0, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->$phoneId:Ljava/lang/String;

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

    new-instance v0, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;

    iget-object v1, p0, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    iget-object v2, p0, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->$phoneId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;-><init>(Lcom/smsgateway/app/ui/MainActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string v0, "\u2705 "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 286
    iget v2, p0, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->label:I

    const-string v3, "tvStatus"

    const-string v4, "btnSyncSims"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    move-object v1, p1

    goto/16 :goto_1

    .line 349
    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 345
    :catch_0
    move-exception v0

    goto/16 :goto_b

    .line 286
    .end local v1    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 287
    .local v2, "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 288
    :try_start_1
    iget-object v8, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v8}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v7

    :cond_0
    const-string v9, "\ud83d\udd04 Synchronisation des SIM en cours..."

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v8, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v8}, Lcom/smsgateway/app/ui/MainActivity;->access$getBtnSyncSims$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/Button;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v7

    :cond_1
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    sget-object v8, Lcom/smsgateway/app/utils/SimUtils;->INSTANCE:Lcom/smsgateway/app/utils/SimUtils;

    iget-object v9, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/smsgateway/app/utils/SimUtils;->getAvailableSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 294
    .local v8, "simCards":Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 295
    .end local v8    # "simCards":Ljava/util/List;
    iget-object v0, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v0}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_2
    const-string v1, "\u26a0\ufe0f Aucune SIM d\u00e9tect\u00e9e pour la synchronisation"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    const-string v1, "\ud83d\udd0d Aucune SIM D\u00e9tect\u00e9e"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 300
    const-string v1, "Causes possibles :\n\n\u2022 Permissions manquantes (READ_PHONE_NUMBERS)\n\u2022 Cartes SIM non actives\n\u2022 Probl\u00e8me syst\u00e8me Android\n\nV\u00e9rifiez que :\n\u2022 Les SIM sont bien ins\u00e9r\u00e9es\n\u2022 L\'application a toutes les permissions\n\u2022 Le t\u00e9l\u00e9phone d\u00e9tecte les SIM dans les Param\u00e8tres"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 308
    const-string v1, "OK"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 310
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 349
    iget-object v1, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v1}, Lcom/smsgateway/app/ui/MainActivity;->access$getBtnSyncSims$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v7, v1

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 310
    return-object v0

    .line 314
    .restart local v8    # "simCards":Ljava/util/List;
    :cond_4
    :try_start_2
    new-instance v9, Lcom/smsgateway/app/data/model/SimSyncRequest;

    .line 315
    iget-object v10, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->$phoneId:Ljava/lang/String;

    .line 316
    nop

    .line 314
    .end local v8    # "simCards":Ljava/util/List;
    invoke-direct {v9, v10, v8}, Lcom/smsgateway/app/data/model/SimSyncRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v8, v9

    .line 320
    .local v8, "syncRequest":Lcom/smsgateway/app/data/model/SimSyncRequest;
    sget-object v9, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v9}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object v10, v2

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v6, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->label:I

    invoke-interface {v9, v8, v10}, Lcom/smsgateway/app/data/api/ApiService;->syncSims(Lcom/smsgateway/app/data/model/SimSyncRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v8    # "syncRequest":Lcom/smsgateway/app/data/model/SimSyncRequest;
    if-ne v9, v1, :cond_5

    .line 286
    return-object v1

    .line 320
    :cond_5
    move-object v1, p1

    move-object p1, v9

    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    :goto_1
    :try_start_3
    check-cast p1, Lretrofit2/Response;

    goto :goto_2

    .line 349
    :catchall_1
    move-exception v0

    move-object p1, v1

    move-object v1, v2

    goto/16 :goto_e

    .line 345
    :catch_1
    move-exception v0

    move-object p1, v1

    move-object v1, v2

    goto/16 :goto_b

    .line 320
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v8    # "syncRequest":Lcom/smsgateway/app/data/model/SimSyncRequest;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_6
    move-object v1, p1

    move-object p1, v7

    .line 322
    .end local v8    # "syncRequest":Lcom/smsgateway/app/data/model/SimSyncRequest;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local p1, "response":Lretrofit2/Response;
    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v8

    if-ne v8, v6, :cond_7

    move v8, v6

    goto :goto_3

    :cond_7
    move v8, v5

    :goto_3
    if-eqz v8, :cond_f

    .line 323
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smsgateway/app/data/api/ApiResponse;

    move-object p1, v8

    .line 324
    .local p1, "responseBody":Lcom/smsgateway/app/data/api/ApiResponse;
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/smsgateway/app/data/api/ApiResponse;->getSuccess()Z

    move-result v8

    if-ne v8, v6, :cond_8

    move v8, v6

    goto :goto_4

    :cond_8
    move v8, v5

    :goto_4
    if-eqz v8, :cond_c

    .line 325
    invoke-virtual {p1}, Lcom/smsgateway/app/data/api/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smsgateway/app/data/model/SimSyncResponse;

    move-object p1, v8

    .line 326
    .local p1, "syncData":Lcom/smsgateway/app/data/model/SimSyncResponse;
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/SimSyncResponse;->getSyncedCount()I

    move-result v8

    .end local p1    # "syncData":Lcom/smsgateway/app/data/model/SimSyncResponse;
    goto :goto_5

    :cond_9
    move v8, v5

    :goto_5
    move p1, v8

    .line 328
    .local p1, "syncedCount":I
    iget-object v8, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v8}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v7

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " SIM(s) synchronis\u00e9e(s) avec succ\u00e8s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v8, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    check-cast v8, Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " SIM(s) synchronis\u00e9e(s)"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v8, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 332
    iget-object v0, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v0}, Lcom/smsgateway/app/ui/MainActivity;->access$refreshData(Lcom/smsgateway/app/ui/MainActivity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    .end local p1    # "syncedCount":I
    iget-object p1, v2, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {p1}, Lcom/smsgateway/app/ui/MainActivity;->access$getBtnSyncSims$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object v7, p1

    :goto_6
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    goto/16 :goto_d

    .line 334
    .local p1, "responseBody":Lcom/smsgateway/app/data/api/ApiResponse;
    :cond_c
    :try_start_4
    new-instance v0, Ljava/lang/Exception;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/smsgateway/app/data/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    .end local p1    # "responseBody":Lcom/smsgateway/app/data/api/ApiResponse;
    if-nez v5, :cond_e

    :cond_d
    const-string v5, "Erreur de synchronisation"

    :cond_e
    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    throw v0

    .line 337
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    .local p1, "response":Lretrofit2/Response;
    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :cond_10
    move-object v0, v7

    .line 338
    .local v0, "errorCode":Ljava/lang/Integer;
    :goto_7
    if-nez v0, :cond_11

    :goto_8
    goto :goto_9

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x194

    if-eq v5, v8, :cond_13

    goto :goto_8

    .line 341
    :goto_9
    new-instance v5, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Erreur serveur ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    .end local v0    # "errorCode":Ljava/lang/Integer;
    .end local p1    # "response":Lretrofit2/Response;
    :cond_12
    move-object v9, v7

    :goto_a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    throw v5

    .line 339
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    :cond_13
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "T\u00e9l\u00e9phone non trouv\u00e9 sur le serveur. Veuillez d\'abord actualiser."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 349
    .restart local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    .local p1, "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_e

    .line 345
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 346
    .end local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    :goto_b
    :try_start_5
    iget-object v2, v1, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v2}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_14

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v7

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u274c Erreur de synchronisation: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v2, v1, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    check-cast v2, Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Erreur: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v0}, Lcom/smsgateway/app/ui/MainActivity;->access$getBtnSyncSims$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    move-object v7, v0

    :goto_c
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    move-object v2, v1

    move-object v1, p1

    .line 351
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    :goto_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 349
    .end local v2    # "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    .local v1, "this":Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :goto_e
    iget-object v2, v1, Lcom/smsgateway/app/ui/MainActivity$syncSimsWithServer$2;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v2}, Lcom/smsgateway/app/ui/MainActivity;->access$getBtnSyncSims$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_16

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_f

    :cond_16
    move-object v7, v2

    :goto_f
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
