.class public final Landroidx/compose/ui/input/key/KeyInputModifier;
.super Ljava/lang/Object;
.source "KeyInputModifier.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u00020\u0001B4\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\u001b\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00f8\u0001\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u00f8\u0001\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000f\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/input/key/KeyInputModifier;",
        "Landroidx/compose/ui/Modifier$Element;",
        "onKeyEvent",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "",
        "onPreviewKeyEvent",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "keyInputNode",
        "Landroidx/compose/ui/node/ModifiedKeyInputNode;",
        "getKeyInputNode",
        "()Landroidx/compose/ui/node/ModifiedKeyInputNode;",
        "setKeyInputNode",
        "(Landroidx/compose/ui/node/ModifiedKeyInputNode;)V",
        "getOnKeyEvent",
        "()Lkotlin/jvm/functions/Function1;",
        "getOnPreviewKeyEvent",
        "processKeyInput",
        "keyEvent",
        "processKeyInput-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public keyInputNode:Landroidx/compose/ui/node/ModifiedKeyInputNode;

.field private final onKeyEvent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onPreviewKeyEvent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "onKeyEvent"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onPreviewKeyEvent"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/compose/ui/input/key/KeyInputModifier;->onKeyEvent:Lkotlin/jvm/functions/Function1;

    .line 71
    iput-object p2, p0, Landroidx/compose/ui/input/key/KeyInputModifier;->onPreviewKeyEvent:Lkotlin/jvm/functions/Function1;

    .line 69
    return-void
.end method


# virtual methods
.method public all(Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Element;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$Element$DefaultImpls;->all(Landroidx/compose/ui/Modifier$Element;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method

.method public any(Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/Modifier$Element;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$Element$DefaultImpls;->any(Landroidx/compose/ui/Modifier$Element;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method

.method public foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Landroidx/compose/ui/Modifier$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/Modifier$Element$DefaultImpls;->foldIn(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public foldOut(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/Modifier$Element;",
            "-TR;+TR;>;)TR;"
        }
    .end annotation

    .line 69
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/Modifier$Element$DefaultImpls;->foldOut(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyInputNode()Landroidx/compose/ui/node/ModifiedKeyInputNode;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/compose/ui/input/key/KeyInputModifier;->keyInputNode:Landroidx/compose/ui/node/ModifiedKeyInputNode;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "keyInputNode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getOnKeyEvent()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/compose/ui/input/key/KeyInputModifier;->onKeyEvent:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnPreviewKeyEvent()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroidx/compose/ui/input/key/KeyInputModifier;->onPreviewKeyEvent:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final processKeyInput-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    const-string v0, "keyEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/input/key/KeyInputModifier;->getKeyInputNode()Landroidx/compose/ui/node/ModifiedKeyInputNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifiedKeyInputNode;->findPreviousFocusWrapper()Landroidx/compose/ui/node/ModifiedFocusNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    goto :goto_1

    .line 77
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/node/ModifiedFocusNode;)Landroidx/compose/ui/node/ModifiedFocusNode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifiedFocusNode;->findLastKeyInputWrapper()Landroidx/compose/ui/node/ModifiedKeyInputNode;

    move-result-object v1

    .line 76
    :goto_1
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 80
    .local v0, "activeKeyInputNode":Landroidx/compose/ui/node/ModifiedKeyInputNode;
    nop

    .local v1, "$this$processKeyInput_ZmokQxo_u24lambda_u2d0":Landroidx/compose/ui/node/ModifiedKeyInputNode;
    const/4 v2, 0x0

    .line 81
    .local v2, "$i$a$-with-KeyInputModifier$processKeyInput$1":I
    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/ModifiedKeyInputNode;->propagatePreviewKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 82
    .local v3, "consumed":Z
    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/ModifiedKeyInputNode;->propagateKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 80
    .end local v1    # "$this$processKeyInput_ZmokQxo_u24lambda_u2d0":Landroidx/compose/ui/node/ModifiedKeyInputNode;
    .end local v2    # "$i$a$-with-KeyInputModifier$processKeyInput$1":I
    .end local v3    # "consumed":Z
    :goto_2
    return v4

    .line 79
    .end local v0    # "activeKeyInputNode":Landroidx/compose/ui/node/ModifiedKeyInputNode;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyEvent can\'t be processed because this key input node is not active."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setKeyInputNode(Landroidx/compose/ui/node/ModifiedKeyInputNode;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/compose/ui/node/ModifiedKeyInputNode;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Landroidx/compose/ui/input/key/KeyInputModifier;->keyInputNode:Landroidx/compose/ui/node/ModifiedKeyInputNode;

    return-void
.end method

.method public then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p1, "other"    # Landroidx/compose/ui/Modifier;

    .line 69
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Element;

    invoke-static {v0, p1}, Landroidx/compose/ui/Modifier$Element$DefaultImpls;->then(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method
