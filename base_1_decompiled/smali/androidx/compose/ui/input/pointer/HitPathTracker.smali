.class public final Landroidx/compose/ui/input/pointer/HitPathTracker;
.super Ljava/lang/Object;
.source "HitPathTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitPathTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/HitPathTracker\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,404:1\n365#2,12:405\n*S KotlinDebug\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/HitPathTracker\n*L\n55#1:405,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J)\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\nJ\u0006\u0010\u0017\u001a\u00020\nJ\u001b\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/HitPathTracker;",
        "",
        "rootCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "root",
        "Landroidx/compose/ui/input/pointer/NodeParent;",
        "getRoot$ui_release",
        "()Landroidx/compose/ui/input/pointer/NodeParent;",
        "addHitPath",
        "",
        "pointerId",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "pointerInputFilters",
        "",
        "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
        "addHitPath-KNwqfcY",
        "(JLjava/util/List;)V",
        "dispatchChanges",
        "",
        "internalPointerEvent",
        "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
        "processCancel",
        "removeDetachedPointerInputFilters",
        "removeHitPath",
        "removeHitPath-0FcD4WY",
        "(J)V",
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
.field private final root:Landroidx/compose/ui/input/pointer/NodeParent;

.field private final rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1, "rootCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    const-string v0, "rootCoordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 35
    new-instance v0, Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 32
    return-void
.end method


# virtual methods
.method public final addHitPath-KNwqfcY(JLjava/util/List;)V
    .locals 16
    .param p1, "pointerId"    # J
    .param p3, "pointerInputFilters"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "pointerInputFilters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 51
    .local v2, "parent":Landroidx/compose/ui/input/pointer/NodeParent;
    const/4 v3, 0x1

    .line 52
    .local v3, "merging":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_7

    const/4 v5, 0x0

    :goto_0
    move v6, v5

    .local v6, "i":I
    add-int/lit8 v5, v5, 0x1

    .line 53
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 54
    .local v7, "pointerInputFilter":Landroidx/compose/ui/input/pointer/PointerInputFilter;
    if-eqz v3, :cond_5

    .line 55
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v8

    .local v8, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v9, 0x0

    .line 405
    .local v9, "$i$f$firstOrNull":I
    nop

    .line 406
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v10

    .line 407
    .local v10, "size$iv":I
    if-lez v10, :cond_2

    .line 408
    const/4 v11, 0x0

    .line 409
    .local v11, "i$iv":I
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v12

    .line 411
    .local v12, "content$iv":[Ljava/lang/Object;
    :goto_1
    aget-object v13, v12, v11

    .line 412
    .local v13, "item$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/input/pointer/Node;

    .local v14, "it":Landroidx/compose/ui/input/pointer/Node;
    const/4 v15, 0x0

    .line 56
    .local v15, "$i$a$-firstOrNull-HitPathTracker$addHitPath$node$1":I
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/Node;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .end local v14    # "it":Landroidx/compose/ui/input/pointer/Node;
    .end local v15    # "$i$a$-firstOrNull-HitPathTracker$addHitPath$node$1":I
    if-eqz v0, :cond_0

    goto :goto_3

    .line 413
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 414
    if-lt v11, v10, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p3

    goto :goto_1

    .line 416
    .end local v11    # "i$iv":I
    .end local v12    # "content$iv":[Ljava/lang/Object;
    .end local v13    # "item$iv":Ljava/lang/Object;
    :cond_2
    :goto_2
    const/4 v13, 0x0

    .line 55
    .end local v8    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v9    # "$i$f$firstOrNull":I
    .end local v10    # "size$iv":I
    :goto_3
    move-object v0, v13

    check-cast v0, Landroidx/compose/ui/input/pointer/Node;

    .line 58
    .local v0, "node":Landroidx/compose/ui/input/pointer/Node;
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/Node;->getPointerIds()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v8

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/Node;->getPointerIds()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v8

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_3
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 61
    goto :goto_4

    .line 63
    :cond_4
    const/4 v3, 0x0

    .line 66
    .end local v0    # "node":Landroidx/compose/ui/input/pointer/Node;
    :cond_5
    new-instance v0, Landroidx/compose/ui/input/pointer/Node;

    invoke-direct {v0, v7}, Landroidx/compose/ui/input/pointer/Node;-><init>(Landroidx/compose/ui/input/pointer/PointerInputFilter;)V

    move-object v8, v0

    .local v8, "$this$addHitPath_KNwqfcY_u24lambda_u2d1":Landroidx/compose/ui/input/pointer/Node;
    const/4 v9, 0x0

    .line 67
    .local v9, "$i$a$-apply-HitPathTracker$addHitPath$node$2":I
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/Node;->getPointerIds()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v10

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 68
    nop

    .line 66
    .end local v8    # "$this$addHitPath_KNwqfcY_u24lambda_u2d1":Landroidx/compose/ui/input/pointer/Node;
    .end local v9    # "$i$a$-apply-HitPathTracker$addHitPath$node$2":I
    nop

    .line 69
    .restart local v0    # "node":Landroidx/compose/ui/input/pointer/Node;
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 70
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 52
    .end local v0    # "node":Landroidx/compose/ui/input/pointer/Node;
    .end local v7    # "pointerInputFilter":Landroidx/compose/ui/input/pointer/PointerInputFilter;
    :goto_4
    if-le v5, v4, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v0, p3

    goto :goto_0

    .line 72
    .end local v6    # "i":I
    :cond_7
    :goto_5
    return-void
.end method

.method public final dispatchChanges(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z
    .locals 3
    .param p1, "internalPointerEvent"    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    const-string v0, "internalPointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 91
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getChanges()Ljava/util/Map;

    move-result-object v1

    .line 92
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 93
    nop

    .line 90
    invoke-virtual {v0, v1, v2, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->dispatchMainEventPass(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    move-result v0

    .line 95
    .local v0, "dispatchHit":Z
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/NodeParent;->dispatchFinalEventPass()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 97
    return v0
.end method

.method public final getRoot$ui_release()Landroidx/compose/ui/input/pointer/NodeParent;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    return-object v0
.end method

.method public final processCancel()V
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->dispatchCancel()V

    .line 108
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->clear()V

    .line 109
    return-void
.end method

.method public final removeDetachedPointerInputFilters()V
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->removeDetachedPointerInputFilters()V

    .line 119
    return-void
.end method

.method public final removeHitPath-0FcD4WY(J)V
    .locals 1
    .param p1, "pointerId"    # J

    .line 79
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->recursivelyRemovePointerId-0FcD4WY(J)V

    .line 80
    return-void
.end method
