.class public final Lcom/smsgateway/app/ui/SimManagementActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SimManagementActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimManagementActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimManagementActivity.kt\ncom/smsgateway/app/ui/SimManagementActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,413:1\n1864#2,3:414\n*S KotlinDebug\n*F\n+ 1 SimManagementActivity.kt\ncom/smsgateway/app/ui/SimManagementActivity\n*L\n397#1:414,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0011H\u0002J\u0012\u0010\u0016\u001a\u00020\u00112\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0008\u0010\u0019\u001a\u00020\u0011H\u0002J\u0018\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u001b\u001a\u00020\u0011H\u0002J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/smsgateway/app/ui/SimManagementActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "TAG",
        "",
        "apiClient",
        "Lcom/smsgateway/app/data/api/ApiClient;",
        "mainLayout",
        "Landroid/widget/LinearLayout;",
        "preferencesManager",
        "Lcom/smsgateway/app/utils/PreferencesManager;",
        "scrollView",
        "Landroid/widget/ScrollView;",
        "serverSims",
        "",
        "Lcom/smsgateway/app/data/model/SimCard;",
        "createSimConfigCard",
        "",
        "sim",
        "index",
        "",
        "loadSimCards",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "saveAllConfigurations",
        "saveSimConfiguration",
        "setupUI",
        "showError",
        "message",
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
.field private final TAG:Ljava/lang/String;

.field private apiClient:Lcom/smsgateway/app/data/api/ApiClient;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

.field private scrollView:Landroid/widget/ScrollView;

.field private serverSims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8h-v5FGVznopRFrRGCahqPjy-GI(Lcom/smsgateway/app/ui/SimManagementActivity;Lcom/smsgateway/app/data/model/SimCard;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smsgateway/app/ui/SimManagementActivity;->createSimConfigCard$lambda$23$lambda$22(Lcom/smsgateway/app/ui/SimManagementActivity;Lcom/smsgateway/app/data/model/SimCard;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_USaEPmz8miiWM01npMynv06lUE(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smsgateway/app/ui/SimManagementActivity;->setupUI$lambda$5$lambda$4(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 19
    const-string v0, "SimManagementActivity"

    iput-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->serverSims:Ljava/util/List;

    .line 17
    return-void
.end method

.method public static final synthetic access$createSimConfigCard(Lcom/smsgateway/app/ui/SimManagementActivity;Lcom/smsgateway/app/data/model/SimCard;I)V
    .locals 0
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "sim"    # Lcom/smsgateway/app/data/model/SimCard;
    .param p2, "index"    # I

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/smsgateway/app/ui/SimManagementActivity;->createSimConfigCard(Lcom/smsgateway/app/data/model/SimCard;I)V

    return-void
.end method

.method public static final synthetic access$getApiClient$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Lcom/smsgateway/app/data/api/ApiClient;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SimManagementActivity;

    .line 17
    iget-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->apiClient:Lcom/smsgateway/app/data/api/ApiClient;

    return-object v0
.end method

.method public static final synthetic access$getMainLayout$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SimManagementActivity;

    .line 17
    iget-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static final synthetic access$getServerSims$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SimManagementActivity;

    .line 17
    iget-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->serverSims:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p(Lcom/smsgateway/app/ui/SimManagementActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SimManagementActivity;

    .line 17
    iget-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$saveAllConfigurations(Lcom/smsgateway/app/ui/SimManagementActivity;)V
    .locals 0
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SimManagementActivity;

    .line 17
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->saveAllConfigurations()V

    return-void
.end method

.method public static final synthetic access$setServerSims$p(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "<set-?>"    # Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->serverSims:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$showError(Lcom/smsgateway/app/ui/SimManagementActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "message"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/smsgateway/app/ui/SimManagementActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method private final createSimConfigCard(Lcom/smsgateway/app/data/model/SimCard;I)V
    .locals 22
    .param p1, "sim"    # Lcom/smsgateway/app/data/model/SimCard;
    .param p2, "index"    # I

    .line 186
    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Landroid/widget/LinearLayout;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v2

    .local v3, "$this$createSimConfigCard_u24lambda_u249":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    .line 187
    .local v4, "$i$a$-apply-SimManagementActivity$createSimConfigCard$simCard$1":I
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    const v6, -0xe5e5e6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 189
    const/16 v6, 0x18

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 190
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    nop

    .line 192
    nop

    .line 190
    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    move-object v10, v7

    .local v10, "$this$createSimConfigCard_u24lambda_u249_u24lambda_u248":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    .line 194
    .local v11, "$i$a$-apply-SimManagementActivity$createSimConfigCard$simCard$1$1":I
    const/4 v12, 0x0

    invoke-virtual {v10, v12, v12, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 195
    nop

    .line 193
    .end local v10    # "$this$createSimConfigCard_u24lambda_u249_u24lambda_u248":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$simCard$1$1":I
    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    .line 190
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    nop

    .line 186
    .end local v3    # "$this$createSimConfigCard_u24lambda_u249":Landroid/widget/LinearLayout;
    .end local v4    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$simCard$1":I
    nop

    .line 199
    .local v2, "simCard":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/TextView;

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    .local v4, "$this$createSimConfigCard_u24lambda_u2410":Landroid/widget/TextView;
    const/4 v7, 0x0

    .line 200
    .local v7, "$i$a$-apply-SimManagementActivity$createSimConfigCard$simHeader$1":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\ud83d\udcf1 SIM "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - Slot "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getSlotIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (ID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 202
    const v10, -0xff00bf

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 204
    const/16 v13, 0x10

    invoke-virtual {v4, v12, v12, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 205
    nop

    .line 199
    .end local v4    # "$this$createSimConfigCard_u24lambda_u2410":Landroid/widget/TextView;
    .end local v7    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$simHeader$1":I
    nop

    .line 206
    .local v3, "simHeader":Landroid/widget/TextView;
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    new-instance v4, Landroid/widget/TextView;

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v7, v4

    .local v7, "$this$createSimConfigCard_u24lambda_u2412":Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 210
    .local v14, "$i$a$-apply-SimManagementActivity$createSimConfigCard$simInfo$1":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    .local v16, "$this$createSimConfigCard_u24lambda_u2412_u24lambda_u2411":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .line 211
    .local v17, "$i$a$-buildString-SimManagementActivity$createSimConfigCard$simInfo$1$infoText$1":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\ud83d\udcde Num\u00e9ro: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v18, "N/A"

    if-nez v13, :cond_0

    move-object/from16 v13, v18

    :cond_0
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, v16

    .end local v16    # "$this$createSimConfigCard_u24lambda_u2412_u24lambda_u2411":Ljava/lang/StringBuilder;
    .local v5, "$this$createSimConfigCard_u24lambda_u2412_u24lambda_u2411":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\ud83d\udce1 Op\u00e9rateur: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getCarrierName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    move-object/from16 v11, v18

    :cond_1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\ud83c\udf0d Pays: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getCountryCode()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    move-object/from16 v11, v18

    :cond_2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\ud83d\udcf1 T\u00e9l\u00e9phone: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getPhoneModel()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    move-object/from16 v11, v18

    :cond_3
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\ud83d\udd04 Statut: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->isActive()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "\u2705 Active"

    goto :goto_0

    :cond_4
    const-string v11, "\u274c Inactive"

    :goto_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\ud83d\udcc5 SMS ce mois: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getMessagesSentMonth()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x2f

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getMonthlyLimit()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\ud83d\udc65 Destinataires ce mois: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getRecipientsMonthly()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getRecipientsMonthlyLimit()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    nop

    .line 210
    .end local v5    # "$this$createSimConfigCard_u24lambda_u2412_u24lambda_u2411":Ljava/lang/StringBuilder;
    .end local v17    # "$i$a$-buildString-SimManagementActivity$createSimConfigCard$simInfo$1$infoText$1":I
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .local v5, "infoText":Ljava/lang/String;
    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    const v10, -0x333334

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    invoke-virtual {v7, v12, v12, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    nop

    .line 209
    .end local v5    # "infoText":Ljava/lang/String;
    .end local v7    # "$this$createSimConfigCard_u24lambda_u2412":Landroid/widget/TextView;
    .end local v14    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$simInfo$1":I
    nop

    .line 224
    .local v4, "simInfo":Landroid/widget/TextView;
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    new-instance v5, Landroid/view/View;

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v7, v5

    .local v7, "$this$createSimConfigCard_u24lambda_u2414":Landroid/view/View;
    const/4 v10, 0x0

    .line 228
    .local v10, "$i$a$-apply-SimManagementActivity$createSimConfigCard$separator$1":I
    const v11, -0xcccccd

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 229
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 230
    nop

    .line 231
    nop

    .line 229
    const/4 v14, 0x2

    invoke-direct {v13, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    move-object v15, v13

    .local v15, "$this$createSimConfigCard_u24lambda_u2414_u24lambda_u2413":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x0

    .line 233
    .local v17, "$i$a$-apply-SimManagementActivity$createSimConfigCard$separator$1$1":I
    invoke-virtual {v15, v12, v12, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    nop

    .line 232
    .end local v15    # "$this$createSimConfigCard_u24lambda_u2414_u24lambda_u2413":Landroid/widget/LinearLayout$LayoutParams;
    .end local v17    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$separator$1$1":I
    check-cast v13, Landroid/view/ViewGroup$LayoutParams;

    .line 229
    invoke-virtual {v7, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    nop

    .line 227
    .end local v7    # "$this$createSimConfigCard_u24lambda_u2414":Landroid/view/View;
    .end local v10    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$separator$1":I
    nop

    .line 236
    .local v5, "separator":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    new-instance v7, Landroid/widget/TextView;

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v10, v7

    .local v10, "$this$createSimConfigCard_u24lambda_u2415":Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 240
    .local v13, "$i$a$-apply-SimManagementActivity$createSimConfigCard$configTitle$1":I
    const-string v15, "\u2699\ufe0f CONFIGURATION DES LIMITES"

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 242
    const v6, -0xff00bf

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    const/4 v6, 0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 244
    const/16 v6, 0x10

    invoke-virtual {v10, v12, v12, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 245
    nop

    .line 239
    .end local v10    # "$this$createSimConfigCard_u24lambda_u2415":Landroid/widget/TextView;
    .end local v13    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$configTitle$1":I
    move-object v6, v7

    .line 246
    .local v6, "configTitle":Landroid/widget/TextView;
    move-object v7, v6

    check-cast v7, Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    new-instance v7, Landroid/widget/TextView;

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v10, v7

    .local v10, "$this$createSimConfigCard_u24lambda_u2416":Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 250
    .local v13, "$i$a$-apply-SimManagementActivity$createSimConfigCard$recipientLimitLabel$1":I
    const-string v19, "\ud83d\udc65 Limite de destinataires par mois:"

    move-object/from16 v14, v19

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 252
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    const/16 v14, 0x8

    invoke-virtual {v10, v12, v12, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 254
    nop

    .line 249
    .end local v10    # "$this$createSimConfigCard_u24lambda_u2416":Landroid/widget/TextView;
    .end local v13    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$recipientLimitLabel$1":I
    nop

    .line 255
    .local v7, "recipientLimitLabel":Landroid/widget/TextView;
    move-object v10, v7

    check-cast v10, Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    new-instance v10, Landroid/widget/EditText;

    move-object v13, v0

    check-cast v13, Landroid/content/Context;

    invoke-direct {v10, v13}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v13, v10

    .local v13, "$this$createSimConfigCard_u24lambda_u2418":Landroid/widget/EditText;
    const/16 v19, 0x0

    .line 258
    .local v19, "$i$a$-apply-SimManagementActivity$createSimConfigCard$recipientLimitInput$1":I
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getRecipientsMonthlyLimit()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v13, v15}, Landroid/widget/EditText;->setTextSize(F)V

    .line 260
    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 261
    const v14, -0x777778

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 262
    invoke-virtual {v13, v11}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 263
    const/16 v11, 0x10

    invoke-virtual {v13, v11, v11, v11, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 264
    const/4 v11, 0x2

    invoke-virtual {v13, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 265
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "recipients_monthly_limit_"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getId()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 266
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 267
    nop

    .line 268
    nop

    .line 266
    const/4 v14, -0x2

    invoke-direct {v11, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    move-object v14, v11

    .local v14, "$this$createSimConfigCard_u24lambda_u2418_u24lambda_u2417":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x0

    .line 270
    .local v21, "$i$a$-apply-SimManagementActivity$createSimConfigCard$recipientLimitInput$1$1":I
    const/16 v15, 0x10

    invoke-virtual {v14, v12, v12, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 271
    nop

    .line 269
    .end local v14    # "$this$createSimConfigCard_u24lambda_u2418_u24lambda_u2417":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$recipientLimitInput$1$1":I
    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    .line 266
    invoke-virtual {v13, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    nop

    .line 257
    .end local v13    # "$this$createSimConfigCard_u24lambda_u2418":Landroid/widget/EditText;
    .end local v19    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$recipientLimitInput$1":I
    nop

    .line 273
    .local v10, "recipientLimitInput":Landroid/widget/EditText;
    move-object v11, v10

    check-cast v11, Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    new-instance v11, Landroid/widget/TextView;

    move-object v13, v0

    check-cast v13, Landroid/content/Context;

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v11

    .local v13, "$this$createSimConfigCard_u24lambda_u2419":Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 277
    .local v14, "$i$a$-apply-SimManagementActivity$createSimConfigCard$monthlyLimitLabel$1":I
    const-string v15, "\ud83d\udcc5 Limite SMS par mois:"

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 279
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    const/16 v15, 0x8

    invoke-virtual {v13, v12, v12, v12, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 281
    nop

    .line 276
    .end local v13    # "$this$createSimConfigCard_u24lambda_u2419":Landroid/widget/TextView;
    .end local v14    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$monthlyLimitLabel$1":I
    nop

    .line 282
    .local v11, "monthlyLimitLabel":Landroid/widget/TextView;
    move-object v13, v11

    check-cast v13, Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    new-instance v13, Landroid/widget/EditText;

    move-object v14, v0

    check-cast v14, Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v14, v13

    .local v14, "$this$createSimConfigCard_u24lambda_u2421":Landroid/widget/EditText;
    const/4 v15, 0x0

    .line 285
    .local v15, "$i$a$-apply-SimManagementActivity$createSimConfigCard$monthlyLimitInput$1":I
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getMonthlyLimit()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setTextSize(F)V

    .line 287
    invoke-virtual {v14, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 288
    const v9, -0x777778

    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 289
    const v9, -0xcccccd

    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 290
    const/16 v9, 0x10

    invoke-virtual {v14, v9, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 291
    const/4 v9, 0x2

    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 292
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "monthly_limit_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getId()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 293
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    nop

    .line 295
    nop

    .line 293
    const/4 v12, -0x2

    invoke-direct {v9, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 296
    move-object v12, v9

    .local v12, "$this$createSimConfigCard_u24lambda_u2421_u24lambda_u2420":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x0

    .line 297
    .local v19, "$i$a$-apply-SimManagementActivity$createSimConfigCard$monthlyLimitInput$1$1":I
    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/16 v8, 0x18

    .end local v3    # "simHeader":Landroid/widget/TextView;
    .local v16, "simHeader":Landroid/widget/TextView;
    invoke-virtual {v12, v3, v3, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 298
    nop

    .line 296
    .end local v12    # "$this$createSimConfigCard_u24lambda_u2421_u24lambda_u2420":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$monthlyLimitInput$1$1":I
    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    .line 293
    invoke-virtual {v14, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    nop

    .line 284
    .end local v14    # "$this$createSimConfigCard_u24lambda_u2421":Landroid/widget/EditText;
    .end local v15    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$monthlyLimitInput$1":I
    move-object v3, v13

    .line 300
    .local v3, "monthlyLimitInput":Landroid/widget/EditText;
    move-object v8, v3

    check-cast v8, Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    new-instance v8, Landroid/widget/Button;

    move-object v9, v0

    check-cast v9, Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v9, v8

    .local v9, "$this$createSimConfigCard_u24lambda_u2423":Landroid/widget/Button;
    const/4 v12, 0x0

    .line 304
    .local v12, "$i$a$-apply-SimManagementActivity$createSimConfigCard$saveButton$1":I
    const-string v13, "\ud83d\udcbe Sauvegarder cette SIM"

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 306
    const/high16 v13, -0x1000000

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 307
    const v13, -0xff00bf

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 308
    const/16 v13, 0x18

    const/16 v14, 0x10

    invoke-virtual {v9, v13, v14, v13, v14}, Landroid/widget/Button;->setPadding(IIII)V

    .line 309
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    nop

    .line 311
    nop

    .line 309
    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    new-instance v13, Lcom/smsgateway/app/ui/SimManagementActivity$$ExternalSyntheticLambda1;

    move-object/from16 v14, p1

    invoke-direct {v13, v0, v14, v1}, Lcom/smsgateway/app/ui/SimManagementActivity$$ExternalSyntheticLambda1;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;Lcom/smsgateway/app/data/model/SimCard;I)V

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    nop

    .line 303
    .end local v9    # "$this$createSimConfigCard_u24lambda_u2423":Landroid/widget/Button;
    .end local v12    # "$i$a$-apply-SimManagementActivity$createSimConfigCard$saveButton$1":I
    nop

    .line 315
    .local v8, "saveButton":Landroid/widget/Button;
    move-object v9, v8

    check-cast v9, Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    iget-object v9, v0, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;

    if-nez v9, :cond_5

    const-string v9, "mainLayout"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_5
    move-object v12, v2

    check-cast v12, Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method private static final createSimConfigCard$lambda$23$lambda$22(Lcom/smsgateway/app/ui/SimManagementActivity;Lcom/smsgateway/app/data/model/SimCard;ILandroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "$sim"    # Lcom/smsgateway/app/data/model/SimCard;
    .param p2, "$index"    # I
    .param p3, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/smsgateway/app/ui/SimManagementActivity;->saveSimConfiguration(Lcom/smsgateway/app/data/model/SimCard;I)V

    return-void
.end method

.method private final loadSimCards()V
    .locals 9

    .line 95
    iget-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->TAG:Ljava/lang/String;

    const-string v1, "\ud83d\udd0d Chargement des cartes SIM..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$loadSimCards_u24lambda_u246":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 99
    .local v2, "$i$a$-apply-SimManagementActivity$loadSimCards$loadingText$1":I
    const-string v3, "\u23f3 Chargement des SIM depuis le serveur..."

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    nop

    .line 98
    .end local v1    # "$this$loadSimCards_u24lambda_u246":Landroid/widget/TextView;
    .end local v2    # "$i$a$-apply-SimManagementActivity$loadSimCards$loadingText$1":I
    nop

    .line 105
    .local v0, "loadingText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "mainLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/smsgateway/app/ui/SimManagementActivity$loadSimCards$1;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 171
    return-void
.end method

.method private final saveAllConfigurations()V
    .locals 13

    .line 393
    iget-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->TAG:Ljava/lang/String;

    const-string v1, "\ud83d\udcbe Sauvegarde de toutes les configurations SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, "savedCount":I
    iget-object v1, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->serverSims:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 414
    .local v2, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .line 415
    .local v3, "index$iv":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index$iv":I
    .local v6, "index$iv":I
    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v7, v5

    check-cast v7, Lcom/smsgateway/app/data/model/SimCard;

    .local v3, "index":I
    .local v7, "sim":Lcom/smsgateway/app/data/model/SimCard;
    const/4 v8, 0x0

    .line 398
    .local v8, "$i$a$-forEachIndexed-SimManagementActivity$saveAllConfigurations$1":I
    nop

    .line 399
    :try_start_0
    invoke-direct {p0, v7, v3}, Lcom/smsgateway/app/ui/SimManagementActivity;->saveSimConfiguration(Lcom/smsgateway/app/data/model/SimCard;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :catch_0
    move-exception v9

    .line 402
    .local v9, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u274c Erreur lors de la sauvegarde de la SIM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v9

    check-cast v12, Ljava/lang/Throwable;

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 415
    .end local v3    # "index":I
    .end local v7    # "sim":Lcom/smsgateway/app/data/model/SimCard;
    .end local v8    # "$i$a$-forEachIndexed-SimManagementActivity$saveAllConfigurations$1":I
    move v3, v6

    .end local v5    # "item$iv":Ljava/lang/Object;
    goto :goto_0

    .line 416
    .end local v6    # "index$iv":I
    .local v3, "index$iv":I
    :cond_1
    nop

    .line 407
    .end local v1    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEachIndexed":I
    .end local v3    # "index$iv":I
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2705 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configuration(s) en cours de sauvegarde sur "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->serverSims:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 409
    nop

    .line 406
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 411
    return-void
.end method

.method private final saveSimConfiguration(Lcom/smsgateway/app/data/model/SimCard;I)V
    .locals 16
    .param p1, "sim"    # Lcom/smsgateway/app/data/model/SimCard;
    .param p2, "index"    # I

    .line 321
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/smsgateway/app/ui/SimManagementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udcbe Sauvegarde de la configuration pour SIM ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    nop

    .line 325
    :try_start_0
    iget-object v0, v8, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "mainLayout"

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recipients_monthly_limit_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 326
    .local v0, "recipientsMonthlyLimitInput":Landroid/widget/EditText;
    iget-object v3, v8, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monthly_limit_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object v9, v1

    .line 328
    .local v9, "monthlyLimitInput":Landroid/widget/EditText;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getRecipientsMonthlyLimit()I

    move-result v1

    :goto_1
    move v10, v1

    .line 329
    .local v10, "recipientsMonthlyLimit":I
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/SimCard;->getMonthlyLimit()I

    move-result v1

    :goto_2
    move v11, v1

    .line 331
    .local v11, "monthlyLimit":I
    iget-object v1, v8, Lcom/smsgateway/app/ui/SimManagementActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83d\udcca Limites configur\u00e9es: Recipients/mois="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SMS/mois="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object v1, v8

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;

    const/4 v7, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v11

    move v4, v10

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/smsgateway/app/ui/SimManagementActivity$saveSimConfiguration$1;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;IILcom/smsgateway/app/data/model/SimCard;ILkotlin/coroutines/Continuation;)V

    move-object v5, v15

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 386
    .end local v0    # "recipientsMonthlyLimitInput":Landroid/widget/EditText;
    .end local v9    # "monthlyLimitInput":Landroid/widget/EditText;
    .end local v10    # "recipientsMonthlyLimit":I
    .end local v11    # "monthlyLimit":I
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, v8, Lcom/smsgateway/app/ui/SimManagementActivity;->TAG:Ljava/lang/String;

    const-string v2, "\u274c Erreur lors de la r\u00e9cup\u00e9ration des valeurs"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    move-object v1, v8

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u274c Erreur: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private final setupUI()V
    .locals 12

    .line 44
    new-instance v0, Landroid/widget/ScrollView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$setupUI_u24lambda_u240":Landroid/widget/ScrollView;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-apply-SimManagementActivity$setupUI$1":I
    const v3, -0xf5f5f6

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 46
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 47
    nop

    .line 48
    nop

    .line 46
    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    nop

    .line 44
    .end local v1    # "$this$setupUI_u24lambda_u240":Landroid/widget/ScrollView;
    .end local v2    # "$i$a$-apply-SimManagementActivity$setupUI$1":I
    iput-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->scrollView:Landroid/widget/ScrollView;

    .line 52
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$setupUI_u24lambda_u241":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 53
    .local v2, "$i$a$-apply-SimManagementActivity$setupUI$2":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    const/16 v5, 0x20

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 55
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    nop

    .line 57
    nop

    .line 55
    const/4 v7, -0x2

    invoke-direct {v6, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    nop

    .line 52
    .end local v1    # "$this$setupUI_u24lambda_u241":Landroid/widget/LinearLayout;
    .end local v2    # "$i$a$-apply-SimManagementActivity$setupUI$2":I
    iput-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;

    .line 62
    new-instance v0, Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$setupUI_u24lambda_u242":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 63
    .local v2, "$i$a$-apply-SimManagementActivity$setupUI$titleText$1":I
    const-string v6, "\ud83d\udcdf GESTION DES SIM"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    const v6, -0xff00bf

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 68
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    nop

    .line 62
    .end local v1    # "$this$setupUI_u24lambda_u242":Landroid/widget/TextView;
    .end local v2    # "$i$a$-apply-SimManagementActivity$setupUI$titleText$1":I
    nop

    .line 70
    .local v0, "titleText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;

    const-string v2, "mainLayout"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_0
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v1, Landroid/widget/Button;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v3, v1

    .local v3, "$this$setupUI_u24lambda_u245":Landroid/widget/Button;
    const/4 v10, 0x0

    .line 74
    .local v10, "$i$a$-apply-SimManagementActivity$setupUI$backButton$1":I
    const-string v11, "\ud83d\udd19 Retour"

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 77
    const v4, -0xcccccd

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 78
    const/16 v4, 0x18

    const/16 v11, 0x10

    invoke-virtual {v3, v4, v11, v4, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 79
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    nop

    .line 81
    nop

    .line 79
    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    move-object v7, v4

    .local v7, "$this$setupUI_u24lambda_u245_u24lambda_u243":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    .line 83
    .local v11, "$i$a$-apply-SimManagementActivity$setupUI$backButton$1$1":I
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 84
    invoke-virtual {v7, v8, v8, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 85
    nop

    .line 82
    .end local v7    # "$this$setupUI_u24lambda_u245_u24lambda_u243":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "$i$a$-apply-SimManagementActivity$setupUI$backButton$1$1":I
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 79
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v4, Lcom/smsgateway/app/ui/SimManagementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/smsgateway/app/ui/SimManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/smsgateway/app/ui/SimManagementActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    nop

    .line 73
    .end local v3    # "$this$setupUI_u24lambda_u245":Landroid/widget/Button;
    .end local v10    # "$i$a$-apply-SimManagementActivity$setupUI$backButton$1":I
    nop

    .line 88
    .local v1, "backButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v9

    :cond_1
    move-object v4, v1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    iget-object v3, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->scrollView:Landroid/widget/ScrollView;

    const-string v4, "scrollView"

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v9

    :cond_2
    iget-object v5, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v9

    :cond_3
    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 91
    iget-object v2, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->scrollView:Landroid/widget/ScrollView;

    if-nez v2, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v9, v2

    :goto_0
    check-cast v9, Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/smsgateway/app/ui/SimManagementActivity;->setContentView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method private static final setupUI$lambda$5$lambda$4(Lcom/smsgateway/app/ui/SimManagementActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SimManagementActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->finish()V

    return-void
.end method

.method private final showError(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 174
    new-instance v0, Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$showError_u24lambda_u247":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 175
    .local v2, "$i$a$-apply-SimManagementActivity$showError$errorText$1":I
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 177
    const v3, -0xbbbc

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 180
    nop

    .line 174
    .end local v1    # "$this$showError_u24lambda_u247":Landroid/widget/TextView;
    .end local v2    # "$i$a$-apply-SimManagementActivity$showError$errorText$1":I
    nop

    .line 181
    .local v0, "errorText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->mainLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const-string v1, "mainLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/smsgateway/app/utils/PreferencesManager;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smsgateway/app/utils/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    .line 30
    sget-object v0, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    iput-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->apiClient:Lcom/smsgateway/app/data/api/ApiClient;

    .line 33
    iget-object v0, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "preferencesManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/smsgateway/app/utils/PreferencesManager;->getCurrentServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "serverUrl":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 35
    iget-object v2, p0, Lcom/smsgateway/app/ui/SimManagementActivity;->apiClient:Lcom/smsgateway/app/data/api/ApiClient;

    if-nez v2, :cond_1

    const-string v2, "apiClient"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/smsgateway/app/data/api/ApiClient;->updateBaseUrl(Ljava/lang/String;)V

    .line 38
    :cond_2
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->setupUI()V

    .line 39
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SimManagementActivity;->loadSimCards()V

    .line 40
    return-void
.end method
