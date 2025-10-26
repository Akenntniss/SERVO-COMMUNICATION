.class public final Landroidx/compose/ui/input/pointer/util/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u0012\u00f8\u0001\u0000\u00f8\u0001\u0002\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010\u0017\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "",
        "()V",
        "index",
        "",
        "samples",
        "",
        "Landroidx/compose/ui/input/pointer/util/PointAtTime;",
        "[Landroidx/compose/ui/input/pointer/util/PointAtTime;",
        "addPosition",
        "",
        "timeMillis",
        "",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "addPosition-Uv8p0NA",
        "(JJ)V",
        "calculateVelocity",
        "Landroidx/compose/ui/unit/Velocity;",
        "calculateVelocity-9UxMQ8M",
        "()J",
        "getVelocityEstimate",
        "Landroidx/compose/ui/input/pointer/util/VelocityEstimate;",
        "resetTracking",
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
.field public static final $stable:I


# instance fields
.field private index:I

.field private final samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x14

    new-array v1, v0, [Landroidx/compose/ui/input/pointer/util/PointAtTime;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    .line 41
    return-void
.end method

.method private final getVelocityEstimate()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;
    .locals 26

    .line 88
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 89
    .local v2, "x":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 90
    .local v3, "y":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 91
    .local v4, "time":Ljava/util/List;
    const/4 v0, 0x0

    .line 92
    .local v0, "sampleCount":I
    iget v5, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->index:I

    .line 95
    .local v5, "index":I
    iget-object v6, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    aget-object v6, v6, v5

    if-nez v6, :cond_0

    sget-object v6, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->Companion:Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;->getNone()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    move-result-object v6

    return-object v6

    .line 97
    .local v6, "newestSample":Landroidx/compose/ui/input/pointer/util/PointAtTime;
    :cond_0
    move-object v7, v6

    .line 98
    .local v7, "previousSample":Landroidx/compose/ui/input/pointer/util/PointAtTime;
    move-object v8, v6

    .line 103
    .local v8, "oldestSample":Landroidx/compose/ui/input/pointer/util/PointAtTime;
    :cond_1
    iget-object v9, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    aget-object v9, v9, v5

    const/4 v10, 0x1

    if-nez v9, :cond_2

    move-object v9, v8

    move-object v8, v7

    move v7, v5

    move v5, v0

    goto/16 :goto_2

    .line 105
    .local v9, "sample":Landroidx/compose/ui/input/pointer/util/PointAtTime;
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    move-result-wide v11

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    long-to-float v11, v11

    .line 107
    .local v11, "age":F
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    move-result-wide v12

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    long-to-float v12, v12

    .line 106
    nop

    .line 108
    .local v12, "delta":F
    move-object v7, v9

    .line 109
    const/high16 v13, 0x42c80000    # 100.0f

    cmpl-float v13, v11, v13

    if-gtz v13, :cond_5

    const/high16 v13, 0x42200000    # 40.0f

    cmpl-float v13, v12, v13

    if-lez v13, :cond_3

    goto :goto_1

    .line 113
    :cond_3
    move-object v8, v9

    .line 114
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    move-result-wide v13

    .line 115
    .local v13, "position":J
    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    neg-float v15, v11

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const/16 v15, 0x14

    if-nez v5, :cond_4

    move/from16 v16, v15

    goto :goto_0

    :cond_4
    move/from16 v16, v5

    :goto_0
    add-int/lit8 v5, v16, -0x1

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    if-lt v0, v15, :cond_1

    move-object v9, v8

    move-object v8, v7

    move v7, v5

    move v5, v0

    goto :goto_2

    .line 110
    .end local v13    # "position":J
    :cond_5
    :goto_1
    move-object v9, v8

    move-object v8, v7

    move v7, v5

    move v5, v0

    .line 123
    .end local v0    # "sampleCount":I
    .end local v11    # "age":F
    .end local v12    # "delta":F
    .local v5, "sampleCount":I
    .local v7, "index":I
    .local v8, "previousSample":Landroidx/compose/ui/input/pointer/util/PointAtTime;
    .local v9, "oldestSample":Landroidx/compose/ui/input/pointer/util/PointAtTime;
    :goto_2
    const/4 v0, 0x3

    if-lt v5, v0, :cond_6

    .line 124
    nop

    .line 125
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v4, v2, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares(Ljava/util/List;Ljava/util/List;I)Landroidx/compose/ui/input/pointer/util/PolynomialFit;

    move-result-object v11

    .line 126
    .local v11, "xFit":Landroidx/compose/ui/input/pointer/util/PolynomialFit;
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares(Ljava/util/List;Ljava/util/List;I)Landroidx/compose/ui/input/pointer/util/PolynomialFit;

    move-result-object v0

    .line 131
    .local v0, "yFit":Landroidx/compose/ui/input/pointer/util/PolynomialFit;
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;->getCoefficients()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .line 132
    .local v12, "xSlope":F
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;->getCoefficients()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    .line 133
    .local v10, "ySlope":F
    new-instance v22, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 136
    const/16 v13, 0x3e8

    int-to-float v13, v13

    mul-float v14, v12, v13

    .line 137
    mul-float/2addr v13, v10

    .line 134
    invoke-static {v14, v13}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v14

    .line 139
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;->getConfidence()F

    move-result v13

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;->getConfidence()F

    move-result v16

    mul-float v16, v16, v13

    .line 140
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    move-result-wide v17

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    move-result-wide v19

    sub-long v17, v17, v19

    .line 141
    move-object/from16 v23, v0

    .end local v0    # "yFit":Landroidx/compose/ui/input/pointer/util/PolynomialFit;
    .local v23, "yFit":Landroidx/compose/ui/input/pointer/util/PolynomialFit;
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .end local v2    # "x":Ljava/util/List;
    .end local v3    # "y":Ljava/util/List;
    .local v24, "x":Ljava/util/List;
    .local v25, "y":Ljava/util/List;
    :try_start_1
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v19

    const/16 v21, 0x0

    .line 133
    move-object/from16 v13, v22

    invoke-direct/range {v13 .. v21}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;-><init>(JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v22

    .line 143
    .end local v10    # "ySlope":F
    .end local v11    # "xFit":Landroidx/compose/ui/input/pointer/util/PolynomialFit;
    .end local v12    # "xSlope":F
    .end local v23    # "yFit":Landroidx/compose/ui/input/pointer/util/PolynomialFit;
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v24    # "x":Ljava/util/List;
    .end local v25    # "y":Ljava/util/List;
    .restart local v2    # "x":Ljava/util/List;
    .restart local v3    # "y":Ljava/util/List;
    :catch_1
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 145
    .end local v2    # "x":Ljava/util/List;
    .end local v3    # "y":Ljava/util/List;
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    .restart local v24    # "x":Ljava/util/List;
    .restart local v25    # "y":Ljava/util/List;
    :goto_3
    sget-object v1, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->Companion:Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate$Companion;->getNone()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    move-result-object v1

    return-object v1

    .line 151
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    .end local v24    # "x":Ljava/util/List;
    .end local v25    # "y":Ljava/util/List;
    .restart local v2    # "x":Ljava/util/List;
    .restart local v3    # "y":Ljava/util/List;
    :cond_6
    move-object/from16 v25, v3

    .end local v3    # "y":Ljava/util/List;
    .restart local v25    # "y":Ljava/util/List;
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    .line 152
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v11

    .line 153
    nop

    .line 154
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    move-result-wide v1

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getTime()J

    move-result-wide v14

    sub-long v14, v1, v14

    .line 155
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    move-result-wide v1

    move-wide/from16 v16, v14

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/util/PointAtTime;->getPoint-F1C5BW0()J

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v1

    const/16 v18, 0x0

    .line 151
    move-object v10, v0

    const/high16 v3, 0x3f800000    # 1.0f

    move v13, v3

    move-wide/from16 v14, v16

    move-wide/from16 v16, v1

    invoke-direct/range {v10 .. v18}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;-><init>(JFJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final addPosition-Uv8p0NA(JJ)V
    .locals 9
    .param p1, "timeMillis"    # J
    .param p3, "position"    # J

    .line 58
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->index:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->index:I

    .line 59
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    new-instance v8, Landroidx/compose/ui/input/pointer/util/PointAtTime;

    const/4 v7, 0x0

    move-object v2, v8

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/input/pointer/util/PointAtTime;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v8, v1, v0

    .line 60
    return-void
.end method

.method public final calculateVelocity-9UxMQ8M()J
    .locals 4

    .line 68
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getVelocityEstimate()Landroidx/compose/ui/input/pointer/util/VelocityEstimate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/util/VelocityEstimate;->getPixelsPerSecond-F1C5BW0()J

    move-result-wide v0

    .line 69
    .local v0, "estimate":J
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v2

    return-wide v2
.end method

.method public final resetTracking()V
    .locals 6

    .line 76
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->samples:[Landroidx/compose/ui/input/pointer/util/PointAtTime;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 77
    return-void
.end method
