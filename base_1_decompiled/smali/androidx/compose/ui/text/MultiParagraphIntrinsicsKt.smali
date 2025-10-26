.class public final Landroidx/compose/ui/text/MultiParagraphIntrinsicsKt;
.super Ljava/lang/Object;
.source "MultiParagraphIntrinsics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiParagraphIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiParagraphIntrinsics.kt\nandroidx/compose/ui/text/MultiParagraphIntrinsicsKt\n+ 2 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,125:1\n30#2,3:126\n33#2,2:133\n35#2:136\n28#3,4:129\n33#3:135\n98#3,5:137\n33#3:142\n103#3:143\n*S KotlinDebug\n*F\n+ 1 MultiParagraphIntrinsics.kt\nandroidx/compose/ui/text/MultiParagraphIntrinsicsKt\n*L\n114#1:126,3\n114#1:133,2\n114#1:136\n114#1:129,4\n114#1:135\n114#1:137,5\n114#1:142\n114#1:143\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a4\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "getLocalPlaceholders",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/Placeholder;",
        "start",
        "",
        "end",
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
.method public static final synthetic access$getLocalPlaceholders(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .param p0, "$receiver"    # Ljava/util/List;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/MultiParagraphIntrinsicsKt;->getLocalPlaceholders(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final getLocalPlaceholders(Ljava/util/List;II)Ljava/util/List;
    .locals 20
    .param p0, "$this$getLocalPlaceholders"    # Ljava/util/List;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;II)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;"
        }
    .end annotation

    .line 114
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    .local v2, "$this$fastFilter$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 126
    .local v3, "$i$f$fastFilter":I
    nop

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 129
    .local v6, "$i$f$fastForEach":I
    nop

    .line 130
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x1

    if-ltz v7, :cond_2

    const/4 v10, 0x0

    :goto_0
    move v11, v10

    .local v11, "index$iv$iv":I
    add-int/2addr v10, v8

    .line 131
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 132
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 133
    .local v14, "$i$a$-fastForEach-TempListUtilsKt$fastFilter$2$iv":I
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/text/AnnotatedString$Range;

    .local v15, "it":Landroidx/compose/ui/text/AnnotatedString$Range;
    const/16 v16, 0x0

    .line 114
    .local v16, "$i$a$-fastFilter-MultiParagraphIntrinsicsKt$getLocalPlaceholders$1":I
    invoke-virtual {v15}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v9

    invoke-virtual {v15}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v8

    invoke-static {v0, v1, v9, v8}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v8

    .end local v15    # "it":Landroidx/compose/ui/text/AnnotatedString$Range;
    .end local v16    # "$i$a$-fastFilter-MultiParagraphIntrinsicsKt$getLocalPlaceholders$1":I
    if-eqz v8, :cond_0

    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    nop

    .line 130
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-TempListUtilsKt$fastFilter$2$iv":I
    if-le v10, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 135
    .end local v11    # "index$iv$iv":I
    :cond_2
    :goto_1
    nop

    .line 136
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 114
    .end local v2    # "$this$fastFilter$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastFilter":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    nop

    .local v2, "$this$fastMap$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 137
    .local v3, "$i$f$fastMap":I
    nop

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .restart local v4    # "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .restart local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 129
    .restart local v6    # "$i$f$fastForEach":I
    nop

    .line 130
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_6

    const/4 v8, 0x0

    :goto_2
    move v9, v8

    const/4 v10, 0x1

    .local v9, "index$iv$iv":I
    add-int/2addr v8, v10

    .line 131
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 132
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 140
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v14, v4

    check-cast v14, Ljava/util/Collection;

    move-object v15, v12

    check-cast v15, Landroidx/compose/ui/text/AnnotatedString$Range;

    .restart local v15    # "it":Landroidx/compose/ui/text/AnnotatedString$Range;
    const/16 v16, 0x0

    .line 115
    .local v16, "$i$a$-fastMap-MultiParagraphIntrinsicsKt$getLocalPlaceholders$2":I
    invoke-virtual {v15}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v10

    if-gt v0, v10, :cond_3

    invoke-virtual {v15}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v10

    if-gt v10, v1, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    .line 118
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v15}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    move-result v17

    move-object/from16 v18, v2

    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .local v18, "$this$fastMap$iv":Ljava/util/List;
    sub-int v2, v17, v0

    invoke-virtual {v15}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    move-result v17

    move/from16 v19, v3

    .end local v3    # "$i$f$fastMap":I
    .local v19, "$i$f$fastMap":I
    sub-int v3, v17, v0

    invoke-direct {v10, v1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .end local v15    # "it":Landroidx/compose/ui/text/AnnotatedString$Range;
    .end local v16    # "$i$a$-fastMap-MultiParagraphIntrinsicsKt$getLocalPlaceholders$2":I
    invoke-interface {v14, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    nop

    .line 130
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    if-le v8, v7, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto :goto_2

    .line 115
    .end local v18    # "$this$fastMap$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastMap":I
    .restart local v2    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v3    # "$i$f$fastMap":I
    .restart local v11    # "item$iv$iv":Ljava/lang/Object;
    .restart local v12    # "it$iv":Ljava/lang/Object;
    .restart local v13    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    .restart local v15    # "it":Landroidx/compose/ui/text/AnnotatedString$Range;
    .restart local v16    # "$i$a$-fastMap-MultiParagraphIntrinsicsKt$getLocalPlaceholders$2":I
    :cond_5
    move-object/from16 v18, v2

    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v18    # "$this$fastMap$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 116
    .local v1, "$i$a$-require-MultiParagraphIntrinsicsKt$getLocalPlaceholders$2$1":I
    nop

    .line 115
    .end local v1    # "$i$a$-require-MultiParagraphIntrinsicsKt$getLocalPlaceholders$2$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "placeholder can not overlap with paragraph."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 130
    .end local v9    # "index$iv$iv":I
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    .end local v15    # "it":Landroidx/compose/ui/text/AnnotatedString$Range;
    .end local v16    # "$i$a$-fastMap-MultiParagraphIntrinsicsKt$getLocalPlaceholders$2":I
    .end local v18    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v2    # "$this$fastMap$iv":Ljava/util/List;
    :cond_6
    move-object/from16 v18, v2

    move/from16 v19, v3

    .line 142
    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMap":I
    .restart local v18    # "$this$fastMap$iv":Ljava/util/List;
    .restart local v19    # "$i$f$fastMap":I
    :goto_4
    nop

    .line 143
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v1, v4

    check-cast v1, Ljava/util/List;

    .line 119
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    .end local v18    # "$this$fastMap$iv":Ljava/util/List;
    .end local v19    # "$i$f$fastMap":I
    return-object v1
.end method
