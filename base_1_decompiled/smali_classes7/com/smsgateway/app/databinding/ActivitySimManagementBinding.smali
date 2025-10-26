.class public final Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;
.super Ljava/lang/Object;
.source "ActivitySimManagementBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnRefresh:Landroid/widget/Button;

.field public final btnSaveAll:Landroid/widget/Button;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final recyclerViewSims:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvStatus:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "btnRefresh"    # Landroid/widget/Button;
    .param p3, "btnSaveAll"    # Landroid/widget/Button;
    .param p4, "progressBar"    # Landroid/widget/ProgressBar;
    .param p5, "recyclerViewSims"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p6, "tvStatus"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "btnRefresh",
            "btnSaveAll",
            "progressBar",
            "recyclerViewSims",
            "tvStatus"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->rootView:Landroid/widget/LinearLayout;

    .line 44
    iput-object p2, p0, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->btnRefresh:Landroid/widget/Button;

    .line 45
    iput-object p3, p0, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->btnSaveAll:Landroid/widget/Button;

    .line 46
    iput-object p4, p0, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 47
    iput-object p5, p0, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->recyclerViewSims:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    iput-object p6, p0, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->tvStatus:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;
    .locals 14
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 78
    sget v0, Lcom/smsgateway/app/R$id;->btnRefresh:I

    .line 79
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 80
    .local v1, "btnRefresh":Landroid/widget/Button;
    if-eqz v1, :cond_4

    .line 84
    sget v0, Lcom/smsgateway/app/R$id;->btnSaveAll:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    .line 86
    .local v9, "btnSaveAll":Landroid/widget/Button;
    if-eqz v9, :cond_3

    .line 90
    sget v0, Lcom/smsgateway/app/R$id;->progressBar:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ProgressBar;

    .line 92
    .local v10, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v10, :cond_2

    .line 96
    sget v0, Lcom/smsgateway/app/R$id;->recyclerViewSims:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .local v11, "recyclerViewSims":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v11, :cond_1

    .line 102
    sget v0, Lcom/smsgateway/app/R$id;->tvStatus:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 104
    .local v12, "tvStatus":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 108
    new-instance v13, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

    return-object v13

    .line 105
    :cond_0
    goto :goto_0

    .line 99
    .end local v12    # "tvStatus":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 93
    .end local v11    # "recyclerViewSims":Landroidx/recyclerview/widget/RecyclerView;
    :cond_2
    goto :goto_0

    .line 87
    .end local v10    # "progressBar":Landroid/widget/ProgressBar;
    :cond_3
    goto :goto_0

    .line 81
    .end local v9    # "btnSaveAll":Landroid/widget/Button;
    :cond_4
    nop

    .line 111
    .end local v1    # "btnRefresh":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;
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

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;
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

    .line 65
    sget v0, Lcom/smsgateway/app/R$layout;->activity_sim_management:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/smsgateway/app/databinding/ActivitySimManagementBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
