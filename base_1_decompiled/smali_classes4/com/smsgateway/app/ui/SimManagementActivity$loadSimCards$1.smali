.class final Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SimManagementActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smsgateway/app/ui/SimManagementActivity;->loadSimCards()V
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
    value = "SMAP\nSimManagementActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimManagementActivity.kt\ncom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,413:1\n1864#2,3:414\n*S KotlinDebug\n*F\n+ 1 SimManagementActivity.kt\ncom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1\n*L\n134#1:414,3\n*E\n"
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
    c = "com.smsgateway.app.ui.SimManagementActivity$loadSimCards$1"
    f = "SimManagementActivity.kt"
    i = {}
    l = {
        0x77
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $loadingText:Landroid/widget/TextView;

.field label:I

.field final synthetic this$0:Lcom/smsgateway/app/ui/SimManagementActivity;


# direct methods
.method public static synthetic $r8$lambda$9IkkA4xFlFs1GnlOWpcwCRBjOMc(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->invokeSuspend$lambda$0(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRwox7zeSvcT8N12MInpd2FCxjQ(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->invokeSuspend$lambda$5$lambda$4$lambda$3(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UGrDafXzOcFMofsWf4N0l889008(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->invokeSuspend$lambda$6(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ovdT9a_mcRFyxwWGWBxuRxJjCGI(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Lretrofit2/Response;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->invokeSuspend$lambda$5(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Lretrofit2/Response;)V

    return-void
.end method

.method constructor <init>(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smsgateway/app/ui/SimManagementActivity;",
            "Landroid/widget/TextView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    iput-object p2, p0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->$loadingText:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;)V
    .locals 2
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "$loadingText"    # Landroid/widget/TextView;

    .line 113
    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getMainLayout$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mainLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 114
    const-string v0, "\u274c Service API non disponible"

    invoke-static {p0, v0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$showError(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private static final invokeSuspend$lambda$5(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Lretrofit2/Response;)V
    .locals 12
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "$loadingText"    # Landroid/widget/TextView;
    .param p2, "$response"    # Lretrofit2/Response;

    .line 122
    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getMainLayout$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "mainLayout"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    move-object v3, p1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/data/api/ApiResponse;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smsgateway/app/data/api/ApiResponse;->getSuccess()Z

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v0, :cond_8

    .line 125
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/data/api/ApiResponse;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smsgateway/app/data/api/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_3
    invoke-static {p0, v0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$setServerSims$p(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/util/List;)V

    .line 126
    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getTAG$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udcf1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getServerSims$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SIM(s) charg\u00e9e(s) depuis le serveur"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getServerSims$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    const-string v0, "\u274c Aucune carte SIM trouv\u00e9e sur le serveur"

    invoke-static {p0, v0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$showError(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/lang/String;)V

    .line 130
    return-void

    .line 134
    :cond_4
    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getServerSims$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 414
    .local v5, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .line 415
    .local v6, "index$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "item$iv":Ljava/lang/Object;
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "index$iv":I
    .local v9, "index$iv":I
    if-gez v6, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    move-object v10, v8

    check-cast v10, Lcom/smsgateway/app/data/model/SimCard;

    .local v6, "index":I
    .local v10, "sim":Lcom/smsgateway/app/data/model/SimCard;
    const/4 v11, 0x0

    .line 135
    .local v11, "$i$a$-forEachIndexed-SimManagementActivity$loadSimCards$1$2$1":I
    invoke-static {p0, v10, v6}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$createSimConfigCard(Lcom/smsgateway/app/ui/SimManagementActivity;Lcom/smsgateway/app/data/model/SimCard;I)V

    .line 136
    nop

    .line 415
    .end local v6    # "index":I
    .end local v10    # "sim":Lcom/smsgateway/app/data/model/SimCard;
    .end local v11    # "$i$a$-forEachIndexed-SimManagementActivity$loadSimCards$1$2$1":I
    move v6, v9

    .end local v8    # "item$iv":Ljava/lang/Object;
    goto :goto_1

    .line 416
    .end local v9    # "index$iv":I
    .local v6, "index$iv":I
    :cond_6
    nop

    .line 139
    .end local v0    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "index$iv":I
    new-instance v0, Landroid/widget/Button;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .local v5, "$this$invokeSuspend_u24lambda_u245_u24lambda_u244":Landroid/widget/Button;
    const/4 v6, 0x0

    .line 140
    .local v6, "$i$a$-apply-SimManagementActivity$loadSimCards$1$2$saveAllButton$1":I
    const-string v7, "\ud83d\udcbe SAUVEGARDER TOUTES LES CONFIGURATIONS"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 142
    const/high16 v7, -0x1000000

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 143
    const v7, -0xff00bf

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 144
    const/16 v7, 0x20

    const/16 v8, 0x18

    invoke-virtual {v5, v7, v8, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 145
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    nop

    .line 147
    nop

    .line 145
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    move-object v9, v8

    .local v9, "$this$invokeSuspend_u24lambda_u245_u24lambda_u244_u24lambda_u242":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    .line 149
    .local v10, "$i$a$-apply-SimManagementActivity$loadSimCards$1$2$saveAllButton$1$1":I
    const/16 v11, 0x10

    invoke-virtual {v9, v4, v7, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    nop

    .line 148
    .end local v9    # "$this$invokeSuspend_u24lambda_u245_u24lambda_u244_u24lambda_u242":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "$i$a$-apply-SimManagementActivity$loadSimCards$1$2$saveAllButton$1$1":I
    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    .line 145
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {v5, v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 152
    new-instance v3, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1$$ExternalSyntheticLambda0;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;)V

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    nop

    .line 139
    .end local v5    # "$this$invokeSuspend_u24lambda_u245_u24lambda_u244":Landroid/widget/Button;
    .end local v6    # "$i$a$-apply-SimManagementActivity$loadSimCards$1$2$saveAllButton$1":I
    nop

    .line 154
    .local v0, "saveAllButton":Landroid/widget/Button;
    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getMainLayout$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v2, v3

    :goto_2
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .end local v0    # "saveAllButton":Landroid/widget/Button;
    goto :goto_3

    .line 157
    :cond_8
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/data/api/ApiResponse;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/smsgateway/app/data/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    const-string v0, "Erreur lors du chargement des SIM"

    .line 158
    .local v0, "errorMsg":Ljava/lang/String;
    :cond_a
    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getTAG$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u274c Erreur API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$showError(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/lang/String;)V

    .line 161
    .end local v0    # "errorMsg":Ljava/lang/String;
    :goto_3
    return-void
.end method

.method private static final invokeSuspend$lambda$5$lambda$4$lambda$3(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 152
    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$saveAllConfigurations(Lcom/smsgateway/app/ui/SimManagementActivity;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$6(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "$loadingText"    # Landroid/widget/TextView;
    .param p2, "$e"    # Ljava/lang/Exception;

    .line 166
    invoke-static {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getMainLayout$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mainLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u274c Erreur de connexion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$showError(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/lang/String;)V

    .line 168
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

    new-instance v0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;

    iget-object v1, p0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    iget-object v2, p0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->$loadingText:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2, p2}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 108
    iget v1, p0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_1

    .line 108
    .end local v0    # "this":Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 109
    .local v1, "this":Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 110
    :try_start_1
    iget-object v2, v1, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    invoke-static {v2}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getApiClient$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Lcom/smsgateway/app/data/api/ApiClient;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "apiClient"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/smsgateway/app/data/api/ApiClient;->getApiService()Lcom/smsgateway/app/data/api/ApiService;

    move-result-object v2

    .line 111
    .local v2, "apiService":Lcom/smsgateway/app/data/api/ApiService;
    if-nez v2, :cond_1

    .line 112
    .end local v2    # "apiService":Lcom/smsgateway/app/data/api/ApiService;
    iget-object v0, v1, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    iget-object v2, v1, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->$loadingText:Landroid/widget/TextView;

    new-instance v3, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1$$ExternalSyntheticLambda1;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Lcom/smsgateway/app/ui/SimManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 119
    .restart local v2    # "apiService":Lcom/smsgateway/app/data/api/ApiService;
    :cond_1
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, v1, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->label:I

    invoke-interface {v2, v3}, Lcom/smsgateway/app/data/api/ApiService;->getAllSims(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v2    # "apiService":Lcom/smsgateway/app/data/api/ApiService;
    if-ne v3, v0, :cond_2

    .line 108
    return-object v0

    .line 119
    :cond_2
    move-object v0, p1

    move-object p1, v3

    .line 108
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    check-cast p1, Lretrofit2/Response;

    .line 121
    .local p1, "response":Lretrofit2/Response;
    iget-object v2, v1, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    iget-object v3, v1, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->$loadingText:Landroid/widget/TextView;

    new-instance v4, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v3, p1}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1$$ExternalSyntheticLambda2;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Lretrofit2/Response;)V

    invoke-virtual {v2, v4}, Lcom/smsgateway/app/ui/SimManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local p1    # "response":Lretrofit2/Response;
    goto :goto_2

    .line 163
    :catch_1
    move-exception p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v5

    goto :goto_1

    .end local v0    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 164
    .local v0, "this":Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, v0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    invoke-static {v2}, Lcom/smsgateway/app/ui/SimManagementActivity;->access$getTAG$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u274c Erreur lors du chargement des SIM"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    iget-object v2, v0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->this$0:Lcom/smsgateway/app/ui/SimManagementActivity;

    iget-object v3, v0, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;->$loadingText:Landroid/widget/TextView;

    new-instance v4, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, v3, v1}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1$$ExternalSyntheticLambda3;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Ljava/lang/Exception;)V

    invoke-virtual {v2, v4}, Lcom/smsgateway/app/ui/SimManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object v1, v0

    move-object v0, p1

    .line 170
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "this":Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
