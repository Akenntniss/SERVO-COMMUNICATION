.class public Landroidx/compose/ui/text/font/FontMatcher;
.super Ljava/lang/Object;
.source "FontMatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontMatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontMatcher.kt\nandroidx/compose/ui/text/font/FontMatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n*L\n1#1,114:1\n764#2:115\n855#2,2:116\n764#2:118\n855#2,2:119\n764#2:121\n855#2,2:122\n764#2:137\n855#2,2:138\n764#2:153\n855#2,2:154\n764#2:169\n855#2,2:170\n764#2:185\n855#2,2:186\n764#2:201\n855#2,2:202\n764#2:217\n855#2,2:218\n113#3,13:124\n113#3,13:172\n113#3,13:204\n62#4,13:140\n62#4,13:156\n62#4,13:188\n62#4,13:220\n*S KotlinDebug\n*F\n+ 1 FontMatcher.kt\nandroidx/compose/ui/text/font/FontMatcher\n*L\n48#1:115\n48#1:116,2\n56#1:118\n56#1:119,2\n64#1:121\n64#1:122,2\n65#1:137\n65#1:138,2\n70#1:153\n70#1:154,2\n71#1:169\n71#1:170,2\n78#1:185\n78#1:186,2\n80#1:201\n80#1:202,2\n81#1:217\n81#1:218,2\n64#1:124,13\n71#1:172,13\n80#1:204,13\n65#1:140,13\n70#1:156,13\n79#1:188,13\n81#1:220,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000eJ3\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/FontMatcher;",
        "",
        "()V",
        "matchFont",
        "Landroidx/compose/ui/text/font/Font;",
        "fontFamily",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "fontWeight",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "fontStyle",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "matchFont-RetOiIg",
        "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;",
        "Landroidx/compose/ui/text/font/FontListFontFamily;",
        "(Landroidx/compose/ui/text/font/FontListFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;",
        "fontList",
        "",
        "(Ljava/lang/Iterable;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchFont-RetOiIg(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;
    .locals 2
    .param p1, "fontFamily"    # Landroidx/compose/ui/text/font/FontFamily;
    .param p2, "fontWeight"    # Landroidx/compose/ui/text/font/FontWeight;
    .param p3, "fontStyle"    # I

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    instance-of v0, p1, Landroidx/compose/ui/text/font/FontListFontFamily;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-virtual {p0, v0, p2, p3}, Landroidx/compose/ui/text/font/FontMatcher;->matchFont-RetOiIg(Landroidx/compose/ui/text/font/FontListFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 96
    nop

    .line 95
    const-string v1, "Only FontFamily instances that presents a list of Fonts can be used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public matchFont-RetOiIg(Landroidx/compose/ui/text/font/FontListFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;
    .locals 1
    .param p1, "fontFamily"    # Landroidx/compose/ui/text/font/FontListFontFamily;
    .param p2, "fontWeight"    # Landroidx/compose/ui/text/font/FontWeight;
    .param p3, "fontStyle"    # I

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontListFontFamily;->getFonts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v0, p2, p3}, Landroidx/compose/ui/text/font/FontMatcher;->matchFont-RetOiIg(Ljava/lang/Iterable;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;

    move-result-object v0

    return-object v0
.end method

.method public matchFont-RetOiIg(Ljava/lang/Iterable;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;
    .locals 18
    .param p1, "fontList"    # Ljava/lang/Iterable;
    .param p2, "fontWeight"    # Landroidx/compose/ui/text/font/FontWeight;
    .param p3, "fontStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "I)",
            "Landroidx/compose/ui/text/font/Font;"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v1, p3

    const-string v2, "fontList"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fontWeight"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object/from16 v2, p1

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 115
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 116
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/text/font/Font;

    .local v12, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v13, 0x0

    .line 48
    .local v13, "$i$a$-filter-FontMatcher$matchFont$1":I
    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v14

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v14

    invoke-static {v14, v1}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v14

    if-eqz v14, :cond_1

    move v10, v11

    .end local v12    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v13    # "$i$a$-filter-FontMatcher$matchFont$1":I
    :cond_1
    if-eqz v10, :cond_0

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 115
    nop

    .line 48
    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    move-object v2, v5

    .local v2, "it":Ljava/util/List;
    const/4 v4, 0x0

    .line 50
    .local v4, "$i$a$-let-FontMatcher$matchFont$2":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v11

    if-eqz v5, :cond_3

    .line 51
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    return-object v5

    .line 53
    :cond_3
    nop

    .end local v2    # "it":Ljava/util/List;
    .end local v4    # "$i$a$-let-FontMatcher$matchFont$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    nop

    .line 56
    move-object/from16 v2, p1

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 118
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .restart local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 119
    .restart local v7    # "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "element$iv$iv":Ljava/lang/Object;
    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/text/font/Font;

    .restart local v12    # "it":Landroidx/compose/ui/text/font/Font;
    const/4 v13, 0x0

    .line 56
    .local v13, "$i$a$-filter-FontMatcher$matchFont$fonts$1":I
    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v14

    invoke-static {v14, v1}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v12

    .end local v12    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v13    # "$i$a$-filter-FontMatcher$matchFont$fonts$1":I
    if-eqz v12, :cond_4

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 118
    nop

    .line 56
    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    move-object v2, v5

    .local v2, "it":Ljava/util/List;
    const/4 v4, 0x0

    .line 57
    .local v4, "$i$a$-let-FontMatcher$matchFont$fonts$2":I
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v11

    if-eqz v5, :cond_6

    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    goto :goto_2

    :cond_6
    move-object v5, v3

    .line 56
    .end local v2    # "it":Ljava/util/List;
    .end local v4    # "$i$a$-let-FontMatcher$matchFont$fonts$2":I
    :goto_2
    move-object v2, v5

    .line 60
    .local v2, "fonts":Ljava/lang/Iterable;
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW400()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-gez v4, :cond_15

    .line 64
    move-object v4, v2

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 121
    .local v6, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v4

    .local v8, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 122
    .local v9, "$i$f$filterTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/text/font/Font;

    .local v14, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v15, 0x0

    .line 64
    .local v15, "$i$a$-filter-FontMatcher$matchFont$result$1":I
    invoke-interface {v14}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gtz v5, :cond_8

    move v5, v11

    goto :goto_4

    :cond_8
    move v5, v10

    .end local v14    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v15    # "$i$a$-filter-FontMatcher$matchFont$result$1":I
    :goto_4
    if-eqz v5, :cond_7

    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 123
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    :cond_9
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filterTo":I
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    .line 121
    nop

    .line 64
    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filter":I
    move-object v4, v5

    .local v4, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 124
    .local v5, "$i$f$fastMaxBy":I
    nop

    .line 125
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    goto :goto_5

    .line 126
    :cond_a
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 127
    .local v6, "maxElem$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/font/Font;

    .local v7, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v8, 0x0

    .line 64
    .local v8, "$i$a$-fastMaxBy-FontMatcher$matchFont$result$2":I
    invoke-interface {v7}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .end local v7    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v8    # "$i$a$-fastMaxBy-FontMatcher$matchFont$result$2":I
    check-cast v7, Ljava/lang/Comparable;

    .line 128
    .local v7, "maxValue$iv":Ljava/lang/Comparable;
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    if-gt v11, v8, :cond_d

    move v9, v11

    :cond_b
    move v12, v9

    .local v12, "i$iv":I
    add-int/2addr v9, v11

    .line 129
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 130
    .local v13, "e$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/text/font/Font;

    .restart local v14    # "it":Landroidx/compose/ui/text/font/Font;
    const/4 v15, 0x0

    .line 64
    .local v15, "$i$a$-fastMaxBy-FontMatcher$matchFont$result$2":I
    invoke-interface {v14}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v14

    .end local v14    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v15    # "$i$a$-fastMaxBy-FontMatcher$matchFont$result$2":I
    check-cast v14, Ljava/lang/Comparable;

    .line 131
    .local v14, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v7, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v15

    if-gez v15, :cond_c

    .line 132
    move-object v6, v13

    .line 133
    move-object v7, v14

    .line 128
    .end local v13    # "e$iv":Ljava/lang/Object;
    .end local v14    # "v$iv":Ljava/lang/Comparable;
    :cond_c
    if-ne v12, v8, :cond_b

    .line 136
    .end local v12    # "i$iv":I
    :cond_d
    nop

    .line 64
    .end local v4    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastMaxBy":I
    .end local v6    # "maxElem$iv":Ljava/lang/Object;
    .end local v7    # "maxValue$iv":Ljava/lang/Comparable;
    :goto_5
    check-cast v6, Landroidx/compose/ui/text/font/Font;

    if-nez v6, :cond_3b

    .line 65
    move-object v4, v2

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 137
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 138
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .local v13, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v14, 0x0

    .line 65
    .local v14, "$i$a$-filter-FontMatcher$matchFont$result$3":I
    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v15

    invoke-virtual {v15, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v15

    if-lez v15, :cond_f

    move v13, v11

    goto :goto_7

    :cond_f
    move v13, v10

    .end local v13    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v14    # "$i$a$-filter-FontMatcher$matchFont$result$3":I
    :goto_7
    if-eqz v13, :cond_e

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 139
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_10
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 137
    nop

    .line 65
    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    move-object v4, v6

    .local v4, "$this$fastMinByOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 140
    .local v5, "$i$f$fastMinByOrNull":I
    nop

    .line 141
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v5, 0x0

    goto :goto_8

    .line 142
    :cond_11
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 143
    .local v6, "minElem$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/font/Font;

    .local v7, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v8, 0x0

    .line 65
    .local v8, "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$4":I
    invoke-interface {v7}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .end local v7    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v8    # "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$4":I
    check-cast v7, Ljava/lang/Comparable;

    .line 144
    .local v7, "minValue$iv":Ljava/lang/Comparable;
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    if-gt v11, v8, :cond_14

    move v9, v11

    :cond_12
    move v10, v9

    .local v10, "i$iv":I
    add-int/2addr v9, v11

    .line 145
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 146
    .local v12, "e$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .restart local v13    # "it":Landroidx/compose/ui/text/font/Font;
    const/4 v14, 0x0

    .line 65
    .local v14, "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$4":I
    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    .end local v13    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v14    # "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$4":I
    check-cast v13, Ljava/lang/Comparable;

    .line 147
    .local v13, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v7, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-lez v14, :cond_13

    .line 148
    move-object v6, v12

    .line 149
    move-object v7, v13

    .line 144
    .end local v12    # "e$iv":Ljava/lang/Object;
    .end local v13    # "v$iv":Ljava/lang/Comparable;
    :cond_13
    if-ne v10, v8, :cond_12

    .line 152
    .end local v10    # "i$iv":I
    :cond_14
    move-object v5, v6

    .end local v4    # "$this$fastMinByOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastMinByOrNull":I
    .end local v6    # "minElem$iv":Ljava/lang/Object;
    .end local v7    # "minValue$iv":Ljava/lang/Comparable;
    :goto_8
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/text/font/Font;

    goto/16 :goto_1c

    .line 66
    :cond_15
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v4

    if-lez v4, :cond_24

    .line 70
    move-object v4, v2

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 153
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 154
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_16
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .local v13, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v14, 0x0

    .line 70
    .local v14, "$i$a$-filter-FontMatcher$matchFont$result$5":I
    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v15

    invoke-virtual {v15, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v15

    if-ltz v15, :cond_17

    move v13, v11

    goto :goto_a

    :cond_17
    move v13, v10

    .end local v13    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v14    # "$i$a$-filter-FontMatcher$matchFont$result$5":I
    :goto_a
    if-eqz v13, :cond_16

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 155
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_18
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 153
    nop

    .line 70
    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    move-object v4, v6

    .local v4, "$this$fastMinByOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 156
    .local v5, "$i$f$fastMinByOrNull":I
    nop

    .line 157
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    goto :goto_b

    .line 158
    :cond_19
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 159
    .local v6, "minElem$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/font/Font;

    .local v7, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v8, 0x0

    .line 70
    .local v8, "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$6":I
    invoke-interface {v7}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .end local v7    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v8    # "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$6":I
    check-cast v7, Ljava/lang/Comparable;

    .line 160
    .local v7, "minValue$iv":Ljava/lang/Comparable;
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    if-gt v11, v8, :cond_1c

    move v9, v11

    :cond_1a
    move v12, v9

    .local v12, "i$iv":I
    add-int/2addr v9, v11

    .line 161
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 162
    .local v13, "e$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/text/font/Font;

    .local v14, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v15, 0x0

    .line 70
    .local v15, "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$6":I
    invoke-interface {v14}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v14

    .end local v14    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v15    # "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$6":I
    check-cast v14, Ljava/lang/Comparable;

    .line 163
    .local v14, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v7, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v15

    if-lez v15, :cond_1b

    .line 164
    move-object v6, v13

    .line 165
    move-object v7, v14

    .line 160
    .end local v13    # "e$iv":Ljava/lang/Object;
    .end local v14    # "v$iv":Ljava/lang/Comparable;
    :cond_1b
    if-ne v12, v8, :cond_1a

    .line 168
    .end local v12    # "i$iv":I
    :cond_1c
    nop

    .line 70
    .end local v4    # "$this$fastMinByOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastMinByOrNull":I
    .end local v6    # "minElem$iv":Ljava/lang/Object;
    .end local v7    # "minValue$iv":Ljava/lang/Comparable;
    :goto_b
    check-cast v6, Landroidx/compose/ui/text/font/Font;

    if-nez v6, :cond_3b

    .line 71
    move-object v4, v2

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 169
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 170
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1d
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .local v13, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v14, 0x0

    .line 71
    .local v14, "$i$a$-filter-FontMatcher$matchFont$result$7":I
    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v15

    invoke-virtual {v15, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v15

    if-gez v15, :cond_1e

    move v13, v11

    goto :goto_d

    :cond_1e
    move v13, v10

    .end local v13    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v14    # "$i$a$-filter-FontMatcher$matchFont$result$7":I
    :goto_d
    if-eqz v13, :cond_1d

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 171
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_1f
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 169
    nop

    .line 71
    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    move-object v4, v6

    .local v4, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 172
    .local v5, "$i$f$fastMaxBy":I
    nop

    .line 173
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v5, 0x0

    goto :goto_e

    .line 174
    :cond_20
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 175
    .local v6, "maxElem$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/font/Font;

    .local v7, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v8, 0x0

    .line 71
    .local v8, "$i$a$-fastMaxBy-FontMatcher$matchFont$result$8":I
    invoke-interface {v7}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .end local v7    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v8    # "$i$a$-fastMaxBy-FontMatcher$matchFont$result$8":I
    check-cast v7, Ljava/lang/Comparable;

    .line 176
    .local v7, "maxValue$iv":Ljava/lang/Comparable;
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    if-gt v11, v8, :cond_23

    move v9, v11

    :cond_21
    move v10, v9

    .restart local v10    # "i$iv":I
    add-int/2addr v9, v11

    .line 177
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 178
    .local v12, "e$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .restart local v13    # "it":Landroidx/compose/ui/text/font/Font;
    const/4 v14, 0x0

    .line 71
    .local v14, "$i$a$-fastMaxBy-FontMatcher$matchFont$result$8":I
    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    .end local v13    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v14    # "$i$a$-fastMaxBy-FontMatcher$matchFont$result$8":I
    check-cast v13, Ljava/lang/Comparable;

    .line 179
    .local v13, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v7, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_22

    .line 180
    move-object v6, v12

    .line 181
    move-object v7, v13

    .line 176
    .end local v12    # "e$iv":Ljava/lang/Object;
    .end local v13    # "v$iv":Ljava/lang/Comparable;
    :cond_22
    if-ne v10, v8, :cond_21

    .line 184
    .end local v10    # "i$iv":I
    :cond_23
    move-object v5, v6

    .end local v4    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastMaxBy":I
    .end local v6    # "maxElem$iv":Ljava/lang/Object;
    .end local v7    # "maxValue$iv":Ljava/lang/Comparable;
    :goto_e
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/text/font/Font;

    goto/16 :goto_1c

    .line 78
    :cond_24
    move-object v4, v2

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 185
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 186
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .local v13, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v14, 0x0

    .line 78
    .local v14, "$i$a$-filter-FontMatcher$matchFont$result$9":I
    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v15

    invoke-virtual {v15, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v15

    if-ltz v15, :cond_25

    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v15

    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v11

    if-gtz v11, :cond_25

    const/4 v11, 0x1

    goto :goto_10

    :cond_25
    move v11, v10

    .end local v13    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v14    # "$i$a$-filter-FontMatcher$matchFont$result$9":I
    :goto_10
    if-eqz v11, :cond_26

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_26
    const/4 v11, 0x1

    goto :goto_f

    .line 187
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_27
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 185
    nop

    .line 79
    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    move-object v4, v6

    .local v4, "$this$fastMinByOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 188
    .local v5, "$i$f$fastMinByOrNull":I
    nop

    .line 189
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_28

    const/4 v6, 0x0

    goto :goto_13

    .line 190
    :cond_28
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 191
    .local v6, "minElem$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/font/Font;

    .local v7, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v8, 0x0

    .line 79
    .local v8, "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$10":I
    invoke-interface {v7}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .end local v7    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v8    # "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$10":I
    check-cast v7, Ljava/lang/Comparable;

    .line 192
    .local v7, "minValue$iv":Ljava/lang/Comparable;
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    const/4 v9, 0x1

    if-gt v9, v8, :cond_2b

    move/from16 v17, v9

    :goto_11
    move/from16 v11, v17

    .local v11, "i$iv":I
    add-int/lit8 v12, v17, 0x1

    .line 193
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 194
    .local v9, "e$iv":Ljava/lang/Object;
    move-object v13, v9

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .restart local v13    # "it":Landroidx/compose/ui/text/font/Font;
    const/4 v14, 0x0

    .line 79
    .local v14, "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$10":I
    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    .end local v13    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v14    # "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$10":I
    check-cast v13, Ljava/lang/Comparable;

    .line 195
    .local v13, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v7, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-lez v14, :cond_29

    .line 196
    move-object v6, v9

    .line 197
    move-object v7, v13

    .line 192
    .end local v9    # "e$iv":Ljava/lang/Object;
    .end local v13    # "v$iv":Ljava/lang/Comparable;
    :cond_29
    if-ne v11, v8, :cond_2a

    goto :goto_12

    :cond_2a
    move/from16 v17, v12

    const/4 v9, 0x1

    goto :goto_11

    .line 200
    .end local v11    # "i$iv":I
    :cond_2b
    :goto_12
    nop

    .line 79
    .end local v4    # "$this$fastMinByOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastMinByOrNull":I
    .end local v6    # "minElem$iv":Ljava/lang/Object;
    .end local v7    # "minValue$iv":Ljava/lang/Comparable;
    :goto_13
    check-cast v6, Landroidx/compose/ui/text/font/Font;

    if-nez v6, :cond_3a

    .line 80
    move-object v4, v2

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 201
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 202
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2c
    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/text/font/Font;

    .local v12, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v13, 0x0

    .line 80
    .local v13, "$i$a$-filter-FontMatcher$matchFont$result$11":I
    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v14

    invoke-virtual {v14, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v14

    if-gez v14, :cond_2d

    const/4 v12, 0x1

    goto :goto_15

    :cond_2d
    move v12, v10

    .end local v12    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v13    # "$i$a$-filter-FontMatcher$matchFont$result$11":I
    :goto_15
    if-eqz v12, :cond_2c

    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 203
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_2e
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 201
    nop

    .line 80
    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    move-object v4, v6

    .local v4, "$this$fastMaxBy$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 204
    .local v5, "$i$f$fastMaxBy":I
    nop

    .line 205
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v6, 0x0

    goto :goto_18

    .line 206
    :cond_2f
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 207
    .local v6, "maxElem$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/font/Font;

    .local v7, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v8, 0x0

    .line 80
    .local v8, "$i$a$-fastMaxBy-FontMatcher$matchFont$result$12":I
    invoke-interface {v7}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .end local v7    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v8    # "$i$a$-fastMaxBy-FontMatcher$matchFont$result$12":I
    check-cast v7, Ljava/lang/Comparable;

    .line 208
    .local v7, "maxValue$iv":Ljava/lang/Comparable;
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    const/4 v9, 0x1

    if-gt v9, v8, :cond_32

    move/from16 v17, v9

    :goto_16
    move/from16 v11, v17

    .local v11, "i$iv":I
    add-int/lit8 v12, v17, 0x1

    .line 209
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 210
    .restart local v9    # "e$iv":Ljava/lang/Object;
    move-object v13, v9

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .local v13, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v14, 0x0

    .line 80
    .local v14, "$i$a$-fastMaxBy-FontMatcher$matchFont$result$12":I
    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    .end local v13    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v14    # "$i$a$-fastMaxBy-FontMatcher$matchFont$result$12":I
    check-cast v13, Ljava/lang/Comparable;

    .line 211
    .local v13, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v7, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_30

    .line 212
    move-object v6, v9

    .line 213
    move-object v7, v13

    .line 208
    .end local v9    # "e$iv":Ljava/lang/Object;
    .end local v13    # "v$iv":Ljava/lang/Comparable;
    :cond_30
    if-ne v11, v8, :cond_31

    goto :goto_17

    :cond_31
    move/from16 v17, v12

    const/4 v9, 0x1

    goto :goto_16

    .line 216
    .end local v11    # "i$iv":I
    :cond_32
    :goto_17
    nop

    .line 80
    .end local v4    # "$this$fastMaxBy$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastMaxBy":I
    .end local v6    # "maxElem$iv":Ljava/lang/Object;
    .end local v7    # "maxValue$iv":Ljava/lang/Comparable;
    :goto_18
    check-cast v6, Landroidx/compose/ui/text/font/Font;

    if-nez v6, :cond_3a

    .line 81
    move-object v4, v2

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 217
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_33
    :goto_19
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_35

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/text/font/Font;

    .restart local v12    # "it":Landroidx/compose/ui/text/font/Font;
    const/4 v13, 0x0

    .line 81
    .local v13, "$i$a$-filter-FontMatcher$matchFont$result$13":I
    invoke-interface {v12}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v14

    sget-object v15, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v14

    if-lez v14, :cond_34

    const/4 v12, 0x1

    goto :goto_1a

    :cond_34
    move v12, v10

    .end local v12    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v13    # "$i$a$-filter-FontMatcher$matchFont$result$13":I
    :goto_1a
    if-eqz v12, :cond_33

    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 219
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_35
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 217
    nop

    .line 81
    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    move-object v4, v6

    .local v4, "$this$fastMinByOrNull$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 220
    .local v5, "$i$f$fastMinByOrNull":I
    nop

    .line 221
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_36

    const/4 v5, 0x0

    goto :goto_1b

    .line 222
    :cond_36
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 223
    .local v6, "minElem$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/text/font/Font;

    .local v7, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v8, 0x0

    .line 81
    .local v8, "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$14":I
    invoke-interface {v7}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .end local v7    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v8    # "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$14":I
    check-cast v7, Ljava/lang/Comparable;

    .line 224
    .local v7, "minValue$iv":Ljava/lang/Comparable;
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    const/4 v9, 0x1

    if-gt v9, v8, :cond_39

    move v10, v9

    :cond_37
    move v11, v10

    .local v11, "i$iv":I
    add-int/2addr v10, v9

    .line 225
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 226
    .local v12, "e$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .local v13, "it":Landroidx/compose/ui/text/font/Font;
    const/4 v14, 0x0

    .line 81
    .local v14, "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$14":I
    invoke-interface {v13}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v13

    .end local v13    # "it":Landroidx/compose/ui/text/font/Font;
    .end local v14    # "$i$a$-fastMinByOrNull-FontMatcher$matchFont$result$14":I
    check-cast v13, Ljava/lang/Comparable;

    .line 227
    .local v13, "v$iv":Ljava/lang/Comparable;
    invoke-interface {v7, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-lez v14, :cond_38

    .line 228
    move-object v6, v12

    .line 229
    move-object v7, v13

    .line 224
    .end local v12    # "e$iv":Ljava/lang/Object;
    .end local v13    # "v$iv":Ljava/lang/Comparable;
    :cond_38
    if-ne v11, v8, :cond_37

    .line 232
    .end local v11    # "i$iv":I
    :cond_39
    move-object v5, v6

    .end local v4    # "$this$fastMinByOrNull$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastMinByOrNull":I
    .end local v6    # "minElem$iv":Ljava/lang/Object;
    .end local v7    # "minValue$iv":Ljava/lang/Comparable;
    :goto_1b
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/text/font/Font;

    goto :goto_1c

    .line 78
    :cond_3a
    nop

    .line 60
    :cond_3b
    :goto_1c
    move-object v4, v6

    .line 84
    .local v4, "result":Landroidx/compose/ui/text/font/Font;
    if-eqz v4, :cond_3c

    return-object v4

    :cond_3c
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot match any font"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
