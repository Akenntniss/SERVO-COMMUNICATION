.class final Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/ui/MainActivity;->verifyPhoneRegistration(Ljava/lang/String;Ljava/util/List;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,643:1\n1747#2,3:644\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1\n*L\n203#1:644,3\n*E\n"
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
    c = "com.smsgateway.app.ui.MainActivity$verifyPhoneRegistration$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0xc7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $phoneId:Ljava/lang/String;

.field final synthetic $simCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/SimInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/smsgateway/app/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/smsgateway/app/ui/MainActivity;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/ui/MainActivity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/SimInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    iput-object p2, p0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->$phoneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->$simCards:Ljava/util/List;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;

    iget-object v1, p0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    iget-object v2, p0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->$phoneId:Ljava/lang/String;

    iget-object v3, p0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->$simCards:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;-><init>(Lcom/smsgateway/app/ui/MainActivity;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 194
    iget v1, p0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->label:I

    const-string v2, "tvStatus"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    goto/16 :goto_b

    .line 194
    .end local v0    # "this":Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 195
    .local v1, "this":Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 196
    :try_start_1
    iget-object v5, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {v5}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_0
    const-string v6, "\ud83d\udd04 V\u00e9rification de l\'enregistrement..."

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    sget-object v5, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v5}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->label:I

    invoke-interface {v5, v6}, Lcom/smsgateway/app/data/api/ApiService;->getPhones(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v5, v0, :cond_1

    .line 194
    return-object v0

    .line 199
    :cond_1
    move-object v0, p1

    move-object p1, v5

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast p1, Lretrofit2/Response;

    goto :goto_1

    .line 219
    :catch_1
    move-exception p1

    move-object p1, v0

    move-object v0, v1

    goto/16 :goto_b

    .line 199
    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_2
    move-object v0, p1

    move-object p1, v4

    .line 200
    .restart local v0    # "$result":Ljava/lang/Object;
    .local p1, "response":Lretrofit2/Response;
    :goto_1
    const/4 v5, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v6

    if-ne v6, v3, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    if-eqz v6, :cond_f

    .line 201
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smsgateway/app/data/api/ApiResponse;

    move-object p1, v6

    .line 202
    .local p1, "responseBody":Lcom/smsgateway/app/data/api/ApiResponse;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/smsgateway/app/data/api/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    goto :goto_3

    .end local p1    # "responseBody":Lcom/smsgateway/app/data/api/ApiResponse;
    :cond_4
    move-object v6, v4

    :goto_3
    instance-of p1, v6, Ljava/util/List;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object v6, v4

    :goto_4
    move-object p1, v6

    .line 203
    .local p1, "phones":Ljava/util/List;
    if-eqz p1, :cond_b

    move-object v6, p1

    check-cast v6, Ljava/lang/Iterable;

    iget-object v7, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->$phoneId:Ljava/lang/String;

    .end local p1    # "phones":Ljava/util/List;
    move-object p1, v6

    .local p1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 644
    .local v6, "$i$f$any":I
    instance-of v8, p1, Ljava/util/Collection;

    if-eqz v8, :cond_6

    move-object v8, p1

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v5

    goto :goto_7

    .line 645
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local p1    # "$this$any$iv":Ljava/lang/Iterable;
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .local p1, "phone":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 204
    .local v9, "$i$a$-any-MainActivity$verifyPhoneRegistration$1$phoneExists$1":I
    instance-of v10, p1, Ljava/util/Map;

    if-eqz v10, :cond_8

    move-object v10, p1

    check-cast v10, Ljava/util/Map;

    goto :goto_5

    :cond_8
    move-object v10, v4

    .end local p1    # "phone":Ljava/lang/Object;
    :goto_5
    if-eqz v10, :cond_9

    const-string p1, "id"

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_9
    move-object p1, v4

    :goto_6
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 645
    .end local v9    # "$i$a$-any-MainActivity$verifyPhoneRegistration$1$phoneExists$1":I
    if-eqz p1, :cond_7

    goto :goto_7

    .line 646
    :cond_a
    move v3, v5

    .line 203
    .end local v6    # "$i$f$any":I
    :goto_7
    move v5, v3

    goto :goto_8

    .line 205
    :cond_b
    nop

    .line 203
    :goto_8
    move p1, v5

    .line 207
    .local p1, "phoneExists":Z
    nop

    .end local p1    # "phoneExists":Z
    if-eqz p1, :cond_d

    .line 208
    iget-object p1, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {p1}, Lcom/smsgateway/app/ui/MainActivity;->access$getTvStatus$p(Lcom/smsgateway/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    move-object v4, p1

    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2705 T\u00e9l\u00e9phone enregistr\u00e9 (ID: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->$phoneId:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "...)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 211
    :cond_d
    iget-object p1, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    invoke-static {p1}, Lcom/smsgateway/app/ui/MainActivity;->access$getPreferencesManager$p(Lcom/smsgateway/app/ui/MainActivity;)Lcom/smsgateway/app/utils/PreferencesManager;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "preferencesManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    move-object v4, p1

    :goto_a
    const-string p1, ""

    invoke-virtual {v4, p1}, Lcom/smsgateway/app/utils/PreferencesManager;->setPhoneId(Ljava/lang/String;)V

    .line 212
    iget-object p1, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    iget-object v2, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->$simCards:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/smsgateway/app/ui/MainActivity;->access$registerPhone(Lcom/smsgateway/app/ui/MainActivity;Ljava/util/List;)V

    goto :goto_c

    .line 216
    :cond_f
    iget-object p1, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    iget-object v2, v1, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->$simCards:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/smsgateway/app/ui/MainActivity;->access$registerPhone(Lcom/smsgateway/app/ui/MainActivity;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    .line 219
    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 221
    .end local v1    # "this":Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;
    .local v0, "this":Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;
    :goto_b
    iget-object v1, v0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->this$0:Lcom/smsgateway/app/ui/MainActivity;

    iget-object v2, v0, Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;->$simCards:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/smsgateway/app/ui/MainActivity;->access$registerPhone(Lcom/smsgateway/app/ui/MainActivity;Ljava/util/List;)V

    move-object v1, v0

    move-object v0, p1

    .line 223
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v1    # "this":Lcom/smsgateway/app/ui/MainActivity$verifyPhoneRegistration$1;
    :goto_c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
