.class public final Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/SubcomposeLayoutState;->precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1\n+ 2 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutState\n+ 3 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n*L\n1#1,487:1\n451#2:488\n1088#3,4:489\n*S KotlinDebug\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1\n*L\n426#1:488\n426#1:489,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "androidx/compose/ui/layout/SubcomposeLayoutState$precompose$1",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "dispose",
        "",
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
.field final synthetic $slotId:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;Ljava/lang/Object;)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p2, "$slotId"    # Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iput-object p2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->$slotId:Ljava/lang/Object;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 12

    .line 416
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getPrecomposeMap$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->$slotId:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 417
    .local v0, "node":Landroidx/compose/ui/node/LayoutNode;
    if-eqz v0, :cond_5

    .line 418
    iget-object v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 419
    .local v1, "itemIndex":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Check failed."

    if-eqz v5, :cond_4

    .line 420
    iget-object v5, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v5}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getReusableCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I

    move-result v5

    iget-object v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v7}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getMaxSlotsToRetainForReuse$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 422
    iget-object v5, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v5}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v7}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getPrecomposedCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v7}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getReusableCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I

    move-result v7

    sub-int/2addr v5, v7

    .line 421
    nop

    .line 423
    .local v5, "reusableNodesSectionStart":I
    iget-object v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v7, v1, v5, v4}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$move(Landroidx/compose/ui/layout/SubcomposeLayoutState;III)V

    .line 424
    iget-object v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v7}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getReusableCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v7, v8}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$setReusableCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;I)V

    .end local v5    # "reusableNodesSectionStart":I
    goto :goto_1

    .line 426
    :cond_1
    iget-object v5, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .local v5, "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    iget-object v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    const/4 v8, 0x0

    .line 488
    .local v8, "$i$f$ignoreRemeasureRequests":I
    invoke-static {v5}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v9

    .local v9, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v10, 0x0

    .line 489
    .local v10, "$i$f$ignoreRemeasureRequests$ui_release":I
    invoke-static {v9, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 490
    const/4 v11, 0x0

    .line 427
    .local v11, "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$precompose$1$dispose$1":I
    invoke-static {v7, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$disposeNode(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/node/LayoutNode;)V

    .line 428
    invoke-static {v7}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    invoke-virtual {v7, v1, v4}, Landroidx/compose/ui/node/LayoutNode;->removeAt$ui_release(II)V

    .line 429
    nop

    .line 491
    .end local v11    # "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$precompose$1$dispose$1":I
    invoke-static {v9, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 492
    nop

    .line 488
    .end local v9    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v10    # "$i$f$ignoreRemeasureRequests$ui_release":I
    nop

    .line 431
    .end local v5    # "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .end local v8    # "$i$f$ignoreRemeasureRequests":I
    :goto_1
    iget-object v5, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v5}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getPrecomposedCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I

    move-result v5

    if-lez v5, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_3

    .line 432
    iget-object v3, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;->this$0:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    invoke-static {v3}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getPrecomposedCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$setPrecomposedCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;I)V

    goto :goto_2

    .line 431
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 419
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 434
    .end local v1    # "itemIndex":I
    :cond_5
    :goto_2
    return-void
.end method
