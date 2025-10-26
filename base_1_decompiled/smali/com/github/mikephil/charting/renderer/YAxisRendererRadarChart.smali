.class public Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;
.super Lcom/github/mikephil/charting/renderer/YAxisRenderer;
.source "YAxisRendererRadarChart.java"


# instance fields
.field private mChart:Lcom/github/mikephil/charting/charts/RadarChart;

.field private mRenderLimitLinesPathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "yAxis"    # Lcom/github/mikephil/charting/components/YAxis;
    .param p3, "chart"    # Lcom/github/mikephil/charting/charts/RadarChart;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 178
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 23
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 24
    return-void
.end method


# virtual methods
.method protected computeAxisValues(FF)V
    .locals 27
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 29
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 30
    .local v1, "yMin":F
    move/from16 v2, p2

    .line 32
    .local v2, "yMax":F
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/AxisBase;->getLabelCount()I

    move-result v3

    .line 33
    .local v3, "labelCount":I
    sub-float v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    .line 35
    .local v4, "range":D
    if-eqz v3, :cond_11

    const-wide/16 v7, 0x0

    cmpg-double v9, v4, v7

    if-lez v9, :cond_11

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_0

    move/from16 v17, v1

    move/from16 v26, v2

    move/from16 v16, v3

    move-wide/from16 v19, v4

    goto/16 :goto_a

    .line 43
    :cond_0
    int-to-double v9, v3

    div-double v9, v4, v9

    .line 44
    .local v9, "rawInterval":D
    invoke-static {v9, v10}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v11

    float-to-double v11, v11

    .line 48
    .local v11, "interval":D
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/components/AxisBase;->isGranularityEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 49
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/components/AxisBase;->getGranularity()F

    move-result v13

    float-to-double v13, v13

    cmpg-double v13, v11, v13

    if-gez v13, :cond_1

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/components/AxisBase;->getGranularity()F

    move-result v13

    float-to-double v13, v13

    goto :goto_0

    :cond_1
    move-wide v13, v11

    :goto_0
    move-wide v11, v13

    .line 52
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

    .line 53
    .local v13, "intervalMagnitude":D
    div-double v6, v11, v13

    double-to-int v6, v6

    .line 54
    .local v6, "intervalSigDigit":I
    const/4 v7, 0x5

    if-le v6, v7, :cond_3

    .line 57
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    .line 60
    :cond_3
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/AxisBase;->isCenterAxisLabelsEnabled()Z

    move-result v7

    .line 61
    .local v7, "centeringEnabled":Z
    move v8, v7

    .line 64
    .local v8, "n":I
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/components/AxisBase;->isForceLabelsEnabled()Z

    move-result v15

    const/16 v18, 0x1

    if-eqz v15, :cond_6

    .line 66
    double-to-float v15, v4

    move-wide/from16 v19, v4

    .end local v4    # "range":D
    .local v19, "range":D
    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    div-float/2addr v15, v4

    .line 67
    .local v15, "step":F
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iput v3, v4, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 69
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v4, v4, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v4, v4

    if-ge v4, v3, :cond_4

    .line 71
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    new-array v5, v3, [F

    iput-object v5, v4, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 74
    :cond_4
    move/from16 v4, p1

    .line 76
    .local v4, "v":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 77
    move/from16 v21, v6

    .end local v6    # "intervalSigDigit":I
    .local v21, "intervalSigDigit":I
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v6, v6, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aput v4, v6, v5

    .line 78
    add-float/2addr v4, v15

    .line 76
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v21

    goto :goto_1

    .end local v21    # "intervalSigDigit":I
    .restart local v6    # "intervalSigDigit":I
    :cond_5
    move/from16 v21, v6

    .line 81
    .end local v5    # "i":I
    .end local v6    # "intervalSigDigit":I
    .restart local v21    # "intervalSigDigit":I
    move v4, v3

    .line 84
    .end local v8    # "n":I
    .end local v15    # "step":F
    .local v4, "n":I
    move/from16 v17, v1

    move/from16 v26, v2

    move/from16 v16, v3

    move-wide/from16 v22, v9

    goto/16 :goto_7

    .line 86
    .end local v19    # "range":D
    .end local v21    # "intervalSigDigit":I
    .local v4, "range":D
    .restart local v6    # "intervalSigDigit":I
    .restart local v8    # "n":I
    :cond_6
    move-wide/from16 v19, v4

    move/from16 v21, v6

    .end local v4    # "range":D
    .end local v6    # "intervalSigDigit":I
    .restart local v19    # "range":D
    .restart local v21    # "intervalSigDigit":I
    const-wide/16 v4, 0x0

    cmpl-double v6, v11, v4

    if-nez v6, :cond_7

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_7
    float-to-double v4, v1

    div-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    .line 87
    .local v4, "first":D
    :goto_2
    if-eqz v7, :cond_8

    .line 88
    sub-double/2addr v4, v11

    .line 91
    :cond_8
    const-wide/16 v15, 0x0

    cmpl-double v6, v11, v15

    if-nez v6, :cond_9

    move v6, v8

    move-wide/from16 v22, v9

    const-wide/16 v8, 0x0

    goto :goto_3

    :cond_9
    move v6, v8

    move-wide/from16 v22, v9

    .end local v8    # "n":I
    .end local v9    # "rawInterval":D
    .local v6, "n":I
    .local v22, "rawInterval":D
    float-to-double v8, v2

    div-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    mul-double/2addr v8, v11

    invoke-static {v8, v9}, Lcom/github/mikephil/charting/utils/Utils;->nextUp(D)D

    move-result-wide v8

    .line 96
    .local v8, "last":D
    :goto_3
    const-wide/16 v15, 0x0

    cmpl-double v10, v11, v15

    if-eqz v10, :cond_a

    .line 97
    move-wide/from16 v24, v4

    .local v24, "f":D
    :goto_4
    cmpg-double v10, v24, v8

    if-gtz v10, :cond_a

    .line 98
    add-int/lit8 v6, v6, 0x1

    .line 97
    add-double v24, v24, v11

    goto :goto_4

    .line 102
    .end local v24    # "f":D
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 104
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iput v6, v10, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 106
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v10, v10, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v10, v10

    if-ge v10, v6, :cond_b

    .line 108
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    new-array v15, v6, [F

    iput-object v15, v10, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 111
    :cond_b
    move-wide/from16 v24, v4

    .restart local v24    # "f":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-ge v10, v6, :cond_d

    .line 113
    const-wide/16 v15, 0x0

    cmpl-double v17, v24, v15

    if-nez v17, :cond_c

    .line 114
    const-wide/16 v24, 0x0

    move/from16 v17, v1

    move/from16 v26, v2

    move-wide/from16 v1, v24

    goto :goto_6

    .line 113
    :cond_c
    move/from16 v17, v1

    move/from16 v26, v2

    move-wide/from16 v1, v24

    .line 116
    .end local v2    # "yMax":F
    .end local v24    # "f":D
    .local v1, "f":D
    .local v17, "yMin":F
    .local v26, "yMax":F
    :goto_6
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v15, v15, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move/from16 v16, v3

    .end local v3    # "labelCount":I
    .local v16, "labelCount":I
    double-to-float v3, v1

    aput v3, v15, v10

    .line 111
    add-double v24, v1, v11

    .end local v1    # "f":D
    .restart local v24    # "f":D
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v26

    goto :goto_5

    .end local v16    # "labelCount":I
    .end local v17    # "yMin":F
    .end local v26    # "yMax":F
    .local v1, "yMin":F
    .restart local v2    # "yMax":F
    .restart local v3    # "labelCount":I
    :cond_d
    move/from16 v17, v1

    move/from16 v26, v2

    move/from16 v16, v3

    .end local v1    # "yMin":F
    .end local v2    # "yMax":F
    .end local v3    # "labelCount":I
    .restart local v16    # "labelCount":I
    .restart local v17    # "yMin":F
    .restart local v26    # "yMax":F
    move v4, v6

    .line 121
    .end local v6    # "n":I
    .end local v8    # "last":D
    .end local v10    # "i":I
    .end local v24    # "f":D
    .local v4, "n":I
    :goto_7
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v11, v1

    if-gez v1, :cond_e

    .line 122
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-static {v11, v12}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    goto :goto_8

    .line 124
    :cond_e
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    const/4 v2, 0x0

    iput v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    .line 127
    :goto_8
    if-eqz v7, :cond_10

    .line 129
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    array-length v1, v1

    if-ge v1, v4, :cond_f

    .line 130
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    new-array v2, v4, [F

    iput-object v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    .line 133
    :cond_f
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aget v1, v1, v18

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 135
    .local v1, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v4, :cond_10

    .line 136
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v3, v3, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v5, v5, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aget v5, v5, v2

    add-float/2addr v5, v1

    aput v5, v3, v2

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 140
    .end local v1    # "offset":F
    .end local v2    # "i":I
    :cond_10
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 141
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    add-int/lit8 v3, v4, -0x1

    aget v2, v2, v3

    iput v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 142
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget v2, v2, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iget v3, v3, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    .line 143
    return-void

    .line 35
    .end local v7    # "centeringEnabled":Z
    .end local v11    # "interval":D
    .end local v13    # "intervalMagnitude":D
    .end local v16    # "labelCount":I
    .end local v17    # "yMin":F
    .end local v19    # "range":D
    .end local v21    # "intervalSigDigit":I
    .end local v22    # "rawInterval":D
    .end local v26    # "yMax":F
    .local v1, "yMin":F
    .local v2, "yMax":F
    .restart local v3    # "labelCount":I
    .local v4, "range":D
    :cond_11
    move/from16 v17, v1

    move/from16 v26, v2

    move/from16 v16, v3

    move-wide/from16 v19, v4

    .line 36
    .end local v1    # "yMin":F
    .end local v2    # "yMax":F
    .end local v3    # "labelCount":I
    .end local v4    # "range":D
    .restart local v16    # "labelCount":I
    .restart local v17    # "yMin":F
    .restart local v19    # "range":D
    .restart local v26    # "yMax":F
    :goto_a
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    const/4 v2, 0x0

    new-array v3, v2, [F

    iput-object v3, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 37
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    new-array v3, v2, [F

    iput-object v3, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    .line 38
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    iput v2, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 39
    return-void
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 148
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 152
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 156
    .local v0, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v1

    .line 157
    .local v1, "pOut":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    .line 159
    .local v2, "factor":F
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isDrawBottomYLabelEntryEnabled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 160
    .local v3, "from":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/YAxis;->isDrawTopYLabelEntryEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    add-int/lit8 v4, v4, -0x1

    .line 164
    .local v4, "to":I
    :goto_0
    move v5, v3

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 166
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v6, v6, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v7, v7, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    .line 168
    .local v6, "r":F
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v7

    invoke-static {v0, v6, v7, v1}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 170
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v7, v5}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "label":Ljava/lang/String;
    iget v8, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/high16 v9, 0x41200000    # 10.0f

    add-float/2addr v8, v9

    iget v9, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    .end local v6    # "r":F
    .end local v7    # "label":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 174
    .end local v5    # "j":I
    :cond_2
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 175
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 176
    return-void

    .line 149
    .end local v0    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v1    # "pOut":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v2    # "factor":F
    .end local v3    # "from":I
    .end local v4    # "to":I
    :cond_3
    :goto_2
    return-void
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 182
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->getLimitLines()Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-nez v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v1

    .line 191
    .local v1, "sliceangle":F
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    .line 193
    .local v2, "factor":F
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v3

    .line 194
    .local v3, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v4, 0x0

    invoke-static {v4, v4}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    .line 195
    .local v4, "pOut":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 197
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/components/LimitLine;

    .line 199
    .local v6, "l":Lcom/github/mikephil/charting/components/LimitLine;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 200
    goto :goto_3

    .line 202
    :cond_1
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 204
    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    .line 208
    .local v7, "r":F
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 209
    .local v8, "limitPath":Landroid/graphics/Path;
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 212
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/RadarData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 214
    int-to-float v10, v9

    mul-float/2addr v10, v1

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v11

    add-float/2addr v10, v11

    invoke-static {v3, v7, v10, v4}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 216
    if-nez v9, :cond_2

    .line 217
    iget v10, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v11, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    .line 219
    :cond_2
    iget v10, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v11, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 221
    .end local v9    # "j":I
    :cond_3
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 223
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 195
    .end local v6    # "l":Lcom/github/mikephil/charting/components/LimitLine;
    .end local v7    # "r":F
    .end local v8    # "limitPath":Landroid/graphics/Path;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    .end local v5    # "i":I
    :cond_4
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 226
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 227
    return-void
.end method
