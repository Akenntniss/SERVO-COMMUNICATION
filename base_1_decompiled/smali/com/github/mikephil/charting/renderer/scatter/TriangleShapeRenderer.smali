.class public Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;
.super Ljava/lang/Object;
.source "TriangleShapeRenderer.java"

# interfaces
.implements Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;


# instance fields
.field protected mTrianglePathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;->mTrianglePathBuffer:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLandroid/graphics/Paint;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p4, "posX"    # F
    .param p5, "posY"    # F
    .param p6, "renderPaint"    # Landroid/graphics/Paint;

    .line 25
    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p6

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    move-result v3

    .line 26
    .local v3, "shapeSize":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    .line 27
    .local v5, "shapeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleRadius()F

    move-result v6

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    .line 28
    .local v6, "shapeHoleSizeHalf":F
    mul-float v7, v6, v4

    .line 29
    .local v7, "shapeHoleSize":F
    sub-float v8, v3, v7

    div-float/2addr v8, v4

    .line 31
    .local v8, "shapeStrokeSize":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleColor()I

    move-result v4

    .line 33
    .local v4, "shapeHoleColor":I
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    move-object v9, p0

    iget-object v10, v9, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;->mTrianglePathBuffer:Landroid/graphics/Path;

    .line 37
    .local v10, "tri":Landroid/graphics/Path;
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 39
    sub-float v11, p5, v5

    invoke-virtual {v10, v1, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    add-float v11, v1, v5

    add-float v12, p5, v5

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    sub-float v11, v1, v5

    add-float v12, p5, v5

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    float-to-double v11, v3

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_0

    .line 44
    sub-float v11, p5, v5

    invoke-virtual {v10, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    sub-float v11, v1, v5

    add-float/2addr v11, v8

    add-float v12, p5, v5

    sub-float/2addr v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 48
    add-float v11, v1, v5

    sub-float/2addr v11, v8

    add-float v12, p5, v5

    sub-float/2addr v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    sub-float v11, p5, v5

    add-float/2addr v11, v8

    invoke-virtual {v10, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    sub-float v11, v1, v5

    add-float/2addr v11, v8

    add-float v12, p5, v5

    sub-float/2addr v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    :cond_0
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    .line 58
    invoke-virtual {v0, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 61
    float-to-double v11, v3

    cmpl-double v11, v11, v13

    if-lez v11, :cond_1

    const v11, 0x112233

    if-eq v4, v11, :cond_1

    .line 64
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    sub-float v11, p5, v5

    add-float/2addr v11, v8

    invoke-virtual {v10, v1, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    add-float v11, v1, v5

    sub-float/2addr v11, v8

    add-float v12, p5, v5

    sub-float/2addr v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    sub-float v11, v1, v5

    add-float/2addr v11, v8

    add-float v12, p5, v5

    sub-float/2addr v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    .line 74
    invoke-virtual {v0, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 78
    :cond_1
    return-void
.end method
