.class public Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;
.source "BubbleChartRenderer.java"


# instance fields
.field private _hsvBuffer:[F

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

.field private pointBuffer:[F

.field private sizeBuffer:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 33
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 35
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 49
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v0

    .line 51
    .local v0, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 53
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {p0, p1, v2}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V

    .line 55
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V
    .locals 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v2

    .line 75
    .local v2, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    .line 77
    .local v4, "phaseY":F
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-virtual {v5, v6, v1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 79
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 80
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    aput v6, v5, v8

    .line 82
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 84
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isNormalizeSizeEnabled()Z

    move-result v5

    .line 87
    .local v5, "normalizeSize":Z
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    aget v8, v6, v8

    aget v6, v6, v7

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 88
    .local v6, "maxBubbleWidth":F
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v8

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 89
    .local v8, "maxBubbleHeight":F
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 91
    .local v9, "referenceSize":F
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v10, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    .local v10, "j":I
    :goto_0
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v11, v11, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v12, v12, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v11, v12

    if-gt v10, v11, :cond_5

    .line 93
    invoke-interface {v1, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 95
    .local v11, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BubbleEntry;->getX()F

    move-result v13

    aput v13, v12, v7

    .line 96
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BubbleEntry;->getY()F

    move-result v13

    mul-float/2addr v13, v4

    aput v13, v12, v3

    .line 97
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    invoke-virtual {v2, v12}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 99
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v12

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getMaxSize()F

    move-result v13

    invoke-virtual {v0, v12, v13, v9, v5}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFFZ)F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    .line 101
    .local v12, "shapeHalf":F
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    aget v14, v14, v3

    add-float/2addr v14, v12

    invoke-virtual {v13, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    aget v14, v14, v3

    sub-float/2addr v14, v12

    .line 102
    invoke-virtual {v13, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v13

    if-nez v13, :cond_1

    .line 103
    move-object/from16 v7, p1

    goto :goto_1

    .line 105
    :cond_1
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    aget v14, v14, v7

    add-float/2addr v14, v12

    invoke-virtual {v13, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v13

    if-nez v13, :cond_2

    .line 106
    move-object/from16 v7, p1

    goto :goto_1

    .line 108
    :cond_2
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    aget v14, v14, v7

    sub-float/2addr v14, v12

    invoke-virtual {v13, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v13

    if-nez v13, :cond_3

    .line 109
    move-object/from16 v7, p1

    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/BubbleEntry;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-interface {v1, v13}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getColor(I)I

    move-result v13

    .line 113
    .local v13, "color":I
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    aget v15, v14, v7

    aget v14, v14, v3

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual {v7, v15, v14, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 101
    .end local v13    # "color":I
    :cond_4
    move-object/from16 v7, p1

    .line 91
    .end local v11    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v12    # "shapeHalf":F
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v7, p1

    .line 116
    .end local v10    # "j":I
    :goto_2
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 207
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 21
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v2

    .line 216
    .local v2, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    .line 218
    .local v3, "phaseY":F
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v7, v1, v6

    .line 220
    .local v7, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 222
    .local v8, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    if-eqz v8, :cond_7

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isHighlightEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 223
    move-object/from16 v0, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_1

    .line 225
    :cond_0
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v9

    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 227
    .local v9, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getY()F

    move-result v10

    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v11

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    .line 228
    move-object/from16 v0, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_1

    .line 230
    :cond_1
    invoke-virtual {v0, v9, v8}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 231
    move-object/from16 v0, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_1

    .line 233
    :cond_2
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    .line 235
    .local v10, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    const/4 v12, 0x0

    aput v12, v11, v5

    .line 236
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    aput v12, v11, v13

    .line 238
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 240
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isNormalizeSizeEnabled()Z

    move-result v11

    .line 243
    .local v11, "normalizeSize":Z
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    aget v14, v12, v13

    aget v12, v12, v5

    sub-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 244
    .local v12, "maxBubbleWidth":F
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 245
    invoke-virtual {v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v14

    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v15

    sub-float/2addr v14, v15

    .line 244
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 246
    .local v14, "maxBubbleHeight":F
    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 248
    .local v15, "referenceSize":F
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getX()F

    move-result v16

    aput v16, v13, v5

    .line 249
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getY()F

    move-result v16

    mul-float v16, v16, v3

    const/16 v17, 0x1

    aput v16, v13, v17

    .line 250
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    invoke-virtual {v10, v13}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 252
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    aget v1, v13, v5

    aget v13, v13, v17

    invoke-virtual {v7, v1, v13}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 254
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v1

    .line 255
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getMaxSize()F

    move-result v13

    .line 254
    invoke-virtual {v0, v1, v13, v15, v11}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFFZ)F

    move-result v1

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v1, v13

    .line 259
    .local v1, "shapeHalf":F
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    aget v5, v5, v17

    add-float/2addr v5, v1

    invoke-virtual {v13, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    aget v13, v13, v17

    sub-float/2addr v13, v1

    .line 260
    invoke-virtual {v5, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v5

    if-nez v5, :cond_3

    .line 261
    move-object/from16 v0, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_1

    .line 263
    :cond_3
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/16 v16, 0x0

    aget v13, v13, v16

    add-float/2addr v13, v1

    invoke-virtual {v5, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v5

    if-nez v5, :cond_4

    .line 264
    move-object/from16 v0, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_1

    .line 266
    :cond_4
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    aget v13, v13, v16

    sub-float/2addr v13, v1

    invoke-virtual {v5, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v5

    if-nez v5, :cond_5

    .line 267
    move-object/from16 v0, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_2

    .line 269
    :cond_5
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BubbleEntry;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-interface {v8, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getColor(I)I

    move-result v5

    .line 271
    .local v5, "originalColor":I
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v13

    move-object/from16 v18, v2

    .end local v2    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .local v18, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 272
    move/from16 v19, v3

    .end local v3    # "phaseY":F
    .local v19, "phaseY":F
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    move/from16 v20, v4

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 271
    invoke-static {v13, v2, v3, v4}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 273
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    const/4 v3, 0x2

    aget v4, v2, v3

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v4, v13

    aput v4, v2, v3

    .line 274
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    .line 276
    .local v2, "color":I
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getHighlightCircleWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 278
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    const/4 v4, 0x0

    aget v13, v3, v4

    aget v3, v3, v17

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 259
    .end local v5    # "originalColor":I
    .end local v18    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .end local v19    # "phaseY":F
    .local v2, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v3    # "phaseY":F
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    .end local v2    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .end local v3    # "phaseY":F
    .restart local v18    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v19    # "phaseY":F
    goto :goto_1

    .line 222
    .end local v1    # "shapeHalf":F
    .end local v9    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v10    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v11    # "normalizeSize":Z
    .end local v12    # "maxBubbleWidth":F
    .end local v14    # "maxBubbleHeight":F
    .end local v15    # "referenceSize":F
    .end local v18    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .end local v19    # "phaseY":F
    .restart local v2    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v3    # "phaseY":F
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    .line 218
    .end local v2    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .end local v3    # "phaseY":F
    .end local v7    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v8    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    .restart local v18    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v19    # "phaseY":F
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v18    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .end local v19    # "phaseY":F
    .restart local v2    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v3    # "phaseY":F
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    .line 280
    .end local v2    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .end local v3    # "phaseY":F
    .restart local v18    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v19    # "phaseY":F
    :goto_2
    return-void
.end method

.method public drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "valueText"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "color"    # I

    .line 201
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 121
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v7

    .line 123
    .local v7, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    if-nez v7, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v8

    .line 131
    .local v8, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;>;"
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v9, v0

    .line 133
    .local v9, "lineHeight":F
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_a

    .line 135
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 137
    .local v11, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 138
    move-object/from16 v17, v7

    goto/16 :goto_6

    .line 141
    :cond_1
    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 143
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 144
    .local v12, "phaseX":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v13

    .line 146
    .local v13, "phaseY":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-virtual {v0, v2, v11}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 148
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v3, v3, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    .line 149
    invoke-virtual {v0, v11, v13, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesBubble(Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;FII)[F

    move-result-object v14

    .line 151
    .local v14, "positions":[F
    cmpl-float v0, v12, v1

    if-nez v0, :cond_2

    move v0, v13

    goto :goto_1

    :cond_2
    move v0, v12

    :goto_1
    move v15, v0

    .line 153
    .local v15, "alpha":F
    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v5

    .line 155
    .local v5, "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    .line 156
    .local v4, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    iget v0, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 157
    iget v0, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 159
    const/4 v0, 0x0

    move v3, v0

    .local v3, "j":I
    :goto_2
    array-length v0, v14

    if-ge v3, v0, :cond_8

    .line 161
    div-int/lit8 v0, v3, 0x2

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v0, v1

    invoke-interface {v11, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getValueTextColor(I)I

    move-result v0

    .line 162
    .local v0, "valueTextColor":I
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v15

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 163
    move-object/from16 v16, v4

    .end local v4    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v16, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    move-object/from16 v17, v7

    .end local v7    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .local v17, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 162
    invoke-static {v1, v2, v4, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 165
    .end local v0    # "valueTextColor":I
    .local v7, "valueTextColor":I
    aget v4, v14, v3

    .line 166
    .local v4, "x":F
    add-int/lit8 v0, v3, 0x1

    aget v2, v14, v0

    .line 168
    .local v2, "y":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    move-object/from16 v19, v5

    move-object/from16 v6, v16

    goto/16 :goto_5

    .line 171
    :cond_3
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 172
    move/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v6, v16

    goto/16 :goto_4

    .line 174
    :cond_4
    div-int/lit8 v0, v3, 0x2

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v0, v1

    invoke-interface {v11, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 176
    .local v1, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isDrawValuesEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getBubbleLabel(Lcom/github/mikephil/charting/data/BubbleEntry;)Ljava/lang/String;

    move-result-object v18

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v9

    add-float v19, v2, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    .end local v1    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .local v20, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v1, p1

    move/from16 v21, v2

    .end local v2    # "y":F
    .local v21, "y":F
    move-object/from16 v2, v18

    move/from16 v18, v3

    .end local v3    # "j":I
    .local v18, "j":I
    move v3, v4

    move-object/from16 v6, v16

    move/from16 v16, v4

    .end local v4    # "x":F
    .local v6, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v16, "x":F
    move/from16 v4, v19

    move-object/from16 v19, v5

    .end local v5    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .local v19, "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_3

    .line 176
    .end local v6    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v18    # "j":I
    .end local v19    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v20    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v21    # "y":F
    .restart local v1    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v2    # "y":F
    .restart local v3    # "j":I
    .restart local v4    # "x":F
    .restart local v5    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .local v16, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    :cond_5
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v6, v16

    move/from16 v16, v4

    .line 180
    .end local v1    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v2    # "y":F
    .end local v3    # "j":I
    .end local v4    # "x":F
    .end local v5    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .restart local v6    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v16, "x":F
    .restart local v18    # "j":I
    .restart local v19    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .restart local v20    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v21    # "y":F
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/BubbleEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isDrawIconsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/BubbleEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget v1, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v4, v16, v1

    float-to-int v1, v4

    iget v2, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v2, v21, v2

    float-to-int v2, v2

    .line 189
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    .line 190
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v27

    .line 184
    move-object/from16 v22, p1

    move-object/from16 v23, v0

    move/from16 v24, v1

    move/from16 v25, v2

    invoke-static/range {v22 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_4

    .line 171
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v18    # "j":I
    .end local v19    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v20    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v21    # "y":F
    .restart local v2    # "y":F
    .restart local v3    # "j":I
    .restart local v4    # "x":F
    .restart local v5    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .local v16, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    :cond_6
    move/from16 v21, v2

    move/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v6, v16

    move/from16 v16, v4

    .line 159
    .end local v2    # "y":F
    .end local v3    # "j":I
    .end local v4    # "x":F
    .end local v5    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v7    # "valueTextColor":I
    .end local v16    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v6    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v18    # "j":I
    .restart local v19    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    :cond_7
    :goto_4
    add-int/lit8 v3, v18, 0x2

    move-object v4, v6

    move-object/from16 v7, v17

    move-object/from16 v5, v19

    move-object/from16 v6, p0

    .end local v18    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_2

    .end local v6    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v17    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .end local v19    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .local v4, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v5    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .local v7, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    :cond_8
    move/from16 v18, v3

    move-object v6, v4

    move-object/from16 v19, v5

    move-object/from16 v17, v7

    .line 194
    .end local v3    # "j":I
    .end local v4    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v5    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v7    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v6    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v17    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v19    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    :goto_5
    invoke-static {v6}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_6

    .line 137
    .end local v6    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v12    # "phaseX":F
    .end local v13    # "phaseY":F
    .end local v14    # "positions":[F
    .end local v15    # "alpha":F
    .end local v17    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .end local v19    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .restart local v7    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    :cond_9
    move-object/from16 v17, v7

    .line 133
    .end local v7    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .end local v11    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    .restart local v17    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    goto/16 :goto_0

    .end local v17    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v7    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    :cond_a
    move-object/from16 v17, v7

    .end local v7    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v17    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    goto :goto_7

    .line 127
    .end local v8    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;>;"
    .end local v9    # "lineHeight":F
    .end local v10    # "i":I
    .end local v17    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v7    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    :cond_b
    move-object/from16 v17, v7

    .line 197
    .end local v7    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    .restart local v17    # "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    :goto_7
    return-void
.end method

.method protected getShapeSize(FFFZ)F
    .locals 2
    .param p1, "entrySize"    # F
    .param p2, "maxSize"    # F
    .param p3, "reference"    # F
    .param p4, "normalizeSize"    # Z

    .line 62
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_1
    move v0, p1

    .line 64
    .local v0, "factor":F
    :goto_0
    mul-float v1, p3, v0

    .line 65
    .local v1, "shapeSize":F
    return v1
.end method

.method public initBuffers()V
    .locals 0

    .line 44
    return-void
.end method
