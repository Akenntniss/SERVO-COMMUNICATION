.class public Lcom/github/mikephil/charting/components/Legend;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/Legend$LegendDirection;,
        Lcom/github/mikephil/charting/components/Legend$LegendOrientation;,
        Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;,
        Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;,
        Lcom/github/mikephil/charting/components/Legend$LegendForm;
    }
.end annotation


# instance fields
.field private mCalculatedLabelBreakPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCalculatedLabelSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation
.end field

.field private mCalculatedLineSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation
.end field

.field private mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

.field private mDrawInside:Z

.field private mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

.field private mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

.field private mFormLineDashEffect:Landroid/graphics/DashPathEffect;

.field private mFormLineWidth:F

.field private mFormSize:F

.field private mFormToTextSpace:F

.field private mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

.field private mIsLegendCustom:Z

.field private mMaxSizePercent:F

.field public mNeededHeight:F

.field public mNeededWidth:F

.field private mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

.field private mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

.field private mStackSpace:F

.field public mTextHeightMax:F

.field public mTextWidthMax:F

.field private mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

.field private mWordWrapEnabled:Z

.field private mXEntrySpace:F

.field private mYEntrySpace:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 148
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    .line 74
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 86
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 88
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 89
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 90
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 91
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 96
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendDirection;->LEFT_TO_RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 101
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 106
    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 111
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 121
    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 133
    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 138
    iput v1, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 143
    const v4, 0x3f733333    # 0.95f

    iput v4, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 564
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 569
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 571
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 573
    iput v2, p0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 578
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 150
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mTextSize:F

    .line 151
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXOffset:F

    .line 152
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYOffset:F

    .line 153
    return-void
.end method

.method public constructor <init>([Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 2
    .param p1, "entries"    # [Lcom/github/mikephil/charting/components/LegendEntry;

    .line 161
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/Legend;-><init>()V

    .line 163
    if-eqz p1, :cond_0

    .line 167
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 168
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entries array is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public calculateDimensions(Landroid/graphics/Paint;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 30
    .param p1, "labelpaint"    # Landroid/graphics/Paint;
    .param p2, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    .line 655
    .local v2, "defaultFormSize":F
    iget v3, v0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    .line 656
    .local v3, "stackSpace":F
    iget v4, v0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    .line 657
    .local v4, "formToTextSpace":F
    iget v5, v0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    .line 658
    .local v5, "xEntrySpace":F
    iget v6, v0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v6

    .line 659
    .local v6, "yEntrySpace":F
    iget-boolean v7, v0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 660
    .local v7, "wordWrapEnabled":Z
    iget-object v8, v0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 661
    .local v8, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    array-length v9, v8

    .line 663
    .local v9, "entryCount":I
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryWidth(Landroid/graphics/Paint;)F

    move-result v10

    iput v10, v0, Lcom/github/mikephil/charting/components/Legend;->mTextWidthMax:F

    .line 664
    invoke-virtual/range {p0 .. p1}, Lcom/github/mikephil/charting/components/Legend;->getMaximumEntryHeight(Landroid/graphics/Paint;)F

    move-result v10

    iput v10, v0, Lcom/github/mikephil/charting/components/Legend;->mTextHeightMax:F

    .line 666
    sget-object v10, Lcom/github/mikephil/charting/components/Legend$1;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    iget-object v11, v0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    move/from16 v18, v2

    move/from16 v27, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v26, v7

    move-object/from16 v25, v8

    .end local v2    # "defaultFormSize":F
    .end local v3    # "stackSpace":F
    .end local v5    # "xEntrySpace":F
    .end local v6    # "yEntrySpace":F
    .end local v7    # "wordWrapEnabled":Z
    .end local v8    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .local v18, "defaultFormSize":F
    .local v22, "xEntrySpace":F
    .local v23, "yEntrySpace":F
    .local v25, "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .local v26, "wordWrapEnabled":Z
    .local v27, "stackSpace":F
    goto/16 :goto_14

    .line 725
    .end local v18    # "defaultFormSize":F
    .end local v22    # "xEntrySpace":F
    .end local v23    # "yEntrySpace":F
    .end local v25    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v26    # "wordWrapEnabled":Z
    .end local v27    # "stackSpace":F
    .restart local v2    # "defaultFormSize":F
    .restart local v3    # "stackSpace":F
    .restart local v5    # "xEntrySpace":F
    .restart local v6    # "yEntrySpace":F
    .restart local v7    # "wordWrapEnabled":Z
    .restart local v8    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    move-result v10

    .line 726
    .local v10, "labelLineHeight":F
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineSpacing(Landroid/graphics/Paint;)F

    move-result v13

    add-float/2addr v13, v6

    .line 727
    .local v13, "labelLineSpacing":F
    invoke-virtual/range {p2 .. p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v14

    iget v15, v0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    mul-float/2addr v14, v15

    .line 730
    .local v14, "contentWidth":F
    const/4 v15, 0x0

    .line 731
    .local v15, "maxLineWidth":F
    const/16 v16, 0x0

    .line 732
    .local v16, "currentLineWidth":F
    const/16 v17, 0x0

    .line 733
    .local v17, "requiredWidth":F
    const/16 v18, -0x1

    .line 735
    .local v18, "stackedStartIndex":I
    iget-object v12, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 736
    iget-object v12, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 737
    iget-object v12, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 739
    const/4 v12, 0x0

    move/from16 v20, v16

    move/from16 v21, v18

    .end local v16    # "currentLineWidth":F
    .end local v18    # "stackedStartIndex":I
    .local v12, "i":I
    .local v20, "currentLineWidth":F
    .local v21, "stackedStartIndex":I
    :goto_0
    if-ge v12, v9, :cond_f

    .line 741
    aget-object v11, v8, v12

    .line 742
    .local v11, "e":Lcom/github/mikephil/charting/components/LegendEntry;
    move/from16 v18, v2

    .end local v2    # "defaultFormSize":F
    .local v18, "defaultFormSize":F
    iget-object v2, v11, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    move/from16 v22, v5

    .end local v5    # "xEntrySpace":F
    .restart local v22    # "xEntrySpace":F
    sget-object v5, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 743
    .local v2, "drawingForm":Z
    :goto_1
    iget v5, v11, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    move/from16 v5, v18

    goto :goto_2

    :cond_1
    iget v5, v11, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 745
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    :goto_2
    nop

    .line 746
    .local v5, "formSize":F
    move/from16 v23, v6

    .end local v6    # "yEntrySpace":F
    .restart local v23    # "yEntrySpace":F
    iget-object v6, v11, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 748
    .local v6, "label":Ljava/lang/String;
    move-object/from16 v24, v11

    .end local v11    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .local v24, "e":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v11, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    move-object/from16 v25, v8

    const/16 v16, 0x0

    .end local v8    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v25    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    const/4 v8, -0x1

    move/from16 v11, v21

    .end local v21    # "stackedStartIndex":I
    .local v11, "stackedStartIndex":I
    if-ne v11, v8, :cond_2

    .line 753
    const/16 v17, 0x0

    goto :goto_3

    .line 756
    :cond_2
    add-float v17, v17, v3

    .line 760
    :goto_3
    if-eqz v6, :cond_4

    .line 762
    iget-object v8, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    move/from16 v27, v3

    .end local v3    # "stackSpace":F
    .restart local v27    # "stackSpace":F
    invoke-static {v1, v6}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    if-eqz v2, :cond_3

    add-float v3, v4, v5

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    add-float v17, v17, v3

    .line 764
    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/utils/FSize;

    iget v3, v3, Lcom/github/mikephil/charting/utils/FSize;->width:F

    add-float v17, v17, v3

    move/from16 v28, v5

    goto :goto_6

    .line 767
    .end local v27    # "stackSpace":F
    .restart local v3    # "stackSpace":F
    :cond_4
    move/from16 v27, v3

    .end local v3    # "stackSpace":F
    .restart local v27    # "stackSpace":F
    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    move/from16 v28, v5

    const/4 v8, 0x0

    .end local v5    # "formSize":F
    .local v28, "formSize":F
    invoke-static {v8, v8}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    if-eqz v2, :cond_5

    move/from16 v8, v28

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    add-float v17, v17, v8

    .line 770
    const/4 v3, -0x1

    if-ne v11, v3, :cond_6

    .line 772
    move v3, v12

    move v11, v3

    .line 776
    :cond_6
    :goto_6
    if-nez v6, :cond_8

    add-int/lit8 v3, v9, -0x1

    if-ne v12, v3, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v26, v7

    move/from16 v29, v20

    move/from16 v20, v2

    move/from16 v2, v29

    goto :goto_c

    .line 778
    :cond_8
    :goto_7
    move/from16 v3, v20

    const/4 v8, 0x0

    .end local v20    # "currentLineWidth":F
    .local v3, "currentLineWidth":F
    cmpl-float v5, v3, v8

    if-nez v5, :cond_9

    move v5, v8

    goto :goto_8

    :cond_9
    move/from16 v5, v22

    .line 780
    .local v5, "requiredSpacing":F
    :goto_8
    if-eqz v7, :cond_c

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_c

    sub-float v8, v14, v3

    add-float v20, v5, v17

    cmpl-float v8, v8, v20

    if-ltz v8, :cond_a

    move/from16 v20, v2

    move/from16 v26, v7

    goto :goto_a

    .line 791
    :cond_a
    iget-object v8, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    move/from16 v20, v2

    .end local v2    # "drawingForm":Z
    .local v20, "drawingForm":Z
    invoke-static {v3, v10}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-static {v15, v3}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 795
    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    const/4 v8, -0x1

    if-le v11, v8, :cond_b

    move v8, v11

    goto :goto_9

    :cond_b
    move v8, v12

    .line 797
    :goto_9
    move/from16 v26, v7

    const/16 v19, 0x1

    .end local v7    # "wordWrapEnabled":Z
    .restart local v26    # "wordWrapEnabled":Z
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 795
    invoke-interface {v2, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 798
    move/from16 v2, v17

    .end local v3    # "currentLineWidth":F
    .local v2, "currentLineWidth":F
    goto :goto_b

    .line 780
    .end local v20    # "drawingForm":Z
    .end local v26    # "wordWrapEnabled":Z
    .local v2, "drawingForm":Z
    .restart local v3    # "currentLineWidth":F
    .restart local v7    # "wordWrapEnabled":Z
    :cond_c
    move/from16 v20, v2

    move/from16 v26, v7

    .line 787
    .end local v2    # "drawingForm":Z
    .end local v7    # "wordWrapEnabled":Z
    .restart local v20    # "drawingForm":Z
    .restart local v26    # "wordWrapEnabled":Z
    :goto_a
    add-float v2, v5, v17

    add-float/2addr v2, v3

    .line 801
    .end local v3    # "currentLineWidth":F
    .local v2, "currentLineWidth":F
    :goto_b
    add-int/lit8 v3, v9, -0x1

    if-ne v12, v3, :cond_d

    .line 803
    iget-object v3, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    invoke-static {v2, v10}, Lcom/github/mikephil/charting/utils/FSize;->getInstance(FF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-static {v15, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v15, v3

    .line 808
    .end local v5    # "requiredSpacing":F
    :cond_d
    :goto_c
    if-eqz v6, :cond_e

    const/4 v8, -0x1

    goto :goto_d

    :cond_e
    move v8, v11

    :goto_d
    move/from16 v21, v8

    .line 739
    .end local v6    # "label":Ljava/lang/String;
    .end local v11    # "stackedStartIndex":I
    .end local v20    # "drawingForm":Z
    .end local v24    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v28    # "formSize":F
    .restart local v21    # "stackedStartIndex":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v20, v2

    move/from16 v2, v18

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v8, v25

    move/from16 v7, v26

    move/from16 v3, v27

    goto/16 :goto_0

    .end local v18    # "defaultFormSize":F
    .end local v22    # "xEntrySpace":F
    .end local v23    # "yEntrySpace":F
    .end local v25    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v26    # "wordWrapEnabled":Z
    .end local v27    # "stackSpace":F
    .local v2, "defaultFormSize":F
    .local v3, "stackSpace":F
    .local v5, "xEntrySpace":F
    .local v6, "yEntrySpace":F
    .restart local v7    # "wordWrapEnabled":Z
    .restart local v8    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .local v20, "currentLineWidth":F
    :cond_f
    move/from16 v18, v2

    move/from16 v27, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v26, v7

    move-object/from16 v25, v8

    move/from16 v3, v20

    move/from16 v11, v21

    const/16 v16, 0x0

    .line 811
    .end local v2    # "defaultFormSize":F
    .end local v5    # "xEntrySpace":F
    .end local v6    # "yEntrySpace":F
    .end local v7    # "wordWrapEnabled":Z
    .end local v8    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v12    # "i":I
    .end local v20    # "currentLineWidth":F
    .end local v21    # "stackedStartIndex":I
    .local v3, "currentLineWidth":F
    .restart local v11    # "stackedStartIndex":I
    .restart local v18    # "defaultFormSize":F
    .restart local v22    # "xEntrySpace":F
    .restart local v23    # "yEntrySpace":F
    .restart local v25    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v26    # "wordWrapEnabled":Z
    .restart local v27    # "stackSpace":F
    iput v15, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 812
    iget-object v2, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 813
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    iget-object v5, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 815
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_10

    move/from16 v5, v16

    goto :goto_e

    :cond_10
    iget-object v5, v0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    .line 817
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v19, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_e
    int-to-float v5, v5

    mul-float/2addr v5, v13

    add-float/2addr v2, v5

    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 819
    goto/16 :goto_14

    .line 669
    .end local v10    # "labelLineHeight":F
    .end local v11    # "stackedStartIndex":I
    .end local v13    # "labelLineSpacing":F
    .end local v14    # "contentWidth":F
    .end local v15    # "maxLineWidth":F
    .end local v17    # "requiredWidth":F
    .end local v18    # "defaultFormSize":F
    .end local v22    # "xEntrySpace":F
    .end local v23    # "yEntrySpace":F
    .end local v25    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v26    # "wordWrapEnabled":Z
    .end local v27    # "stackSpace":F
    .restart local v2    # "defaultFormSize":F
    .local v3, "stackSpace":F
    .restart local v5    # "xEntrySpace":F
    .restart local v6    # "yEntrySpace":F
    .restart local v7    # "wordWrapEnabled":Z
    .restart local v8    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    :pswitch_1
    move/from16 v18, v2

    move/from16 v27, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v26, v7

    move-object/from16 v25, v8

    const/16 v16, 0x0

    const/16 v19, 0x1

    .end local v2    # "defaultFormSize":F
    .end local v3    # "stackSpace":F
    .end local v5    # "xEntrySpace":F
    .end local v6    # "yEntrySpace":F
    .end local v7    # "wordWrapEnabled":Z
    .end local v8    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v18    # "defaultFormSize":F
    .restart local v22    # "xEntrySpace":F
    .restart local v23    # "yEntrySpace":F
    .restart local v25    # "entries":[Lcom/github/mikephil/charting/components/LegendEntry;
    .restart local v26    # "wordWrapEnabled":Z
    .restart local v27    # "stackSpace":F
    const/4 v2, 0x0

    .local v2, "maxWidth":F
    const/4 v3, 0x0

    .local v3, "maxHeight":F
    const/4 v5, 0x0

    .line 670
    .local v5, "width":F
    invoke-static/range {p1 .. p1}, Lcom/github/mikephil/charting/utils/Utils;->getLineHeight(Landroid/graphics/Paint;)F

    move-result v6

    .line 671
    .local v6, "labelLineHeight":F
    const/4 v7, 0x0

    .line 673
    .local v7, "wasStacked":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f
    if-ge v8, v9, :cond_1a

    .line 675
    aget-object v10, v25, v8

    .line 676
    .local v10, "e":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v11, v10, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    sget-object v12, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    if-eq v11, v12, :cond_11

    move/from16 v11, v19

    goto :goto_10

    :cond_11
    move/from16 v11, v16

    .line 677
    .local v11, "drawingForm":Z
    :goto_10
    iget v12, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_12

    move/from16 v12, v18

    goto :goto_11

    :cond_12
    iget v12, v10, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 679
    invoke-static {v12}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v12

    :goto_11
    nop

    .line 680
    .local v12, "formSize":F
    iget-object v13, v10, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 682
    .local v13, "label":Ljava/lang/String;
    if-nez v7, :cond_13

    .line 683
    const/4 v5, 0x0

    .line 685
    :cond_13
    if-eqz v11, :cond_15

    .line 686
    if-eqz v7, :cond_14

    .line 687
    add-float v5, v5, v27

    .line 688
    :cond_14
    add-float/2addr v5, v12

    .line 692
    :cond_15
    if-eqz v13, :cond_18

    .line 695
    if-eqz v11, :cond_16

    if-nez v7, :cond_16

    .line 696
    add-float/2addr v5, v4

    goto :goto_12

    .line 697
    :cond_16
    if-eqz v7, :cond_17

    .line 698
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 699
    add-float v14, v6, v23

    add-float/2addr v3, v14

    .line 700
    const/4 v5, 0x0

    .line 701
    const/4 v7, 0x0

    .line 704
    :cond_17
    :goto_12
    invoke-static {v1, v13}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v5, v14

    .line 706
    add-int/lit8 v14, v9, -0x1

    if-ge v8, v14, :cond_19

    .line 707
    add-float v14, v6, v23

    add-float/2addr v3, v14

    goto :goto_13

    .line 709
    :cond_18
    const/4 v7, 0x1

    .line 710
    add-float/2addr v5, v12

    .line 711
    add-int/lit8 v14, v9, -0x1

    if-ge v8, v14, :cond_19

    .line 712
    add-float v5, v5, v27

    .line 715
    :cond_19
    :goto_13
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 673
    .end local v10    # "e":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v11    # "drawingForm":Z
    .end local v12    # "formSize":F
    .end local v13    # "label":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 718
    .end local v8    # "i":I
    :cond_1a
    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 719
    iput v3, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 721
    nop

    .line 823
    .end local v2    # "maxWidth":F
    .end local v3    # "maxHeight":F
    .end local v5    # "width":F
    .end local v6    # "labelLineHeight":F
    .end local v7    # "wasStacked":Z
    :goto_14
    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget v3, v0, Lcom/github/mikephil/charting/components/Legend;->mYOffset:F

    add-float/2addr v2, v3

    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    .line 824
    iget v2, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget v3, v0, Lcom/github/mikephil/charting/components/Legend;->mXOffset:F

    add-float/2addr v2, v3

    iput v2, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    .line 825
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCalculatedLabelBreakPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelBreakPoints:Ljava/util/List;

    return-object v0
.end method

.method public getCalculatedLabelSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLabelSizes:Ljava/util/List;

    return-object v0
.end method

.method public getCalculatedLineSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/utils/FSize;",
            ">;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mCalculatedLineSizes:Ljava/util/List;

    return-object v0
.end method

.method public getDirection()Lcom/github/mikephil/charting/components/Legend$LegendDirection;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    return-object v0
.end method

.method public getEntries()[Lcom/github/mikephil/charting/components/LegendEntry;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    return-object v0
.end method

.method public getExtraEntries()[Lcom/github/mikephil/charting/components/LegendEntry;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    return-object v0
.end method

.method public getForm()Lcom/github/mikephil/charting/components/Legend$LegendForm;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    return-object v0
.end method

.method public getFormLineDashEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getFormLineWidth()F
    .locals 1

    .line 466
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    return v0
.end method

.method public getFormSize()F
    .locals 1

    .line 448
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    return v0
.end method

.method public getFormToTextSpace()F
    .locals 1

    .line 530
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    return v0
.end method

.method public getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    return-object v0
.end method

.method public getMaxSizePercent()F
    .locals 1

    .line 614
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    return v0
.end method

.method public getMaximumEntryHeight(Landroid/graphics/Paint;)F
    .locals 8
    .param p1, "p"    # Landroid/graphics/Paint;

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "max":F
    iget-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 226
    .local v4, "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v5, v4, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 227
    .local v5, "label":Ljava/lang/String;
    if-nez v5, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    invoke-static {p1, v5}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    .line 231
    .local v6, "length":F
    cmpl-float v7, v6, v0

    if-lez v7, :cond_1

    .line 232
    move v0, v6

    .line 225
    .end local v4    # "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "length":F
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_2
    return v0
.end method

.method public getMaximumEntryWidth(Landroid/graphics/Paint;)F
    .locals 11
    .param p1, "p"    # Landroid/graphics/Paint;

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "max":F
    const/4 v1, 0x0

    .line 194
    .local v1, "maxFormSize":F
    iget v2, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    .line 196
    .local v2, "formToTextSpace":F
    iget-object v3, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 197
    .local v6, "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    iget v7, v6, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 198
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    goto :goto_1

    :cond_0
    iget v7, v6, Lcom/github/mikephil/charting/components/LegendEntry;->formSize:F

    .line 197
    :goto_1
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v7

    .line 200
    .local v7, "formSize":F
    cmpl-float v8, v7, v1

    if-lez v8, :cond_1

    .line 201
    move v1, v7

    .line 203
    :cond_1
    iget-object v8, v6, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 204
    .local v8, "label":Ljava/lang/String;
    if-nez v8, :cond_2

    goto :goto_2

    .line 206
    :cond_2
    invoke-static {p1, v8}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    .line 208
    .local v9, "length":F
    cmpl-float v10, v9, v0

    if-lez v10, :cond_3

    .line 209
    move v0, v9

    .line 196
    .end local v6    # "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v7    # "formSize":F
    .end local v8    # "label":Ljava/lang/String;
    .end local v9    # "length":F
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 212
    :cond_4
    add-float v3, v0, v1

    add-float/2addr v3, v2

    return v3
.end method

.method public getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    return-object v0
.end method

.method public getStackSpace()F
    .locals 1

    .line 549
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    return v0
.end method

.method public getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    return-object v0
.end method

.method public getXEntrySpace()F
    .locals 1

    .line 492
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    return v0
.end method

.method public getYEntrySpace()F
    .locals 1

    .line 511
    iget v0, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    return v0
.end method

.method public isDrawInsideEnabled()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    return v0
.end method

.method public isLegendCustom()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    return v0
.end method

.method public isWordWrapEnabled()Z
    .locals 1

    .line 600
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    return v0
.end method

.method public resetCustom()V
    .locals 1

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 315
    return-void
.end method

.method public setCustom(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .line 304
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 306
    return-void
.end method

.method public setCustom([Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 1
    .param p1, "entries"    # [Lcom/github/mikephil/charting/components/LegendEntry;

    .line 290
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/Legend;->mIsLegendCustom:Z

    .line 292
    return-void
.end method

.method public setDirection(Lcom/github/mikephil/charting/components/Legend$LegendDirection;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 412
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mDirection:Lcom/github/mikephil/charting/components/Legend$LegendDirection;

    .line 413
    return-void
.end method

.method public setDrawInside(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 394
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mDrawInside:Z

    .line 395
    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 177
    return-void
.end method

.method public setExtra(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 245
    return-void
.end method

.method public setExtra([I[Ljava/lang/String;)V
    .locals 5
    .param p1, "colors"    # [I
    .param p2, "labels"    # [Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LegendEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 264
    new-instance v2, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {v2}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>()V

    .line 265
    .local v2, "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    aget v3, p1, v1

    iput v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 266
    aget-object v3, p2, v1

    iput-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 268
    iget v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v4, 0x112234

    if-eq v3, v4, :cond_1

    iget v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    if-nez v3, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    iget v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    const v4, 0x112233

    if-ne v3, v4, :cond_2

    .line 272
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->EMPTY:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    goto :goto_2

    .line 270
    :cond_1
    :goto_1
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->NONE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    iput-object v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->form:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 274
    :cond_2
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v2    # "entry":Lcom/github/mikephil/charting/components/LegendEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/github/mikephil/charting/components/LegendEntry;

    iput-object v1, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 278
    return-void
.end method

.method public setExtra([Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 1
    .param p1, "entries"    # [Lcom/github/mikephil/charting/components/LegendEntry;

    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 v0, 0x0

    new-array p1, v0, [Lcom/github/mikephil/charting/components/LegendEntry;

    .line 250
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mExtraEntries:[Lcom/github/mikephil/charting/components/LegendEntry;

    .line 251
    return-void
.end method

.method public setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V
    .locals 0
    .param p1, "shape"    # Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 430
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mShape:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    .line 431
    return-void
.end method

.method public setFormLineDashEffect(Landroid/graphics/DashPathEffect;)V
    .locals 0
    .param p1, "dashPathEffect"    # Landroid/graphics/DashPathEffect;

    .line 475
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineDashEffect:Landroid/graphics/DashPathEffect;

    .line 476
    return-void
.end method

.method public setFormLineWidth(F)V
    .locals 0
    .param p1, "size"    # F

    .line 457
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormLineWidth:F

    .line 458
    return-void
.end method

.method public setFormSize(F)V
    .locals 0
    .param p1, "size"    # F

    .line 439
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormSize:F

    .line 440
    return-void
.end method

.method public setFormToTextSpace(F)V
    .locals 0
    .param p1, "space"    # F

    .line 540
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mFormToTextSpace:F

    .line 541
    return-void
.end method

.method public setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V
    .locals 0
    .param p1, "value"    # Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 340
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mHorizontalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    .line 341
    return-void
.end method

.method public setMaxSizePercent(F)V
    .locals 0
    .param p1, "maxSize"    # F

    .line 626
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mMaxSizePercent:F

    .line 627
    return-void
.end method

.method public setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V
    .locals 0
    .param p1, "value"    # Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 376
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mOrientation:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    .line 377
    return-void
.end method

.method public setStackSpace(F)V
    .locals 0
    .param p1, "space"    # F

    .line 558
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mStackSpace:F

    .line 559
    return-void
.end method

.method public setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V
    .locals 0
    .param p1, "value"    # Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 358
    iput-object p1, p0, Lcom/github/mikephil/charting/components/Legend;->mVerticalAlignment:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    .line 359
    return-void
.end method

.method public setWordWrapEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 590
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/Legend;->mWordWrapEnabled:Z

    .line 591
    return-void
.end method

.method public setXEntrySpace(F)V
    .locals 0
    .param p1, "space"    # F

    .line 502
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mXEntrySpace:F

    .line 503
    return-void
.end method

.method public setYEntrySpace(F)V
    .locals 0
    .param p1, "space"    # F

    .line 521
    iput p1, p0, Lcom/github/mikephil/charting/components/Legend;->mYEntrySpace:F

    .line 522
    return-void
.end method
