.class public final Lcom/smsgateway/app/databinding/ItemSimManagementBinding;
.super Ljava/lang/Object;
.source "ItemSimManagementBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etDailyLimit:Landroid/widget/EditText;

.field public final etMonthlyLimit:Landroid/widget/EditText;

.field public final progressDaily:Landroid/widget/ProgressBar;

.field public final progressMonthly:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final switchActive:Landroid/widget/Switch;

.field public final tvDailyUsage:Landroid/widget/TextView;

.field public final tvMonthlyUsage:Landroid/widget/TextView;

.field public final tvSimInfo:Landroid/widget/TextView;

.field public final tvSimStatus:Landroid/widget/TextView;

.field public final tvSimTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/cardview/widget/CardView;
    .param p2, "etDailyLimit"    # Landroid/widget/EditText;
    .param p3, "etMonthlyLimit"    # Landroid/widget/EditText;
    .param p4, "progressDaily"    # Landroid/widget/ProgressBar;
    .param p5, "progressMonthly"    # Landroid/widget/ProgressBar;
    .param p6, "switchActive"    # Landroid/widget/Switch;
    .param p7, "tvDailyUsage"    # Landroid/widget/TextView;
    .param p8, "tvMonthlyUsage"    # Landroid/widget/TextView;
    .param p9, "tvSimInfo"    # Landroid/widget/TextView;
    .param p10, "tvSimStatus"    # Landroid/widget/TextView;
    .param p11, "tvSimTitle"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "etDailyLimit",
            "etMonthlyLimit",
            "progressDaily",
            "progressMonthly",
            "switchActive",
            "tvDailyUsage",
            "tvMonthlyUsage",
            "tvSimInfo",
            "tvSimStatus",
            "tvSimTitle"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 61
    iput-object p2, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->etDailyLimit:Landroid/widget/EditText;

    .line 62
    iput-object p3, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->etMonthlyLimit:Landroid/widget/EditText;

    .line 63
    iput-object p4, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->progressDaily:Landroid/widget/ProgressBar;

    .line 64
    iput-object p5, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->progressMonthly:Landroid/widget/ProgressBar;

    .line 65
    iput-object p6, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->switchActive:Landroid/widget/Switch;

    .line 66
    iput-object p7, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->tvDailyUsage:Landroid/widget/TextView;

    .line 67
    iput-object p8, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->tvMonthlyUsage:Landroid/widget/TextView;

    .line 68
    iput-object p9, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->tvSimInfo:Landroid/widget/TextView;

    .line 69
    iput-object p10, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->tvSimStatus:Landroid/widget/TextView;

    .line 70
    iput-object p11, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->tvSimTitle:Landroid/widget/TextView;

    .line 71
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/ItemSimManagementBinding;
    .locals 25
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 100
    move-object/from16 v0, p0

    sget v1, Lcom/smsgateway/app/R$id;->etDailyLimit:I

    .line 101
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 102
    .local v2, "etDailyLimit":Landroid/widget/EditText;
    if-eqz v2, :cond_9

    .line 106
    sget v1, Lcom/smsgateway/app/R$id;->etMonthlyLimit:I

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/EditText;

    .line 108
    .local v15, "etMonthlyLimit":Landroid/widget/EditText;
    if-eqz v15, :cond_8

    .line 112
    sget v1, Lcom/smsgateway/app/R$id;->progressDaily:I

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/ProgressBar;

    .line 114
    .local v16, "progressDaily":Landroid/widget/ProgressBar;
    if-eqz v16, :cond_7

    .line 118
    sget v1, Lcom/smsgateway/app/R$id;->progressMonthly:I

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/ProgressBar;

    .line 120
    .local v17, "progressMonthly":Landroid/widget/ProgressBar;
    if-eqz v17, :cond_6

    .line 124
    sget v1, Lcom/smsgateway/app/R$id;->switchActive:I

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/Switch;

    .line 126
    .local v18, "switchActive":Landroid/widget/Switch;
    if-eqz v18, :cond_5

    .line 130
    sget v1, Lcom/smsgateway/app/R$id;->tvDailyUsage:I

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 132
    .local v19, "tvDailyUsage":Landroid/widget/TextView;
    if-eqz v19, :cond_4

    .line 136
    sget v1, Lcom/smsgateway/app/R$id;->tvMonthlyUsage:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 138
    .local v20, "tvMonthlyUsage":Landroid/widget/TextView;
    if-eqz v20, :cond_3

    .line 142
    sget v1, Lcom/smsgateway/app/R$id;->tvSimInfo:I

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 144
    .local v21, "tvSimInfo":Landroid/widget/TextView;
    if-eqz v21, :cond_2

    .line 148
    sget v1, Lcom/smsgateway/app/R$id;->tvSimStatus:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 150
    .local v22, "tvSimStatus":Landroid/widget/TextView;
    if-eqz v22, :cond_1

    .line 154
    sget v1, Lcom/smsgateway/app/R$id;->tvSimTitle:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 156
    .local v23, "tvSimTitle":Landroid/widget/TextView;
    if-eqz v23, :cond_0

    .line 160
    new-instance v24, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;

    move-object v4, v0

    check-cast v4, Landroidx/cardview/widget/CardView;

    move-object/from16 v3, v24

    move-object v5, v2

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    invoke-direct/range {v3 .. v14}, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v24

    .line 157
    :cond_0
    goto :goto_0

    .line 151
    .end local v23    # "tvSimTitle":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 145
    .end local v22    # "tvSimStatus":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 139
    .end local v21    # "tvSimInfo":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 133
    .end local v20    # "tvMonthlyUsage":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 127
    .end local v19    # "tvDailyUsage":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 121
    .end local v18    # "switchActive":Landroid/widget/Switch;
    :cond_6
    goto :goto_0

    .line 115
    .end local v17    # "progressMonthly":Landroid/widget/ProgressBar;
    :cond_7
    goto :goto_0

    .line 109
    .end local v16    # "progressDaily":Landroid/widget/ProgressBar;
    :cond_8
    goto :goto_0

    .line 103
    .end local v15    # "etMonthlyLimit":Landroid/widget/EditText;
    :cond_9
    nop

    .line 164
    .end local v2    # "etDailyLimit":Landroid/widget/EditText;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/smsgateway/app/databinding/ItemSimManagementBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/ItemSimManagementBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/ItemSimManagementBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 87
    sget v0, Lcom/smsgateway/app/R$layout;->item_sim_management:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/ItemSimManagementBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/smsgateway/app/databinding/ItemSimManagementBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
