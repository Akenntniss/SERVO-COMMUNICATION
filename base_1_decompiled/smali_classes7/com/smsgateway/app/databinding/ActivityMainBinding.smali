.class public final Lcom/smsgateway/app/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnRefresh:Lcom/google/android/material/button/MaterialButton;

.field public final btnSettings:Lcom/google/android/material/button/MaterialButton;

.field public final btnToggleService:Lcom/google/android/material/button/MaterialButton;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;

.field public final tvActiveSims:Landroid/widget/TextView;

.field public final tvConnectionStatus:Landroid/widget/TextView;

.field public final tvMessagesSent:Landroid/widget/TextView;

.field public final tvServiceStatus:Landroid/widget/TextView;

.field public final tvSimsInfo:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "btnRefresh"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "btnSettings"    # Lcom/google/android/material/button/MaterialButton;
    .param p4, "btnToggleService"    # Lcom/google/android/material/button/MaterialButton;
    .param p5, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p6, "tvActiveSims"    # Landroid/widget/TextView;
    .param p7, "tvConnectionStatus"    # Landroid/widget/TextView;
    .param p8, "tvMessagesSent"    # Landroid/widget/TextView;
    .param p9, "tvServiceStatus"    # Landroid/widget/TextView;
    .param p10, "tvSimsInfo"    # Landroid/widget/TextView;
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
            0x0
        }
        names = {
            "rootView",
            "btnRefresh",
            "btnSettings",
            "btnToggleService",
            "toolbar",
            "tvActiveSims",
            "tvConnectionStatus",
            "tvMessagesSent",
            "tvServiceStatus",
            "tvSimsInfo"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 58
    iput-object p2, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->btnRefresh:Lcom/google/android/material/button/MaterialButton;

    .line 59
    iput-object p3, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->btnSettings:Lcom/google/android/material/button/MaterialButton;

    .line 60
    iput-object p4, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->btnToggleService:Lcom/google/android/material/button/MaterialButton;

    .line 61
    iput-object p5, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 62
    iput-object p6, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->tvActiveSims:Landroid/widget/TextView;

    .line 63
    iput-object p7, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->tvConnectionStatus:Landroid/widget/TextView;

    .line 64
    iput-object p8, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->tvMessagesSent:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->tvServiceStatus:Landroid/widget/TextView;

    .line 66
    iput-object p10, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->tvSimsInfo:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/ActivityMainBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 96
    move-object/from16 v0, p0

    sget v1, Lcom/smsgateway/app/R$id;->btnRefresh:I

    .line 97
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 98
    .local v2, "btnRefresh":Lcom/google/android/material/button/MaterialButton;
    if-eqz v2, :cond_8

    .line 102
    sget v1, Lcom/smsgateway/app/R$id;->btnSettings:I

    .line 103
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 104
    .local v14, "btnSettings":Lcom/google/android/material/button/MaterialButton;
    if-eqz v14, :cond_7

    .line 108
    sget v1, Lcom/smsgateway/app/R$id;->btnToggleService:I

    .line 109
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 110
    .local v15, "btnToggleService":Lcom/google/android/material/button/MaterialButton;
    if-eqz v15, :cond_6

    .line 114
    sget v1, Lcom/smsgateway/app/R$id;->toolbar:I

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroidx/appcompat/widget/Toolbar;

    .line 116
    .local v16, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v16, :cond_5

    .line 120
    sget v1, Lcom/smsgateway/app/R$id;->tvActiveSims:I

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 122
    .local v17, "tvActiveSims":Landroid/widget/TextView;
    if-eqz v17, :cond_4

    .line 126
    sget v1, Lcom/smsgateway/app/R$id;->tvConnectionStatus:I

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 128
    .local v18, "tvConnectionStatus":Landroid/widget/TextView;
    if-eqz v18, :cond_3

    .line 132
    sget v1, Lcom/smsgateway/app/R$id;->tvMessagesSent:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 134
    .local v19, "tvMessagesSent":Landroid/widget/TextView;
    if-eqz v19, :cond_2

    .line 138
    sget v1, Lcom/smsgateway/app/R$id;->tvServiceStatus:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 140
    .local v20, "tvServiceStatus":Landroid/widget/TextView;
    if-eqz v20, :cond_1

    .line 144
    sget v1, Lcom/smsgateway/app/R$id;->tvSimsInfo:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 146
    .local v21, "tvSimsInfo":Landroid/widget/TextView;
    if-eqz v21, :cond_0

    .line 150
    new-instance v22, Lcom/smsgateway/app/databinding/ActivityMainBinding;

    move-object v4, v0

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object/from16 v3, v22

    move-object v5, v2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    invoke-direct/range {v3 .. v13}, Lcom/smsgateway/app/databinding/ActivityMainBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v22

    .line 147
    :cond_0
    goto :goto_0

    .line 141
    .end local v21    # "tvSimsInfo":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 135
    .end local v20    # "tvServiceStatus":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 129
    .end local v19    # "tvMessagesSent":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 123
    .end local v18    # "tvConnectionStatus":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 117
    .end local v17    # "tvActiveSims":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 111
    .end local v16    # "toolbar":Landroidx/appcompat/widget/Toolbar;
    :cond_6
    goto :goto_0

    .line 105
    .end local v15    # "btnToggleService":Lcom/google/android/material/button/MaterialButton;
    :cond_7
    goto :goto_0

    .line 99
    .end local v14    # "btnSettings":Lcom/google/android/material/button/MaterialButton;
    :cond_8
    nop

    .line 154
    .end local v2    # "btnRefresh":Lcom/google/android/material/button/MaterialButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/smsgateway/app/databinding/ActivityMainBinding;
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

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/smsgateway/app/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/ActivityMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/smsgateway/app/databinding/ActivityMainBinding;
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

    .line 83
    sget v0, Lcom/smsgateway/app/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/smsgateway/app/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/smsgateway/app/databinding/ActivityMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/smsgateway/app/databinding/ActivityMainBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/smsgateway/app/databinding/ActivityMainBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
