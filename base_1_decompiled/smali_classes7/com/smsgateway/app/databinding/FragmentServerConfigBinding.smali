.class public final Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;
.super Ljava/lang/Object;
.source "FragmentServerConfigBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etApiKey:Lcom/google/android/material/textfield/TextInputEditText;

.field public final etServerUrl:Lcom/google/android/material/textfield/TextInputEditText;

.field private final rootView:Landroid/widget/ScrollView;

.field public final tilApiKey:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tilServerUrl:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "etApiKey"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "etServerUrl"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p4, "tilApiKey"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p5, "tilServerUrl"    # Lcom/google/android/material/textfield/TextInputLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "etApiKey",
            "etServerUrl",
            "tilApiKey",
            "tilServerUrl"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;->rootView:Landroid/widget/ScrollView;

    .line 39
    iput-object p2, p0, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;->etApiKey:Lcom/google/android/material/textfield/TextInputEditText;

    .line 40
    iput-object p3, p0, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;->etServerUrl:Lcom/google/android/material/textfield/TextInputEditText;

    .line 41
    iput-object p4, p0, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;->tilApiKey:Lcom/google/android/material/textfield/TextInputLayout;

    .line 42
    iput-object p5, p0, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;->tilServerUrl:Lcom/google/android/material/textfield/TextInputLayout;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 72
    sget v0, Lcom/smsgateway/app/R$id;->etApiKey:I

    .line 73
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 74
    .local v1, "etApiKey":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v1, :cond_3

    .line 78
    sget v0, Lcom/smsgateway/app/R$id;->etServerUrl:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    .line 80
    .local v8, "etServerUrl":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v8, :cond_2

    .line 84
    sget v0, Lcom/smsgateway/app/R$id;->tilApiKey:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    .line 86
    .local v9, "tilApiKey":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v9, :cond_1

    .line 90
    sget v0, Lcom/smsgateway/app/R$id;->tilServerUrl:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputLayout;

    .line 92
    .local v10, "tilServerUrl":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v10, :cond_0

    .line 96
    new-instance v11, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;-><init>(Landroid/widget/ScrollView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    return-object v11

    .line 93
    :cond_0
    goto :goto_0

    .line 87
    .end local v10    # "tilServerUrl":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_1
    goto :goto_0

    .line 81
    .end local v9    # "tilApiKey":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_2
    goto :goto_0

    .line 75
    .end local v8    # "etServerUrl":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_3
    nop

    .line 99
    .end local v1    # "etApiKey":Lcom/google/android/material/textfield/TextInputEditText;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;
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

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;
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

    .line 59
    sget v0, Lcom/smsgateway/app/R$layout;->fragment_server_config:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;->bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/smsgateway/app/databinding/FragmentServerConfigBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
