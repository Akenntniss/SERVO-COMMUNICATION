.class public final Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;
.super Ljava/lang/Object;
.source "LayoutIntrinsics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutIntrinsics.kt\nandroidx/compose/ui/text/android/LayoutIntrinsicsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1849#2,2:143\n*S KotlinDebug\n*F\n+ 1 LayoutIntrinsics.kt\nandroidx/compose/ui/text/android/LayoutIntrinsicsKt\n*L\n112#1:143,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "minIntrinsicWidth",
        "",
        "text",
        "",
        "paint",
        "Landroid/text/TextPaint;",
        "shouldIncreaseMaxIntrinsic",
        "",
        "desiredWidth",
        "charSequence",
        "textPaint",
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
.method public static final synthetic access$shouldIncreaseMaxIntrinsic(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z
    .locals 1
    .param p0, "desiredWidth"    # F
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "textPaint"    # Landroid/text/TextPaint;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;->shouldIncreaseMaxIntrinsic(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z

    move-result v0

    return v0
.end method

.method public static final minIntrinsicWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 17
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "text"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "paint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v2

    .line 80
    .local v2, "iterator":Ljava/text/BreakIterator;
    new-instance v3, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    const/4 v4, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    check-cast v3, Ljava/text/CharacterIterator;

    invoke-virtual {v2, v3}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 83
    const/16 v3, 0xa

    .line 85
    .local v3, "heapSize":I
    new-instance v4, Ljava/util/PriorityQueue;

    .line 86
    nop

    .line 87
    sget-object v5, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt$minIntrinsicWidth$longestWordCandidates$1;->INSTANCE:Landroidx/compose/ui/text/android/LayoutIntrinsicsKt$minIntrinsicWidth$longestWordCandidates$1;

    check-cast v5, Ljava/util/Comparator;

    .line 85
    invoke-direct {v4, v3, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 92
    .local v4, "longestWordCandidates":Ljava/util/PriorityQueue;
    const/4 v5, 0x0

    .line 93
    .local v5, "start":I
    const/4 v6, 0x0

    .local v6, "end":I
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v6

    .line 94
    :goto_0
    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 95
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    move-result v7

    if-ge v7, v3, :cond_0

    .line 96
    new-instance v7, Lkotlin/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    if-nez v7, :cond_1

    goto :goto_1

    .local v7, "minPair":Lkotlin/Pair;
    :cond_1
    const/4 v8, 0x0

    .line 99
    .local v8, "$i$a$-let-LayoutIntrinsicsKt$minIntrinsicWidth$1":I
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v10, v6, v5

    if-ge v9, v10, :cond_2

    .line 100
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 101
    new-instance v9, Lkotlin/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    nop

    .line 98
    .end local v7    # "minPair":Lkotlin/Pair;
    .end local v8    # "$i$a$-let-LayoutIntrinsicsKt$minIntrinsicWidth$1":I
    nop

    .line 106
    :goto_1
    move v5, v6

    .line 107
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v6

    goto :goto_0

    .line 110
    :cond_3
    const/4 v7, 0x0

    .line 112
    .local v7, "minWidth":F
    move-object v8, v4

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 143
    .local v9, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lkotlin/Pair;

    .local v12, "$dstr$start$end":Lkotlin/Pair;
    const/4 v13, 0x0

    .line 112
    .local v13, "$i$a$-forEach-LayoutIntrinsicsKt$minIntrinsicWidth$2":I
    invoke-virtual {v12}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    .local v14, "start":I
    invoke-virtual {v12}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .line 113
    .local v15, "end":I
    move-object/from16 v16, v2

    .end local v2    # "iterator":Ljava/text/BreakIterator;
    .local v16, "iterator":Ljava/text/BreakIterator;
    invoke-static {v0, v14, v15, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v2

    .line 114
    .local v2, "width":F
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 115
    move-object/from16 v2, v16

    .end local v2    # "width":F
    .end local v11    # "element$iv":Ljava/lang/Object;
    .end local v12    # "$dstr$start$end":Lkotlin/Pair;
    .end local v13    # "$i$a$-forEach-LayoutIntrinsicsKt$minIntrinsicWidth$2":I
    .end local v14    # "start":I
    .end local v15    # "end":I
    goto :goto_2

    .line 144
    .end local v16    # "iterator":Ljava/text/BreakIterator;
    .local v2, "iterator":Ljava/text/BreakIterator;
    :cond_4
    nop

    .line 117
    .end local v8    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    return v7
.end method

.method private static final shouldIncreaseMaxIntrinsic(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z
    .locals 4
    .param p0, "desiredWidth"    # F
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "textPaint"    # Landroid/text/TextPaint;

    .line 136
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 137
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {p2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v1

    cmpg-float v0, v1, v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 139
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/android/SpannedExtensionsKt;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/android/SpannedExtensionsKt;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    goto :goto_2

    :cond_3
    move v2, v3

    .line 136
    :goto_2
    return v2
.end method
