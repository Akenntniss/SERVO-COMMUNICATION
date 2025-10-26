.class public final Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;
.super Ljava/lang/Object;
.source "FragmentPermissionsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/ScrollView;

.field public final rvPermissions:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvPermissionsStatus:Landroid/widget/TextView;

.field public final tvPermissionsSummary:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "rvPermissions"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "tvPermissionsStatus"    # Landroid/widget/TextView;
    .param p4, "tvPermissionsSummary"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "rvPermissions",
            "tvPermissionsStatus",
            "tvPermissionsSummary"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;->rootView:Landroid/widget/ScrollView;

    .line 36
    iput-object p2, p0, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;->rvPermissions:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    iput-object p3, p0, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;->tvPermissionsStatus:Landroid/widget/TextView;

    .line 38
    iput-object p4, p0, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;->tvPermissionsSummary:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 68
    sget v0, Lcom/smsgateway/app/R$id;->rvPermissions:I

    .line 69
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .local v1, "rvPermissions":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v1, :cond_2

    .line 74
    sget v0, Lcom/smsgateway/app/R$id;->tvPermissionsStatus:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, "tvPermissionsStatus":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 80
    sget v0, Lcom/smsgateway/app/R$id;->tvPermissionsSummary:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "tvPermissionsSummary":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 86
    new-instance v4, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/ScrollView;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;-><init>(Landroid/widget/ScrollView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v4

    .line 83
    :cond_0
    goto :goto_0

    .line 77
    .end local v3    # "tvPermissionsSummary":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 71
    .end local v2    # "tvPermissionsStatus":Landroid/widget/TextView;
    :cond_2
    nop

    .line 89
    .end local v1    # "rvPermissions":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;
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

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;
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

    .line 55
    sget v0, Lcom/smsgateway/app/R$layout;->fragment_permissions:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {v0}, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;->bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/smsgateway/app/databinding/FragmentPermissionsBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
