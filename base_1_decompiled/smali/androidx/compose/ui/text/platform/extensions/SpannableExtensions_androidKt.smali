.class public final Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;
.super Ljava/lang/Object;
.source "SpannableExtensions.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpannableExtensions.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpannableExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 4 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,464:1\n28#2,6:465\n28#2,4:474\n33#2:480\n41#2,6:482\n28#2,6:488\n30#3,3:471\n33#3,2:478\n35#3:481\n656#4:494\n656#4:495\n*S KotlinDebug\n*F\n+ 1 SpannableExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt\n*L\n166#1:465,6\n237#1:474,4\n237#1:480\n302#1:482,6\n317#1:488,6\n237#1:471,3\n237#1:478,2\n237#1:481\n364#1:494\n437#1:495\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\'\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001aF\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000e0\r2\u001e\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0\u0010H\u0000\u001a\u000c\u0010\u0012\u001a\u00020\u0013*\u00020\u0014H\u0002\u001a\u0016\u0010\u0015\u001a\u00020\u000b*\u0004\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002\u001a1\u0010\u0017\u001a\u00020\t*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001a1\u0010\u001f\u001a\u00020\t*\u00020\u00182\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\u0008\"\u001a1\u0010#\u001a\u00020\t*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010\u001e\u001a0\u0010%\u001a\u00020\t*\u00020\u00182\u0006\u0010&\u001a\u00020\u00142\u0012\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000e0\r2\u0006\u0010\'\u001a\u00020(H\u0002\u001a&\u0010)\u001a\u00020\t*\u00020\u00182\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0002\u001a9\u0010,\u001a\u00020\t*\u00020\u00182\u0006\u0010-\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u0010/\u001a&\u00100\u001a\u00020\t*\u00020\u00182\u0008\u00101\u001a\u0004\u0018\u0001022\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0002\u001a1\u00103\u001a\u00020\t*\u00020\u00182\u0006\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u0002062\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00087\u00108\u001a&\u00109\u001a\u00020\t*\u00020\u00182\u0008\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000\u001a&\u0010<\u001a\u00020\t*\u00020\u00182\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0002\u001a$\u0010?\u001a\u00020\t*\u00020\u00182\u0006\u0010@\u001a\u00020A2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000\u001a:\u0010B\u001a\u00020\t*\u00020\u00182\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0016\u0010D\u001a\u0012\u0012\u0004\u0012\u00020F0Ej\u0008\u0012\u0004\u0012\u00020F`GH\u0002\u001a8\u0010H\u001a\u00020\t*\u00020\u00182\u0006\u0010&\u001a\u00020\u00142\u0012\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000e0\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020(H\u0000\u001a&\u0010I\u001a\u00020\t*\u00020\u00182\u0008\u0010J\u001a\u0004\u0018\u00010K2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000\u001a&\u0010L\u001a\u00020\t*\u00020\u00182\u0008\u0010M\u001a\u0004\u0018\u00010N2\u0006\u00105\u001a\u0002062\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006O"
    }
    d2 = {
        "createLetterSpacingSpan",
        "Landroid/text/style/MetricAffectingSpan;",
        "letterSpacing",
        "Landroidx/compose/ui/unit/TextUnit;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createLetterSpacingSpan-eAf_CNQ",
        "(JLandroidx/compose/ui/unit/Density;)Landroid/text/style/MetricAffectingSpan;",
        "flattenFontStylesAndApply",
        "",
        "contextFontSpanStyle",
        "Landroidx/compose/ui/text/SpanStyle;",
        "spanStyles",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "block",
        "Lkotlin/Function3;",
        "",
        "hasFontAttributes",
        "",
        "Landroidx/compose/ui/text/TextStyle;",
        "merge",
        "spanStyle",
        "setBackground",
        "Landroid/text/Spannable;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "start",
        "end",
        "setBackground-RPmYEkk",
        "(Landroid/text/Spannable;JII)V",
        "setBaselineShift",
        "baselineShift",
        "Landroidx/compose/ui/text/style/BaselineShift;",
        "setBaselineShift-0ocSgnM",
        "setColor",
        "setColor-RPmYEkk",
        "setFontAttributes",
        "contextTextStyle",
        "typefaceAdapter",
        "Landroidx/compose/ui/text/platform/TypefaceAdapter;",
        "setFontFeatureSettings",
        "fontFeatureSettings",
        "",
        "setFontSize",
        "fontSize",
        "setFontSize-KmRG4DE",
        "(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V",
        "setGeometricTransform",
        "textGeometricTransform",
        "Landroidx/compose/ui/text/style/TextGeometricTransform;",
        "setLineHeight",
        "lineHeight",
        "contextFontSize",
        "",
        "setLineHeight-r9BaKPg",
        "(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;)V",
        "setLocaleList",
        "localeList",
        "Landroidx/compose/ui/text/intl/LocaleList;",
        "setShadow",
        "shadow",
        "Landroidx/compose/ui/graphics/Shadow;",
        "setSpan",
        "span",
        "",
        "setSpanStyle",
        "spanStyleRange",
        "lowPrioritySpans",
        "Ljava/util/ArrayList;",
        "Landroidx/compose/ui/text/platform/extensions/SpanRange;",
        "Lkotlin/collections/ArrayList;",
        "setSpanStyles",
        "setTextDecoration",
        "textDecoration",
        "Landroidx/compose/ui/text/style/TextDecoration;",
        "setTextIndent",
        "textIndent",
        "Landroidx/compose/ui/text/style/TextIndent;",
        "ui-text_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final createLetterSpacingSpan-eAf_CNQ(JLandroidx/compose/ui/unit/Density;)Landroid/text/style/MetricAffectingSpan;
    .locals 4
    .param p0, "letterSpacing"    # J
    .param p2, "density"    # Landroidx/compose/ui/unit/Density;

    .line 339
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    .line 340
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p2

    .local v0, "$this$createLetterSpacingSpan_eAf_CNQ_u24lambda_u2d9":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 341
    .local v1, "$i$a$-with-SpannableExtensions_androidKt$createLetterSpacingSpan$1":I
    new-instance v2, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    invoke-interface {v0, p0, p1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v3

    invoke-direct {v2, v3}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;-><init>(F)V

    .line 340
    .end local v0    # "$this$createLetterSpacingSpan_eAf_CNQ_u24lambda_u2d9":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-SpannableExtensions_androidKt$createLetterSpacingSpan$1":I
    check-cast v2, Landroid/text/style/MetricAffectingSpan;

    goto :goto_0

    .line 343
    :cond_0
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    new-instance v0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;-><init>(F)V

    move-object v2, v0

    check-cast v2, Landroid/text/style/MetricAffectingSpan;

    goto :goto_0

    .line 347
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Landroid/text/style/MetricAffectingSpan;

    .line 339
    :goto_0
    return-object v2
.end method

.method public static final flattenFontStylesAndApply(Landroidx/compose/ui/text/SpanStyle;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V
    .locals 20
    .param p0, "contextFontSpanStyle"    # Landroidx/compose/ui/text/SpanStyle;
    .param p1, "spanStyles"    # Ljava/util/List;
    .param p2, "block"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/SpanStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/text/SpanStyle;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "spanStyles"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1

    .line 290
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_0

    .line 291
    nop

    .line 292
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 v5, p0

    invoke-static {v5, v2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->merge(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v2

    .line 293
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 294
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 291
    invoke-interface {v1, v2, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    :cond_0
    move-object/from16 v5, p0

    .line 297
    :goto_0
    return-void

    .line 300
    :cond_1
    move-object/from16 v5, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 301
    .local v2, "spanCount":I
    mul-int/lit8 v6, v2, 0x2

    new-array v7, v6, [Ljava/lang/Integer;

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 302
    .local v6, "transitionOffsets":[Ljava/lang/Integer;
    move-object/from16 v7, p1

    .local v7, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 482
    .local v8, "$i$f$fastForEachIndexed":I
    nop

    .line 483
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_4

    move v10, v3

    :cond_3
    move v11, v10

    .local v11, "index$iv":I
    add-int/2addr v10, v4

    .line 484
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 485
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/AnnotatedString$Range;

    .local v13, "spanStyle":Landroidx/compose/ui/text/AnnotatedString$Range;
    move v14, v11

    .local v14, "idx":I
    const/4 v15, 0x0

    .line 303
    .local v15, "$i$a$-fastForEachIndexed-SpannableExtensions_androidKt$flattenFontStylesAndApply$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v14

    .line 304
    add-int v16, v14, v2

    invoke-virtual {v13}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v6, v16

    .line 305
    nop

    .line 483
    .end local v12    # "item$iv":Ljava/lang/Object;
    .end local v13    # "spanStyle":Landroidx/compose/ui/text/AnnotatedString$Range;
    .end local v14    # "idx":I
    .end local v15    # "$i$a$-fastForEachIndexed-SpannableExtensions_androidKt$flattenFontStylesAndApply$1":I
    if-le v10, v9, :cond_3

    .line 487
    .end local v11    # "index$iv":I
    :cond_4
    nop

    .line 306
    .end local v7    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEachIndexed":I
    move-object v7, v6

    check-cast v7, [Ljava/lang/Comparable;

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/collections/ArraysKt;->sort([Ljava/lang/Object;)V

    .line 308
    const/4 v7, 0x0

    .local v7, "lastTransitionOffsets":I
    invoke-static {v6}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 309
    array-length v8, v6

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_a

    aget-object v10, v6, v9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "transitionOffset":I
    add-int/lit8 v9, v9, 0x1

    .line 311
    if-ne v10, v7, :cond_5

    .line 312
    goto :goto_2

    .line 316
    :cond_5
    const/4 v11, 0x0

    .local v11, "mergedSpanStyle":Ljava/lang/Object;
    move-object/from16 v11, p0

    .line 317
    move-object/from16 v12, p1

    .local v12, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v13, 0x0

    .line 488
    .local v13, "$i$f$fastForEach":I
    nop

    .line 489
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_8

    move v15, v3

    :goto_3
    move/from16 v16, v15

    .local v16, "index$iv":I
    add-int/2addr v15, v4

    .line 490
    move/from16 v3, v16

    .end local v16    # "index$iv":I
    .local v3, "index$iv":I
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 491
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v18, v16

    check-cast v18, Landroidx/compose/ui/text/AnnotatedString$Range;

    .local v18, "spanStyle":Landroidx/compose/ui/text/AnnotatedString$Range;
    const/16 v19, 0x0

    .line 318
    .local v19, "$i$a$-fastForEach-SpannableExtensions_androidKt$flattenFontStylesAndApply$2":I
    nop

    .line 319
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v0

    invoke-static {v7, v10, v4, v0}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 321
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    invoke-static {v11, v0}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->merge(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v0

    move-object v11, v0

    .line 323
    :cond_6
    nop

    .line 489
    .end local v16    # "item$iv":Ljava/lang/Object;
    .end local v18    # "spanStyle":Landroidx/compose/ui/text/AnnotatedString$Range;
    .end local v19    # "$i$a$-fastForEach-SpannableExtensions_androidKt$flattenFontStylesAndApply$2":I
    if-le v15, v14, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_3

    .line 493
    .end local v3    # "index$iv":I
    :cond_8
    :goto_4
    nop

    .line 325
    .end local v12    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v13    # "$i$f$fastForEach":I
    if-nez v11, :cond_9

    goto :goto_5

    :cond_9
    move-object v0, v11

    .local v0, "it":Landroidx/compose/ui/text/SpanStyle;
    const/4 v3, 0x0

    .line 326
    .local v3, "$i$a$-let-SpannableExtensions_androidKt$flattenFontStylesAndApply$3":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v0, v4, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    nop

    .line 325
    .end local v0    # "it":Landroidx/compose/ui/text/SpanStyle;
    .end local v3    # "$i$a$-let-SpannableExtensions_androidKt$flattenFontStylesAndApply$3":I
    nop

    .line 329
    :goto_5
    move v7, v10

    move-object/from16 v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .end local v11    # "mergedSpanStyle":Ljava/lang/Object;
    goto :goto_2

    .line 331
    .end local v10    # "transitionOffset":I
    :cond_a
    return-void
.end method

.method private static final hasFontAttributes(Landroidx/compose/ui/text/TextStyle;)Z
    .locals 1
    .param p0, "$this$hasFontAttributes"    # Landroidx/compose/ui/text/TextStyle;

    .line 454
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->toSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->hasFontAttributes(Landroidx/compose/ui/text/SpanStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static final merge(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;
    .locals 1
    .param p0, "$this$merge"    # Landroidx/compose/ui/text/SpanStyle;
    .param p1, "spanStyle"    # Landroidx/compose/ui/text/SpanStyle;

    .line 461
    if-nez p0, :cond_0

    return-object p1

    .line 462
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v0

    return-object v0
.end method

.method public static final setBackground-RPmYEkk(Landroid/text/Spannable;JII)V
    .locals 3
    .param p0, "$this$setBackground"    # Landroid/text/Spannable;
    .param p1, "color"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    const-string v0, "$this$setBackground"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    .line 494
    .local v0, "$i$f$isSpecified-8_81llA":I
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 364
    .end local v0    # "$i$f$isSpecified-8_81llA":I
    :goto_0
    if-eqz v1, :cond_1

    .line 365
    nop

    .line 366
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 367
    nop

    .line 368
    nop

    .line 365
    invoke-static {p0, v0, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 371
    :cond_1
    return-void
.end method

.method private static final setBaselineShift-0ocSgnM(Landroid/text/Spannable;Landroidx/compose/ui/text/style/BaselineShift;II)V
    .locals 3
    .param p0, "$this$setBaselineShift"    # Landroid/text/Spannable;
    .param p1, "baselineShift"    # Landroidx/compose/ui/text/style/BaselineShift;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 444
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    move-result v0

    .local v0, "it":F
    const/4 v1, 0x0

    .line 445
    .local v1, "$i$a$-let-SpannableExtensions_androidKt$setBaselineShift$1":I
    new-instance v2, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;-><init>(F)V

    invoke-static {p0, v2, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 446
    nop

    .line 444
    .end local v0    # "it":F
    .end local v1    # "$i$a$-let-SpannableExtensions_androidKt$setBaselineShift$1":I
    nop

    .line 447
    :goto_0
    return-void
.end method

.method public static final setColor-RPmYEkk(Landroid/text/Spannable;JII)V
    .locals 3
    .param p0, "$this$setColor"    # Landroid/text/Spannable;
    .param p1, "color"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    const-string v0, "$this$setColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x0

    .line 495
    .local v0, "$i$f$isSpecified-8_81llA":I
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 437
    .end local v0    # "$i$f$isSpecified-8_81llA":I
    :goto_0
    if-eqz v1, :cond_1

    .line 438
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {p0, v0, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 440
    :cond_1
    return-void
.end method

.method private static final setFontAttributes(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/text/platform/TypefaceAdapter;)V
    .locals 23
    .param p0, "$this$setFontAttributes"    # Landroid/text/Spannable;
    .param p1, "contextTextStyle"    # Landroidx/compose/ui/text/TextStyle;
    .param p2, "spanStyles"    # Ljava/util/List;
    .param p3, "typefaceAdapter"    # Landroidx/compose/ui/text/platform/TypefaceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Landroidx/compose/ui/text/platform/TypefaceAdapter;",
            ")V"
        }
    .end annotation

    .line 237
    move-object/from16 v0, p2

    .local v0, "$this$fastFilter$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 471
    .local v1, "$i$f$fastFilter":I
    nop

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    .local v2, "target$iv":Ljava/util/ArrayList;
    move-object v3, v0

    .local v3, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 474
    .local v4, "$i$f$fastForEach":I
    nop

    .line 475
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_4

    const/4 v6, 0x0

    move v7, v6

    :cond_0
    move v8, v7

    .local v8, "index$iv$iv":I
    const/4 v9, 0x1

    add-int/2addr v7, v9

    .line 476
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 477
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 478
    .local v12, "$i$a$-fastForEach-TempListUtilsKt$fastFilter$2$iv":I
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/text/AnnotatedString$Range;

    .local v13, "it":Landroidx/compose/ui/text/AnnotatedString$Range;
    const/4 v14, 0x0

    .line 238
    .local v14, "$i$a$-fastFilter-SpannableExtensions_androidKt$setFontAttributes$fontRelatedSpanStyles$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/SpanStyle;

    invoke-static {v15}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->hasFontAttributes(Landroidx/compose/ui/text/SpanStyle;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v13}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/SpanStyle;

    invoke-virtual {v15}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v15

    if-eqz v15, :cond_1

    goto :goto_0

    :cond_1
    move v9, v6

    .end local v13    # "it":Landroidx/compose/ui/text/AnnotatedString$Range;
    .end local v14    # "$i$a$-fastFilter-SpannableExtensions_androidKt$setFontAttributes$fontRelatedSpanStyles$1":I
    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_3
    nop

    .line 475
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-fastForEach-TempListUtilsKt$fastFilter$2$iv":I
    if-le v7, v5, :cond_0

    .line 480
    .end local v8    # "index$iv$iv":I
    :cond_4
    nop

    .line 481
    .end local v3    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 237
    .end local v0    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastFilter":I
    .end local v2    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 243
    .local v0, "fontRelatedSpanStyles":Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->hasFontAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v10

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v8

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v9

    .line 244
    new-instance v1, Landroidx/compose/ui/text/SpanStyle;

    move-object v2, v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    .line 246
    nop

    .line 247
    nop

    .line 248
    nop

    .line 245
    nop

    .line 244
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3fc3

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 251
    :cond_5
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    .line 243
    :goto_1
    nop

    .line 255
    .local v1, "contextFontSpanStyle":Landroidx/compose/ui/text/SpanStyle;
    nop

    .line 256
    nop

    .line 257
    new-instance v2, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;-><init>(Landroid/text/Spannable;Landroidx/compose/ui/text/platform/TypefaceAdapter;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 254
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->flattenFontStylesAndApply(Landroidx/compose/ui/text/SpanStyle;Ljava/util/List;Lkotlin/jvm/functions/Function3;)V

    .line 272
    return-void
.end method

.method private static final setFontFeatureSettings(Landroid/text/Spannable;Ljava/lang/String;II)V
    .locals 3
    .param p0, "$this$setFontFeatureSettings"    # Landroid/text/Spannable;
    .param p1, "fontFeatureSettings"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 402
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 403
    .local v1, "$i$a$-let-SpannableExtensions_androidKt$setFontFeatureSettings$1":I
    new-instance v2, Landroidx/compose/ui/text/android/style/FontFeatureSpan;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/android/style/FontFeatureSpan;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 404
    nop

    .line 402
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-SpannableExtensions_androidKt$setFontFeatureSettings$1":I
    nop

    .line 405
    :goto_0
    return-void
.end method

.method public static final setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V
    .locals 5
    .param p0, "$this$setFontSize"    # Landroid/text/Spannable;
    .param p1, "fontSize"    # J
    .param p3, "density"    # Landroidx/compose/ui/unit/Density;
    .param p4, "start"    # I
    .param p5, "end"    # I

    const-string v0, "$this$setFontSize"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    .line 410
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p3

    .local v0, "$this$setFontSize_KmRG4DE_u24lambda_u2d14":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 411
    .local v1, "$i$a$-with-SpannableExtensions_androidKt$setFontSize$1":I
    nop

    .line 412
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 413
    nop

    .line 414
    nop

    .line 411
    invoke-static {p0, v2, p4, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 416
    nop

    .line 410
    .end local v0    # "$this$setFontSize_KmRG4DE_u24lambda_u2d14":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-SpannableExtensions_androidKt$setFontSize$1":I
    goto :goto_0

    .line 417
    :cond_0
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {p0, v0, p4, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 423
    :cond_1
    :goto_0
    return-void
.end method

.method private static final setGeometricTransform(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextGeometricTransform;II)V
    .locals 4
    .param p0, "$this$setGeometricTransform"    # Landroid/text/Spannable;
    .param p1, "textGeometricTransform"    # Landroidx/compose/ui/text/style/TextGeometricTransform;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 394
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .local v0, "it":Landroidx/compose/ui/text/style/TextGeometricTransform;
    const/4 v1, 0x0

    .line 395
    .local v1, "$i$a$-let-SpannableExtensions_androidKt$setGeometricTransform$1":I
    new-instance v2, Landroid/text/style/ScaleXSpan;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getScaleX()F

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    invoke-static {p0, v2, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 396
    new-instance v2, Landroidx/compose/ui/text/android/style/SkewXSpan;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getSkewX()F

    move-result v3

    invoke-direct {v2, v3}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(F)V

    invoke-static {p0, v2, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 397
    nop

    .line 394
    .end local v0    # "it":Landroidx/compose/ui/text/style/TextGeometricTransform;
    .end local v1    # "$i$a$-let-SpannableExtensions_androidKt$setGeometricTransform$1":I
    nop

    .line 398
    :goto_0
    return-void
.end method

.method public static final setLineHeight-r9BaKPg(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;)V
    .locals 6
    .param p0, "$this$setLineHeight"    # Landroid/text/Spannable;
    .param p1, "lineHeight"    # J
    .param p3, "contextFontSize"    # F
    .param p4, "density"    # Landroidx/compose/ui/unit/Density;

    const-string v0, "$this$setLineHeight"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    .line 119
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v0, p4

    .local v0, "$this$setLineHeight_r9BaKPg_u24lambda_u2d2":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 120
    .local v1, "$i$a$-with-SpannableExtensions_androidKt$setLineHeight$1":I
    nop

    .line 121
    new-instance v2, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    invoke-direct {v2, v4}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(I)V

    .line 122
    nop

    .line 123
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    .line 120
    invoke-static {p0, v2, v3, v4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 125
    nop

    .line 119
    .end local v0    # "$this$setLineHeight_r9BaKPg_u24lambda_u2d2":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-SpannableExtensions_androidKt$setLineHeight$1":I
    goto :goto_0

    .line 126
    :cond_0
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    nop

    .line 128
    new-instance v0, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v1

    mul-float/2addr v1, p3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(I)V

    .line 129
    nop

    .line 130
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 127
    invoke-static {p0, v0, v3, v1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 136
    :cond_1
    :goto_0
    return-void
.end method

.method public static final setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V
    .locals 5
    .param p0, "$this$setLocaleList"    # Landroid/text/Spannable;
    .param p1, "localeList"    # Landroidx/compose/ui/text/intl/LocaleList;
    .param p2, "start"    # I
    .param p3, "end"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    move-object v0, p1

    .local v0, "it":Landroidx/compose/ui/text/intl/LocaleList;
    const/4 v1, 0x0

    .line 375
    .local v1, "$i$a$-let-SpannableExtensions_androidKt$setLocaleList$1":I
    nop

    .line 376
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 377
    sget-object v2, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->localeSpan(Landroidx/compose/ui/text/intl/LocaleList;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 379
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/intl/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/compose/ui/text/intl/Locale;->Companion:Landroidx/compose/ui/text/intl/Locale$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/intl/Locale$Companion;->getCurrent()Landroidx/compose/ui/text/intl/Locale;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/intl/LocaleList;->get(I)Landroidx/compose/ui/text/intl/Locale;

    move-result-object v2

    .line 380
    .local v2, "locale":Landroidx/compose/ui/text/intl/Locale;
    :goto_0
    new-instance v3, Landroid/text/style/LocaleSpan;

    invoke-static {v2}, Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;->toJavaLocale(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    move-object v2, v3

    .line 382
    .end local v2    # "locale":Landroidx/compose/ui/text/intl/Locale;
    :goto_1
    nop

    .line 383
    nop

    .line 375
    invoke-static {p0, v2, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 385
    nop

    .line 374
    .end local v0    # "it":Landroidx/compose/ui/text/intl/LocaleList;
    .end local v1    # "$i$a$-let-SpannableExtensions_androidKt$setLocaleList$1":I
    nop

    .line 386
    :goto_2
    return-void
.end method

.method private static final setShadow(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Shadow;II)V
    .locals 7
    .param p0, "$this$setShadow"    # Landroid/text/Spannable;
    .param p1, "shadow"    # Landroidx/compose/ui/graphics/Shadow;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 354
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .local v0, "it":Landroidx/compose/ui/graphics/Shadow;
    const/4 v1, 0x0

    .line 355
    .local v1, "$i$a$-let-SpannableExtensions_androidKt$setShadow$1":I
    nop

    .line 356
    new-instance v2, Landroidx/compose/ui/text/android/style/ShadowSpan;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow;->getColor-0d7_KjU()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow;->getBlurRadius()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/compose/ui/text/android/style/ShadowSpan;-><init>(IFFF)V

    .line 357
    nop

    .line 358
    nop

    .line 355
    invoke-static {p0, v2, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 360
    nop

    .line 354
    .end local v0    # "it":Landroidx/compose/ui/graphics/Shadow;
    .end local v1    # "$i$a$-let-SpannableExtensions_androidKt$setShadow$1":I
    nop

    .line 361
    :goto_0
    return-void
.end method

.method public static final setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1
    .param p0, "$this$setSpan"    # Landroid/text/Spannable;
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "span"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const/16 v0, 0x21

    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 77
    return-void
.end method

.method private static final setSpanStyle(Landroid/text/Spannable;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/unit/Density;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "$this$setSpanStyle"    # Landroid/text/Spannable;
    .param p1, "spanStyleRange"    # Landroidx/compose/ui/text/AnnotatedString$Range;
    .param p2, "density"    # Landroidx/compose/ui/unit/Density;
    .param p3, "lowPrioritySpans"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/ui/text/platform/extensions/SpanRange;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v6

    .line 177
    .local v6, "start":I
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v7

    .line 178
    .local v7, "end":I
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/compose/ui/text/SpanStyle;

    .line 182
    .local v8, "style":Landroidx/compose/ui/text/SpanStyle;
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v0

    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setBaselineShift-0ocSgnM(Landroid/text/Spannable;Landroidx/compose/ui/text/style/BaselineShift;II)V

    .line 184
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getColor-0d7_KjU()J

    move-result-wide v0

    invoke-static {p0, v0, v1, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 186
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setTextDecoration(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextDecoration;II)V

    .line 188
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p2

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 190
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setFontFeatureSettings(Landroid/text/Spannable;Ljava/lang/String;II)V

    .line 192
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object v0

    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setGeometricTransform(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextGeometricTransform;II)V

    .line 194
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v0

    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 196
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getBackground-0d7_KjU()J

    move-result-wide v0

    invoke-static {p0, v0, v1, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setBackground-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 198
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    move-result-object v0

    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setShadow(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Shadow;II)V

    .line 200
    invoke-virtual {v8}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->createLetterSpacingSpan-eAf_CNQ(JLandroidx/compose/ui/unit/Density;)Landroid/text/style/MetricAffectingSpan;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .local v0, "it":Landroid/text/style/MetricAffectingSpan;
    :cond_0
    const/4 v1, 0x0

    .line 201
    .local v1, "$i$a$-let-SpannableExtensions_androidKt$setSpanStyle$1":I
    nop

    .line 202
    new-instance v2, Landroidx/compose/ui/text/platform/extensions/SpanRange;

    invoke-direct {v2, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpanRange;-><init>(Ljava/lang/Object;II)V

    .line 201
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v0    # "it":Landroid/text/style/MetricAffectingSpan;
    .end local v1    # "$i$a$-let-SpannableExtensions_androidKt$setSpanStyle$1":I
    nop

    .line 205
    :goto_0
    return-void
.end method

.method public static final setSpanStyles(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/platform/TypefaceAdapter;)V
    .locals 16
    .param p0, "$this$setSpanStyles"    # Landroid/text/Spannable;
    .param p1, "contextTextStyle"    # Landroidx/compose/ui/text/TextStyle;
    .param p2, "spanStyles"    # Ljava/util/List;
    .param p3, "density"    # Landroidx/compose/ui/unit/Density;
    .param p4, "typefaceAdapter"    # Landroidx/compose/ui/text/platform/TypefaceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/text/platform/TypefaceAdapter;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "<this>"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "contextTextStyle"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "spanStyles"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "density"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "typefaceAdapter"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setFontAttributes(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/text/platform/TypefaceAdapter;)V

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v5, "lowPrioritySpans":Ljava/util/ArrayList;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    if-ltz v6, :cond_3

    move v8, v7

    :cond_0
    move v9, v8

    .local v9, "i":I
    add-int/lit8 v8, v8, 0x1

    .line 153
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 154
    .local v10, "spanStyleRange":Landroidx/compose/ui/text/AnnotatedString$Range;
    invoke-virtual {v10}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v11

    .line 155
    .local v11, "start":I
    invoke-virtual {v10}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v12

    .line 157
    .local v12, "end":I
    if-ltz v11, :cond_2

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v13

    if-ge v11, v13, :cond_2

    if-le v12, v11, :cond_2

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v13

    if-le v12, v13, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    nop

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 159
    invoke-static {v0, v10, v3, v5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpanStyle(Landroid/text/Spannable;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/unit/Density;Ljava/util/ArrayList;)V

    .line 152
    .end local v10    # "spanStyleRange":Landroidx/compose/ui/text/AnnotatedString$Range;
    .end local v11    # "start":I
    .end local v12    # "end":I
    :cond_2
    :goto_0
    if-le v8, v6, :cond_0

    .line 166
    .end local v9    # "i":I
    :cond_3
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 465
    .local v8, "$i$f$fastForEach":I
    nop

    .line 466
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_5

    :goto_1
    move v10, v7

    .local v10, "index$iv":I
    add-int/lit8 v7, v7, 0x1

    .line 467
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 468
    .local v11, "item$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/text/platform/extensions/SpanRange;

    .local v12, "$dstr$span$start$end":Landroidx/compose/ui/text/platform/extensions/SpanRange;
    const/4 v13, 0x0

    .line 166
    .local v13, "$i$a$-fastForEach-SpannableExtensions_androidKt$setSpanStyles$1":I
    invoke-virtual {v12}, Landroidx/compose/ui/text/platform/extensions/SpanRange;->component1()Ljava/lang/Object;

    move-result-object v14

    .local v14, "span":Ljava/lang/Object;
    invoke-virtual {v12}, Landroidx/compose/ui/text/platform/extensions/SpanRange;->component2()I

    move-result v15

    .local v15, "start":I
    invoke-virtual {v12}, Landroidx/compose/ui/text/platform/extensions/SpanRange;->component3()I

    move-result v1

    .line 167
    .local v1, "end":I
    invoke-static {v0, v14, v15, v1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 168
    nop

    .line 466
    .end local v1    # "end":I
    .end local v11    # "item$iv":Ljava/lang/Object;
    .end local v12    # "$dstr$span$start$end":Landroidx/compose/ui/text/platform/extensions/SpanRange;
    .end local v13    # "$i$a$-fastForEach-SpannableExtensions_androidKt$setSpanStyles$1":I
    .end local v14    # "span":Ljava/lang/Object;
    .end local v15    # "start":I
    if-le v7, v9, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v1, p1

    goto :goto_1

    .line 470
    .end local v10    # "index$iv":I
    :cond_5
    :goto_2
    nop

    .line 169
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    return-void
.end method

.method public static final setTextDecoration(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextDecoration;II)V
    .locals 5
    .param p0, "$this$setTextDecoration"    # Landroid/text/Spannable;
    .param p1, "textDecoration"    # Landroidx/compose/ui/text/style/TextDecoration;
    .param p2, "start"    # I
    .param p3, "end"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .local v0, "it":Landroidx/compose/ui/text/style/TextDecoration;
    const/4 v1, 0x0

    .line 428
    .local v1, "$i$a$-let-SpannableExtensions_androidKt$setTextDecoration$1":I
    new-instance v2, Landroidx/compose/ui/text/android/style/TextDecorationSpan;

    .line 429
    sget-object v3, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v3

    .line 430
    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v4

    .line 428
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/text/android/style/TextDecorationSpan;-><init>(ZZ)V

    .line 432
    .local v2, "textDecorationSpan":Landroidx/compose/ui/text/android/style/TextDecorationSpan;
    invoke-static {p0, v2, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 433
    nop

    .line 427
    .end local v0    # "it":Landroidx/compose/ui/text/style/TextDecoration;
    .end local v1    # "$i$a$-let-SpannableExtensions_androidKt$setTextDecoration$1":I
    .end local v2    # "textDecorationSpan":Landroidx/compose/ui/text/android/style/TextDecorationSpan;
    nop

    .line 434
    :goto_0
    return-void
.end method

.method public static final setTextIndent(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextIndent;FLandroidx/compose/ui/unit/Density;)V
    .locals 11
    .param p0, "$this$setTextIndent"    # Landroid/text/Spannable;
    .param p1, "textIndent"    # Landroidx/compose/ui/text/style/TextIndent;
    .param p2, "contextFontSize"    # F
    .param p3, "density"    # Landroidx/compose/ui/unit/Density;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    goto/16 :goto_3

    :cond_1
    move-object v0, p1

    .local v0, "indent":Landroidx/compose/ui/text/style/TextIndent;
    const/4 v1, 0x0

    .line 86
    .local v1, "$i$a$-let-SpannableExtensions_androidKt$setTextIndent$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    move-result-wide v2

    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 88
    :cond_3
    move-object v2, p3

    .local v2, "$this$setTextIndent_u24lambda_u2d1_u24lambda_u2d0":Landroidx/compose/ui/unit/Density;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$a$-with-SpannableExtensions_androidKt$setTextIndent$1$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v5

    .line 90
    sget-object v7, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v5

    goto :goto_1

    .line 91
    :cond_4
    sget-object v7, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getFirstLine-XSAIIZE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v5

    mul-float/2addr v5, p2

    goto :goto_1

    .line 92
    :cond_5
    move v5, v8

    .line 89
    :goto_1
    nop

    .line 94
    .local v5, "firstLine":F
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v6

    .line 95
    sget-object v9, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v8

    goto :goto_2

    .line 96
    :cond_6
    sget-object v9, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextIndent;->getRestLine-XSAIIZE()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v6

    mul-float v8, v6, p2

    goto :goto_2

    .line 97
    :cond_7
    nop

    .line 94
    :goto_2
    move v6, v8

    .line 99
    .local v6, "restLine":F
    nop

    .line 100
    new-instance v7, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 101
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-int v8, v8

    .line 102
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-int v9, v9

    .line 100
    invoke-direct {v7, v8, v9}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 104
    nop

    .line 105
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v8

    .line 99
    invoke-static {p0, v7, v4, v8}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 107
    nop

    .line 88
    .end local v2    # "$this$setTextIndent_u24lambda_u2d1_u24lambda_u2d0":Landroidx/compose/ui/unit/Density;
    .end local v3    # "$i$a$-with-SpannableExtensions_androidKt$setTextIndent$1$1":I
    .end local v5    # "firstLine":F
    .end local v6    # "restLine":F
    nop

    .line 108
    goto/16 :goto_0

    .line 109
    .end local v0    # "indent":Landroidx/compose/ui/text/style/TextIndent;
    .end local v1    # "$i$a$-let-SpannableExtensions_androidKt$setTextIndent$1":I
    :goto_3
    return-void
.end method
