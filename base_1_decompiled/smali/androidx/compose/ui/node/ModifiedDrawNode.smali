.class public final Landroidx/compose/ui/node/ModifiedDrawNode;
.super Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
.source "ModifiedDrawNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/ModifiedDrawNode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper<",
        "Landroidx/compose/ui/draw/DrawModifier;",
        ">;",
        "Landroidx/compose/ui/node/OwnerScope;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifiedDrawNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifiedDrawNode.kt\nandroidx/compose/ui/node/ModifiedDrawNode\n+ 2 LayoutNodeDrawScope.kt\nandroidx/compose/ui/node/LayoutNodeDrawScope\n+ 3 CanvasDrawScope.kt\nandroidx/compose/ui/graphics/drawscope/CanvasDrawScope\n*L\n1#1,123:1\n51#2,5:124\n60#2,2:146\n522#3,17:129\n*S KotlinDebug\n*F\n+ 1 ModifiedDrawNode.kt\nandroidx/compose/ui/node/ModifiedDrawNode\n*L\n99#1:124,5\n99#1:146,2\n99#1:129,17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 !2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001!B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0014J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fH\u0014J\n\u0010 \u001a\u0004\u0018\u00010\u000bH\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR$\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00028V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/ui/node/ModifiedDrawNode;",
        "Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;",
        "Landroidx/compose/ui/draw/DrawModifier;",
        "Landroidx/compose/ui/node/OwnerScope;",
        "wrapped",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
        "drawModifier",
        "(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/draw/DrawModifier;)V",
        "buildCacheParams",
        "Landroidx/compose/ui/draw/BuildDrawCacheParams;",
        "cacheDrawModifier",
        "Landroidx/compose/ui/draw/DrawCacheModifier;",
        "invalidateCache",
        "",
        "isValid",
        "()Z",
        "value",
        "modifier",
        "getModifier",
        "()Landroidx/compose/ui/draw/DrawModifier;",
        "setModifier",
        "(Landroidx/compose/ui/draw/DrawModifier;)V",
        "updateCache",
        "Lkotlin/Function0;",
        "",
        "onMeasureResultChanged",
        "width",
        "",
        "height",
        "performDraw",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "updateCacheDrawModifier",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/compose/ui/node/ModifiedDrawNode$Companion;

.field private static final onCommitAffectingModifiedDrawNode:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/ModifiedDrawNode;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buildCacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

.field private cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

.field private invalidateCache:Z

.field private final updateCache:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/ModifiedDrawNode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/ModifiedDrawNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/ModifiedDrawNode;->Companion:Landroidx/compose/ui/node/ModifiedDrawNode$Companion;

    .line 113
    sget-object v0, Landroidx/compose/ui/node/ModifiedDrawNode$Companion$onCommitAffectingModifiedDrawNode$1;->INSTANCE:Landroidx/compose/ui/node/ModifiedDrawNode$Companion$onCommitAffectingModifiedDrawNode$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/node/ModifiedDrawNode;->onCommitAffectingModifiedDrawNode:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/draw/DrawModifier;)V
    .locals 1
    .param p1, "wrapped"    # Landroidx/compose/ui/node/LayoutNodeWrapper;
    .param p2, "drawModifier"    # Landroidx/compose/ui/draw/DrawModifier;

    const-string/jumbo v0, "wrapped"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawModifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p2

    check-cast v0, Landroidx/compose/ui/Modifier$Element;

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier$Element;)V

    .line 32
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->updateCacheDrawModifier()Landroidx/compose/ui/draw/DrawCacheModifier;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 34
    new-instance v0, Landroidx/compose/ui/node/ModifiedDrawNode$buildCacheParams$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/ModifiedDrawNode$buildCacheParams$1;-><init>(Landroidx/compose/ui/node/ModifiedDrawNode;)V

    check-cast v0, Landroidx/compose/ui/draw/BuildDrawCacheParams;

    iput-object v0, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->buildCacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->invalidateCache:Z

    .line 48
    new-instance v0, Landroidx/compose/ui/node/ModifiedDrawNode$updateCache$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/ModifiedDrawNode$updateCache$1;-><init>(Landroidx/compose/ui/node/ModifiedDrawNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->updateCache:Lkotlin/jvm/functions/Function0;

    .line 27
    return-void
.end method

.method public static final synthetic access$getBuildCacheParams$p(Landroidx/compose/ui/node/ModifiedDrawNode;)Landroidx/compose/ui/draw/BuildDrawCacheParams;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/ModifiedDrawNode;

    .line 27
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->buildCacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    return-object v0
.end method

.method public static final synthetic access$getCacheDrawModifier$p(Landroidx/compose/ui/node/ModifiedDrawNode;)Landroidx/compose/ui/draw/DrawCacheModifier;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/node/ModifiedDrawNode;

    .line 27
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    return-object v0
.end method

.method public static final synthetic access$getMeasuredSize-YbymL2g(Landroidx/compose/ui/node/ModifiedDrawNode;)J
    .locals 2
    .param p0, "$this"    # Landroidx/compose/ui/node/ModifiedDrawNode;

    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->getMeasuredSize-YbymL2g()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$setInvalidateCache$p(Landroidx/compose/ui/node/ModifiedDrawNode;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/node/ModifiedDrawNode;
    .param p1, "<set-?>"    # Z

    .line 27
    iput-boolean p1, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->invalidateCache:Z

    return-void
.end method

.method private final updateCacheDrawModifier()Landroidx/compose/ui/draw/DrawCacheModifier;
    .locals 3

    .line 66
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->getModifier()Landroidx/compose/ui/draw/DrawModifier;

    move-result-object v0

    .line 67
    .local v0, "current":Landroidx/compose/ui/draw/DrawModifier;
    instance-of v1, v0, Landroidx/compose/ui/draw/DrawCacheModifier;

    if-eqz v1, :cond_0

    .line 68
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/draw/DrawCacheModifier;

    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 67
    :goto_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic getModifier()Landroidx/compose/ui/Modifier$Element;
    .locals 1

    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->getModifier()Landroidx/compose/ui/draw/DrawModifier;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Element;

    return-object v0
.end method

.method public getModifier()Landroidx/compose/ui/draw/DrawModifier;
    .locals 1

    .line 75
    invoke-super {p0}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getModifier()Landroidx/compose/ui/Modifier$Element;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/draw/DrawModifier;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->isAttached()Z

    move-result v0

    return v0
.end method

.method protected onMeasureResultChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 83
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->onMeasureResultChanged(II)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->invalidateCache:Z

    .line 85
    return-void
.end method

.method protected performDraw(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->getMeasuredSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    .line 90
    .local v2, "size":J
    iget-object v4, v0, Landroidx/compose/ui/node/ModifiedDrawNode;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Landroidx/compose/ui/node/ModifiedDrawNode;->invalidateCache:Z

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v4

    .line 92
    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/node/OwnerScope;

    .line 93
    sget-object v6, Landroidx/compose/ui/node/ModifiedDrawNode;->onCommitAffectingModifiedDrawNode:Lkotlin/jvm/functions/Function1;

    .line 94
    iget-object v7, v0, Landroidx/compose/ui/node/ModifiedDrawNode;->updateCache:Lkotlin/jvm/functions/Function0;

    .line 91
    invoke-virtual {v4, v5, v6, v7}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 98
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->getLayoutNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getMDrawScope$ui_release()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    move-result-object v4

    .line 99
    .local v4, "drawScope":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    .local v5, "LayoutNodeWrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    move-object v6, v4

    .local v6, "this_$iv":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    const/4 v7, 0x0

    .line 124
    .local v7, "$i$f$draw-x_KDEd0$ui_release":I
    invoke-static {v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->access$getWrapped$p(Landroidx/compose/ui/node/LayoutNodeDrawScope;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v8

    .line 125
    .local v8, "previousWrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    invoke-static {v6, v5}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->access$setWrapped$p(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 126
    invoke-static {v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->access$getCanvasDrawScope$p(Landroidx/compose/ui/node/LayoutNodeDrawScope;)Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    move-result-object v9

    .line 127
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 128
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    .line 126
    nop

    .local v9, "this_$iv$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .local v10, "density$iv$iv":Landroidx/compose/ui/unit/Density;
    .local v11, "layoutDirection$iv$iv":Landroidx/compose/ui/unit/LayoutDirection;
    const/4 v12, 0x0

    .line 129
    .local v12, "$i$f$draw-yzxVdVo":I
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    move-result-object v14

    .local v14, "prevDensity$iv$iv":Landroidx/compose/ui/unit/Density;
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v15

    .local v15, "prevLayoutDirection$iv$iv":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    move/from16 v16, v12

    .end local v12    # "$i$f$draw-yzxVdVo":I
    .local v0, "prevCanvas$iv$iv":Landroidx/compose/ui/graphics/Canvas;
    .local v16, "$i$f$draw-yzxVdVo":I
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    move-result-wide v12

    .line 130
    .local v12, "prevSize$iv$iv":J
    move-object/from16 v17, v5

    .end local v5    # "LayoutNodeWrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    .local v17, "LayoutNodeWrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v5

    .local v5, "$this$draw_yzxVdVo_u24lambda_u2d0$iv$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    const/16 v18, 0x0

    .line 131
    .local v18, "$i$a$-apply-CanvasDrawScope$draw$1$iv$iv":I
    invoke-virtual {v5, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 132
    invoke-virtual {v5, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 133
    invoke-virtual {v5, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 134
    invoke-virtual {v5, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 135
    nop

    .line 130
    .end local v5    # "$this$draw_yzxVdVo_u24lambda_u2d0$iv$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    .end local v18    # "$i$a$-apply-CanvasDrawScope$draw$1$iv$iv":I
    nop

    .line 136
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 137
    move-object v5, v9

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .local v5, "$this$performDraw_u24lambda_u2d2":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v18, 0x0

    .line 100
    .local v18, "$i$a$-draw-x_KDEd0$ui_release-ModifiedDrawNode$performDraw$1":I
    move-object/from16 v19, v4

    .local v19, "$this$performDraw_u24lambda_u2d2_u24lambda_u2d1":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    const/16 v20, 0x0

    .line 101
    .local v20, "$i$a$-with-ModifiedDrawNode$performDraw$1$1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->getModifier()Landroidx/compose/ui/draw/DrawModifier;

    move-result-object v1

    .local v1, "$this$performDraw_u24lambda_u2d2_u24lambda_u2d1_u24lambda_u2d0":Landroidx/compose/ui/draw/DrawModifier;
    const/16 v21, 0x0

    .line 102
    .local v21, "$i$a$-with-ModifiedDrawNode$performDraw$1$1$1":I
    move-wide/from16 v22, v2

    .end local v2    # "size":J
    .local v22, "size":J
    move-object/from16 v2, v19

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v1, v2}, Landroidx/compose/ui/draw/DrawModifier;->draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 103
    nop

    .line 101
    .end local v1    # "$this$performDraw_u24lambda_u2d2_u24lambda_u2d1_u24lambda_u2d0":Landroidx/compose/ui/draw/DrawModifier;
    .end local v21    # "$i$a$-with-ModifiedDrawNode$performDraw$1$1$1":I
    nop

    .line 104
    nop

    .line 100
    .end local v19    # "$this$performDraw_u24lambda_u2d2_u24lambda_u2d1":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    .end local v20    # "$i$a$-with-ModifiedDrawNode$performDraw$1$1":I
    nop

    .line 105
    nop

    .line 138
    .end local v5    # "$this$performDraw_u24lambda_u2d2":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v18    # "$i$a$-draw-x_KDEd0$ui_release-ModifiedDrawNode$performDraw$1":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 139
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v1

    .local v1, "$this$draw_yzxVdVo_u24lambda_u2d1$iv$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    const/4 v2, 0x0

    .line 140
    .local v2, "$i$a$-apply-CanvasDrawScope$draw$2$iv$iv":I
    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 141
    invoke-virtual {v1, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 142
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 143
    invoke-virtual {v1, v12, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 144
    nop

    .line 139
    .end local v1    # "$this$draw_yzxVdVo_u24lambda_u2d1$iv$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    .end local v2    # "$i$a$-apply-CanvasDrawScope$draw$2$iv$iv":I
    nop

    .line 145
    nop

    .line 146
    .end local v0    # "prevCanvas$iv$iv":Landroidx/compose/ui/graphics/Canvas;
    .end local v9    # "this_$iv$iv":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .end local v10    # "density$iv$iv":Landroidx/compose/ui/unit/Density;
    .end local v11    # "layoutDirection$iv$iv":Landroidx/compose/ui/unit/LayoutDirection;
    .end local v12    # "prevSize$iv$iv":J
    .end local v14    # "prevDensity$iv$iv":Landroidx/compose/ui/unit/Density;
    .end local v15    # "prevLayoutDirection$iv$iv":Landroidx/compose/ui/unit/LayoutDirection;
    .end local v16    # "$i$f$draw-yzxVdVo":I
    invoke-static {v6, v8}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->access$setWrapped$p(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 147
    nop

    .line 106
    .end local v6    # "this_$iv":Landroidx/compose/ui/node/LayoutNodeDrawScope;
    .end local v7    # "$i$f$draw-x_KDEd0$ui_release":I
    .end local v8    # "previousWrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    .end local v17    # "LayoutNodeWrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    return-void
.end method

.method public bridge synthetic setModifier(Landroidx/compose/ui/Modifier$Element;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/compose/ui/Modifier$Element;

    .line 27
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/draw/DrawModifier;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/ModifiedDrawNode;->setModifier(Landroidx/compose/ui/draw/DrawModifier;)V

    return-void
.end method

.method public setModifier(Landroidx/compose/ui/draw/DrawModifier;)V
    .locals 1
    .param p1, "value"    # Landroidx/compose/ui/draw/DrawModifier;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/Modifier$Element;

    invoke-super {p0, v0}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setModifier(Landroidx/compose/ui/Modifier$Element;)V

    .line 78
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedDrawNode;->updateCacheDrawModifier()Landroidx/compose/ui/draw/DrawCacheModifier;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/ModifiedDrawNode;->invalidateCache:Z

    .line 80
    return-void
.end method
