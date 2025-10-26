.class public final Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVelocityTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VelocityTracker.kt\nandroidx/compose/ui/input/pointer/util/VelocityTrackerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,389:1\n1#2:390\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u001a,\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u000c\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "AssumePointerMoveStoppedMilliseconds",
        "",
        "DefaultWeight",
        "",
        "HistorySize",
        "HorizonMilliseconds",
        "MinSampleSize",
        "polyFitLeastSquares",
        "Landroidx/compose/ui/input/pointer/util/PolynomialFit;",
        "x",
        "",
        "y",
        "degree",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final AssumePointerMoveStoppedMilliseconds:I = 0x28

.field private static final DefaultWeight:F = 1.0f

.field private static final HistorySize:I = 0x14

.field private static final HorizonMilliseconds:I = 0x64

.field private static final MinSampleSize:I = 0x3


# direct methods
.method public static final polyFitLeastSquares(Ljava/util/List;Ljava/util/List;I)Landroidx/compose/ui/input/pointer/util/PolynomialFit;
    .locals 23
    .param p0, "x"    # Ljava/util/List;
    .param p1, "y"    # Ljava/util/List;
    .param p2, "degree"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroidx/compose/ui/input/pointer/util/PolynomialFit;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string/jumbo v3, "x"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "y"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    const/4 v3, 0x1

    if-lt v2, v3, :cond_23

    .line 236
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_22

    .line 239
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    .line 244
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 245
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_0

    .line 247
    :cond_0
    move v4, v2

    .line 244
    :goto_0
    nop

    .line 243
    nop

    .line 250
    .local v4, "truncatedDegree":I
    add-int/lit8 v5, v2, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    const/4 v9, 0x0

    if-ge v8, v5, :cond_1

    .line 390
    move v10, v8

    .local v10, "it":I
    const/4 v11, 0x0

    .line 250
    .local v11, "$i$a$-MutableList-VelocityTrackerKt$polyFitLeastSquares$coefficients$1":I
    nop

    .end local v10    # "it":I
    .end local v11    # "$i$a$-MutableList-VelocityTrackerKt$polyFitLeastSquares$coefficients$1":I
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v6

    check-cast v5, Ljava/util/List;

    .line 253
    .local v5, "coefficients":Ljava/util/List;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    .line 254
    .local v6, "m":I
    add-int/lit8 v8, v4, 0x1

    .line 257
    .local v8, "n":I
    new-instance v10, Landroidx/compose/ui/input/pointer/util/Matrix;

    invoke-direct {v10, v8, v6}, Landroidx/compose/ui/input/pointer/util/Matrix;-><init>(II)V

    .line 258
    .local v10, "a":Landroidx/compose/ui/input/pointer/util/Matrix;
    const/high16 v11, 0x3f800000    # 1.0f

    if-lez v6, :cond_5

    move v12, v7

    :goto_2
    move v13, v12

    .local v13, "h":I
    add-int/2addr v12, v3

    .line 259
    invoke-virtual {v10, v7, v13, v11}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 260
    if-ge v3, v8, :cond_3

    move v14, v3

    :goto_3
    move v15, v14

    .local v15, "i":I
    add-int/2addr v14, v3

    .line 261
    add-int/lit8 v9, v15, -0x1

    invoke-virtual {v10, v9, v13}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    move-result v9

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    mul-float v9, v9, v17

    invoke-virtual {v10, v15, v13, v9}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 260
    if-lt v14, v8, :cond_2

    goto :goto_4

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 258
    .end local v15    # "i":I
    :cond_3
    :goto_4
    if-lt v12, v6, :cond_4

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 268
    .end local v13    # "h":I
    :cond_5
    :goto_5
    new-instance v9, Landroidx/compose/ui/input/pointer/util/Matrix;

    invoke-direct {v9, v8, v6}, Landroidx/compose/ui/input/pointer/util/Matrix;-><init>(II)V

    .line 270
    .local v9, "q":Landroidx/compose/ui/input/pointer/util/Matrix;
    new-instance v12, Landroidx/compose/ui/input/pointer/util/Matrix;

    invoke-direct {v12, v8, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;-><init>(II)V

    .line 271
    .local v12, "r":Landroidx/compose/ui/input/pointer/util/Matrix;
    if-lez v8, :cond_13

    move v13, v7

    :goto_6
    move v14, v13

    .local v14, "j":I
    add-int/2addr v13, v3

    .line 272
    if-lez v6, :cond_7

    move v15, v7

    :goto_7
    move/from16 v17, v15

    .local v17, "h":I
    add-int/2addr v15, v3

    .line 273
    move/from16 v7, v17

    .end local v17    # "h":I
    .local v7, "h":I
    invoke-virtual {v10, v14, v7}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    move-result v11

    invoke-virtual {v9, v14, v7, v11}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 272
    if-lt v15, v6, :cond_6

    goto :goto_8

    :cond_6
    const/4 v7, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_7

    .line 275
    .end local v7    # "h":I
    :cond_7
    :goto_8
    if-lez v14, :cond_b

    const/4 v7, 0x0

    :goto_9
    move v11, v7

    .local v11, "i":I
    add-int/2addr v7, v3

    .line 276
    invoke-virtual {v9, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    move-result-object v15

    invoke-virtual {v9, v11}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroidx/compose/ui/input/pointer/util/Vector;->times(Landroidx/compose/ui/input/pointer/util/Vector;)F

    move-result v3

    .line 277
    .local v3, "dot":F
    if-lez v6, :cond_9

    const/4 v15, 0x0

    :goto_a
    move/from16 v20, v15

    const/16 v19, 0x1

    .local v20, "h":I
    add-int/lit8 v15, v15, 0x1

    .line 278
    move/from16 v2, v20

    .end local v20    # "h":I
    .local v2, "h":I
    invoke-virtual {v9, v14, v2}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    move-result v20

    invoke-virtual {v9, v11, v2}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    move-result v21

    mul-float v21, v21, v3

    move/from16 v22, v3

    .end local v3    # "dot":F
    .local v22, "dot":F
    sub-float v3, v20, v21

    invoke-virtual {v9, v14, v2, v3}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 277
    if-lt v15, v6, :cond_8

    goto :goto_b

    :cond_8
    move/from16 v2, p2

    move/from16 v3, v22

    goto :goto_a

    .end local v2    # "h":I
    .end local v22    # "dot":F
    .restart local v3    # "dot":F
    :cond_9
    move/from16 v22, v3

    .line 275
    .end local v3    # "dot":F
    :goto_b
    if-lt v7, v14, :cond_a

    goto :goto_c

    :cond_a
    move/from16 v2, p2

    const/4 v3, 0x1

    goto :goto_9

    .line 282
    .end local v11    # "i":I
    :cond_b
    :goto_c
    invoke-virtual {v9, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/util/Vector;->norm()F

    move-result v2

    .line 283
    .local v2, "norm":F
    move v7, v4

    .end local v4    # "truncatedDegree":I
    .local v7, "truncatedDegree":I
    float-to-double v3, v2

    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v3, v20

    if-ltz v3, :cond_12

    .line 294
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v11, v3, v2

    .line 295
    .local v11, "inverseNorm":F
    if-lez v6, :cond_d

    const/4 v3, 0x0

    :cond_c
    move v4, v3

    const/4 v15, 0x1

    .local v4, "h":I
    add-int/2addr v3, v15

    .line 296
    invoke-virtual {v9, v14, v4}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    move-result v15

    mul-float/2addr v15, v11

    invoke-virtual {v9, v14, v4, v15}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 295
    if-lt v3, v6, :cond_c

    .line 298
    .end local v4    # "h":I
    :cond_d
    if-lez v8, :cond_10

    const/4 v3, 0x0

    :goto_d
    move v4, v3

    const/4 v15, 0x1

    .local v4, "i":I
    add-int/2addr v3, v15

    .line 299
    if-ge v4, v14, :cond_e

    move/from16 v20, v2

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v9, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    move-result-object v15

    move/from16 v20, v2

    .end local v2    # "norm":F
    .local v20, "norm":F
    invoke-virtual {v10, v4}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroidx/compose/ui/input/pointer/util/Vector;->times(Landroidx/compose/ui/input/pointer/util/Vector;)F

    move-result v2

    :goto_e
    invoke-virtual {v12, v14, v4, v2}, Landroidx/compose/ui/input/pointer/util/Matrix;->set(IIF)V

    .line 298
    if-lt v3, v8, :cond_f

    goto :goto_f

    :cond_f
    move/from16 v2, v20

    goto :goto_d

    .end local v4    # "i":I
    .end local v20    # "norm":F
    .restart local v2    # "norm":F
    :cond_10
    move/from16 v20, v2

    .line 271
    .end local v2    # "norm":F
    .end local v11    # "inverseNorm":F
    :goto_f
    if-lt v13, v8, :cond_11

    goto :goto_10

    :cond_11
    move/from16 v2, p2

    move v4, v7

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 288
    .restart local v2    # "norm":F
    :cond_12
    move/from16 v20, v2

    .end local v2    # "norm":F
    .restart local v20    # "norm":F
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 289
    nop

    .line 288
    const-string v3, "Vectors are linearly dependent or zero so no solution. TODO(shepshapard), actually determine what this means"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    .end local v7    # "truncatedDegree":I
    .end local v14    # "j":I
    .end local v20    # "norm":F
    .local v4, "truncatedDegree":I
    :cond_13
    move v7, v4

    .line 305
    .end local v4    # "truncatedDegree":I
    .restart local v7    # "truncatedDegree":I
    :goto_10
    new-instance v2, Landroidx/compose/ui/input/pointer/util/Vector;

    invoke-direct {v2, v6}, Landroidx/compose/ui/input/pointer/util/Vector;-><init>(I)V

    .line 306
    .local v2, "wy":Landroidx/compose/ui/input/pointer/util/Vector;
    if-lez v6, :cond_15

    const/4 v3, 0x0

    :cond_14
    move v4, v3

    const/4 v11, 0x1

    .local v4, "h":I
    add-int/2addr v3, v11

    .line 307
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v11, v13

    invoke-virtual {v2, v4, v11}, Landroidx/compose/ui/input/pointer/util/Vector;->set(IF)V

    .line 306
    if-lt v3, v6, :cond_14

    .line 309
    .end local v4    # "h":I
    :cond_15
    add-int/lit8 v3, v8, -0x1

    if-ltz v3, :cond_19

    :cond_16
    move v4, v3

    .local v4, "i":I
    add-int/lit8 v3, v3, -0x1

    .line 310
    invoke-virtual {v9, v4}, Landroidx/compose/ui/input/pointer/util/Matrix;->getRow(I)Landroidx/compose/ui/input/pointer/util/Vector;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroidx/compose/ui/input/pointer/util/Vector;->times(Landroidx/compose/ui/input/pointer/util/Vector;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v5, v4, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v11, v8, -0x1

    add-int/lit8 v13, v4, 0x1

    if-gt v13, v11, :cond_18

    :cond_17
    move v14, v11

    .restart local v14    # "j":I
    add-int/lit8 v11, v11, -0x1

    .line 312
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-virtual {v12, v4, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    move-result v16

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->floatValue()F

    move-result v20

    mul-float v16, v16, v20

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v5, v4, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 311
    if-ne v14, v13, :cond_17

    .line 314
    .end local v14    # "j":I
    :cond_18
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    invoke-virtual {v12, v4, v4}, Landroidx/compose/ui/input/pointer/util/Matrix;->get(II)F

    move-result v13

    div-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v5, v4, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 309
    if-gez v3, :cond_16

    .line 322
    .end local v4    # "i":I
    :cond_19
    const/4 v3, 0x0

    .line 323
    .local v3, "yMean":F
    if-lez v6, :cond_1b

    const/4 v4, 0x0

    :cond_1a
    move v11, v4

    const/4 v13, 0x1

    .local v11, "h":I
    add-int/2addr v4, v13

    .line 324
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    add-float/2addr v3, v13

    .line 323
    if-lt v4, v6, :cond_1a

    .line 326
    .end local v11    # "h":I
    :cond_1b
    int-to-float v4, v6

    div-float/2addr v3, v4

    .line 328
    const/4 v4, 0x0

    .line 329
    .local v4, "sumSquaredError":F
    const/4 v11, 0x0

    .line 330
    .local v11, "sumSquaredTotal":F
    if-lez v6, :cond_1f

    const/4 v13, 0x0

    :goto_11
    move v14, v13

    const/4 v15, 0x1

    .local v14, "h":I
    add-int/2addr v13, v15

    .line 331
    const/high16 v15, 0x3f800000    # 1.0f

    .line 332
    .local v15, "term":F
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    move-result v16

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "wy":Landroidx/compose/ui/input/pointer/util/Vector;
    .local v20, "wy":Landroidx/compose/ui/input/pointer/util/Vector;
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v18

    sub-float v16, v16, v18

    .line 333
    .local v16, "err":F
    const/4 v2, 0x1

    if-ge v2, v8, :cond_1d

    move/from16 v19, v2

    :goto_12
    move/from16 v21, v19

    move/from16 v22, v7

    .end local v7    # "truncatedDegree":I
    .local v21, "i":I
    .local v22, "truncatedDegree":I
    add-int/lit8 v7, v19, 0x1

    .line 334
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->floatValue()F

    move-result v19

    mul-float v15, v15, v19

    .line 335
    move/from16 v2, v21

    .end local v21    # "i":I
    .local v2, "i":I
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->floatValue()F

    move-result v21

    mul-float v21, v21, v15

    sub-float v16, v16, v21

    .line 333
    if-lt v7, v8, :cond_1c

    goto :goto_13

    :cond_1c
    move/from16 v19, v7

    move/from16 v7, v22

    const/4 v2, 0x1

    goto :goto_12

    .end local v2    # "i":I
    .end local v22    # "truncatedDegree":I
    .restart local v7    # "truncatedDegree":I
    :cond_1d
    move/from16 v22, v7

    .line 337
    .end local v7    # "truncatedDegree":I
    .restart local v22    # "truncatedDegree":I
    :goto_13
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v7, v16, v2

    mul-float v7, v7, v16

    add-float/2addr v4, v7

    .line 338
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    sub-float/2addr v7, v3

    .line 339
    .local v7, "v":F
    mul-float v21, v7, v2

    mul-float v21, v21, v7

    add-float v11, v11, v21

    .line 330
    .end local v7    # "v":F
    .end local v15    # "term":F
    .end local v16    # "err":F
    if-lt v13, v6, :cond_1e

    goto :goto_14

    :cond_1e
    move-object/from16 v2, v20

    move/from16 v7, v22

    goto :goto_11

    .end local v14    # "h":I
    .end local v20    # "wy":Landroidx/compose/ui/input/pointer/util/Vector;
    .end local v22    # "truncatedDegree":I
    .local v2, "wy":Landroidx/compose/ui/input/pointer/util/Vector;
    .local v7, "truncatedDegree":I
    :cond_1f
    move-object/from16 v20, v2

    move/from16 v22, v7

    .line 343
    .end local v2    # "wy":Landroidx/compose/ui/input/pointer/util/Vector;
    .end local v7    # "truncatedDegree":I
    .restart local v20    # "wy":Landroidx/compose/ui/input/pointer/util/Vector;
    .restart local v22    # "truncatedDegree":I
    :goto_14
    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_20

    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_20
    div-float v2, v4, v11

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v2

    move/from16 v17, v2

    .line 342
    :goto_15
    move/from16 v2, v17

    .line 345
    .local v2, "confidence":F
    new-instance v7, Landroidx/compose/ui/input/pointer/util/PolynomialFit;

    invoke-direct {v7, v5, v2}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;-><init>(Ljava/util/List;F)V

    return-object v7

    .line 240
    .end local v2    # "confidence":F
    .end local v3    # "yMean":F
    .end local v4    # "sumSquaredError":F
    .end local v5    # "coefficients":Ljava/util/List;
    .end local v6    # "m":I
    .end local v8    # "n":I
    .end local v9    # "q":Landroidx/compose/ui/input/pointer/util/Matrix;
    .end local v10    # "a":Landroidx/compose/ui/input/pointer/util/Matrix;
    .end local v11    # "sumSquaredTotal":F
    .end local v12    # "r":Landroidx/compose/ui/input/pointer/util/Matrix;
    .end local v20    # "wy":Landroidx/compose/ui/input/pointer/util/Vector;
    .end local v22    # "truncatedDegree":I
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "At least one point must be provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x and y must be the same length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The degree must be at positive integer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
