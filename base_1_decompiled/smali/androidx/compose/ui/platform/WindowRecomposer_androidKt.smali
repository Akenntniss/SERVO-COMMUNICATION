.class public final Landroidx/compose/ui/platform/WindowRecomposer_androidKt;
.super Ljava/lang/Object;
.source "WindowRecomposer.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowRecomposer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowRecomposer.android.kt\nandroidx/compose/ui/platform/WindowRecomposer_androidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u000c\u0010\u0011\u001a\u00020\u000c*\u00020\u0003H\u0002\u001a\u000c\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u0003\",\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u00032\u0008\u0010\u0000\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\"\u0018\u0010\u0008\u001a\u00020\u0003*\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\"\u001e\u0010\u000b\u001a\u00020\u000c*\u00020\u00038@X\u0080\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "value",
        "Landroidx/compose/runtime/CompositionContext;",
        "compositionContext",
        "Landroid/view/View;",
        "getCompositionContext",
        "(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;",
        "setCompositionContext",
        "(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;)V",
        "contentChild",
        "getContentChild",
        "(Landroid/view/View;)Landroid/view/View;",
        "windowRecomposer",
        "Landroidx/compose/runtime/Recomposer;",
        "getWindowRecomposer$annotations",
        "(Landroid/view/View;)V",
        "getWindowRecomposer",
        "(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;",
        "createLifecycleAwareViewTreeRecomposer",
        "findViewTreeCompositionContext",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$createLifecycleAwareViewTreeRecomposer(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
    .locals 1
    .param p0, "$receiver"    # Landroid/view/View;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->createLifecycleAwareViewTreeRecomposer(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    move-result-object v0

    return-object v0
.end method

.method private static final createLifecycleAwareViewTreeRecomposer(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
    .locals 8
    .param p0, "$this$createLifecycleAwareViewTreeRecomposer"    # Landroid/view/View;

    .line 237
    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Companion:Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion;->getCurrentThread()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 238
    .local v0, "currentThreadContext":Lkotlin/coroutines/CoroutineContext;
    sget-object v1, Landroidx/compose/runtime/MonotonicFrameClock;->Key:Landroidx/compose/runtime/MonotonicFrameClock$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MonotonicFrameClock;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .local v1, "it":Landroidx/compose/runtime/MonotonicFrameClock;
    :cond_0
    const/4 v2, 0x0

    .line 239
    .local v2, "$i$a$-let-WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$pausableClock$1":I
    new-instance v3, Landroidx/compose/runtime/PausableMonotonicFrameClock;

    invoke-direct {v3, v1}, Landroidx/compose/runtime/PausableMonotonicFrameClock;-><init>(Landroidx/compose/runtime/MonotonicFrameClock;)V

    move-object v4, v3

    .line 291
    .local v4, "$this$createLifecycleAwareViewTreeRecomposer_u24lambda_u2d2_u24lambda_u2d1":Landroidx/compose/runtime/PausableMonotonicFrameClock;
    const/4 v5, 0x0

    .line 239
    .local v5, "$i$a$-apply-WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$pausableClock$1$1":I
    invoke-virtual {v4}, Landroidx/compose/runtime/PausableMonotonicFrameClock;->pause()V

    .line 238
    .end local v1    # "it":Landroidx/compose/runtime/MonotonicFrameClock;
    .end local v2    # "$i$a$-let-WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$pausableClock$1":I
    .end local v4    # "$this$createLifecycleAwareViewTreeRecomposer_u24lambda_u2d2_u24lambda_u2d1":Landroidx/compose/runtime/PausableMonotonicFrameClock;
    .end local v5    # "$i$a$-apply-WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$pausableClock$1$1":I
    move-object v1, v3

    .line 241
    .local v1, "pausableClock":Landroidx/compose/runtime/PausableMonotonicFrameClock;
    :goto_0
    if-nez v1, :cond_1

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    goto :goto_1

    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    :goto_1
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 242
    .local v2, "contextWithClock":Lkotlin/coroutines/CoroutineContext;
    new-instance v3, Landroidx/compose/runtime/Recomposer;

    invoke-direct {v3, v2}, Landroidx/compose/runtime/Recomposer;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 243
    .local v3, "recomposer":Landroidx/compose/runtime/Recomposer;
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 244
    .local v4, "runRecomposeScope":Lkotlinx/coroutines/CoroutineScope;
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 251
    .local v5, "viewTreeLifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    nop

    .line 252
    new-instance v6, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$1;

    invoke-direct {v6, p0, v3}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$1;-><init>(Landroid/view/View;Landroidx/compose/runtime/Recomposer;)V

    check-cast v6, Landroid/view/View$OnAttachStateChangeListener;

    .line 251
    invoke-virtual {p0, v6}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 260
    invoke-interface {v5}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v6

    .line 261
    new-instance v7, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$2;

    invoke-direct {v7, v4, v1, v3}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/PausableMonotonicFrameClock;Landroidx/compose/runtime/Recomposer;)V

    check-cast v7, Landroidx/lifecycle/LifecycleObserver;

    .line 260
    invoke-virtual {v6, v7}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 288
    return-object v3

    .line 244
    .end local v5    # "viewTreeLifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    :cond_2
    const/4 v5, 0x0

    .line 245
    .local v5, "$i$a$-checkNotNull-WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$viewTreeLifecycleOwner$1":I
    const-string v6, "ViewTreeLifecycleOwner not found from "

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 244
    .end local v5    # "$i$a$-checkNotNull-WindowRecomposer_androidKt$createLifecycleAwareViewTreeRecomposer$viewTreeLifecycleOwner$1":I
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6
.end method

.method public static final findViewTreeCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;
    .locals 3
    .param p0, "$this$findViewTreeCompositionContext"    # Landroid/view/View;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    .line 63
    .local v0, "found":Landroidx/compose/runtime/CompositionContext;
    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 65
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    if-nez v0, :cond_1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 66
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    move-result-object v0

    .line 67
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_1
    return-object v0
.end method

.method public static final getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;
    .locals 2
    .param p0, "$this$compositionContext"    # Landroid/view/View;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget v0, Landroidx/compose/ui/R$id;->androidx_compose_ui_view_composition_context:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/runtime/CompositionContext;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/runtime/CompositionContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final getContentChild(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "$this$contentChild"    # Landroid/view/View;

    .line 208
    move-object v0, p0

    .line 209
    .local v0, "self":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 210
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 211
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_0

    return-object v0

    .line 212
    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_1
    return-object v0
.end method

.method public static final getWindowRecomposer(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
    .locals 4
    .param p0, "$this$windowRecomposer"    # Landroid/view/View;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-static {p0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->getContentChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, "rootView":Landroid/view/View;
    invoke-static {v0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    move-result-object v1

    .line 230
    .local v1, "rootParentRef":Landroidx/compose/runtime/CompositionContext;
    if-nez v1, :cond_0

    sget-object v2, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->INSTANCE:Landroidx/compose/ui/platform/WindowRecomposerPolicy;

    invoke-virtual {v2, v0}, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->createAndInstallWindowRecomposer$ui_release(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    move-result-object v2

    goto :goto_0

    .line 231
    :cond_0
    instance-of v2, v1, Landroidx/compose/runtime/Recomposer;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/Recomposer;

    .line 229
    .end local v1    # "rootParentRef":Landroidx/compose/runtime/CompositionContext;
    :goto_0
    return-object v2

    .line 232
    .restart local v1    # "rootParentRef":Landroidx/compose/runtime/CompositionContext;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "root viewTreeParentCompositionContext is not a Recomposer"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 225
    .end local v0    # "rootView":Landroid/view/View;
    .end local v1    # "rootParentRef":Landroidx/compose/runtime/CompositionContext;
    :cond_2
    const/4 v0, 0x0

    .line 226
    .local v0, "$i$a$-check-WindowRecomposer_androidKt$windowRecomposer$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot locate windowRecomposer; View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not attached to a window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .end local v0    # "$i$a$-check-WindowRecomposer_androidKt$windowRecomposer$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static synthetic getWindowRecomposer$annotations(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static final setCompositionContext(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;)V
    .locals 1
    .param p0, "$this$compositionContext"    # Landroid/view/View;
    .param p1, "value"    # Landroidx/compose/runtime/CompositionContext;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget v0, Landroidx/compose/ui/R$id;->androidx_compose_ui_view_composition_context:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    return-void
.end method
