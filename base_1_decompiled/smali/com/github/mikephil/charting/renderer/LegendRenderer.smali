.class public Lcom/github/mikephil/charting/renderer/LegendRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "LegendRenderer.java"


# instance fields
.field protected computedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field protected mLegend:Lcom/github/mikephil/charting/components/Legend;

.field protected mLegendFormPaint:Landroid/graphics/Paint;

.field protected mLegendLabelPaint:Landroid/graphics/Paint;

.field private mLineFormPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 3
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "legend"    # Lcom/github/mikephil/charting/components/Legend;

    .line 45
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    .line 223
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 468
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    .line 47
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    .line 50
    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    .line 54
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    return-void
.end method


# virtual methods
.method public computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/ChartData<",
            "*>;)V"
        }
    .end annotation

    .line 85
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "Lcom/github/mikephil/charting/data/ChartData<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->isLegendCustom()Z

    move-result v2

    if-nez v2, :cond_b

    .line 87
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 90
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 92
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    .line 94
    .local v3, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColors()Ljava/util/List;

    move-result-object v4

    .line 95
    .local v4, "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v5

    .line 98
    .local v5, "entryCount":I
    instance-of v6, v3, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    if-eqz v6, :cond_2

    move-object v6, v3

    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    move-object v6, v3

    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 101
    .local v6, "bds":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackLabels()[Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "sLabels":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 105
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v10, v7

    rem-int v10, v8, v10

    aget-object v11, v7, v10

    .line 107
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v12

    .line 108
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v13

    .line 109
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v14

    .line 110
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v16

    .line 111
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v10, v15

    move-object/from16 v18, v7

    move-object v7, v15

    .end local v7    # "sLabels":[Ljava/lang/String;
    .local v18, "sLabels":[Ljava/lang/String;
    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v10 .. v16}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 105
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v7, v18

    goto :goto_1

    .end local v18    # "sLabels":[Ljava/lang/String;
    .restart local v7    # "sLabels":[Ljava/lang/String;
    :cond_0
    move-object/from16 v18, v7

    .line 115
    .end local v7    # "sLabels":[Ljava/lang/String;
    .end local v8    # "j":I
    .restart local v18    # "sLabels":[Ljava/lang/String;
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getLabel()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 117
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 118
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v11, 0x7fc00000    # Float.NaN

    const/high16 v12, 0x7fc00000    # Float.NaN

    const/4 v13, 0x0

    const v14, 0x112233

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 117
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v6    # "bds":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .end local v18    # "sLabels":[Ljava/lang/String;
    :cond_1
    move-object v6, v1

    goto/16 :goto_5

    :cond_2
    instance-of v6, v3, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    if-eqz v6, :cond_5

    .line 129
    move-object v6, v3

    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 131
    .local v6, "pds":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    if-ge v7, v5, :cond_3

    .line 133
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 134
    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v10

    .line 135
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v11

    .line 136
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v12

    .line 137
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v13

    .line 138
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v14

    .line 139
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v9, v15

    move-object v1, v15

    move/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 133
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    .line 143
    .end local v7    # "j":I
    :cond_3
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v14, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 146
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    const/high16 v10, 0x7fc00000    # Float.NaN

    const/high16 v11, 0x7fc00000    # Float.NaN

    const/4 v12, 0x0

    const v13, 0x112233

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 145
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v6    # "pds":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    :cond_4
    move-object/from16 v6, p1

    goto/16 :goto_5

    :cond_5
    instance-of v1, v3, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    if-eqz v1, :cond_6

    move-object v1, v3

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v1

    const v6, 0x112233

    if-eq v1, v6, :cond_6

    .line 158
    move-object v1, v3

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v1

    .line 159
    .local v1, "decreasingColor":I
    move-object v6, v3

    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v14

    .line 161
    .local v14, "increasingColor":I
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    const/4 v7, 0x0

    .line 163
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v8

    .line 164
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v9

    .line 165
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v10

    .line 166
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v11

    move-object v6, v15

    move v12, v1

    invoke-direct/range {v6 .. v12}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 161
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v15, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 171
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v9

    .line 173
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v10

    .line 174
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v11

    .line 175
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v12

    move-object v7, v15

    move v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 170
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v1    # "decreasingColor":I
    .end local v14    # "increasingColor":I
    move-object/from16 v6, p1

    goto :goto_5

    .line 181
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    if-ge v1, v5, :cond_8

    .line 186
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_7

    add-int/lit8 v6, v5, -0x1

    if-ge v1, v6, :cond_7

    .line 187
    const/4 v6, 0x0

    move-object v7, v6

    move-object/from16 v6, p1

    .local v6, "label":Ljava/lang/String;
    goto :goto_4

    .line 189
    .end local v6    # "label":Ljava/lang/String;
    :cond_7
    move-object/from16 v6, p1

    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v7

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "label":Ljava/lang/String;
    :goto_4
    iget-object v15, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    new-instance v14, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 194
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v10

    .line 195
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormSize()F

    move-result v11

    .line 196
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineWidth()F

    move-result v12

    .line 197
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v13

    .line 198
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v8, v14

    move-object v9, v7

    move-object/from16 v17, v3

    move-object v3, v14

    .end local v3    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .local v17, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    move/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>(Ljava/lang/String;Lcom/github/mikephil/charting/components/Legend$LegendForm;FFLandroid/graphics/DashPathEffect;I)V

    .line 192
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v7    # "label":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v17

    goto :goto_3

    .end local v17    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .restart local v3    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_8
    move-object/from16 v6, p1

    move-object/from16 v17, v3

    .line 90
    .end local v1    # "j":I
    .end local v3    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .end local v4    # "clrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "entryCount":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object v1, v6

    goto/16 :goto_0

    :cond_9
    move-object v6, v1

    .line 204
    .end local v2    # "i":I
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 205
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 208
    :cond_a
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computedEntries:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Legend;->setEntries(Ljava/util/List;)V

    goto :goto_6

    .line 85
    :cond_b
    move-object v6, v1

    .line 211
    :goto_6
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 213
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_c

    .line 214
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 216
    :cond_c
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 217
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/components/Legend;->calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 221
    return-void
.end method

.method protected drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "entry"    # Lcom/github/mikephil/charting/components/LegendEntry;
    .param p5, "legend"    # Lcom/github/mikephil/charting/components/Legend;

    .line 486
    move-object v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    iget v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v2, 0x112234

    if-eq v1, v2, :cond_5

    iget v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v2, 0x112233

    if-eq v1, v2, :cond_5

    iget v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 491
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 493
    .local v11, "restoreCount":I
    iget-object v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 494
    .local v1, "form":Lcom/github/mikephil/charting/components/Legend$LegendForm;
    sget-object v2, Lcom/github/mikephil/charting/components/Legend$LegendForm;->DEFAULT:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-ne v1, v2, :cond_1

    .line 495
    invoke-virtual/range {p5 .. p5}, Lcom/github/mikephil/charting/components/Legend;->getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    .line 494
    :cond_1
    move-object v12, v1

    .line 497
    .end local v1    # "form":Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .local v12, "form":Lcom/github/mikephil/charting/components/Legend$LegendForm;
    :goto_0
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    iget v2, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 499
    iget v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 500
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-virtual/range {p5 .. p5}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v1

    goto :goto_1

    :cond_2
    iget v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 499
    :goto_1
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v13

    .line 503
    .local v13, "formSize":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v14, v13, v1

    .line 505
    .local v14, "half":F
    sget-object v1, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm:[I

    invoke-virtual {v12}, Lcom/github/mikephil/charting/components/Legend$LegendForm;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 527
    :pswitch_0
    iget v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    .line 528
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 529
    invoke-virtual/range {p5 .. p5}, Lcom/github/mikephil/charting/components/Legend;->getFormLineWidth()F

    move-result v1

    goto :goto_2

    :cond_3
    iget v1, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formLineWidth:F

    .line 527
    :goto_2
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    .line 531
    .local v1, "formLineWidth":F
    iget-object v2, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formLineDashEffect:Landroid/graphics/DashPathEffect;

    if-nez v2, :cond_4

    .line 532
    invoke-virtual/range {p5 .. p5}, Lcom/github/mikephil/charting/components/Legend;->getFormLineDashEffect()Landroid/graphics/DashPathEffect;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v2, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 534
    .local v2, "formLineDashEffect":Landroid/graphics/DashPathEffect;
    :goto_3
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 535
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 536
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 538
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 539
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 540
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    add-float v4, v8, v13

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 541
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLineFormPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 521
    .end local v1    # "formLineWidth":F
    .end local v2    # "formLineDashEffect":Landroid/graphics/DashPathEffect;
    :pswitch_1
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 522
    sub-float v3, v9, v14

    add-float v4, v8, v13

    add-float v5, v9, v14

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 523
    goto :goto_4

    .line 516
    :pswitch_2
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 517
    add-float v1, v8, v14

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v9, v14, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 518
    goto :goto_4

    .line 512
    :pswitch_3
    goto :goto_4

    .line 508
    :pswitch_4
    nop

    .line 546
    :goto_4
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 547
    return-void

    .line 489
    .end local v11    # "restoreCount":I
    .end local v12    # "form":Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .end local v13    # "formSize":F
    .end local v14    # "half":F
    :cond_5
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "label"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 559
    return-void
.end method

.method public getFormPaint()Landroid/graphics/Paint;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendFormPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public renderLegend(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 227
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    .line 232
    .local v8, "tf":Landroid/graphics/Typeface;
    if-eqz v8, :cond_1

    .line 233
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 235
    :cond_1
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v9

    .line 239
    .local v9, "labelLineHeight":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->legendFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 240
    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getYEntrySpace()F

    move-result v1

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    add-float v10, v0, v1

    .line 241
    .local v10, "labelLineSpacing":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    const-string v1, "ABC"

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    sub-float v12, v9, v0

    .line 243
    .local v12, "formYOffset":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getEntries()[Lcom/github/mikephil/charting/components/LegendEntry;

    move-result-object v13

    .line 245
    .local v13, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getFormToTextSpace()F

    move-result v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v14

    .line 246
    .local v14, "formToTextSpace":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getXEntrySpace()F

    move-result v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v15

    .line 247
    .local v15, "xEntrySpace":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-result-object v5

    .line 248
    .local v5, "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v4

    .line 249
    .local v4, "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v16

    .line 250
    .local v16, "verticalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    move-result-object v3

    .line 251
    .local v3, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getFormSize()F

    move-result v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v17

    .line 254
    .local v17, "defaultFormSize":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getStackSpace()F

    move-result v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    .line 256
    .local v2, "stackSpace":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v18

    .line 257
    .local v18, "yoffset":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v1

    .line 258
    .local v1, "xoffset":F
    const/4 v0, 0x0

    .line 260
    .local v0, "originPosX":F
    sget-object v19, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment:[I

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    move/from16 v20, v0

    move-object/from16 v24, v8

    move/from16 v21, v10

    move/from16 v25, v14

    move/from16 v26, v15

    .end local v0    # "originPosX":F
    .end local v8    # "tf":Landroid/graphics/Typeface;
    .end local v10    # "labelLineSpacing":F
    .end local v14    # "formToTextSpace":F
    .end local v15    # "xEntrySpace":F
    .local v20, "originPosX":F
    .local v21, "labelLineSpacing":F
    .local v24, "tf":Landroid/graphics/Typeface;
    .local v25, "formToTextSpace":F
    .local v26, "xEntrySpace":F
    goto/16 :goto_5

    .line 287
    .end local v20    # "originPosX":F
    .end local v21    # "labelLineSpacing":F
    .end local v24    # "tf":Landroid/graphics/Typeface;
    .end local v25    # "formToTextSpace":F
    .end local v26    # "xEntrySpace":F
    .restart local v0    # "originPosX":F
    .restart local v8    # "tf":Landroid/graphics/Typeface;
    .restart local v10    # "labelLineSpacing":F
    .restart local v14    # "formToTextSpace":F
    .restart local v15    # "xEntrySpace":F
    :pswitch_0
    sget-object v11, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v5, v11, :cond_2

    .line 288
    iget-object v11, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v11

    const/high16 v19, 0x40000000    # 2.0f

    div-float v11, v11, v19

    .end local v0    # "originPosX":F
    .local v11, "originPosX":F
    goto :goto_0

    .line 290
    .end local v11    # "originPosX":F
    .restart local v0    # "originPosX":F
    :cond_2
    const/high16 v19, 0x40000000    # 2.0f

    iget-object v11, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v11

    move/from16 v20, v0

    .end local v0    # "originPosX":F
    .restart local v20    # "originPosX":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 291
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v0

    div-float v0, v0, v19

    add-float/2addr v11, v0

    .line 293
    .end local v20    # "originPosX":F
    .restart local v11    # "originPosX":F
    :goto_0
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v3, v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    neg-float v0, v1

    :goto_1
    add-float/2addr v0, v11

    .line 299
    .end local v11    # "originPosX":F
    .restart local v0    # "originPosX":F
    sget-object v11, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v5, v11, :cond_5

    .line 300
    move/from16 v21, v10

    .end local v10    # "labelLineSpacing":F
    .restart local v21    # "labelLineSpacing":F
    float-to-double v10, v0

    move/from16 v20, v0

    .end local v0    # "originPosX":F
    .restart local v20    # "originPosX":F
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    if-ne v3, v0, :cond_4

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    neg-float v0, v0

    move-object/from16 v24, v8

    .end local v8    # "tf":Landroid/graphics/Typeface;
    .restart local v24    # "tf":Landroid/graphics/Typeface;
    float-to-double v7, v0

    div-double v7, v7, v22

    move/from16 v25, v14

    move/from16 v26, v15

    .end local v14    # "formToTextSpace":F
    .end local v15    # "xEntrySpace":F
    .restart local v25    # "formToTextSpace":F
    .restart local v26    # "xEntrySpace":F
    float-to-double v14, v1

    add-double/2addr v7, v14

    goto :goto_2

    .end local v24    # "tf":Landroid/graphics/Typeface;
    .end local v25    # "formToTextSpace":F
    .end local v26    # "xEntrySpace":F
    .restart local v8    # "tf":Landroid/graphics/Typeface;
    .restart local v14    # "formToTextSpace":F
    .restart local v15    # "xEntrySpace":F
    :cond_4
    move-object/from16 v24, v8

    move/from16 v25, v14

    move/from16 v26, v15

    .end local v8    # "tf":Landroid/graphics/Typeface;
    .end local v14    # "formToTextSpace":F
    .end local v15    # "xEntrySpace":F
    .restart local v24    # "tf":Landroid/graphics/Typeface;
    .restart local v25    # "formToTextSpace":F
    .restart local v26    # "xEntrySpace":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    float-to-double v7, v0

    div-double v7, v7, v22

    float-to-double v14, v1

    sub-double/2addr v7, v14

    :goto_2
    add-double/2addr v10, v7

    double-to-float v0, v10

    move/from16 v20, v0

    .end local v20    # "originPosX":F
    .restart local v0    # "originPosX":F
    goto/16 :goto_5

    .line 299
    .end local v21    # "labelLineSpacing":F
    .end local v24    # "tf":Landroid/graphics/Typeface;
    .end local v25    # "formToTextSpace":F
    .end local v26    # "xEntrySpace":F
    .restart local v8    # "tf":Landroid/graphics/Typeface;
    .restart local v10    # "labelLineSpacing":F
    .restart local v14    # "formToTextSpace":F
    .restart local v15    # "xEntrySpace":F
    :cond_5
    move/from16 v20, v0

    move-object/from16 v24, v8

    move/from16 v21, v10

    move/from16 v25, v14

    move/from16 v26, v15

    .end local v0    # "originPosX":F
    .end local v8    # "tf":Landroid/graphics/Typeface;
    .end local v10    # "labelLineSpacing":F
    .end local v14    # "formToTextSpace":F
    .end local v15    # "xEntrySpace":F
    .restart local v20    # "originPosX":F
    .restart local v21    # "labelLineSpacing":F
    .restart local v24    # "tf":Landroid/graphics/Typeface;
    .restart local v25    # "formToTextSpace":F
    .restart local v26    # "xEntrySpace":F
    goto :goto_5

    .line 275
    .end local v20    # "originPosX":F
    .end local v21    # "labelLineSpacing":F
    .end local v24    # "tf":Landroid/graphics/Typeface;
    .end local v25    # "formToTextSpace":F
    .end local v26    # "xEntrySpace":F
    .restart local v0    # "originPosX":F
    .restart local v8    # "tf":Landroid/graphics/Typeface;
    .restart local v10    # "labelLineSpacing":F
    .restart local v14    # "formToTextSpace":F
    .restart local v15    # "xEntrySpace":F
    :pswitch_1
    move/from16 v20, v0

    move-object/from16 v24, v8

    move/from16 v21, v10

    move/from16 v25, v14

    move/from16 v26, v15

    .end local v0    # "originPosX":F
    .end local v8    # "tf":Landroid/graphics/Typeface;
    .end local v10    # "labelLineSpacing":F
    .end local v14    # "formToTextSpace":F
    .end local v15    # "xEntrySpace":F
    .restart local v20    # "originPosX":F
    .restart local v21    # "labelLineSpacing":F
    .restart local v24    # "tf":Landroid/graphics/Typeface;
    .restart local v25    # "formToTextSpace":F
    .restart local v26    # "xEntrySpace":F
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v5, v0, :cond_6

    .line 276
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v0

    sub-float/2addr v0, v1

    .end local v20    # "originPosX":F
    .restart local v0    # "originPosX":F
    goto :goto_3

    .line 278
    .end local v0    # "originPosX":F
    .restart local v20    # "originPosX":F
    :cond_6
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v0

    sub-float/2addr v0, v1

    .line 280
    .end local v20    # "originPosX":F
    .restart local v0    # "originPosX":F
    :goto_3
    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v3, v7, :cond_7

    .line 281
    iget-object v7, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v7, v7, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    sub-float/2addr v0, v7

    move/from16 v20, v0

    goto :goto_5

    .line 280
    :cond_7
    move/from16 v20, v0

    goto :goto_5

    .line 263
    .end local v21    # "labelLineSpacing":F
    .end local v24    # "tf":Landroid/graphics/Typeface;
    .end local v25    # "formToTextSpace":F
    .end local v26    # "xEntrySpace":F
    .restart local v8    # "tf":Landroid/graphics/Typeface;
    .restart local v10    # "labelLineSpacing":F
    .restart local v14    # "formToTextSpace":F
    .restart local v15    # "xEntrySpace":F
    :pswitch_2
    move/from16 v20, v0

    move-object/from16 v24, v8

    move/from16 v21, v10

    move/from16 v25, v14

    move/from16 v26, v15

    .end local v0    # "originPosX":F
    .end local v8    # "tf":Landroid/graphics/Typeface;
    .end local v10    # "labelLineSpacing":F
    .end local v14    # "formToTextSpace":F
    .end local v15    # "xEntrySpace":F
    .restart local v20    # "originPosX":F
    .restart local v21    # "labelLineSpacing":F
    .restart local v24    # "tf":Landroid/graphics/Typeface;
    .restart local v25    # "formToTextSpace":F
    .restart local v26    # "xEntrySpace":F
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->VERTICAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    if-ne v5, v0, :cond_8

    .line 264
    move v0, v1

    .end local v20    # "originPosX":F
    .restart local v0    # "originPosX":F
    goto :goto_4

    .line 266
    .end local v0    # "originPosX":F
    .restart local v20    # "originPosX":F
    :cond_8
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v0

    add-float/2addr v0, v1

    .line 268
    .end local v20    # "originPosX":F
    .restart local v0    # "originPosX":F
    :goto_4
    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v3, v7, :cond_9

    .line 269
    iget-object v7, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v7, v7, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    add-float/2addr v0, v7

    move/from16 v20, v0

    goto :goto_5

    .line 268
    :cond_9
    move/from16 v20, v0

    .line 308
    .end local v0    # "originPosX":F
    .restart local v20    # "originPosX":F
    :goto_5
    sget-object v0, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_1

    move-object/from16 v7, p1

    move/from16 v27, v1

    move-object/from16 v38, v4

    move-object/from16 v29, v5

    move/from16 v31, v12

    move-object v11, v13

    move/from16 v10, v25

    move v12, v2

    move-object v13, v3

    move/from16 v3, v26

    .end local v1    # "xoffset":F
    .end local v2    # "stackSpace":F
    .end local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .end local v5    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .end local v25    # "formToTextSpace":F
    .end local v26    # "xEntrySpace":F
    .local v3, "xEntrySpace":F
    .local v10, "formToTextSpace":F
    .local v11, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .local v12, "stackSpace":F
    .local v13, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .local v27, "xoffset":F
    .local v29, "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .local v31, "formYOffset":F
    .local v38, "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    goto/16 :goto_21

    .line 389
    .end local v10    # "formToTextSpace":F
    .end local v11    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v27    # "xoffset":F
    .end local v29    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .end local v31    # "formYOffset":F
    .end local v38    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v1    # "xoffset":F
    .restart local v2    # "stackSpace":F
    .local v3, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .restart local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v5    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .local v12, "formYOffset":F
    .local v13, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v25    # "formToTextSpace":F
    .restart local v26    # "xEntrySpace":F
    :pswitch_3
    const/4 v0, 0x0

    .line 390
    .local v0, "stack":F
    const/4 v10, 0x0

    .line 391
    .local v10, "wasStacked":Z
    const/4 v11, 0x0

    .line 393
    .local v11, "posY":F
    sget-object v14, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_2

    goto :goto_8

    .line 409
    :pswitch_4
    iget-object v14, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    iget-object v7, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v7, v7, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    div-float/2addr v7, v15

    sub-float/2addr v14, v7

    iget-object v7, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 411
    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v7

    add-float v11, v14, v7

    goto :goto_8

    .line 402
    :pswitch_5
    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v4, v7, :cond_a

    iget-object v7, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 403
    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v7

    goto :goto_6

    :cond_a
    iget-object v7, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 404
    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v7

    :goto_6
    nop

    .line 405
    .end local v11    # "posY":F
    .local v7, "posY":F
    iget-object v11, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v11, v11, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    add-float v11, v11, v18

    sub-float v11, v7, v11

    .line 406
    .end local v7    # "posY":F
    .restart local v11    # "posY":F
    goto :goto_8

    .line 395
    :pswitch_6
    sget-object v7, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    if-ne v4, v7, :cond_b

    const/4 v7, 0x0

    goto :goto_7

    :cond_b
    iget-object v7, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 397
    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v7

    :goto_7
    nop

    .line 398
    .end local v11    # "posY":F
    .restart local v7    # "posY":F
    add-float v11, v7, v18

    .line 399
    .end local v7    # "posY":F
    .restart local v11    # "posY":F
    nop

    .line 415
    :goto_8
    const/4 v7, 0x0

    move v14, v11

    move v11, v10

    move v10, v7

    move v7, v0

    .end local v0    # "stack":F
    .local v7, "stack":F
    .local v10, "i":I
    .local v11, "wasStacked":Z
    .local v14, "posY":F
    :goto_9
    array-length v0, v13

    if-ge v10, v0, :cond_17

    .line 417
    aget-object v15, v13, v10

    .line 418
    .local v15, "e":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v0, v15, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v8, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v0, v8, :cond_c

    const/4 v0, 0x1

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    :goto_a
    move v8, v0

    .line 419
    .local v8, "drawingForm":Z
    iget v0, v15, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v0, v17

    goto :goto_b

    :cond_d
    iget v0, v15, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    :goto_b
    move/from16 v19, v0

    .line 421
    .local v19, "formSize":F
    move/from16 v0, v20

    .line 423
    .local v0, "posX":F
    if-eqz v8, :cond_10

    .line 424
    move/from16 v27, v1

    .end local v1    # "xoffset":F
    .restart local v27    # "xoffset":F
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v3, v1, :cond_e

    .line 425
    add-float/2addr v0, v7

    move/from16 v28, v0

    goto :goto_c

    .line 427
    :cond_e
    sub-float v1, v19, v7

    sub-float/2addr v0, v1

    move/from16 v28, v0

    .line 429
    .end local v0    # "posX":F
    .local v28, "posX":F
    :goto_c
    add-float v29, v14, v12

    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v0, p0

    move-object/from16 v30, v1

    move-object/from16 v1, p1

    move/from16 v31, v12

    move v12, v2

    .end local v2    # "stackSpace":F
    .local v12, "stackSpace":F
    .restart local v31    # "formYOffset":F
    move/from16 v2, v28

    move-object/from16 v32, v13

    move-object v13, v3

    .end local v3    # "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .local v13, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .local v32, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    move/from16 v3, v29

    move-object/from16 v33, v4

    .end local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .local v33, "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    move-object v4, v15

    move-object/from16 v29, v5

    .end local v5    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .restart local v29    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    move-object/from16 v5, v30

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    .line 431
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v0, :cond_f

    .line 432
    add-float v0, v28, v19

    .end local v28    # "posX":F
    .restart local v0    # "posX":F
    goto :goto_d

    .line 431
    .end local v0    # "posX":F
    .restart local v28    # "posX":F
    :cond_f
    move/from16 v0, v28

    goto :goto_d

    .line 423
    .end local v27    # "xoffset":F
    .end local v28    # "posX":F
    .end local v29    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .end local v31    # "formYOffset":F
    .end local v32    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v0    # "posX":F
    .restart local v1    # "xoffset":F
    .restart local v2    # "stackSpace":F
    .restart local v3    # "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .restart local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v5    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .local v12, "formYOffset":F
    .local v13, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    :cond_10
    move/from16 v27, v1

    move-object/from16 v33, v4

    move-object/from16 v29, v5

    move/from16 v31, v12

    move-object/from16 v32, v13

    move v12, v2

    move-object v13, v3

    .line 435
    .end local v1    # "xoffset":F
    .end local v2    # "stackSpace":F
    .end local v3    # "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .end local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .end local v5    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .local v12, "stackSpace":F
    .local v13, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .restart local v27    # "xoffset":F
    .restart local v29    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .restart local v31    # "formYOffset":F
    .restart local v32    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    :goto_d
    iget-object v1, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 437
    if-eqz v8, :cond_12

    if-nez v11, :cond_12

    .line 438
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_11

    move/from16 v1, v25

    move v5, v1

    goto :goto_e

    :cond_11
    move/from16 v5, v25

    .end local v25    # "formToTextSpace":F
    .local v5, "formToTextSpace":F
    neg-float v1, v5

    :goto_e
    add-float/2addr v0, v1

    goto :goto_f

    .line 437
    .end local v5    # "formToTextSpace":F
    .restart local v25    # "formToTextSpace":F
    :cond_12
    move/from16 v5, v25

    .line 440
    .end local v25    # "formToTextSpace":F
    .restart local v5    # "formToTextSpace":F
    if-eqz v11, :cond_13

    .line 441
    move/from16 v0, v20

    .line 443
    :cond_13
    :goto_f
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_14

    .line 444
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegendLabelPaint:Landroid/graphics/Paint;

    iget-object v2, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 446
    :cond_14
    if-nez v11, :cond_15

    .line 447
    add-float v1, v14, v9

    iget-object v2, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-virtual {v6, v4, v0, v1, v2}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    goto :goto_10

    .line 449
    :cond_15
    move-object/from16 v4, p1

    add-float v1, v9, v21

    add-float/2addr v14, v1

    .line 450
    add-float v1, v14, v9

    iget-object v2, v15, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    invoke-virtual {v6, v4, v0, v1, v2}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 454
    :goto_10
    add-float v1, v9, v21

    add-float/2addr v14, v1

    .line 455
    const/4 v1, 0x0

    move v7, v1

    .end local v7    # "stack":F
    .local v1, "stack":F
    goto :goto_11

    .line 457
    .end local v1    # "stack":F
    .end local v5    # "formToTextSpace":F
    .restart local v7    # "stack":F
    .restart local v25    # "formToTextSpace":F
    :cond_16
    move-object/from16 v4, p1

    move/from16 v5, v25

    .end local v25    # "formToTextSpace":F
    .restart local v5    # "formToTextSpace":F
    add-float v2, v19, v12

    add-float/2addr v7, v2

    .line 458
    const/4 v1, 0x1

    move v11, v1

    .line 415
    .end local v0    # "posX":F
    .end local v8    # "drawingForm":Z
    .end local v15    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v19    # "formSize":F
    :goto_11
    add-int/lit8 v10, v10, 0x1

    move/from16 v25, v5

    move v2, v12

    move-object v3, v13

    move/from16 v1, v27

    move-object/from16 v5, v29

    move/from16 v12, v31

    move-object/from16 v13, v32

    move-object/from16 v4, v33

    goto/16 :goto_9

    .end local v27    # "xoffset":F
    .end local v29    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .end local v31    # "formYOffset":F
    .end local v32    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .local v1, "xoffset":F
    .restart local v2    # "stackSpace":F
    .restart local v3    # "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .restart local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .local v5, "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .local v12, "formYOffset":F
    .local v13, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v25    # "formToTextSpace":F
    :cond_17
    move/from16 v27, v1

    move-object/from16 v33, v4

    move-object/from16 v29, v5

    move/from16 v31, v12

    move-object/from16 v32, v13

    move/from16 v5, v25

    move-object/from16 v4, p1

    move v12, v2

    move-object v13, v3

    .line 462
    .end local v1    # "xoffset":F
    .end local v2    # "stackSpace":F
    .end local v3    # "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .end local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .end local v10    # "i":I
    .end local v25    # "formToTextSpace":F
    .local v5, "formToTextSpace":F
    .local v12, "stackSpace":F
    .local v13, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .restart local v27    # "xoffset":F
    .restart local v29    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .restart local v31    # "formYOffset":F
    .restart local v32    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    move-object v7, v4

    move v10, v5

    move/from16 v3, v26

    move-object/from16 v11, v32

    move-object/from16 v38, v33

    goto/16 :goto_21

    .line 311
    .end local v7    # "stack":F
    .end local v11    # "wasStacked":Z
    .end local v14    # "posY":F
    .end local v27    # "xoffset":F
    .end local v29    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .end local v31    # "formYOffset":F
    .end local v32    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v1    # "xoffset":F
    .restart local v2    # "stackSpace":F
    .restart local v3    # "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .restart local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .local v5, "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .local v12, "formYOffset":F
    .local v13, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v25    # "formToTextSpace":F
    :pswitch_7
    move/from16 v27, v1

    move-object/from16 v33, v4

    move-object/from16 v29, v5

    move/from16 v31, v12

    move-object/from16 v32, v13

    move/from16 v5, v25

    move-object/from16 v4, p1

    move v12, v2

    move-object v13, v3

    .end local v1    # "xoffset":F
    .end local v2    # "stackSpace":F
    .end local v3    # "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .end local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .end local v25    # "formToTextSpace":F
    .local v5, "formToTextSpace":F
    .local v12, "stackSpace":F
    .local v13, "direction":Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .restart local v27    # "xoffset":F
    .restart local v29    # "orientation":Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .restart local v31    # "formYOffset":F
    .restart local v32    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLineSizes()Ljava/util/List;

    move-result-object v7

    .line 312
    .local v7, "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelSizes()Ljava/util/List;

    move-result-object v8

    .line 313
    .local v8, "calculatedLabelSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->getCalculatedLabelBreakPoints()Ljava/util/List;

    move-result-object v10

    .line 315
    .local v10, "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    move/from16 v0, v20

    .line 316
    .restart local v0    # "posX":F
    const/4 v1, 0x0

    .line 318
    .local v1, "posY":F
    sget-object v2, Lcom/github/mikephil/charting/renderer/LegendRenderer$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    invoke-virtual/range {v16 .. v16}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    goto :goto_12

    .line 328
    :pswitch_8
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v1, v2, v18

    goto :goto_12

    .line 324
    :pswitch_9
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    sub-float v2, v2, v18

    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v3, v3, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    sub-float v1, v2, v3

    .line 325
    goto :goto_12

    .line 320
    :pswitch_a
    move/from16 v1, v18

    .line 321
    nop

    .line 332
    :goto_12
    const/4 v2, 0x0

    .line 334
    .local v2, "lineIndex":I
    const/4 v3, 0x0

    move-object/from16 v11, v32

    .end local v32    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .local v3, "i":I
    .local v11, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    array-length v14, v11

    move v15, v3

    .end local v3    # "i":I
    .local v14, "count":I
    .local v15, "i":I
    :goto_13
    if-ge v15, v14, :cond_2a

    .line 336
    aget-object v3, v11, v15

    .line 337
    .local v3, "e":Lcom/github/mikephil/charting/components/LegendEntry;
    move/from16 v25, v0

    .end local v0    # "posX":F
    .local v25, "posX":F
    iget-object v0, v3, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v4, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v0, v4, :cond_18

    const/4 v0, 0x1

    goto :goto_14

    :cond_18
    const/4 v0, 0x0

    :goto_14
    move/from16 v28, v0

    .line 338
    .local v28, "drawingForm":Z
    iget v0, v3, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_19

    move/from16 v0, v17

    goto :goto_15

    :cond_19
    iget v0, v3, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    :goto_15
    move/from16 v30, v0

    .line 340
    .local v30, "formSize":F
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_1a

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 341
    move/from16 v0, v20

    .line 342
    .end local v25    # "posX":F
    .restart local v0    # "posX":F
    add-float v4, v9, v21

    add-float/2addr v1, v4

    move/from16 v25, v1

    goto :goto_16

    .line 345
    .end local v0    # "posX":F
    .restart local v25    # "posX":F
    :cond_1a
    move/from16 v0, v25

    move/from16 v25, v1

    .end local v1    # "posY":F
    .restart local v0    # "posX":F
    .local v25, "posY":F
    :goto_16
    cmpl-float v1, v0, v20

    if-nez v1, :cond_1e

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-object/from16 v4, v33

    .end local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    if-ne v4, v1, :cond_1d

    .line 347
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1c

    .line 348
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_1b

    .line 349
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/utils/FSize;

    iget v1, v1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    goto :goto_17

    .line 350
    :cond_1b
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/utils/FSize;

    iget v1, v1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    neg-float v1, v1

    :goto_17
    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v1, v19

    add-float/2addr v0, v1

    .line 351
    add-int/lit8 v2, v2, 0x1

    move/from16 v32, v2

    goto :goto_19

    .line 347
    :cond_1c
    const/high16 v19, 0x40000000    # 2.0f

    goto :goto_18

    .line 345
    :cond_1d
    const/high16 v19, 0x40000000    # 2.0f

    goto :goto_18

    .end local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    :cond_1e
    move-object/from16 v4, v33

    const/high16 v19, 0x40000000    # 2.0f

    .line 354
    .end local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    :goto_18
    move/from16 v32, v2

    .end local v2    # "lineIndex":I
    .local v32, "lineIndex":I
    :goto_19
    iget-object v1, v3, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_1a

    :cond_1f
    const/4 v1, 0x0

    :goto_1a
    move/from16 v33, v1

    .line 356
    .local v33, "isStacked":Z
    if-eqz v28, :cond_22

    .line 357
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_20

    .line 358
    sub-float v0, v0, v30

    move/from16 v34, v0

    goto :goto_1b

    .line 357
    :cond_20
    move/from16 v34, v0

    .line 360
    .end local v0    # "posX":F
    .local v34, "posX":F
    :goto_1b
    add-float v35, v25, v31

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/LegendRenderer;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v36, v2

    move/from16 v2, v34

    move-object/from16 v37, v3

    .end local v3    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .local v37, "e":Lcom/github/mikephil/charting/components/LegendEntry;
    move/from16 v3, v35

    move-object/from16 v38, v4

    move-object/from16 v35, v7

    move-object/from16 v7, p1

    .end local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .end local v7    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .local v35, "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .restart local v38    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    move-object/from16 v4, v37

    move-object/from16 v39, v10

    move v10, v5

    .end local v5    # "formToTextSpace":F
    .local v10, "formToTextSpace":F
    .local v39, "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    move-object/from16 v5, v36

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawForm(Landroid/graphics/Canvas;FFLcom/github/mikephil/charting/components/LegendEntry;Lcom/github/mikephil/charting/components/Legend;)V

    .line 362
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v0, :cond_21

    .line 363
    add-float v0, v34, v30

    .end local v34    # "posX":F
    .restart local v0    # "posX":F
    goto :goto_1c

    .line 362
    .end local v0    # "posX":F
    .restart local v34    # "posX":F
    :cond_21
    move/from16 v0, v34

    goto :goto_1c

    .line 356
    .end local v34    # "posX":F
    .end local v35    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v37    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v38    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .end local v39    # "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v0    # "posX":F
    .restart local v3    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v5    # "formToTextSpace":F
    .restart local v7    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .local v10, "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_22
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v35, v7

    move-object/from16 v39, v10

    move-object/from16 v7, p1

    move v10, v5

    .line 366
    .end local v3    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v4    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .end local v5    # "formToTextSpace":F
    .end local v7    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .local v10, "formToTextSpace":F
    .restart local v35    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .restart local v37    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v38    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v39    # "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :goto_1c
    if-nez v33, :cond_28

    .line 367
    if-eqz v28, :cond_24

    .line 368
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_23

    neg-float v5, v10

    goto :goto_1d

    :cond_23
    move v5, v10

    :goto_1d
    add-float/2addr v0, v5

    .line 371
    :cond_24
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_25

    .line 372
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/utils/FSize;

    iget v1, v1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    sub-float/2addr v0, v1

    .line 374
    :cond_25
    add-float v1, v25, v9

    move-object/from16 v2, v37

    .end local v37    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .local v2, "e":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    invoke-virtual {v6, v7, v0, v1, v3}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->drawLabel(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 376
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_26

    .line 377
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/utils/FSize;

    iget v1, v1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float/2addr v0, v1

    .line 379
    :cond_26
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_27

    move/from16 v3, v26

    .end local v26    # "xEntrySpace":F
    .local v3, "xEntrySpace":F
    neg-float v1, v3

    goto :goto_1e

    .end local v3    # "xEntrySpace":F
    .restart local v26    # "xEntrySpace":F
    :cond_27
    move/from16 v3, v26

    .end local v26    # "xEntrySpace":F
    .restart local v3    # "xEntrySpace":F
    move v1, v3

    :goto_1e
    add-float/2addr v0, v1

    goto :goto_20

    .line 381
    .end local v2    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v3    # "xEntrySpace":F
    .restart local v26    # "xEntrySpace":F
    .restart local v37    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    :cond_28
    move/from16 v3, v26

    move-object/from16 v2, v37

    .end local v26    # "xEntrySpace":F
    .end local v37    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v2    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v3    # "xEntrySpace":F
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->RIGHT_TO_LEFT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    if-ne v13, v1, :cond_29

    neg-float v1, v12

    goto :goto_1f

    :cond_29
    move v1, v12

    :goto_1f
    add-float/2addr v0, v1

    .line 334
    .end local v2    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v28    # "drawingForm":Z
    .end local v30    # "formSize":F
    .end local v33    # "isStacked":Z
    :goto_20
    add-int/lit8 v15, v15, 0x1

    move/from16 v26, v3

    move-object v4, v7

    move v5, v10

    move/from16 v1, v25

    move/from16 v2, v32

    move-object/from16 v7, v35

    move-object/from16 v33, v38

    move-object/from16 v10, v39

    goto/16 :goto_13

    .end local v3    # "xEntrySpace":F
    .end local v25    # "posY":F
    .end local v32    # "lineIndex":I
    .end local v35    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v38    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .end local v39    # "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v1    # "posY":F
    .local v2, "lineIndex":I
    .restart local v5    # "formToTextSpace":F
    .restart local v7    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .local v10, "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v26    # "xEntrySpace":F
    .local v33, "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    :cond_2a
    move/from16 v25, v0

    move-object/from16 v35, v7

    move-object/from16 v39, v10

    move/from16 v3, v26

    move-object/from16 v38, v33

    move-object v7, v4

    move v10, v5

    .line 384
    .end local v0    # "posX":F
    .end local v5    # "formToTextSpace":F
    .end local v7    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v14    # "count":I
    .end local v15    # "i":I
    .end local v26    # "xEntrySpace":F
    .end local v33    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v3    # "xEntrySpace":F
    .local v10, "formToTextSpace":F
    .local v25, "posX":F
    .restart local v35    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .restart local v38    # "horizontalAlignment":Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .restart local v39    # "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    nop

    .line 466
    .end local v1    # "posY":F
    .end local v2    # "lineIndex":I
    .end local v8    # "calculatedLabelSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v25    # "posX":F
    .end local v35    # "calculatedLineSizes":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/FSize;>;"
    .end local v39    # "calculatedLabelBreakPoints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :goto_21
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
