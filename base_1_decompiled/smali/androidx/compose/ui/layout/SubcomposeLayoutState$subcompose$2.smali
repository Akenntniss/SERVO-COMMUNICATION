.class final Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SubcomposeLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/SubcomposeLayoutState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2\n+ 2 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutState\n+ 3 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n*L\n1#1,487:1\n451#2:488\n1088#3,4:489\n*S KotlinDebug\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2\n*L\n232#1:488\n232#1:489,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $node:Landroidx/compose/ui/node/LayoutNode;

.field final synthetic $nodeState:Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

.field final synthetic this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iput-object p2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;->$nodeState:Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

    iput-object p3, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;->$node:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 14

    .line 232
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .local v0, "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    iget-object v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;->$nodeState:Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

    iget-object v2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iget-object v3, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;->$node:Landroidx/compose/ui/node/LayoutNode;

    const/4 v4, 0x0

    .line 488
    .local v4, "$i$f$ignoreRemeasureRequests":I
    invoke-static {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    .local v5, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v6, 0x0

    .line 489
    .local v6, "$i$f$ignoreRemeasureRequests$ui_release":I
    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 490
    const/4 v8, 0x0

    .line 233
    .local v8, "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$subcompose$2$1":I
    invoke-virtual {v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v9

    .line 234
    .local v9, "content":Lkotlin/jvm/functions/Function2;
    nop

    .line 235
    invoke-virtual {v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v10

    .line 236
    nop

    .line 237
    invoke-virtual {v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getCompositionContext$ui_release()Landroidx/compose/runtime/CompositionContext;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 241
    new-instance v12, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2$1$1;

    invoke-direct {v12, v9}, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v13, -0x3abe2669

    invoke-static {v13, v7, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 234
    invoke-static {v2, v10, v3, v11, v7}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$subcomposeInto(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->setComposition(Landroidx/compose/runtime/Composition;)V

    .line 243
    nop

    .line 491
    .end local v8    # "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$subcompose$2$1":I
    .end local v9    # "content":Lkotlin/jvm/functions/Function2;
    const/4 v1, 0x0

    invoke-static {v5, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 492
    nop

    .line 488
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v6    # "$i$f$ignoreRemeasureRequests$ui_release":I
    nop

    .line 244
    .end local v0    # "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .end local v4    # "$i$f$ignoreRemeasureRequests":I
    return-void

    .line 237
    .restart local v0    # "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .restart local v4    # "$i$f$ignoreRemeasureRequests":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v6    # "$i$f$ignoreRemeasureRequests$ui_release":I
    .restart local v8    # "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$subcompose$2$1":I
    .restart local v9    # "content":Lkotlin/jvm/functions/Function2;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "parent composition reference not set"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
