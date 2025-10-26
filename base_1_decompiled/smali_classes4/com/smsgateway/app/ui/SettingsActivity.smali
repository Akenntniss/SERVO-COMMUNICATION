.class public final Lcom/smsgateway/app/ui/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0014H\u0002J\u0012\u0010\u0018\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u0014H\u0002J\u0008\u0010\u001c\u001a\u00020\u0014H\u0002J\u0008\u0010\u001d\u001a\u00020\u0014H\u0002J\u0008\u0010\u001e\u001a\u00020\u0014H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/smsgateway/app/ui/SettingsActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "btnBack",
        "Landroid/widget/Button;",
        "btnSave",
        "btnTestConnection",
        "etCloudUrl",
        "Landroid/widget/EditText;",
        "etLocalIp",
        "preferencesManager",
        "Lcom/smsgateway/app/utils/PreferencesManager;",
        "rbCloudServer",
        "Landroid/widget/RadioButton;",
        "rbLocalServer",
        "rgServerType",
        "Landroid/widget/RadioGroup;",
        "tvStatus",
        "Landroid/widget/TextView;",
        "createLayout",
        "",
        "getCurrentServerUrl",
        "",
        "loadCurrentSettings",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "saveSettings",
        "setupClickListeners",
        "testConnection",
        "updateFieldsVisibility",
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
.field private btnBack:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private btnTestConnection:Landroid/widget/Button;

.field private etCloudUrl:Landroid/widget/EditText;

.field private etLocalIp:Landroid/widget/EditText;

.field private preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

.field private rbCloudServer:Landroid/widget/RadioButton;

.field private rbLocalServer:Landroid/widget/RadioButton;

.field private rgServerType:Landroid/widget/RadioGroup;

.field private tvStatus:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$87CFU3-ePzor8NWbZKfAT5MQH6g(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smsgateway/app/ui/SettingsActivity;->setupClickListeners$lambda$18(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BtWFr8cLADiVPfi0R0sAuTJaP8Y(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smsgateway/app/ui/SettingsActivity;->setupClickListeners$lambda$19(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LixQ3_6xvsyR0jVwbKtM2BJc_m8(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smsgateway/app/ui/SettingsActivity;->setupClickListeners$lambda$20(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gyEgxm41YLF9wrwI5WtyWVTRTaA(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smsgateway/app/ui/SettingsActivity;->setupClickListeners$lambda$17(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentServerUrl(Lcom/smsgateway/app/ui/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SettingsActivity;

    .line 12
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->getCurrentServerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTvStatus$p(Lcom/smsgateway/app/ui/SettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "$this"    # Lcom/smsgateway/app/ui/SettingsActivity;

    .line 12
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->tvStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method private final createLayout()V
    .locals 18

    .line 35
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/LinearLayout;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .local v2, "$this$createLayout_u24lambda_u240":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .line 36
    .local v3, "$i$a$-apply-SettingsActivity$createLayout$layout$1":I
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    const/16 v5, 0x20

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 38
    const v6, -0xe5e5e6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 39
    nop

    .line 35
    .end local v2    # "$this$createLayout_u24lambda_u240":Landroid/widget/LinearLayout;
    .end local v3    # "$i$a$-apply-SettingsActivity$createLayout$layout$1":I
    nop

    .line 42
    .local v1, "layout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/TextView;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v3, v2

    .local v3, "$this$createLayout_u24lambda_u241":Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 43
    .local v6, "$i$a$-apply-SettingsActivity$createLayout$title$1":I
    const-string v7, "\u2699\ufe0f Configuration du Serveur"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45
    const v7, -0xff2b01

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    const/16 v8, 0x30

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48
    nop

    .line 42
    .end local v3    # "$this$createLayout_u24lambda_u241":Landroid/widget/TextView;
    .end local v6    # "$i$a$-apply-SettingsActivity$createLayout$title$1":I
    nop

    .line 49
    .local v2, "title":Landroid/widget/TextView;
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v3, Landroid/widget/TextView;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v6, v3

    .local v6, "$this$createLayout_u24lambda_u242":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 53
    .local v8, "$i$a$-apply-SettingsActivity$createLayout$serverTypeLabel$1":I
    const-string v10, "\ud83c\udf10 Type de serveur :"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    const/16 v11, 0x10

    invoke-virtual {v6, v9, v9, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    nop

    .line 52
    .end local v6    # "$this$createLayout_u24lambda_u242":Landroid/widget/TextView;
    .end local v8    # "$i$a$-apply-SettingsActivity$createLayout$serverTypeLabel$1":I
    nop

    .line 58
    .local v3, "serverTypeLabel":Landroid/widget/TextView;
    move-object v6, v3

    check-cast v6, Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v6, Landroid/widget/RadioGroup;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/smsgateway/app/ui/SettingsActivity;->rgServerType:Landroid/widget/RadioGroup;

    .line 62
    new-instance v6, Landroid/widget/RadioButton;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    move-object v8, v6

    .local v8, "$this$createLayout_u24lambda_u243":Landroid/widget/RadioButton;
    const/4 v12, 0x0

    .line 63
    .local v12, "$i$a$-apply-SettingsActivity$createLayout$1":I
    const-string v13, "\ud83c\udfe0 Serveur Local"

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v8, v13}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v8, v13}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 65
    invoke-virtual {v8, v10}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 66
    invoke-virtual {v8, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 67
    nop

    .line 62
    .end local v8    # "$this$createLayout_u24lambda_u243":Landroid/widget/RadioButton;
    .end local v12    # "$i$a$-apply-SettingsActivity$createLayout$1":I
    iput-object v6, v0, Lcom/smsgateway/app/ui/SettingsActivity;->rbLocalServer:Landroid/widget/RadioButton;

    .line 68
    iget-object v4, v0, Lcom/smsgateway/app/ui/SettingsActivity;->rgServerType:Landroid/widget/RadioGroup;

    const-string v6, "rgServerType"

    const/4 v8, 0x0

    if-nez v4, :cond_0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v8

    :cond_0
    iget-object v12, v0, Lcom/smsgateway/app/ui/SettingsActivity;->rbLocalServer:Landroid/widget/RadioButton;

    if-nez v12, :cond_1

    const-string v12, "rbLocalServer"

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v8

    :cond_1
    check-cast v12, Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 70
    new-instance v4, Landroid/widget/RadioButton;

    move-object v12, v0

    check-cast v12, Landroid/content/Context;

    invoke-direct {v4, v12}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    move-object v12, v4

    .local v12, "$this$createLayout_u24lambda_u244":Landroid/widget/RadioButton;
    const/4 v14, 0x0

    .line 71
    .local v14, "$i$a$-apply-SettingsActivity$createLayout$2":I
    const-string v15, "\u2601\ufe0f Serveur Cloud"

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v12, v15}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 73
    invoke-virtual {v12, v10}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 74
    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Landroid/widget/RadioButton;->setId(I)V

    .line 75
    nop

    .line 70
    .end local v12    # "$this$createLayout_u24lambda_u244":Landroid/widget/RadioButton;
    .end local v14    # "$i$a$-apply-SettingsActivity$createLayout$2":I
    iput-object v4, v0, Lcom/smsgateway/app/ui/SettingsActivity;->rbCloudServer:Landroid/widget/RadioButton;

    .line 76
    iget-object v4, v0, Lcom/smsgateway/app/ui/SettingsActivity;->rgServerType:Landroid/widget/RadioGroup;

    if-nez v4, :cond_2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v8

    :cond_2
    iget-object v12, v0, Lcom/smsgateway/app/ui/SettingsActivity;->rbCloudServer:Landroid/widget/RadioButton;

    if-nez v12, :cond_3

    const-string v12, "rbCloudServer"

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v8

    :cond_3
    check-cast v12, Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 78
    iget-object v4, v0, Lcom/smsgateway/app/ui/SettingsActivity;->rgServerType:Landroid/widget/RadioGroup;

    if-nez v4, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v8, v4

    :goto_0
    check-cast v8, Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    new-instance v4, Landroid/widget/TextView;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v6, v4

    .local v6, "$this$createLayout_u24lambda_u245":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 82
    .local v8, "$i$a$-apply-SettingsActivity$createLayout$localIpLabel$1":I
    const-string v12, "\ud83c\udfe0 IP du serveur local :"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    const/16 v12, 0x8

    invoke-virtual {v6, v9, v5, v9, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    nop

    .line 81
    .end local v6    # "$this$createLayout_u24lambda_u245":Landroid/widget/TextView;
    .end local v8    # "$i$a$-apply-SettingsActivity$createLayout$localIpLabel$1":I
    nop

    .line 87
    .local v4, "localIpLabel":Landroid/widget/TextView;
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v6, Landroid/widget/EditText;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v8, v6

    .local v8, "$this$createLayout_u24lambda_u246":Landroid/widget/EditText;
    const/4 v14, 0x0

    .line 90
    .local v14, "$i$a$-apply-SettingsActivity$createLayout$3":I
    const-string v15, "192.168.1.155:3001"

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v8, v13}, Landroid/widget/EditText;->setTextSize(F)V

    .line 92
    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 93
    const v15, -0x777778

    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 94
    const v7, -0xcccccd

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 95
    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 96
    nop

    .line 89
    .end local v8    # "$this$createLayout_u24lambda_u246":Landroid/widget/EditText;
    .end local v14    # "$i$a$-apply-SettingsActivity$createLayout$3":I
    iput-object v6, v0, Lcom/smsgateway/app/ui/SettingsActivity;->etLocalIp:Landroid/widget/EditText;

    .line 97
    check-cast v6, Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    new-instance v6, Landroid/widget/TextView;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v8, v6

    .local v8, "$this$createLayout_u24lambda_u247":Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 101
    .local v14, "$i$a$-apply-SettingsActivity$createLayout$cloudUrlLabel$1":I
    const-string v17, "\u2601\ufe0f URL du serveur cloud :"

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-virtual {v8, v9, v11, v9, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 105
    nop

    .line 100
    .end local v8    # "$this$createLayout_u24lambda_u247":Landroid/widget/TextView;
    .end local v14    # "$i$a$-apply-SettingsActivity$createLayout$cloudUrlLabel$1":I
    move-object v5, v6

    .line 106
    .local v5, "cloudUrlLabel":Landroid/widget/TextView;
    move-object v6, v5

    check-cast v6, Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    new-instance v6, Landroid/widget/EditText;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v8, v6

    .local v8, "$this$createLayout_u24lambda_u248":Landroid/widget/EditText;
    const/4 v14, 0x0

    .line 109
    .local v14, "$i$a$-apply-SettingsActivity$createLayout$4":I
    const-string v17, "https://votre-serveur.com:3001"

    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v8, v13}, Landroid/widget/EditText;->setTextSize(F)V

    .line 111
    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setTextColor(I)V

    .line 112
    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 113
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 114
    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 115
    nop

    .line 108
    .end local v8    # "$this$createLayout_u24lambda_u248":Landroid/widget/EditText;
    .end local v14    # "$i$a$-apply-SettingsActivity$createLayout$4":I
    iput-object v6, v0, Lcom/smsgateway/app/ui/SettingsActivity;->etCloudUrl:Landroid/widget/EditText;

    .line 116
    check-cast v6, Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    new-instance v6, Landroid/widget/TextView;

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v7, v6

    .local v7, "$this$createLayout_u24lambda_u249":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 120
    .local v8, "$i$a$-apply-SettingsActivity$createLayout$5":I
    const-string v12, "\u2139\ufe0f Configurez votre serveur"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    const/16 v12, 0x20

    invoke-virtual {v7, v9, v12, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    const/16 v12, 0x11

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    nop

    .line 119
    .end local v7    # "$this$createLayout_u24lambda_u249":Landroid/widget/TextView;
    .end local v8    # "$i$a$-apply-SettingsActivity$createLayout$5":I
    iput-object v6, v0, Lcom/smsgateway/app/ui/SettingsActivity;->tvStatus:Landroid/widget/TextView;

    .line 126
    check-cast v6, Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v6, Landroid/widget/LinearLayout;

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v7, v6

    .local v7, "$this$createLayout_u24lambda_u2410":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    .line 130
    .local v8, "$i$a$-apply-SettingsActivity$createLayout$buttonLayout$1":I
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    invoke-virtual {v7, v9, v11, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 132
    nop

    .line 129
    .end local v7    # "$this$createLayout_u24lambda_u2410":Landroid/widget/LinearLayout;
    .end local v8    # "$i$a$-apply-SettingsActivity$createLayout$buttonLayout$1":I
    nop

    .line 134
    .local v6, "buttonLayout":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/Button;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v8, v7

    .local v8, "$this$createLayout_u24lambda_u2412":Landroid/widget/Button;
    const/4 v11, 0x0

    .line 135
    .local v11, "$i$a$-apply-SettingsActivity$createLayout$6":I
    const-string v12, "\ud83d\udd0d Tester"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 137
    const v12, -0x63d850

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 138
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v12, v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v15, v12

    .local v15, "$this$createLayout_u24lambda_u2412_u24lambda_u2411":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v16, 0x0

    .line 139
    .local v16, "$i$a$-apply-SettingsActivity$createLayout$6$1":I
    const/16 v13, 0x8

    invoke-virtual {v15, v9, v9, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    nop

    .line 138
    .end local v15    # "$this$createLayout_u24lambda_u2412_u24lambda_u2411":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "$i$a$-apply-SettingsActivity$createLayout$6$1":I
    check-cast v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    nop

    .line 134
    .end local v8    # "$this$createLayout_u24lambda_u2412":Landroid/widget/Button;
    .end local v11    # "$i$a$-apply-SettingsActivity$createLayout$6":I
    iput-object v7, v0, Lcom/smsgateway/app/ui/SettingsActivity;->btnTestConnection:Landroid/widget/Button;

    .line 142
    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    new-instance v7, Landroid/widget/Button;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v8, v7

    .local v8, "$this$createLayout_u24lambda_u2414":Landroid/widget/Button;
    const/4 v11, 0x0

    .line 145
    .local v11, "$i$a$-apply-SettingsActivity$createLayout$7":I
    const-string v12, "\ud83d\udcbe Sauvegarder"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 147
    const v12, -0xb350b0

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 148
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v12, v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v13, v12

    .local v13, "$this$createLayout_u24lambda_u2414_u24lambda_u2413":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, 0x0

    .line 149
    .local v15, "$i$a$-apply-SettingsActivity$createLayout$7$1":I
    const/16 v14, 0x8

    invoke-virtual {v13, v14, v9, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    nop

    .line 148
    .end local v13    # "$this$createLayout_u24lambda_u2414_u24lambda_u2413":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "$i$a$-apply-SettingsActivity$createLayout$7$1":I
    check-cast v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    nop

    .line 144
    .end local v8    # "$this$createLayout_u24lambda_u2414":Landroid/widget/Button;
    .end local v11    # "$i$a$-apply-SettingsActivity$createLayout$7":I
    iput-object v7, v0, Lcom/smsgateway/app/ui/SettingsActivity;->btnSave:Landroid/widget/Button;

    .line 152
    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    new-instance v7, Landroid/widget/Button;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v8, v7

    .local v8, "$this$createLayout_u24lambda_u2416":Landroid/widget/Button;
    const/4 v11, 0x0

    .line 155
    .local v11, "$i$a$-apply-SettingsActivity$createLayout$8":I
    const-string v12, "\ud83d\udd19 Retour"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 157
    const v10, -0x99999a

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 158
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, -0x2

    invoke-direct {v10, v9, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v12, v10

    .local v12, "$this$createLayout_u24lambda_u2416_u24lambda_u2415":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, 0x0

    .line 159
    .local v13, "$i$a$-apply-SettingsActivity$createLayout$8$1":I
    const/16 v14, 0x8

    invoke-virtual {v12, v14, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    nop

    .line 158
    .end local v12    # "$this$createLayout_u24lambda_u2416_u24lambda_u2415":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "$i$a$-apply-SettingsActivity$createLayout$8$1":I
    check-cast v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    nop

    .line 154
    .end local v8    # "$this$createLayout_u24lambda_u2416":Landroid/widget/Button;
    .end local v11    # "$i$a$-apply-SettingsActivity$createLayout$8":I
    iput-object v7, v0, Lcom/smsgateway/app/ui/SettingsActivity;->btnBack:Landroid/widget/Button;

    .line 162
    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    move-object v7, v6

    check-cast v7, Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    move-object v7, v1

    check-cast v7, Landroid/view/View;

    invoke-virtual {v0, v7}, Lcom/smsgateway/app/ui/SettingsActivity;->setContentView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method private final getCurrentServerUrl()Ljava/lang/String;
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->rbLocalServer:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "rbLocalServer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etLocalIp:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const-string v0, "etLocalIp"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "ip":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "http"

    invoke-static {v0, v4, v2, v3, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "ip":Ljava/lang/String;
    goto :goto_1

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etCloudUrl:Landroid/widget/EditText;

    if-nez v0, :cond_4

    const-string v0, "etCloudUrl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_1
    return-object v0
.end method

.method private final loadCurrentSettings()V
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    const-string v1, "preferencesManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/smsgateway/app/utils/PreferencesManager;->getServerType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "local"

    .line 171
    .local v0, "serverType":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/smsgateway/app/ui/SettingsActivity;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v3}, Lcom/smsgateway/app/utils/PreferencesManager;->getLocalServerIp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "192.168.1.155:3001"

    .line 172
    .local v3, "localIp":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/smsgateway/app/ui/SettingsActivity;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    if-nez v4, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    invoke-virtual {v4}, Lcom/smsgateway/app/utils/PreferencesManager;->getCloudServerUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, ""

    .line 174
    .local v1, "cloudUrl":Ljava/lang/String;
    :cond_5
    const-string v4, "cloud"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    .line 175
    iget-object v4, p0, Lcom/smsgateway/app/ui/SettingsActivity;->rbCloudServer:Landroid/widget/RadioButton;

    if-nez v4, :cond_6

    const-string v4, "rbCloudServer"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_6
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 177
    :cond_7
    iget-object v4, p0, Lcom/smsgateway/app/ui/SettingsActivity;->rbLocalServer:Landroid/widget/RadioButton;

    if-nez v4, :cond_8

    const-string v4, "rbLocalServer"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_8
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 180
    :goto_0
    iget-object v4, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etLocalIp:Landroid/widget/EditText;

    if-nez v4, :cond_9

    const-string v4, "etLocalIp"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etCloudUrl:Landroid/widget/EditText;

    if-nez v4, :cond_a

    const-string v4, "etCloudUrl"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v2, v4

    :goto_1
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->updateFieldsVisibility()V

    .line 184
    return-void
.end method

.method private final saveSettings()V
    .locals 9

    .line 245
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->rbLocalServer:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "rbLocalServer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const-string v2, "local"

    const-string v3, "cloud"

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 246
    .local v0, "serverType":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etLocalIp:Landroid/widget/EditText;

    if-nez v4, :cond_2

    const-string v4, "etLocalIp"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "localIp":Ljava/lang/String;
    iget-object v5, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etCloudUrl:Landroid/widget/EditText;

    if-nez v5, :cond_3

    const-string v5, "etCloudUrl"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_3
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "cloudUrl":Ljava/lang/String;
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    move-object v2, v4

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    move v2, v7

    :goto_1
    if-eqz v2, :cond_5

    .line 251
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "Veuillez saisir l\'IP du serveur local"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 252
    return-void

    .line 255
    :cond_5
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, v7

    :goto_2
    if-eqz v6, :cond_7

    .line 256
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "Veuillez saisir l\'URL du serveur cloud"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 257
    return-void

    .line 261
    :cond_7
    iget-object v2, p0, Lcom/smsgateway/app/ui/SettingsActivity;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    const-string v3, "preferencesManager"

    if-nez v2, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_8
    invoke-virtual {v2, v0}, Lcom/smsgateway/app/utils/PreferencesManager;->setServerType(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/smsgateway/app/ui/SettingsActivity;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    if-nez v2, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_9
    invoke-virtual {v2, v4}, Lcom/smsgateway/app/utils/PreferencesManager;->setLocalServerIp(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/smsgateway/app/ui/SettingsActivity;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    if-nez v2, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_a
    invoke-virtual {v2, v5}, Lcom/smsgateway/app/utils/PreferencesManager;->setCloudServerUrl(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->getCurrentServerUrl()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "newUrl":Ljava/lang/String;
    sget-object v3, Lcom/smsgateway/app/data/api/ApiClient;->INSTANCE:Lcom/smsgateway/app/data/api/ApiClient;

    invoke-virtual {v3, v2}, Lcom/smsgateway/app/data/api/ApiClient;->updateBaseUrl(Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/smsgateway/app/ui/SettingsActivity;->tvStatus:Landroid/widget/TextView;

    const-string v6, "tvStatus"

    if-nez v3, :cond_b

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_b
    const-string v8, "\ud83d\udcbe Configuration sauvegard\u00e9e !"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v3, p0, Lcom/smsgateway/app/ui/SettingsActivity;->tvStatus:Landroid/widget/TextView;

    if-nez v3, :cond_c

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object v1, v3

    :goto_3
    const v3, -0xb350b0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v3, "Configuration sauvegard\u00e9e avec succ\u00e8s !"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 273
    return-void
.end method

.method private final setupClickListeners()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->rgServerType:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "rgServerType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/smsgateway/app/ui/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/smsgateway/app/ui/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/smsgateway/app/ui/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->btnTestConnection:Landroid/widget/Button;

    if-nez v0, :cond_1

    const-string v0, "btnTestConnection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v2, Lcom/smsgateway/app/ui/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/smsgateway/app/ui/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/smsgateway/app/ui/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->btnSave:Landroid/widget/Button;

    if-nez v0, :cond_2

    const-string v0, "btnSave"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    new-instance v2, Lcom/smsgateway/app/ui/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/smsgateway/app/ui/SettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/smsgateway/app/ui/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->btnBack:Landroid/widget/Button;

    if-nez v0, :cond_3

    const-string v0, "btnBack"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/smsgateway/app/ui/SettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/smsgateway/app/ui/SettingsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/smsgateway/app/ui/SettingsActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void
.end method

.method private static final setupClickListeners$lambda$17(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SettingsActivity;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->updateFieldsVisibility()V

    .line 189
    return-void
.end method

.method private static final setupClickListeners$lambda$18(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SettingsActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->testConnection()V

    .line 193
    return-void
.end method

.method private static final setupClickListeners$lambda$19(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SettingsActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->saveSettings()V

    .line 197
    return-void
.end method

.method private static final setupClickListeners$lambda$20(Lcom/smsgateway/app/ui/SettingsActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/smsgateway/app/ui/SettingsActivity;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->finish()V

    .line 201
    return-void
.end method

.method private final testConnection()V
    .locals 7

    .line 214
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/smsgateway/app/ui/SettingsActivity$testConnection$1;-><init>(Lcom/smsgateway/app/ui/SettingsActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 242
    return-void
.end method

.method private final updateFieldsVisibility()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->rbLocalServer:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "rbLocalServer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 206
    .local v0, "isLocal":Z
    iget-object v2, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etLocalIp:Landroid/widget/EditText;

    const-string v3, "etLocalIp"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 207
    iget-object v2, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etCloudUrl:Landroid/widget/EditText;

    const-string v4, "etCloudUrl"

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 209
    iget-object v2, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etLocalIp:Landroid/widget/EditText;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v0, :cond_4

    move v6, v3

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setAlpha(F)V

    .line 210
    iget-object v2, p0, Lcom/smsgateway/app/ui/SettingsActivity;->etCloudUrl:Landroid/widget/EditText;

    if-nez v2, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v3, v5

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setAlpha(F)V

    .line 211
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Lcom/smsgateway/app/utils/PreferencesManager;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smsgateway/app/utils/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smsgateway/app/ui/SettingsActivity;->preferencesManager:Lcom/smsgateway/app/utils/PreferencesManager;

    .line 29
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->createLayout()V

    .line 30
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->loadCurrentSettings()V

    .line 31
    invoke-direct {p0}, Lcom/smsgateway/app/ui/SettingsActivity;->setupClickListeners()V

    .line 32
    return-void
.end method
