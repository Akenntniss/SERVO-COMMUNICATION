.class public Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "PieChartRenderer.java"


# instance fields
.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterTextLastBounds:Landroid/graphics/RectF;

.field private mCenterTextLastValue:Ljava/lang/CharSequence;

.field private mCenterTextLayout:Landroid/text/StaticLayout;

.field private mCenterTextPaint:Landroid/text/TextPaint;

.field protected mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field protected mDrawBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawCenterTextPathBuffer:Landroid/graphics/Path;

.field protected mDrawHighlightedRectF:Landroid/graphics/RectF;

.field private mEntryLabelsPaint:Landroid/graphics/Paint;

.field private mHoleCirclePath:Landroid/graphics/Path;

.field protected mHolePaint:Landroid/graphics/Paint;

.field private mInnerRectBuffer:Landroid/graphics/RectF;

.field private mPathBuffer:Landroid/graphics/Path;

.field private mRectBuffer:[Landroid/graphics/RectF;

.field protected mTransparentCirclePaint:Landroid/graphics/Paint;

.field protected mValueLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 5
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/PieChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    .line 153
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 154
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 673
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 716
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 789
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 73
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 76
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    const/16 v3, 0x69

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 85
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 95
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 98
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F
    .locals 18
    .param p1, "center"    # Lcom/github/mikephil/charting/utils/MPPointF;
    .param p2, "radius"    # F
    .param p3, "angle"    # F
    .param p4, "arcStartPointX"    # F
    .param p5, "arcStartPointY"    # F
    .param p6, "startAngle"    # F
    .param p7, "sweepAngle"    # F

    .line 164
    move-object/from16 v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p7, v1

    add-float v2, p6, v2

    .line 167
    .local v2, "angleMiddle":F
    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v4, p6, p7

    const v5, 0x3c8efa35

    mul-float/2addr v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 168
    .local v3, "arcEndPointX":F
    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v6, p6, p7

    mul-float/2addr v6, v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, p2

    add-float/2addr v4, v6

    .line 171
    .local v4, "arcEndPointY":F
    iget v6, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v7, v2, v5

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, p2

    add-float/2addr v6, v7

    .line 172
    .local v6, "arcMidPointX":F
    iget v7, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float/2addr v5, v2

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float v5, v5, p2

    add-float/2addr v7, v5

    .line 175
    .local v7, "arcMidPointY":F
    sub-float v5, v3, p4

    float-to-double v8, v5

    .line 176
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-float v5, v4, p5

    float-to-double v12, v5

    .line 177
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v8, v12

    .line 175
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 182
    .local v8, "basePointsDistance":D
    div-double v12, v8, v10

    const-wide v14, 0x4066800000000000L    # 180.0

    move/from16 v5, p3

    move/from16 v17, v2

    .end local v2    # "angleMiddle":F
    .local v17, "angleMiddle":F
    float-to-double v1, v5

    sub-double/2addr v14, v1

    div-double/2addr v14, v10

    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v14, v1

    .line 183
    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    mul-double/2addr v12, v1

    double-to-float v1, v12

    .line 186
    .local v1, "containedTriangleHeight":F
    sub-float v2, p2, v1

    .line 189
    .local v2, "spacedRadius":F
    float-to-double v12, v2

    add-float v14, v3, p4

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float v14, v6, v14

    move/from16 v16, v1

    .end local v1    # "containedTriangleHeight":F
    .local v16, "containedTriangleHeight":F
    float-to-double v0, v14

    .line 190
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-float v14, v4, p5

    div-float/2addr v14, v15

    sub-float v14, v7, v14

    float-to-double v14, v14

    .line 191
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v0, v10

    .line 189
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v12, v0

    double-to-float v0, v12

    .line 193
    .end local v2    # "spacedRadius":F
    .local v0, "spacedRadius":F
    return v0
.end method

.method protected drawCenterText(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 723
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 725
    .local v2, "centerText":Ljava/lang/CharSequence;
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawCenterTextEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 727
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v13

    .line 728
    .local v13, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v14

    .line 730
    .local v14, "offset":Lcom/github/mikephil/charting/utils/MPPointF;
    iget v3, v13, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v4, v14, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v15, v3, v4

    .line 731
    .local v15, "x":F
    iget v3, v13, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget v4, v14, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v16, v3, v4

    .line 733
    .local v16, "y":F
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 734
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v3

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v5

    div-float/2addr v5, v4

    mul-float/2addr v3, v5

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 735
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v3

    :goto_0
    move/from16 v17, v3

    .line 737
    .local v17, "innerRadius":F
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget-object v12, v3, v5

    .line 738
    .local v12, "holeRect":Landroid/graphics/RectF;
    sub-float v3, v15, v17

    iput v3, v12, Landroid/graphics/RectF;->left:F

    .line 739
    sub-float v3, v16, v17

    iput v3, v12, Landroid/graphics/RectF;->top:F

    .line 740
    add-float v3, v15, v17

    iput v3, v12, Landroid/graphics/RectF;->right:F

    .line 741
    add-float v3, v16, v17

    iput v3, v12, Landroid/graphics/RectF;->bottom:F

    .line 742
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v11, v3, v5

    .line 743
    .local v11, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 745
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    move-result v3

    div-float v10, v3, v4

    .line 746
    .local v10, "radiusPercent":F
    float-to-double v3, v10

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    const/high16 v18, 0x40000000    # 2.0f

    if-lez v3, :cond_1

    .line 747
    nop

    .line 748
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    div-float v3, v3, v18

    .line 749
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    div-float v4, v4, v18

    .line 747
    invoke-virtual {v11, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 753
    :cond_1
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v11, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v21, v2

    move/from16 v20, v10

    move-object/from16 v26, v11

    move-object v2, v12

    goto :goto_2

    .line 756
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 757
    iput-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    .line 759
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 762
    .local v9, "width":F
    new-instance v8, Landroid/text/StaticLayout;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    float-to-double v3, v9

    .line 764
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    move/from16 v20, v6

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v6, v3

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v3, v8

    move-object v4, v2

    const/4 v5, 0x0

    move/from16 v19, v6

    move/from16 v6, v20

    move-object/from16 v25, v8

    move/from16 v8, v19

    move/from16 v19, v9

    .end local v9    # "width":F
    .local v19, "width":F
    move-object/from16 v9, v21

    move/from16 v20, v10

    .end local v10    # "radiusPercent":F
    .local v20, "radiusPercent":F
    move/from16 v10, v22

    move-object/from16 v26, v11

    .end local v11    # "boundingRect":Landroid/graphics/RectF;
    .local v26, "boundingRect":Landroid/graphics/RectF;
    move/from16 v11, v23

    move-object/from16 v21, v2

    move-object v2, v12

    .end local v12    # "holeRect":Landroid/graphics/RectF;
    .local v2, "holeRect":Landroid/graphics/RectF;
    .local v21, "centerText":Ljava/lang/CharSequence;
    move/from16 v12, v24

    invoke-direct/range {v3 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v25

    iput-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 769
    .end local v19    # "width":F
    :goto_2
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 771
    .local v3, "layoutHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 772
    nop

    .line 773
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 774
    .local v4, "path":Landroid/graphics/Path;
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 775
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 776
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 779
    .end local v4    # "path":Landroid/graphics/Path;
    move-object/from16 v4, v26

    .end local v26    # "boundingRect":Landroid/graphics/RectF;
    .local v4, "boundingRect":Landroid/graphics/RectF;
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v7, v3

    div-float v7, v7, v18

    add-float/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 780
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 782
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 784
    invoke-static {v13}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 785
    invoke-static {v14}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_3

    .line 725
    .end local v3    # "layoutHeight":F
    .end local v4    # "boundingRect":Landroid/graphics/RectF;
    .end local v13    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v14    # "offset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v15    # "x":F
    .end local v16    # "y":F
    .end local v17    # "innerRadius":F
    .end local v20    # "radiusPercent":F
    .end local v21    # "centerText":Ljava/lang/CharSequence;
    .local v2, "centerText":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v21, v2

    .line 787
    .end local v2    # "centerText":Ljava/lang/CharSequence;
    .restart local v21    # "centerText":Ljava/lang/CharSequence;
    :goto_3
    return-void
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 125
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v0

    float-to-int v0, v0

    .line 126
    .local v0, "width":I
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v1

    float-to-int v1, v1

    .line 128
    .local v1, "height":I
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 130
    .local v2, "drawBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 132
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 134
    :cond_1
    if-lez v0, :cond_5

    if-lez v1, :cond_5

    .line 135
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 136
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 137
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 142
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 144
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/PieData;

    .line 146
    .local v3, "pieData":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 148
    .local v5, "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 149
    invoke-virtual {p0, p1, v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    .line 150
    .end local v5    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    :cond_3
    goto :goto_1

    .line 151
    :cond_4
    return-void

    .line 139
    .end local v3    # "pieData":Lcom/github/mikephil/charting/data/PieData;
    :cond_5
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 43
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 217
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const/4 v0, 0x0

    .line 218
    .local v0, "angle":F
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v10

    .line 220
    .local v10, "rotationAngle":F
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v11

    .line 221
    .local v11, "phaseX":F
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v12

    .line 223
    .local v12, "phaseY":F
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v13

    .line 225
    .local v13, "circleBox":Landroid/graphics/RectF;
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v14

    .line 226
    .local v14, "entryCount":I
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v15

    .line 227
    .local v15, "drawAngles":[F
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v7

    .line 228
    .local v7, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    .line 229
    .local v6, "radius":F
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v1

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move/from16 v1, v16

    :goto_0
    move/from16 v17, v1

    .line 230
    .local v17, "drawInnerArc":Z
    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v18, 0x0

    if-eqz v17, :cond_1

    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 231
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v2

    div-float/2addr v2, v1

    mul-float/2addr v2, v6

    goto :goto_1

    :cond_1
    move/from16 v2, v18

    :goto_1
    move/from16 v19, v2

    .line 233
    .local v19, "userInnerRadius":F
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v2

    mul-float/2addr v2, v6

    div-float/2addr v2, v1

    sub-float v1, v6, v2

    const/high16 v20, 0x40000000    # 2.0f

    div-float v21, v1, v20

    .line 234
    .local v21, "roundedRadius":F
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object v4, v1

    .line 235
    .local v4, "roundedCircleBox":Landroid/graphics/RectF;
    if-eqz v17, :cond_2

    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move/from16 v1, v16

    :goto_2
    move/from16 v22, v1

    .line 237
    .local v22, "drawRoundedSlices":Z
    const/4 v1, 0x0

    .line 238
    .local v1, "visibleAngleCount":I
    const/4 v2, 0x0

    move v3, v1

    .end local v1    # "visibleAngleCount":I
    .local v2, "j":I
    .local v3, "visibleAngleCount":I
    :goto_3
    if-ge v2, v14, :cond_4

    .line 240
    invoke-interface {v9, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v23, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_3

    .line 241
    add-int/lit8 v3, v3, 0x1

    .line 238
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 245
    .end local v2    # "j":I
    :cond_4
    if-gt v3, v5, :cond_5

    move/from16 v1, v18

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v1

    :goto_4
    move/from16 v23, v1

    .line 247
    .local v23, "sliceSpace":F
    const/4 v1, 0x0

    move/from16 v24, v0

    move v2, v1

    .end local v0    # "angle":F
    .restart local v2    # "j":I
    .local v24, "angle":F
    :goto_5
    if-ge v2, v14, :cond_1a

    .line 249
    aget v25, v15, v2

    .line 250
    .local v25, "sliceAngle":F
    move/from16 v1, v19

    .line 252
    .local v1, "innerRadius":F
    invoke-interface {v9, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v26

    .line 255
    .local v26, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v27, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v0, v0, v27

    if-gtz v0, :cond_6

    .line 256
    mul-float v0, v25, v11

    add-float v24, v24, v0

    .line 257
    move/from16 v33, v2

    move/from16 v40, v3

    move/from16 v31, v5

    move/from16 v29, v6

    move/from16 v42, v10

    move/from16 v36, v11

    move-object/from16 v38, v13

    move/from16 v32, v14

    move-object/from16 v35, v15

    move-object v15, v4

    move-object v10, v7

    goto/16 :goto_15

    .line 261
    :cond_6
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->needsHighlight(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v22, :cond_7

    .line 262
    mul-float v0, v25, v11

    add-float v24, v24, v0

    .line 263
    move/from16 v33, v2

    move/from16 v40, v3

    move/from16 v31, v5

    move/from16 v29, v6

    move/from16 v42, v10

    move/from16 v36, v11

    move-object/from16 v38, v13

    move/from16 v32, v14

    move-object/from16 v35, v15

    move-object v15, v4

    move-object v10, v7

    goto/16 :goto_15

    .line 266
    :cond_7
    cmpl-float v0, v23, v18

    const/high16 v5, 0x43340000    # 180.0f

    if-lez v0, :cond_8

    cmpg-float v0, v25, v5

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    move/from16 v0, v16

    :goto_6
    move/from16 v28, v0

    .line 268
    .local v28, "accountForSliceSpacing":Z
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v9, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    const v30, 0x3c8efa35

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    move/from16 v0, v18

    goto :goto_7

    :cond_9
    mul-float v0, v6, v30

    div-float v0, v23, v0

    :goto_7
    move/from16 v27, v0

    .line 273
    .local v27, "sliceSpaceAngleOuter":F
    div-float v0, v27, v20

    add-float v0, v24, v0

    mul-float/2addr v0, v12

    add-float/2addr v0, v10

    .line 274
    .local v0, "startAngleOuter":F
    sub-float v31, v25, v27

    mul-float v31, v31, v12

    .line 275
    .local v31, "sweepAngleOuter":F
    cmpg-float v32, v31, v18

    if-gez v32, :cond_a

    .line 276
    const/16 v31, 0x0

    move/from16 v9, v31

    goto :goto_8

    .line 275
    :cond_a
    move/from16 v9, v31

    .line 279
    .end local v31    # "sweepAngleOuter":F
    .local v9, "sweepAngleOuter":F
    :goto_8
    iget-object v5, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 281
    if-eqz v22, :cond_b

    .line 282
    iget v5, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float v32, v6, v21

    move/from16 v33, v2

    .end local v2    # "j":I
    .local v33, "j":I
    mul-float v2, v0, v30

    move/from16 v34, v3

    .end local v3    # "visibleAngleCount":I
    .local v34, "visibleAngleCount":I
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v32, v32, v2

    add-float v5, v5, v32

    .line 283
    .local v5, "x":F
    iget v2, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float v3, v6, v21

    move/from16 v32, v14

    .end local v14    # "entryCount":I
    .local v32, "entryCount":I
    mul-float v14, v0, v30

    move-object/from16 v35, v15

    .end local v15    # "drawAngles":[F
    .local v35, "drawAngles":[F
    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v3, v14

    add-float/2addr v2, v3

    .line 284
    .local v2, "y":F
    sub-float v3, v5, v21

    sub-float v14, v2, v21

    add-float v15, v5, v21

    move/from16 v36, v5

    .end local v5    # "x":F
    .local v36, "x":F
    add-float v5, v2, v21

    invoke-virtual {v4, v3, v14, v15, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9

    .line 281
    .end local v32    # "entryCount":I
    .end local v33    # "j":I
    .end local v34    # "visibleAngleCount":I
    .end local v35    # "drawAngles":[F
    .end local v36    # "x":F
    .local v2, "j":I
    .restart local v3    # "visibleAngleCount":I
    .restart local v14    # "entryCount":I
    .restart local v15    # "drawAngles":[F
    :cond_b
    move/from16 v33, v2

    move/from16 v34, v3

    move/from16 v32, v14

    move-object/from16 v35, v15

    .line 287
    .end local v2    # "j":I
    .end local v3    # "visibleAngleCount":I
    .end local v14    # "entryCount":I
    .end local v15    # "drawAngles":[F
    .restart local v32    # "entryCount":I
    .restart local v33    # "j":I
    .restart local v34    # "visibleAngleCount":I
    .restart local v35    # "drawAngles":[F
    :goto_9
    iget v2, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v3, v0, v30

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v3, v14

    mul-float/2addr v3, v6

    add-float v14, v2, v3

    .line 288
    .local v14, "arcStartPointX":F
    iget v2, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float v3, v0, v30

    move v15, v10

    move/from16 v36, v11

    .end local v10    # "rotationAngle":F
    .end local v11    # "phaseX":F
    .local v15, "rotationAngle":F
    .local v36, "phaseX":F
    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v3, v10

    mul-float/2addr v3, v6

    add-float v10, v2, v3

    .line 290
    .local v10, "arcStartPointY":F
    const/high16 v11, 0x43b40000    # 360.0f

    cmpl-float v2, v9, v11

    if-ltz v2, :cond_c

    rem-float v2, v9, v11

    sget v3, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_c

    .line 292
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v6, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/high16 v5, 0x43340000    # 180.0f

    goto :goto_b

    .line 295
    :cond_c
    if-eqz v22, :cond_d

    .line 296
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    const/high16 v5, 0x43340000    # 180.0f

    add-float v3, v0, v5

    const/high16 v11, -0x3ccc0000    # -180.0f

    invoke-virtual {v2, v4, v3, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_a

    .line 295
    :cond_d
    const/high16 v5, 0x43340000    # 180.0f

    .line 299
    :goto_a
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2, v13, v0, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 307
    :goto_b
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v3, v1

    iget v11, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v11, v1

    iget v5, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v5, v1

    move/from16 v38, v0

    .end local v0    # "startAngleOuter":F
    .local v38, "startAngleOuter":F
    iget v0, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v0, v1

    invoke-virtual {v2, v3, v11, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 313
    if-eqz v17, :cond_17

    cmpl-float v0, v1, v18

    if-gtz v0, :cond_f

    if-eqz v28, :cond_e

    goto :goto_c

    :cond_e
    move/from16 v29, v6

    move/from16 v42, v15

    move/from16 v40, v34

    move/from16 v11, v38

    const/16 v31, 0x1

    move-object v15, v4

    move-object/from16 v38, v13

    move/from16 v34, v14

    move v14, v1

    goto/16 :goto_12

    .line 315
    :cond_f
    :goto_c
    if-eqz v28, :cond_11

    .line 316
    mul-float v3, v25, v12

    .line 317
    move/from16 v11, v38

    .end local v38    # "startAngleOuter":F
    .local v11, "startAngleOuter":F
    move-object/from16 v0, p0

    move v5, v1

    .end local v1    # "innerRadius":F
    .local v5, "innerRadius":F
    move-object v1, v7

    move v2, v6

    move-object/from16 v38, v13

    move/from16 v13, v34

    .end local v34    # "visibleAngleCount":I
    .local v13, "visibleAngleCount":I
    .local v38, "circleBox":Landroid/graphics/RectF;
    move-object/from16 v39, v4

    .end local v4    # "roundedCircleBox":Landroid/graphics/RectF;
    .local v39, "roundedCircleBox":Landroid/graphics/RectF;
    move v4, v14

    move/from16 v34, v14

    const/4 v8, 0x1

    move v14, v5

    .end local v5    # "innerRadius":F
    .local v14, "innerRadius":F
    .local v34, "arcStartPointX":F
    move v5, v10

    move/from16 v29, v6

    .end local v6    # "radius":F
    .local v29, "radius":F
    move v6, v11

    move-object/from16 v40, v7

    .end local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v40, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v0

    .line 324
    .local v0, "minSpacedRadius":F
    cmpg-float v1, v0, v18

    if-gez v1, :cond_10

    .line 325
    neg-float v0, v0

    .line 327
    :cond_10
    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .end local v14    # "innerRadius":F
    .restart local v1    # "innerRadius":F
    goto :goto_d

    .line 315
    .end local v0    # "minSpacedRadius":F
    .end local v11    # "startAngleOuter":F
    .end local v29    # "radius":F
    .end local v39    # "roundedCircleBox":Landroid/graphics/RectF;
    .end local v40    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v4    # "roundedCircleBox":Landroid/graphics/RectF;
    .restart local v6    # "radius":F
    .restart local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v13, "circleBox":Landroid/graphics/RectF;
    .local v14, "arcStartPointX":F
    .local v34, "visibleAngleCount":I
    .local v38, "startAngleOuter":F
    :cond_11
    move-object/from16 v39, v4

    move/from16 v29, v6

    move-object/from16 v40, v7

    move/from16 v11, v38

    const/4 v8, 0x1

    move-object/from16 v38, v13

    move/from16 v13, v34

    move/from16 v34, v14

    move v14, v1

    .line 330
    .end local v4    # "roundedCircleBox":Landroid/graphics/RectF;
    .end local v6    # "radius":F
    .end local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v14    # "arcStartPointX":F
    .restart local v11    # "startAngleOuter":F
    .local v13, "visibleAngleCount":I
    .restart local v29    # "radius":F
    .local v34, "arcStartPointX":F
    .local v38, "circleBox":Landroid/graphics/RectF;
    .restart local v39    # "roundedCircleBox":Landroid/graphics/RectF;
    .restart local v40    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    :goto_d
    if-eq v13, v8, :cond_13

    cmpl-float v0, v1, v18

    if-nez v0, :cond_12

    goto :goto_e

    :cond_12
    mul-float v0, v1, v30

    div-float v0, v23, v0

    goto :goto_f

    :cond_13
    :goto_e
    move/from16 v0, v18

    .line 333
    .local v0, "sliceSpaceAngleInner":F
    :goto_f
    div-float v2, v0, v20

    add-float v2, v24, v2

    mul-float/2addr v2, v12

    add-float/2addr v2, v15

    .line 334
    .local v2, "startAngleInner":F
    sub-float v3, v25, v0

    mul-float/2addr v3, v12

    .line 335
    .local v3, "sweepAngleInner":F
    cmpg-float v4, v3, v18

    if-gez v4, :cond_14

    .line 336
    const/4 v3, 0x0

    .line 338
    :cond_14
    add-float v4, v2, v3

    .line 340
    .local v4, "endAngleInner":F
    const/high16 v5, 0x43b40000    # 360.0f

    cmpl-float v6, v9, v5

    if-ltz v6, :cond_15

    rem-float v5, v9, v5

    sget v6, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_15

    .line 342
    move/from16 v31, v8

    move-object/from16 v8, p0

    iget-object v5, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move-object/from16 v7, v40

    .end local v40    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget v6, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v14, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v37, v0

    .end local v0    # "sliceSpaceAngleInner":F
    .local v37, "sliceSpaceAngleInner":F
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v14, v1, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v40, v13

    move/from16 v42, v15

    move-object/from16 v15, v39

    goto :goto_11

    .line 340
    .end local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v37    # "sliceSpaceAngleInner":F
    .restart local v0    # "sliceSpaceAngleInner":F
    .restart local v40    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    :cond_15
    move/from16 v37, v0

    move/from16 v31, v8

    move-object/from16 v7, v40

    move-object/from16 v8, p0

    .line 345
    .end local v0    # "sliceSpaceAngleInner":F
    .end local v40    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v37    # "sliceSpaceAngleInner":F
    if-eqz v22, :cond_16

    .line 346
    iget v0, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float v6, v29, v21

    mul-float v5, v4, v30

    move/from16 v40, v13

    .end local v13    # "visibleAngleCount":I
    .local v40, "visibleAngleCount":I
    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v5, v13

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    .line 347
    .local v0, "x":F
    iget v5, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float v6, v29, v21

    mul-float v13, v4, v30

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v6, v13

    add-float/2addr v5, v6

    .line 348
    .local v5, "y":F
    sub-float v6, v0, v21

    sub-float v13, v5, v21

    add-float v14, v0, v21

    move/from16 v41, v0

    .end local v0    # "x":F
    .local v41, "x":F
    add-float v0, v5, v21

    move/from16 v42, v15

    move-object/from16 v15, v39

    .end local v39    # "roundedCircleBox":Landroid/graphics/RectF;
    .local v15, "roundedCircleBox":Landroid/graphics/RectF;
    .local v42, "rotationAngle":F
    invoke-virtual {v15, v6, v13, v14, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 349
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v0, v15, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 350
    .end local v5    # "y":F
    .end local v41    # "x":F
    goto :goto_10

    .line 351
    .end local v40    # "visibleAngleCount":I
    .end local v42    # "rotationAngle":F
    .restart local v13    # "visibleAngleCount":I
    .local v15, "rotationAngle":F
    .restart local v39    # "roundedCircleBox":Landroid/graphics/RectF;
    :cond_16
    move/from16 v40, v13

    move/from16 v42, v15

    move-object/from16 v15, v39

    .end local v13    # "visibleAngleCount":I
    .end local v39    # "roundedCircleBox":Landroid/graphics/RectF;
    .local v15, "roundedCircleBox":Landroid/graphics/RectF;
    .restart local v40    # "visibleAngleCount":I
    .restart local v42    # "rotationAngle":F
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v5, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v6, v4, v30

    float-to-double v13, v6

    .line 352
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v6, v13

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iget v6, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float v13, v4, v30

    float-to-double v13, v13

    .line 353
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v13, v1

    add-float/2addr v6, v13

    .line 351
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 355
    :goto_10
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v5, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    neg-float v6, v3

    invoke-virtual {v0, v5, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 361
    .end local v2    # "startAngleInner":F
    .end local v3    # "sweepAngleInner":F
    .end local v4    # "endAngleInner":F
    .end local v37    # "sliceSpaceAngleInner":F
    :goto_11
    move/from16 v37, v10

    move-object v10, v7

    goto/16 :goto_14

    .line 313
    .end local v11    # "startAngleOuter":F
    .end local v29    # "radius":F
    .end local v40    # "visibleAngleCount":I
    .end local v42    # "rotationAngle":F
    .local v4, "roundedCircleBox":Landroid/graphics/RectF;
    .restart local v6    # "radius":F
    .local v13, "circleBox":Landroid/graphics/RectF;
    .restart local v14    # "arcStartPointX":F
    .local v15, "rotationAngle":F
    .local v34, "visibleAngleCount":I
    .local v38, "startAngleOuter":F
    :cond_17
    move/from16 v29, v6

    move/from16 v42, v15

    move/from16 v40, v34

    move/from16 v11, v38

    const/16 v31, 0x1

    move-object v15, v4

    move-object/from16 v38, v13

    move/from16 v34, v14

    move v14, v1

    .line 363
    .end local v1    # "innerRadius":F
    .end local v4    # "roundedCircleBox":Landroid/graphics/RectF;
    .end local v6    # "radius":F
    .end local v13    # "circleBox":Landroid/graphics/RectF;
    .restart local v11    # "startAngleOuter":F
    .local v14, "innerRadius":F
    .local v15, "roundedCircleBox":Landroid/graphics/RectF;
    .restart local v29    # "radius":F
    .local v34, "arcStartPointX":F
    .local v38, "circleBox":Landroid/graphics/RectF;
    .restart local v40    # "visibleAngleCount":I
    .restart local v42    # "rotationAngle":F
    :goto_12
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, v9, v0

    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    .line 364
    if-eqz v28, :cond_18

    .line 366
    div-float v0, v9, v20

    add-float v13, v11, v0

    .line 368
    .local v13, "angleMiddle":F
    mul-float v3, v25, v12

    .line 369
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v29

    move/from16 v4, v34

    move v5, v10

    move v6, v11

    move/from16 v37, v10

    move-object v10, v7

    .end local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v10, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v37, "arcStartPointY":F
    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v0

    .line 378
    .local v0, "sliceSpaceOffset":F
    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v2, v13, v30

    float-to-double v2, v2

    .line 379
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 380
    .local v1, "arcEndPointX":F
    iget v2, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float v3, v13, v30

    float-to-double v3, v3

    .line 381
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 383
    .local v2, "arcEndPointY":F
    iget-object v3, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 387
    .end local v0    # "sliceSpaceOffset":F
    .end local v1    # "arcEndPointX":F
    .end local v2    # "arcEndPointY":F
    .end local v13    # "angleMiddle":F
    goto :goto_13

    .line 388
    .end local v37    # "arcStartPointY":F
    .restart local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v10, "arcStartPointY":F
    :cond_18
    move/from16 v37, v10

    move-object v10, v7

    .end local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v10, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v37    # "arcStartPointY":F
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_13

    .line 363
    .end local v37    # "arcStartPointY":F
    .restart local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v10, "arcStartPointY":F
    :cond_19
    move/from16 v37, v10

    move-object v10, v7

    .line 396
    .end local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v10, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v37    # "arcStartPointY":F
    :goto_13
    move v1, v14

    .end local v14    # "innerRadius":F
    .local v1, "innerRadius":F
    :goto_14
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 398
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v3, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 400
    mul-float v0, v25, v36

    add-float v24, v24, v0

    .line 247
    .end local v1    # "innerRadius":F
    .end local v9    # "sweepAngleOuter":F
    .end local v11    # "startAngleOuter":F
    .end local v25    # "sliceAngle":F
    .end local v26    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v27    # "sliceSpaceAngleOuter":F
    .end local v28    # "accountForSliceSpacing":Z
    .end local v34    # "arcStartPointX":F
    .end local v37    # "arcStartPointY":F
    :goto_15
    add-int/lit8 v2, v33, 0x1

    move-object/from16 v9, p2

    move-object v7, v10

    move-object v4, v15

    move/from16 v6, v29

    move/from16 v5, v31

    move/from16 v14, v32

    move-object/from16 v15, v35

    move/from16 v11, v36

    move-object/from16 v13, v38

    move/from16 v3, v40

    move/from16 v10, v42

    .end local v33    # "j":I
    .local v2, "j":I
    goto/16 :goto_5

    .end local v29    # "radius":F
    .end local v32    # "entryCount":I
    .end local v35    # "drawAngles":[F
    .end local v36    # "phaseX":F
    .end local v38    # "circleBox":Landroid/graphics/RectF;
    .end local v40    # "visibleAngleCount":I
    .end local v42    # "rotationAngle":F
    .local v3, "visibleAngleCount":I
    .restart local v4    # "roundedCircleBox":Landroid/graphics/RectF;
    .restart local v6    # "radius":F
    .restart local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v10, "rotationAngle":F
    .local v11, "phaseX":F
    .local v13, "circleBox":Landroid/graphics/RectF;
    .local v14, "entryCount":I
    .local v15, "drawAngles":[F
    :cond_1a
    move/from16 v42, v10

    move-object v10, v7

    .line 403
    .end local v2    # "j":I
    .end local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v10, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v42    # "rotationAngle":F
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 404
    return-void
.end method

.method protected drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 663
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 664
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 668
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawHole(Landroid/graphics/Canvas;)V

    .line 669
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 670
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawCenterText(Landroid/graphics/Canvas;)V

    .line 671
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 43
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .line 798
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v12, v0

    .line 799
    .local v12, "drawInnerArc":Z
    if-eqz v12, :cond_1

    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    return-void

    .line 802
    :cond_1
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v13

    .line 803
    .local v13, "phaseX":F
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v14

    .line 806
    .local v14, "phaseY":F
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v15

    .line 808
    .local v15, "rotationAngle":F
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v7

    .line 809
    .local v7, "drawAngles":[F
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v16

    .line 810
    .local v16, "absoluteAngles":[F
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v6

    .line 811
    .local v6, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v17

    .line 812
    .local v17, "radius":F
    const/4 v5, 0x0

    if-eqz v12, :cond_2

    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 813
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float v0, v0, v17

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    move/from16 v18, v0

    .line 816
    .local v18, "userInnerRadius":F
    iget-object v4, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 817
    .local v4, "highlightedCircleBox":Landroid/graphics/RectF;
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 819
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_2
    array-length v0, v9

    if-ge v3, v0, :cond_1c

    .line 822
    aget-object v0, v9, v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 824
    .local v2, "index":I
    array-length v0, v7

    if-lt v2, v0, :cond_3

    .line 825
    move/from16 v24, v3

    move-object/from16 v42, v4

    move/from16 v19, v5

    move-object v9, v6

    move-object/from16 v35, v7

    move v7, v12

    goto/16 :goto_14

    .line 827
    :cond_3
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    aget-object v1, v9, v3

    .line 829
    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v1

    .line 828
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v1

    .line 831
    .local v1, "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isHighlightEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 832
    move/from16 v24, v3

    move-object/from16 v42, v4

    move/from16 v19, v5

    move-object v9, v6

    move-object/from16 v35, v7

    move v7, v12

    goto/16 :goto_14

    .line 834
    :cond_4
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v0

    .line 835
    .local v0, "entryCount":I
    const/16 v19, 0x0

    .line 836
    .local v19, "visibleAngleCount":I
    const/16 v20, 0x0

    move/from16 v10, v19

    move/from16 v5, v20

    .end local v19    # "visibleAngleCount":I
    .local v5, "j":I
    .local v10, "visibleAngleCount":I
    :goto_3
    if-ge v5, v0, :cond_6

    .line 838
    invoke-interface {v1, v5}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v20

    check-cast v20, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    sget v21, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v20, v20, v21

    if-lez v20, :cond_5

    .line 839
    add-int/lit8 v10, v10, 0x1

    .line 836
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 843
    .end local v5    # "j":I
    :cond_6
    if-nez v2, :cond_7

    .line 844
    const/4 v5, 0x0

    move/from16 v20, v5

    .local v5, "angle":F
    goto :goto_4

    .line 846
    .end local v5    # "angle":F
    :cond_7
    add-int/lit8 v5, v2, -0x1

    aget v5, v16, v5

    mul-float/2addr v5, v13

    move/from16 v20, v5

    .line 848
    .local v20, "angle":F
    :goto_4
    if-gt v10, v11, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v5

    :goto_5
    move/from16 v21, v5

    .line 850
    .local v21, "sliceSpace":F
    aget v22, v7, v2

    .line 851
    .local v22, "sliceAngle":F
    move/from16 v5, v18

    .line 853
    .local v5, "innerRadius":F
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSelectionShift()F

    move-result v11

    .line 854
    .local v11, "shift":F
    add-float v9, v17, v11

    .line 855
    .local v9, "highlightedRadius":F
    move/from16 v23, v0

    .end local v0    # "entryCount":I
    .local v23, "entryCount":I
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 856
    neg-float v0, v11

    move/from16 v24, v3

    .end local v3    # "i":I
    .local v24, "i":I
    neg-float v3, v11

    invoke-virtual {v4, v0, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 858
    const/4 v0, 0x0

    cmpl-float v3, v21, v0

    if-lez v3, :cond_9

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, v22, v0

    if-gtz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    move/from16 v25, v0

    .line 860
    .local v25, "accountForSliceSpacing":Z
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 862
    const v26, 0x3c8efa35

    const/4 v0, 0x1

    if-ne v10, v0, :cond_a

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    mul-float v3, v17, v26

    div-float v3, v21, v3

    :goto_7
    move/from16 v27, v3

    .line 866
    .local v27, "sliceSpaceAngleOuter":F
    if-ne v10, v0, :cond_b

    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    mul-float v0, v9, v26

    div-float v0, v21, v0

    :goto_8
    move/from16 v28, v0

    .line 870
    .local v28, "sliceSpaceAngleShifted":F
    const/high16 v29, 0x40000000    # 2.0f

    div-float v0, v27, v29

    add-float v0, v20, v0

    mul-float/2addr v0, v14

    add-float v30, v15, v0

    .line 871
    .local v30, "startAngleOuter":F
    sub-float v0, v22, v27

    mul-float/2addr v0, v14

    .line 872
    .local v0, "sweepAngleOuter":F
    const/4 v3, 0x0

    cmpg-float v31, v0, v3

    if-gez v31, :cond_c

    .line 873
    const/4 v0, 0x0

    move/from16 v31, v0

    goto :goto_9

    .line 872
    :cond_c
    move/from16 v31, v0

    .line 876
    .end local v0    # "sweepAngleOuter":F
    .local v31, "sweepAngleOuter":F
    :goto_9
    div-float v0, v28, v29

    add-float v0, v20, v0

    mul-float/2addr v0, v14

    add-float v3, v15, v0

    .line 877
    .local v3, "startAngleShifted":F
    sub-float v0, v22, v28

    mul-float/2addr v0, v14

    .line 878
    .local v0, "sweepAngleShifted":F
    const/16 v19, 0x0

    cmpg-float v32, v0, v19

    if-gez v32, :cond_d

    .line 879
    const/4 v0, 0x0

    .line 882
    :cond_d
    move-object/from16 v32, v1

    .end local v1    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .local v32, "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 884
    const/high16 v33, 0x43b40000    # 360.0f

    cmpl-float v1, v31, v33

    if-ltz v1, :cond_e

    rem-float v1, v31, v33

    sget v34, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v1, v1, v34

    if-gtz v1, :cond_e

    .line 886
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    move/from16 v34, v2

    .end local v2    # "index":I
    .local v34, "index":I
    iget v2, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move/from16 v35, v5

    .end local v5    # "innerRadius":F
    .local v35, "innerRadius":F
    iget v5, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move-object/from16 v36, v7

    .end local v7    # "drawAngles":[F
    .local v36, "drawAngles":[F
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v5, v9, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v37, v10

    move/from16 v38, v11

    goto :goto_a

    .line 884
    .end local v34    # "index":I
    .end local v35    # "innerRadius":F
    .end local v36    # "drawAngles":[F
    .restart local v2    # "index":I
    .restart local v5    # "innerRadius":F
    .restart local v7    # "drawAngles":[F
    :cond_e
    move/from16 v34, v2

    move/from16 v35, v5

    move-object/from16 v36, v7

    .line 889
    .end local v2    # "index":I
    .end local v5    # "innerRadius":F
    .end local v7    # "drawAngles":[F
    .restart local v34    # "index":I
    .restart local v35    # "innerRadius":F
    .restart local v36    # "drawAngles":[F
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v2, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v5, v3, v26

    move/from16 v37, v10

    move/from16 v38, v11

    .end local v10    # "visibleAngleCount":I
    .end local v11    # "shift":F
    .local v37, "visibleAngleCount":I
    .local v38, "shift":F
    float-to-double v10, v5

    .line 890
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float/2addr v5, v9

    add-float/2addr v2, v5

    iget v5, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float v7, v3, v26

    float-to-double v10, v7

    .line 891
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v7, v10

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    .line 889
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 893
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v3, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 900
    :goto_a
    const/4 v10, 0x0

    .line 901
    .local v10, "sliceSpaceRadius":F
    if-eqz v25, :cond_f

    .line 902
    mul-float v5, v22, v14

    iget v1, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v2, v30, v26

    move v7, v3

    .end local v3    # "startAngleShifted":F
    .local v7, "startAngleShifted":F
    float-to-double v2, v2

    .line 906
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v17

    add-float v11, v1, v2

    iget v1, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float v2, v30, v26

    float-to-double v2, v2

    .line 907
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v17

    add-float v39, v1, v2

    .line 903
    move/from16 v40, v0

    .end local v0    # "sweepAngleShifted":F
    .local v40, "sweepAngleShifted":F
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    move/from16 v41, v7

    .end local v7    # "startAngleShifted":F
    .local v41, "startAngleShifted":F
    move v3, v5

    move-object/from16 v42, v4

    .end local v4    # "highlightedCircleBox":Landroid/graphics/RectF;
    .local v42, "highlightedCircleBox":Landroid/graphics/RectF;
    move v4, v11

    move/from16 v11, v35

    .end local v35    # "innerRadius":F
    .local v11, "innerRadius":F
    move/from16 v5, v39

    move-object v7, v6

    .end local v6    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v7, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    move/from16 v6, v30

    move-object/from16 v35, v36

    move/from16 v36, v9

    move-object v9, v7

    .end local v7    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v9, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v35, "drawAngles":[F
    .local v36, "highlightedRadius":F
    move/from16 v7, v31

    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v10

    goto :goto_b

    .line 901
    .end local v11    # "innerRadius":F
    .end local v40    # "sweepAngleShifted":F
    .end local v41    # "startAngleShifted":F
    .end local v42    # "highlightedCircleBox":Landroid/graphics/RectF;
    .restart local v0    # "sweepAngleShifted":F
    .restart local v3    # "startAngleShifted":F
    .restart local v4    # "highlightedCircleBox":Landroid/graphics/RectF;
    .restart local v6    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v9, "highlightedRadius":F
    .local v35, "innerRadius":F
    .local v36, "drawAngles":[F
    :cond_f
    move/from16 v40, v0

    move/from16 v41, v3

    move-object/from16 v42, v4

    move/from16 v11, v35

    move-object/from16 v35, v36

    move/from16 v36, v9

    move-object v9, v6

    .line 913
    .end local v0    # "sweepAngleShifted":F
    .end local v3    # "startAngleShifted":F
    .end local v4    # "highlightedCircleBox":Landroid/graphics/RectF;
    .end local v6    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v9, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v11    # "innerRadius":F
    .local v35, "drawAngles":[F
    .local v36, "highlightedRadius":F
    .restart local v40    # "sweepAngleShifted":F
    .restart local v41    # "startAngleShifted":F
    .restart local v42    # "highlightedCircleBox":Landroid/graphics/RectF;
    :goto_b
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v1, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v1, v11

    iget v2, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v2, v11

    iget v3, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v3, v11

    iget v4, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 919
    if-eqz v12, :cond_18

    cmpl-float v0, v11, v19

    if-gtz v0, :cond_11

    if-eqz v25, :cond_10

    goto :goto_c

    :cond_10
    move v7, v12

    goto/16 :goto_11

    .line 922
    :cond_11
    :goto_c
    if-eqz v25, :cond_13

    .line 923
    move v0, v10

    .line 925
    .local v0, "minSpacedRadius":F
    cmpg-float v1, v0, v19

    if-gez v1, :cond_12

    .line 926
    neg-float v0, v0

    .line 928
    :cond_12
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .end local v11    # "innerRadius":F
    .restart local v5    # "innerRadius":F
    goto :goto_d

    .line 922
    .end local v0    # "minSpacedRadius":F
    .end local v5    # "innerRadius":F
    .restart local v11    # "innerRadius":F
    :cond_13
    move v5, v11

    .line 931
    .end local v11    # "innerRadius":F
    .restart local v5    # "innerRadius":F
    :goto_d
    move/from16 v0, v37

    const/4 v1, 0x1

    .end local v37    # "visibleAngleCount":I
    .local v0, "visibleAngleCount":I
    if-eq v0, v1, :cond_15

    cmpl-float v2, v5, v19

    if-nez v2, :cond_14

    goto :goto_e

    :cond_14
    mul-float v2, v5, v26

    div-float v2, v21, v2

    goto :goto_f

    :cond_15
    :goto_e
    move/from16 v2, v19

    .line 934
    .local v2, "sliceSpaceAngleInner":F
    :goto_f
    div-float v3, v2, v29

    add-float v3, v20, v3

    mul-float/2addr v3, v14

    add-float/2addr v3, v15

    .line 935
    .local v3, "startAngleInner":F
    sub-float v4, v22, v2

    mul-float/2addr v4, v14

    .line 936
    .local v4, "sweepAngleInner":F
    cmpg-float v6, v4, v19

    if-gez v6, :cond_16

    .line 937
    const/4 v4, 0x0

    .line 939
    :cond_16
    add-float v6, v3, v4

    .line 941
    .local v6, "endAngleInner":F
    cmpl-float v7, v31, v33

    if-ltz v7, :cond_17

    rem-float v7, v31, v33

    sget v11, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v7, v7, v11

    if-gtz v7, :cond_17

    .line 943
    iget-object v7, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v11, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v1, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v37, v0

    .end local v0    # "visibleAngleCount":I
    .restart local v37    # "visibleAngleCount":I
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v11, v1, v5, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move v7, v12

    goto :goto_10

    .line 941
    .end local v37    # "visibleAngleCount":I
    .restart local v0    # "visibleAngleCount":I
    :cond_17
    move/from16 v37, v0

    .line 946
    .end local v0    # "visibleAngleCount":I
    .restart local v37    # "visibleAngleCount":I
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v7, v6, v26

    move v11, v2

    move/from16 v29, v3

    .end local v2    # "sliceSpaceAngleInner":F
    .end local v3    # "startAngleInner":F
    .local v11, "sliceSpaceAngleInner":F
    .local v29, "startAngleInner":F
    float-to-double v2, v7

    .line 947
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float v3, v6, v26

    move/from16 v33, v11

    move v7, v12

    .end local v11    # "sliceSpaceAngleInner":F
    .end local v12    # "drawInnerArc":Z
    .local v7, "drawInnerArc":Z
    .local v33, "sliceSpaceAngleInner":F
    float-to-double v11, v3

    .line 948
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v3, v11

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 946
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 950
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    neg-float v2, v4

    invoke-virtual {v0, v1, v6, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 956
    .end local v4    # "sweepAngleInner":F
    .end local v6    # "endAngleInner":F
    .end local v29    # "startAngleInner":F
    .end local v33    # "sliceSpaceAngleInner":F
    :goto_10
    goto :goto_13

    .line 919
    .end local v5    # "innerRadius":F
    .end local v7    # "drawInnerArc":Z
    .local v11, "innerRadius":F
    .restart local v12    # "drawInnerArc":Z
    :cond_18
    move v7, v12

    .line 958
    .end local v12    # "drawInnerArc":Z
    .restart local v7    # "drawInnerArc":Z
    :goto_11
    rem-float v0, v31, v33

    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    .line 960
    if-eqz v25, :cond_19

    .line 961
    div-float v0, v31, v29

    add-float v0, v30, v0

    .line 963
    .local v0, "angleMiddle":F
    iget v1, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v2, v0, v26

    float-to-double v2, v2

    .line 964
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v1, v2

    .line 965
    .local v1, "arcEndPointX":F
    iget v2, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    mul-float v3, v0, v26

    float-to-double v3, v3

    .line 966
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    .line 968
    .local v2, "arcEndPointY":F
    iget-object v3, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 972
    .end local v0    # "angleMiddle":F
    .end local v1    # "arcEndPointX":F
    .end local v2    # "arcEndPointY":F
    goto :goto_12

    .line 974
    :cond_19
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 983
    :cond_1a
    :goto_12
    move v5, v11

    .end local v11    # "innerRadius":F
    .restart local v5    # "innerRadius":F
    :goto_13
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 985
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_14

    .line 831
    .end local v5    # "innerRadius":F
    .end local v9    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v10    # "sliceSpaceRadius":F
    .end local v20    # "angle":F
    .end local v21    # "sliceSpace":F
    .end local v22    # "sliceAngle":F
    .end local v23    # "entryCount":I
    .end local v24    # "i":I
    .end local v25    # "accountForSliceSpacing":Z
    .end local v27    # "sliceSpaceAngleOuter":F
    .end local v28    # "sliceSpaceAngleShifted":F
    .end local v30    # "startAngleOuter":F
    .end local v31    # "sweepAngleOuter":F
    .end local v32    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v34    # "index":I
    .end local v35    # "drawAngles":[F
    .end local v36    # "highlightedRadius":F
    .end local v37    # "visibleAngleCount":I
    .end local v38    # "shift":F
    .end local v40    # "sweepAngleShifted":F
    .end local v41    # "startAngleShifted":F
    .end local v42    # "highlightedCircleBox":Landroid/graphics/RectF;
    .local v1, "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .local v2, "index":I
    .local v3, "i":I
    .local v4, "highlightedCircleBox":Landroid/graphics/RectF;
    .local v6, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v7, "drawAngles":[F
    .restart local v12    # "drawInnerArc":Z
    :cond_1b
    move-object/from16 v32, v1

    move/from16 v34, v2

    move/from16 v24, v3

    move-object/from16 v42, v4

    move/from16 v19, v5

    move-object v9, v6

    move-object/from16 v35, v7

    move v7, v12

    .line 819
    .end local v1    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v2    # "index":I
    .end local v3    # "i":I
    .end local v4    # "highlightedCircleBox":Landroid/graphics/RectF;
    .end local v6    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v12    # "drawInnerArc":Z
    .local v7, "drawInnerArc":Z
    .restart local v9    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v24    # "i":I
    .restart local v35    # "drawAngles":[F
    .restart local v42    # "highlightedCircleBox":Landroid/graphics/RectF;
    :goto_14
    add-int/lit8 v3, v24, 0x1

    move v12, v7

    move-object v6, v9

    move/from16 v5, v19

    move-object/from16 v7, v35

    move-object/from16 v4, v42

    const/4 v11, 0x1

    move-object/from16 v9, p2

    .end local v24    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_2

    .end local v9    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v35    # "drawAngles":[F
    .end local v42    # "highlightedCircleBox":Landroid/graphics/RectF;
    .restart local v4    # "highlightedCircleBox":Landroid/graphics/RectF;
    .restart local v6    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v7, "drawAngles":[F
    .restart local v12    # "drawInnerArc":Z
    :cond_1c
    move-object v9, v6

    .line 988
    .end local v3    # "i":I
    .end local v6    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v9    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    invoke-static {v9}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 989
    return-void
.end method

.method protected drawHole(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 681
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v0

    .line 684
    .local v0, "radius":F
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 685
    .local v1, "holeRadius":F
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v3

    .line 687
    .local v3, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 689
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v5, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v6, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 695
    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 696
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 698
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    .line 699
    .local v4, "alpha":I
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v5

    div-float/2addr v5, v2

    mul-float/2addr v5, v0

    .line 701
    .local v5, "secondHoleRadius":F
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    int-to-float v6, v4

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 704
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 705
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v6, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v7, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v6, v7, v5, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 706
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v6, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v7, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v6, v7, v1, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 707
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 710
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 712
    .end local v4    # "alpha":I
    .end local v5    # "secondHoleRadius":F
    :cond_1
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 714
    .end local v0    # "radius":F
    .end local v1    # "holeRadius":F
    .end local v3    # "center":Lcom/github/mikephil/charting/utils/MPPointF;
    :cond_2
    return-void
.end method

.method protected drawRoundedSlices(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 999
    return-void

    .line 1001
    :cond_0
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v1

    .line 1003
    .local v1, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1004
    return-void

    .line 1006
    :cond_1
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v2

    .line 1007
    .local v2, "phaseX":F
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    .line 1009
    .local v3, "phaseY":F
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    .line 1010
    .local v4, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v5

    .line 1013
    .local v5, "r":F
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v6

    mul-float/2addr v6, v5

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    sub-float v6, v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 1015
    .local v6, "circleRadius":F
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v7

    .line 1016
    .local v7, "drawAngles":[F
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v8

    .line 1018
    .local v8, "angle":F
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 1020
    aget v10, v7, v9

    .line 1022
    .local v10, "sliceAngle":F
    invoke-interface {v1, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 1025
    .local v11, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sget v13, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 1027
    sub-float v12, v5, v6

    float-to-double v12, v12

    add-float v14, v8, v10

    mul-float/2addr v14, v3

    float-to-double v14, v14

    .line 1028
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    iget v14, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    float-to-double v14, v14

    add-double/2addr v12, v14

    double-to-float v12, v12

    .line 1030
    .local v12, "x":F
    sub-float v13, v5, v6

    float-to-double v13, v13

    add-float v15, v8, v10

    mul-float/2addr v15, v3

    move-object/from16 v16, v7

    move/from16 v17, v8

    .end local v7    # "drawAngles":[F
    .end local v8    # "angle":F
    .local v16, "drawAngles":[F
    .local v17, "angle":F
    float-to-double v7, v15

    .line 1031
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v13, v7

    iget v7, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    float-to-double v7, v7

    add-double/2addr v13, v7

    double-to-float v7, v13

    .line 1034
    .local v7, "y":F
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1035
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v12, v7, v6, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1025
    .end local v12    # "x":F
    .end local v16    # "drawAngles":[F
    .end local v17    # "angle":F
    .local v7, "drawAngles":[F
    .restart local v8    # "angle":F
    :cond_2
    move-object/from16 v16, v7

    move/from16 v17, v8

    .line 1038
    .end local v7    # "drawAngles":[F
    .end local v8    # "angle":F
    .restart local v16    # "drawAngles":[F
    .restart local v17    # "angle":F
    :goto_1
    mul-float v7, v10, v2

    add-float v8, v17, v7

    .line 1018
    .end local v10    # "sliceAngle":F
    .end local v11    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v17    # "angle":F
    .restart local v8    # "angle":F
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    goto :goto_0

    .line 1040
    .end local v9    # "j":I
    .end local v16    # "drawAngles":[F
    .restart local v7    # "drawAngles":[F
    :cond_3
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 1041
    return-void
.end method

.method public drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "valueText"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "color"    # I

    .line 650
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 652
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 68
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 409
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v8

    .line 412
    .local v8, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v9

    .line 413
    .local v9, "radius":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v0

    .line 414
    .local v0, "rotationAngle":F
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v10

    .line 415
    .local v10, "drawAngles":[F
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v11

    .line 417
    .local v11, "absoluteAngles":[F
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v12

    .line 418
    .local v12, "phaseX":F
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v13

    .line 420
    .local v13, "phaseY":F
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v1

    mul-float/2addr v1, v9

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v1, v14

    sub-float v1, v9, v1

    const/high16 v15, 0x40000000    # 2.0f

    div-float v16, v1, v15

    .line 421
    .local v16, "roundedRadius":F
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v1

    div-float v17, v1, v14

    .line 422
    .local v17, "holeRadiusPercent":F
    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, v9, v1

    const v2, 0x40666666    # 3.6f

    mul-float/2addr v1, v2

    .line 424
    .local v1, "labelRadiusOffset":F
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    mul-float v2, v9, v17

    sub-float v2, v9, v2

    div-float v1, v2, v15

    .line 427
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    float-to-double v2, v0

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v4, v4, v16

    float-to-double v4, v4

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v14, v9

    mul-double v14, v14, v18

    div-double/2addr v4, v14

    add-double/2addr v2, v4

    double-to-float v0, v2

    move v14, v0

    move v15, v1

    goto :goto_0

    .line 433
    :cond_0
    move v14, v0

    move v15, v1

    goto :goto_0

    .line 424
    :cond_1
    move v14, v0

    move v15, v1

    .line 433
    .end local v0    # "rotationAngle":F
    .end local v1    # "labelRadiusOffset":F
    .local v14, "rotationAngle":F
    .local v15, "labelRadiusOffset":F
    :goto_0
    sub-float v18, v9, v15

    .line 435
    .local v18, "labelRadius":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/github/mikephil/charting/data/PieData;

    .line 436
    .local v19, "data":Lcom/github/mikephil/charting/data/PieData;
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v5

    .line 438
    .local v5, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v22

    .line 440
    .local v22, "yValueSum":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawEntryLabelsEnabled()Z

    move-result v23

    .line 443
    .local v23, "drawEntryLabels":Z
    const/4 v0, 0x0

    .line 445
    .local v0, "xIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 447
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v24

    .line 449
    .local v24, "offset":F
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_20

    .line 451
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 453
    .local v3, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawValuesEnabled()Z

    move-result v25

    .line 455
    .local v25, "drawValues":Z
    if-nez v25, :cond_2

    if-nez v23, :cond_2

    .line 456
    move/from16 v27, v4

    move-object/from16 v29, v5

    move/from16 v63, v9

    move-object/from16 v38, v10

    move-object/from16 v40, v11

    move/from16 v44, v12

    move/from16 v45, v13

    move/from16 v51, v14

    move/from16 v30, v15

    const/high16 v20, 0x42c80000    # 100.0f

    const/high16 v21, 0x40000000    # 2.0f

    move-object v13, v7

    goto/16 :goto_11

    .line 458
    :cond_2
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getXValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v2

    .line 459
    .local v2, "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v1

    .line 462
    .local v1, "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 464
    move/from16 v26, v0

    .end local v0    # "xIndex":I
    .local v26, "xIndex":I
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move/from16 v27, v4

    .end local v4    # "i":I
    .local v27, "i":I
    const-string v4, "Q"

    invoke-static {v0, v4}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 465
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    add-float v28, v0, v4

    .line 467
    .local v28, "lineHeight":F
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v4

    .line 469
    .local v4, "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v0

    .line 471
    .local v0, "entryCount":I
    move-object/from16 v29, v5

    .end local v5    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    .local v29, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move/from16 v30, v15

    .end local v15    # "labelRadiusOffset":F
    .local v30, "labelRadiusOffset":F
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineWidth()F

    move-result v15

    invoke-static {v15}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v15

    invoke-virtual {v5, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 474
    invoke-virtual {v6, v3}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v15

    .line 476
    .local v15, "sliceSpace":F
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v5

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v5

    .line 477
    .local v5, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v7

    iput v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 478
    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v7

    iput v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 480
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v0, :cond_1f

    .line 482
    invoke-interface {v3, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v31

    move-object/from16 v32, v5

    .end local v5    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v32, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v5, v31

    check-cast v5, Lcom/github/mikephil/charting/data/PieEntry;

    .line 484
    .local v5, "entry":Lcom/github/mikephil/charting/data/PieEntry;
    if-nez v26, :cond_3

    .line 485
    const/16 v31, 0x0

    .local v31, "angle":F
    goto :goto_3

    .line 487
    .end local v31    # "angle":F
    :cond_3
    add-int/lit8 v31, v26, -0x1

    aget v31, v11, v31

    mul-float v31, v31, v12

    .line 489
    .restart local v31    # "angle":F
    :goto_3
    aget v33, v10, v26

    .line 490
    .local v33, "sliceAngle":F
    const v34, 0x3c8efa35

    mul-float v35, v18, v34

    div-float v35, v15, v35

    .line 493
    .local v35, "sliceSpaceMiddleAngle":F
    const/high16 v21, 0x40000000    # 2.0f

    div-float v36, v35, v21

    sub-float v36, v33, v36

    div-float v36, v36, v21

    .line 495
    .local v36, "angleOffset":F
    add-float v31, v31, v36

    .line 497
    mul-float v37, v31, v13

    move-object/from16 v38, v10

    .end local v10    # "drawAngles":[F
    .local v38, "drawAngles":[F
    add-float v10, v14, v37

    .line 499
    .local v10, "transformedAngle":F
    move/from16 v37, v0

    .end local v0    # "entryCount":I
    .local v37, "entryCount":I
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v0

    div-float v0, v0, v22

    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v0, v0, v20

    goto :goto_4

    .line 500
    :cond_4
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v0

    :goto_4
    nop

    .line 501
    .local v0, "value":F
    invoke-virtual {v4, v0, v5}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getPieLabel(FLcom/github/mikephil/charting/data/PieEntry;)Ljava/lang/String;

    move-result-object v39

    .line 502
    .local v39, "formattedValue":Ljava/lang/String;
    move-object/from16 v40, v11

    .end local v11    # "absoluteAngles":[F
    .local v40, "absoluteAngles":[F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v11

    .line 504
    .local v11, "entryLabel":Ljava/lang/String;
    move/from16 v41, v0

    .end local v0    # "value":F
    .local v41, "value":F
    mul-float v0, v10, v34

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    .end local v4    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v5    # "entry":Lcom/github/mikephil/charting/data/PieEntry;
    .local v42, "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .local v43, "entry":Lcom/github/mikephil/charting/data/PieEntry;
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v5, v4

    .line 505
    .local v5, "sliceXBase":F
    mul-float v0, v10, v34

    move/from16 v44, v12

    move/from16 v45, v13

    .end local v12    # "phaseX":F
    .end local v13    # "phaseY":F
    .local v44, "phaseX":F
    .local v45, "phaseY":F
    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 507
    .local v12, "sliceYBase":F
    const/4 v4, 0x1

    if-eqz v23, :cond_5

    sget-object v13, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v2, v13, :cond_5

    move v13, v4

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 509
    .local v13, "drawXOutside":Z
    :goto_5
    if-eqz v25, :cond_6

    sget-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v1, v0, :cond_6

    move v0, v4

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    move/from16 v47, v0

    .line 511
    .local v47, "drawYOutside":Z
    if-eqz v23, :cond_7

    sget-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v2, v0, :cond_7

    move v0, v4

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    move/from16 v48, v0

    .line 513
    .local v48, "drawXInside":Z
    if-eqz v25, :cond_8

    sget-object v0, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v1, v0, :cond_8

    move v0, v4

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    move/from16 v46, v0

    .line 516
    .local v46, "drawYInside":Z
    if-nez v13, :cond_a

    if-eqz v47, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v53, v1

    move-object/from16 v34, v2

    move/from16 v65, v5

    move/from16 v63, v9

    move/from16 v62, v13

    const/high16 v20, 0x42c80000    # 100.0f

    move-object/from16 v13, p1

    move-object v9, v3

    move-object/from16 v67, v32

    move/from16 v32, v10

    move-object/from16 v10, v67

    goto/16 :goto_e

    .line 518
    :cond_a
    :goto_9
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1Length()F

    move-result v49

    .line 519
    .local v49, "valueLineLength1":F
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart2Length()F

    move-result v50

    .line 520
    .local v50, "valueLineLength2":F
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1OffsetPercentage()F

    move-result v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v51, v0, v20

    .line 527
    .local v51, "valueLinePart1OffsetPercentage":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 528
    mul-float v0, v9, v17

    sub-float v0, v9, v0

    mul-float v0, v0, v51

    mul-float v4, v9, v17

    add-float/2addr v0, v4

    move/from16 v52, v0

    .local v0, "line1Radius":F
    goto :goto_a

    .line 532
    .end local v0    # "line1Radius":F
    :cond_b
    mul-float v0, v9, v51

    move/from16 v52, v0

    .line 534
    .local v52, "line1Radius":F
    :goto_a
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isValueLineVariableLength()Z

    move-result v0

    if-eqz v0, :cond_c

    mul-float v0, v18, v50

    mul-float v4, v10, v34

    move-object/from16 v53, v1

    move-object/from16 v34, v2

    .end local v1    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .end local v2    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .local v34, "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .local v53, "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    float-to-double v1, v4

    .line 535
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_b

    .end local v34    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .end local v53    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .restart local v1    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .restart local v2    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    :cond_c
    move-object/from16 v53, v1

    move-object/from16 v34, v2

    .end local v1    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .end local v2    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .restart local v34    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .restart local v53    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    mul-float v0, v18, v50

    :goto_b
    move/from16 v54, v0

    .line 539
    .local v54, "polyline2Width":F
    mul-float v0, v52, v5

    iget v1, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v55, v0, v1

    .line 540
    .local v55, "pt0x":F
    mul-float v0, v52, v12

    iget v1, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v56, v0, v1

    .line 542
    .local v56, "pt0y":F
    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, v49, v0

    mul-float v1, v1, v18

    mul-float/2addr v1, v5

    iget v2, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v57, v1, v2

    .line 543
    .local v57, "pt1x":F
    add-float v0, v49, v0

    mul-float v0, v0, v18

    mul-float/2addr v0, v12

    iget v1, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v58, v0, v1

    .line 545
    .local v58, "pt1y":F
    float-to-double v0, v10

    const-wide v59, 0x4076800000000000L    # 360.0

    rem-double v0, v0, v59

    const-wide v61, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v61

    if-ltz v0, :cond_e

    float-to-double v0, v10

    rem-double v0, v0, v59

    const-wide v59, 0x4070e00000000000L    # 270.0

    cmpg-double v0, v0, v59

    if-gtz v0, :cond_e

    .line 546
    sub-float v0, v57, v54

    .line 547
    .local v0, "pt2x":F
    move/from16 v1, v58

    .line 549
    .local v1, "pt2y":F
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 551
    if-eqz v13, :cond_d

    .line 552
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 554
    :cond_d
    sub-float v2, v0, v24

    .line 555
    .local v2, "labelPtx":F
    move v4, v1

    move/from16 v59, v0

    move/from16 v60, v1

    move/from16 v61, v4

    move v4, v2

    .local v4, "labelPty":F
    goto :goto_c

    .line 557
    .end local v0    # "pt2x":F
    .end local v1    # "pt2y":F
    .end local v2    # "labelPtx":F
    .end local v4    # "labelPty":F
    :cond_e
    add-float v0, v57, v54

    .line 558
    .restart local v0    # "pt2x":F
    move/from16 v1, v58

    .line 559
    .restart local v1    # "pt2y":F
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 561
    if-eqz v13, :cond_f

    .line 562
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 564
    :cond_f
    add-float v2, v0, v24

    .line 565
    .restart local v2    # "labelPtx":F
    move v4, v1

    move/from16 v59, v0

    move/from16 v60, v1

    move/from16 v61, v4

    move v4, v2

    .line 568
    .end local v0    # "pt2x":F
    .end local v1    # "pt2y":F
    .end local v2    # "labelPtx":F
    .local v4, "labelPtx":F
    .local v59, "pt2x":F
    .local v60, "pt2y":F
    .local v61, "labelPty":F
    :goto_c
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v0

    const v1, 0x112233

    if-eq v0, v1, :cond_11

    .line 570
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isUsingSliceColorAsValueLineColor()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 571
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v3, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    :cond_10
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v55

    move-object/from16 v62, v2

    move/from16 v2, v56

    move/from16 v63, v9

    move-object v9, v3

    .end local v3    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .local v9, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .local v63, "radius":F
    move/from16 v3, v57

    move/from16 v64, v4

    .end local v4    # "labelPtx":F
    .local v64, "labelPtx":F
    move/from16 v4, v58

    move/from16 v65, v5

    move-object/from16 v67, v32

    move/from16 v32, v10

    move-object/from16 v10, v67

    .end local v5    # "sliceXBase":F
    .local v10, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v32, "transformedAngle":F
    .local v65, "sliceXBase":F
    move-object/from16 v5, v62

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 575
    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    move/from16 v4, v60

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    .line 568
    .end local v63    # "radius":F
    .end local v64    # "labelPtx":F
    .end local v65    # "sliceXBase":F
    .restart local v3    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .restart local v4    # "labelPtx":F
    .restart local v5    # "sliceXBase":F
    .local v9, "radius":F
    .local v10, "transformedAngle":F
    .local v32, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    :cond_11
    move/from16 v64, v4

    move/from16 v65, v5

    move/from16 v63, v9

    move-object v9, v3

    move-object/from16 v67, v32

    move/from16 v32, v10

    move-object/from16 v10, v67

    .line 579
    .end local v3    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v4    # "labelPtx":F
    .end local v5    # "sliceXBase":F
    .local v9, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .local v10, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v32, "transformedAngle":F
    .restart local v63    # "radius":F
    .restart local v64    # "labelPtx":F
    .restart local v65    # "sliceXBase":F
    :goto_d
    if-eqz v13, :cond_13

    if-eqz v47, :cond_13

    .line 581
    invoke-interface {v9, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move/from16 v3, v64

    move/from16 v4, v61

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 583
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v7, v0, :cond_12

    if-eqz v11, :cond_12

    .line 584
    add-float v0, v61, v28

    move-object/from16 v5, p1

    move/from16 v4, v64

    .end local v64    # "labelPtx":F
    .restart local v4    # "labelPtx":F
    invoke-virtual {v6, v5, v11, v4, v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    move/from16 v62, v13

    move-object v13, v5

    goto :goto_e

    .line 583
    .end local v4    # "labelPtx":F
    .restart local v64    # "labelPtx":F
    :cond_12
    move-object/from16 v5, p1

    move/from16 v4, v64

    .end local v64    # "labelPtx":F
    .restart local v4    # "labelPtx":F
    move/from16 v62, v13

    move-object v13, v5

    goto :goto_e

    .line 579
    .end local v4    # "labelPtx":F
    .restart local v64    # "labelPtx":F
    :cond_13
    move-object/from16 v5, p1

    move/from16 v4, v64

    .line 587
    .end local v64    # "labelPtx":F
    .restart local v4    # "labelPtx":F
    if-eqz v13, :cond_15

    .line 588
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v7, v0, :cond_14

    if-eqz v11, :cond_14

    .line 589
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, v28, v0

    add-float v1, v61, v1

    invoke-virtual {v6, v5, v11, v4, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    move/from16 v62, v13

    move-object v13, v5

    goto :goto_e

    .line 588
    :cond_14
    const/high16 v0, 0x40000000    # 2.0f

    move/from16 v62, v13

    move-object v13, v5

    goto :goto_e

    .line 591
    :cond_15
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v47, :cond_16

    .line 593
    div-float v1, v28, v0

    add-float v62, v61, v1

    invoke-interface {v9, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move v3, v4

    move/from16 v66, v4

    .end local v4    # "labelPtx":F
    .local v66, "labelPtx":F
    move/from16 v4, v62

    move/from16 v62, v13

    move-object v13, v5

    .end local v13    # "drawXOutside":Z
    .local v62, "drawXOutside":Z
    move/from16 v5, v64

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_e

    .line 591
    .end local v62    # "drawXOutside":Z
    .end local v66    # "labelPtx":F
    .restart local v4    # "labelPtx":F
    .restart local v13    # "drawXOutside":Z
    :cond_16
    move/from16 v66, v4

    move/from16 v62, v13

    move-object v13, v5

    .line 597
    .end local v4    # "labelPtx":F
    .end local v13    # "drawXOutside":Z
    .end local v49    # "valueLineLength1":F
    .end local v50    # "valueLineLength2":F
    .end local v51    # "valueLinePart1OffsetPercentage":F
    .end local v52    # "line1Radius":F
    .end local v54    # "polyline2Width":F
    .end local v55    # "pt0x":F
    .end local v56    # "pt0y":F
    .end local v57    # "pt1x":F
    .end local v58    # "pt1y":F
    .end local v59    # "pt2x":F
    .end local v60    # "pt2y":F
    .end local v61    # "labelPty":F
    .restart local v62    # "drawXOutside":Z
    :goto_e
    if-nez v48, :cond_18

    if-eqz v46, :cond_17

    goto :goto_f

    :cond_17
    move/from16 v51, v14

    const/high16 v21, 0x40000000    # 2.0f

    goto/16 :goto_10

    .line 599
    :cond_18
    :goto_f
    mul-float v5, v18, v65

    iget v0, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v5, v0

    .line 600
    .local v5, "x":F
    mul-float v0, v18, v12

    iget v1, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v49, v0, v1

    .line 602
    .local v49, "y":F
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 605
    if-eqz v48, :cond_1a

    if-eqz v46, :cond_1a

    .line 607
    invoke-interface {v9, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v50

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move v3, v5

    move/from16 v4, v49

    move/from16 v51, v14

    move v14, v5

    .end local v5    # "x":F
    .local v14, "x":F
    .local v51, "rotationAngle":F
    move/from16 v5, v50

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 609
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v7, v0, :cond_19

    if-eqz v11, :cond_19

    .line 610
    add-float v0, v49, v28

    invoke-virtual {v6, v13, v11, v14, v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    const/high16 v21, 0x40000000    # 2.0f

    goto :goto_10

    .line 609
    :cond_19
    const/high16 v21, 0x40000000    # 2.0f

    goto :goto_10

    .line 605
    .end local v51    # "rotationAngle":F
    .restart local v5    # "x":F
    .local v14, "rotationAngle":F
    :cond_1a
    move/from16 v51, v14

    move v14, v5

    .line 613
    .end local v5    # "x":F
    .local v14, "x":F
    .restart local v51    # "rotationAngle":F
    if-eqz v48, :cond_1c

    .line 614
    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v7, v0, :cond_1b

    if-eqz v11, :cond_1b

    .line 615
    const/high16 v21, 0x40000000    # 2.0f

    div-float v0, v28, v21

    add-float v0, v49, v0

    invoke-virtual {v6, v13, v11, v14, v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_10

    .line 614
    :cond_1b
    const/high16 v21, 0x40000000    # 2.0f

    goto :goto_10

    .line 617
    :cond_1c
    const/high16 v21, 0x40000000    # 2.0f

    if-eqz v46, :cond_1d

    .line 618
    div-float v0, v28, v21

    add-float v4, v49, v0

    invoke-interface {v9, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 622
    .end local v14    # "x":F
    .end local v49    # "y":F
    :cond_1d
    :goto_10
    invoke-virtual/range {v43 .. v43}, Lcom/github/mikephil/charting/data/PieEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawIconsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 624
    invoke-virtual/range {v43 .. v43}, Lcom/github/mikephil/charting/data/PieEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 626
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    iget v0, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v0, v18, v0

    mul-float v0, v0, v65

    iget v1, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v5, v0, v1

    .line 627
    .restart local v5    # "x":F
    iget v0, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v0, v18, v0

    mul-float/2addr v0, v12

    iget v1, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v0, v1

    .line 628
    .local v0, "y":F
    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v4, v0, v1

    .line 630
    .end local v0    # "y":F
    .local v4, "y":F
    float-to-int v2, v5

    float-to-int v3, v4

    .line 635
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v49

    .line 636
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v50

    .line 630
    move-object/from16 v0, p1

    move-object v1, v14

    move/from16 v52, v4

    .end local v4    # "y":F
    .local v52, "y":F
    move/from16 v4, v49

    move/from16 v49, v5

    .end local v5    # "x":F
    .local v49, "x":F
    move/from16 v5, v50

    invoke-static/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 639
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v49    # "x":F
    .end local v52    # "y":F
    :cond_1e
    nop

    .end local v11    # "entryLabel":Ljava/lang/String;
    .end local v12    # "sliceYBase":F
    .end local v32    # "transformedAngle":F
    .end local v33    # "sliceAngle":F
    .end local v35    # "sliceSpaceMiddleAngle":F
    .end local v36    # "angleOffset":F
    .end local v39    # "formattedValue":Ljava/lang/String;
    .end local v41    # "value":F
    .end local v43    # "entry":Lcom/github/mikephil/charting/data/PieEntry;
    .end local v46    # "drawYInside":Z
    .end local v47    # "drawYOutside":Z
    .end local v48    # "drawXInside":Z
    .end local v62    # "drawXOutside":Z
    .end local v65    # "sliceXBase":F
    add-int/lit8 v26, v26, 0x1

    .line 480
    add-int/lit8 v7, v7, 0x1

    move-object v3, v9

    move-object v5, v10

    move-object/from16 v2, v34

    move/from16 v0, v37

    move-object/from16 v10, v38

    move-object/from16 v11, v40

    move-object/from16 v4, v42

    move/from16 v12, v44

    move/from16 v13, v45

    move/from16 v14, v51

    move-object/from16 v1, v53

    move/from16 v9, v63

    goto/16 :goto_2

    .end local v31    # "angle":F
    .end local v34    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .end local v37    # "entryCount":I
    .end local v38    # "drawAngles":[F
    .end local v40    # "absoluteAngles":[F
    .end local v42    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v44    # "phaseX":F
    .end local v45    # "phaseY":F
    .end local v51    # "rotationAngle":F
    .end local v53    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .end local v63    # "radius":F
    .local v0, "entryCount":I
    .local v1, "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .local v2, "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .restart local v3    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .local v4, "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .local v5, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .local v9, "radius":F
    .local v10, "drawAngles":[F
    .local v11, "absoluteAngles":[F
    .local v12, "phaseX":F
    .local v13, "phaseY":F
    .local v14, "rotationAngle":F
    :cond_1f
    move/from16 v37, v0

    move-object/from16 v53, v1

    move-object/from16 v34, v2

    move-object/from16 v42, v4

    move/from16 v63, v9

    move-object/from16 v38, v10

    move-object/from16 v40, v11

    move/from16 v44, v12

    move/from16 v45, v13

    move/from16 v51, v14

    const/high16 v20, 0x42c80000    # 100.0f

    const/high16 v21, 0x40000000    # 2.0f

    move-object/from16 v13, p1

    move-object v9, v3

    move-object v10, v5

    .line 642
    .end local v0    # "entryCount":I
    .end local v1    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .end local v2    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .end local v3    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v4    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v5    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v7    # "j":I
    .end local v11    # "absoluteAngles":[F
    .end local v12    # "phaseX":F
    .end local v13    # "phaseY":F
    .end local v14    # "rotationAngle":F
    .local v9, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .local v10, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v34    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .restart local v37    # "entryCount":I
    .restart local v38    # "drawAngles":[F
    .restart local v40    # "absoluteAngles":[F
    .restart local v42    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .restart local v44    # "phaseX":F
    .restart local v45    # "phaseY":F
    .restart local v51    # "rotationAngle":F
    .restart local v53    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .restart local v63    # "radius":F
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    move/from16 v0, v26

    .line 449
    .end local v9    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    .end local v10    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v15    # "sliceSpace":F
    .end local v25    # "drawValues":Z
    .end local v26    # "xIndex":I
    .end local v28    # "lineHeight":F
    .end local v34    # "xValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .end local v37    # "entryCount":I
    .end local v42    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v53    # "yValuePosition":Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .local v0, "xIndex":I
    :goto_11
    add-int/lit8 v4, v27, 0x1

    move-object v7, v13

    move-object/from16 v5, v29

    move/from16 v15, v30

    move-object/from16 v10, v38

    move-object/from16 v11, v40

    move/from16 v12, v44

    move/from16 v13, v45

    move/from16 v14, v51

    move/from16 v9, v63

    .end local v27    # "i":I
    .local v4, "i":I
    goto/16 :goto_1

    .end local v29    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    .end local v30    # "labelRadiusOffset":F
    .end local v38    # "drawAngles":[F
    .end local v40    # "absoluteAngles":[F
    .end local v44    # "phaseX":F
    .end local v45    # "phaseY":F
    .end local v51    # "rotationAngle":F
    .end local v63    # "radius":F
    .local v5, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    .local v9, "radius":F
    .local v10, "drawAngles":[F
    .restart local v11    # "absoluteAngles":[F
    .restart local v12    # "phaseX":F
    .restart local v13    # "phaseY":F
    .restart local v14    # "rotationAngle":F
    .local v15, "labelRadiusOffset":F
    :cond_20
    move/from16 v45, v13

    move-object v13, v7

    .line 644
    .end local v4    # "i":I
    .end local v13    # "phaseY":F
    .restart local v45    # "phaseY":F
    invoke-static {v8}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 645
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 646
    return-void
.end method

.method public getPaintCenterText()Landroid/text/TextPaint;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintEntryLabels()Landroid/graphics/Paint;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintHole()Landroid/graphics/Paint;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintTransparentCircle()Landroid/graphics/Paint;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F
    .locals 3
    .param p1, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 204
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isAutomaticallyDisableSliceSpacingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v0

    return v0

    .line 207
    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getSmallestContentExtension()F

    move-result v1

    div-float/2addr v0, v1

    .line 208
    .local v0, "spaceSizeRatio":F
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYMin()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    .line 210
    .local v1, "minValueRatio":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v2

    .line 212
    .local v2, "sliceSpace":F
    :goto_0
    return v2
.end method

.method public initBuffers()V
    .locals 0

    .line 120
    return-void
.end method

.method public releaseBitmap()V
    .locals 3

    .line 1047
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1048
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1049
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 1052
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1053
    .local v0, "drawBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1054
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1056
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1057
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 1059
    .end local v0    # "drawBitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method
