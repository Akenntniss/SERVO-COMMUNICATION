.class public final Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;
.super Ljava/lang/Object;
.source "FragmentSimCardsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnRefreshSims:Lcom/google/android/material/button/MaterialButton;

.field public final layoutNoSim:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final rvSimCards:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvNoSimMessage:Landroid/widget/TextView;

.field public final tvSimCount:Landroid/widget/TextView;

.field public final tvSimStatus:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "btnRefreshSims"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "layoutNoSim"    # Landroid/widget/LinearLayout;
    .param p4, "rvSimCards"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p5, "tvNoSimMessage"    # Landroid/widget/TextView;
    .param p6, "tvSimCount"    # Landroid/widget/TextView;
    .param p7, "tvSimStatus"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "btnRefreshSims",
            "layoutNoSim",
            "rvSimCards",
            "tvNoSimMessage",
            "tvSimCount",
            "tvSimStatus"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->rootView:Landroid/widget/ScrollView;

    .line 48
    iput-object p2, p0, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->btnRefreshSims:Lcom/google/android/material/button/MaterialButton;

    .line 49
    iput-object p3, p0, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->layoutNoSim:Landroid/widget/LinearLayout;

    .line 50
    iput-object p4, p0, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->rvSimCards:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iput-object p5, p0, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->tvNoSimMessage:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->tvSimCount:Landroid/widget/TextView;

    .line 53
    iput-object p7, p0, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->tvSimStatus:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 83
    move-object/from16 v0, p0

    sget v1, Lcom/smsgateway/app/R$id;->btnRefreshSims:I

    .line 84
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 85
    .local v2, "btnRefreshSims":Lcom/google/android/material/button/MaterialButton;
    if-eqz v2, :cond_5

    .line 89
    sget v1, Lcom/smsgateway/app/R$id;->layoutNoSim:I

    .line 90
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/LinearLayout;

    .line 91
    .local v11, "layoutNoSim":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_4

    .line 95
    sget v1, Lcom/smsgateway/app/R$id;->rvSimCards:I

    .line 96
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .local v12, "rvSimCards":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v12, :cond_3

    .line 101
    sget v1, Lcom/smsgateway/app/R$id;->tvNoSimMessage:I

    .line 102
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 103
    .local v13, "tvNoSimMessage":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 107
    sget v1, Lcom/smsgateway/app/R$id;->tvSimCount:I

    .line 108
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 109
    .local v14, "tvSimCount":Landroid/widget/TextView;
    if-eqz v14, :cond_1

    .line 113
    sget v1, Lcom/smsgateway/app/R$id;->tvSimStatus:I

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 115
    .local v15, "tvSimStatus":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 119
    new-instance v16, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;-><init>(Landroid/widget/ScrollView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v16

    .line 116
    :cond_0
    goto :goto_0

    .line 110
    .end local v15    # "tvSimStatus":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 104
    .end local v14    # "tvSimCount":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 98
    .end local v13    # "tvNoSimMessage":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 92
    .end local v12    # "rvSimCards":Landroidx/recyclerview/widget/RecyclerView;
    :cond_4
    goto :goto_0

    .line 86
    .end local v11    # "layoutNoSim":Landroid/widget/LinearLayout;
    :cond_5
    nop

    .line 122
    .end local v2    # "btnRefreshSims":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;
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

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;
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

    .line 70
    sget v0, Lcom/smsgateway/app/R$layout;->fragment_sim_cards:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {v0}, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/smsgateway/app/databinding/FragmentSimCardsBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
