.class public abstract Lcom/github/mikephil/charting/renderer/AxisRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "AxisRenderer.java"


# instance fields
.field protected mAxis:Lcom/github/mikephil/charting/components/AxisBase;

.field protected mAxisLabelPaint:Landroid/graphics/Paint;

.field protected mAxisLinePaint:Landroid/graphics/Paint;

.field protected mGridPaint:Landroid/graphics/Paint;

.field protected mLimitLinePaint:Landroid/graphics/Paint;

.field protected mTrans:Lcom/github/mikephil/charting/utils/Transformer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/AxisBase;)V
    .locals 4
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/AxisBase;

    .line 49
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 51
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 52
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    .line 54
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    .line 59
    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    const/16 v3, 0x5a

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    .line 65
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 70
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public computeAxis(FFZ)V
    .locals 4
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "inverted"    # Z

    .line 122
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutY()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 125
    .local v0, "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 127
    .local v1, "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    if-nez p3, :cond_0

    .line 129
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p1, v2

    .line 130
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p2, v2

    goto :goto_0

    .line 133
    :cond_0
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p1, v2

    .line 134
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p2, v2

    .line 137
    :goto_0
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 138
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 141
    .end local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .end local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxisValues(FF)V

    .line 142
    return-void
.end method

.method protected computeAxisValues(FF)V
    .locals 26
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 152
    .local v1, "yMin":F
    move/from16 v2, p2

    .line 154
    .local v2, "yMax":F
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->getLabelCount()I

    move-result v3

    .line 155
    .local v3, "labelCount":I
    sub-float v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    .line 157
    .local v4, "range":D
    if-eqz v3, :cond_11

    const-wide/16 v7, 0x0

    cmpg-double v9, v4, v7

    if-lez v9, :cond_11

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move-wide/from16 v18, v4

    goto/16 :goto_a

    .line 165
    :cond_0
    int-to-double v9, v3

    div-double v9, v4, v9

    .line 166
    .local v9, "rawInterval":D
    invoke-static {v9, v10}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v11

    float-to-double v11, v11

    .line 170
    .local v11, "interval":D
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/components/AxisBase;->isGranularityEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 171
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/components/AxisBase;->getGranularity()F

    move-result v13

    float-to-double v13, v13

    cmpg-double v13, v11, v13

    if-gez v13, :cond_1

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/components/AxisBase;->getGranularity()F

    move-result v13

    float-to-double v13, v13

    goto :goto_0

    :cond_1
    move-wide v13, v11

    :goto_0
    move-wide v11, v13

    .line 174
    :cond_2
    invoke-static {v11, v12}, Ljava/lang/Math;->log10(D)D

    move-result-wide v13

    double-to-int v13, v13

    int-to-double v13, v13

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v8

    float-to-double v13, v8

    .line 175
    .local v13, "intervalMagnitude":D
    div-double v6, v11, v13

    double-to-int v6, v6

    .line 176
    .local v6, "intervalSigDigit":I
    const/4 v7, 0x5

    if-le v6, v7, :cond_3

    .line 179
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    .line 182
    :cond_3
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/AxisBase;->isCenterAxisLabelsEnabled()Z

    move-result v7

    .line 185
    .local v7, "n":I
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/AxisBase;->isForceLabelsEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 187
    double-to-float v8, v4

    add-int/lit8 v15, v3, -0x1

    int-to-float v15, v15

    div-float/2addr v8, v15

    float-to-double v11, v8

    .line 188
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iput v3, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 190
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v8, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v8, v8

    if-ge v8, v3, :cond_4

    .line 192
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    new-array v15, v3, [F

    iput-object v15, v8, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 195
    :cond_4
    move/from16 v8, p1

    .line 197
    .local v8, "v":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v3, :cond_5

    .line 198
    move-wide/from16 v18, v4

    .end local v4    # "range":D
    .local v18, "range":D
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aput v8, v4, v15

    .line 199
    float-to-double v4, v8

    add-double/2addr v4, v11

    double-to-float v8, v4

    .line 197
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v4, v18

    goto :goto_1

    .end local v18    # "range":D
    .restart local v4    # "range":D
    :cond_5
    move-wide/from16 v18, v4

    .line 202
    .end local v4    # "range":D
    .end local v15    # "i":I
    .restart local v18    # "range":D
    move v4, v3

    .line 205
    .end local v7    # "n":I
    .end local v8    # "v":F
    .local v4, "n":I
    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move v8, v6

    goto/16 :goto_7

    .line 207
    .end local v18    # "range":D
    .local v4, "range":D
    .restart local v7    # "n":I
    :cond_6
    move-wide/from16 v18, v4

    .end local v4    # "range":D
    .restart local v18    # "range":D
    const-wide/16 v4, 0x0

    cmpl-double v8, v11, v4

    if-nez v8, :cond_7

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_7
    float-to-double v4, v1

    div-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    .line 208
    .local v4, "first":D
    :goto_2
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/AxisBase;->isCenterAxisLabelsEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 209
    sub-double/2addr v4, v11

    .line 212
    :cond_8
    const-wide/16 v15, 0x0

    cmpl-double v8, v11, v15

    if-nez v8, :cond_9

    move v8, v6

    move v15, v7

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_9
    move v8, v6

    move v15, v7

    .end local v6    # "intervalSigDigit":I
    .end local v7    # "n":I
    .local v8, "intervalSigDigit":I
    .local v15, "n":I
    float-to-double v6, v2

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    mul-double/2addr v6, v11

    invoke-static {v6, v7}, Lcom/github/mikephil/charting/utils/Utils;->nextUp(D)D

    move-result-wide v6

    .line 217
    .local v6, "last":D
    :goto_3
    const-wide/16 v16, 0x0

    cmpl-double v20, v11, v16

    if-eqz v20, :cond_a

    .line 218
    move-wide/from16 v20, v4

    .local v20, "f":D
    :goto_4
    cmpg-double v22, v20, v6

    if-gtz v22, :cond_a

    .line 219
    add-int/lit8 v15, v15, 0x1

    .line 218
    add-double v20, v20, v11

    goto :goto_4

    .line 223
    .end local v20    # "f":D
    :cond_a
    move/from16 v20, v1

    .end local v1    # "yMin":F
    .local v20, "yMin":F
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iput v15, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 225
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v1, v1

    if-ge v1, v15, :cond_b

    .line 227
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move/from16 v21, v2

    .end local v2    # "yMax":F
    .local v21, "yMax":F
    new-array v2, v15, [F

    iput-object v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    goto :goto_5

    .line 225
    .end local v21    # "yMax":F
    .restart local v2    # "yMax":F
    :cond_b
    move/from16 v21, v2

    .line 230
    .end local v2    # "yMax":F
    .restart local v21    # "yMax":F
    :goto_5
    move-wide v1, v4

    .local v1, "f":D
    const/16 v22, 0x0

    move/from16 v25, v22

    move/from16 v22, v3

    move/from16 v3, v25

    .local v3, "i":I
    .local v22, "labelCount":I
    :goto_6
    if-ge v3, v15, :cond_d

    .line 232
    const-wide/16 v16, 0x0

    cmpl-double v23, v1, v16

    if-nez v23, :cond_c

    .line 233
    const-wide/16 v1, 0x0

    .line 235
    :cond_c
    move-wide/from16 v23, v4

    .end local v4    # "first":D
    .local v23, "first":D
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    double-to-float v5, v1

    aput v5, v4, v3

    .line 230
    add-double/2addr v1, v11

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v4, v23

    goto :goto_6

    .end local v23    # "first":D
    .restart local v4    # "first":D
    :cond_d
    move-wide/from16 v23, v4

    .end local v4    # "first":D
    .restart local v23    # "first":D
    move v4, v15

    .line 240
    .end local v1    # "f":D
    .end local v3    # "i":I
    .end local v6    # "last":D
    .end local v15    # "n":I
    .end local v23    # "first":D
    .local v4, "n":I
    :goto_7
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v11, v1

    if-gez v1, :cond_e

    .line 241
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-static {v11, v12}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    goto :goto_8

    .line 243
    :cond_e
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    .line 246
    :goto_8
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/AxisBase;->isCenterAxisLabelsEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 248
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    array-length v1, v1

    if-ge v1, v4, :cond_f

    .line 249
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    new-array v2, v4, [F

    iput-object v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    .line 252
    :cond_f
    double-to-float v1, v11

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 254
    .local v1, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v4, :cond_10

    .line 255
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aget v5, v5, v2

    add-float/2addr v5, v1

    aput v5, v3, v2

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 258
    .end local v1    # "offset":F
    .end local v2    # "i":I
    :cond_10
    return-void

    .line 157
    .end local v8    # "intervalSigDigit":I
    .end local v9    # "rawInterval":D
    .end local v11    # "interval":D
    .end local v13    # "intervalMagnitude":D
    .end local v18    # "range":D
    .end local v20    # "yMin":F
    .end local v21    # "yMax":F
    .end local v22    # "labelCount":I
    .local v1, "yMin":F
    .local v2, "yMax":F
    .local v3, "labelCount":I
    .local v4, "range":D
    :cond_11
    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move-wide/from16 v18, v4

    .line 158
    .end local v1    # "yMin":F
    .end local v2    # "yMax":F
    .end local v3    # "labelCount":I
    .end local v4    # "range":D
    .restart local v18    # "range":D
    .restart local v20    # "yMin":F
    .restart local v21    # "yMax":F
    .restart local v22    # "labelCount":I
    :goto_a
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    const/4 v2, 0x0

    new-array v3, v2, [F

    iput-object v3, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 159
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    new-array v3, v2, [F

    iput-object v3, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    .line 160
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iput v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 161
    return-void
.end method

.method public getPaintAxisLabels()Landroid/graphics/Paint;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintAxisLine()Landroid/graphics/Paint;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintGrid()Landroid/graphics/Paint;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransformer()Lcom/github/mikephil/charting/utils/Transformer;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    return-object v0
.end method

.method public abstract renderAxisLabels(Landroid/graphics/Canvas;)V
.end method

.method public abstract renderAxisLine(Landroid/graphics/Canvas;)V
.end method

.method public abstract renderGridLines(Landroid/graphics/Canvas;)V
.end method

.method public abstract renderLimitLines(Landroid/graphics/Canvas;)V
.end method
