.class public final Landroidx/compose/ui/semantics/SemanticsSortKt;
.super Ljava/lang/Object;
.source "SemanticsSort.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsSort.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsSort.kt\nandroidx/compose/ui/semantics/SemanticsSortKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n28#2,6:196\n98#2,3:202\n28#2,4:205\n101#2,2:209\n33#2:211\n103#2:212\n28#2,6:213\n28#2,6:219\n1#3:225\n*S KotlinDebug\n*F\n+ 1 SemanticsSort.kt\nandroidx/compose/ui/semantics/SemanticsSortKt\n*L\n50#1:196,6\n53#1:202,3\n53#1:205,4\n53#1:209,2\n53#1:211\n53#1:212\n55#1:213,6\n178#1:219,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00040\u0003H\u0000\u001a\"\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006*\u00020\u00012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\u0000\u001a\u000c\u0010\n\u001a\u00020\u000b*\u00020\u0001H\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "findNodeByPredicateTraversal",
        "Landroidx/compose/ui/node/LayoutNode;",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "findOneLayerOfSemanticsWrappersSortedByBounds",
        "",
        "Landroidx/compose/ui/semantics/SemanticsWrapper;",
        "list",
        "",
        "findWrapperToGetBounds",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
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


# direct methods
.method public static final findNodeByPredicateTraversal(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .locals 9
    .param p0, "$this$findNodeByPredicateTraversal"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/node/LayoutNode;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    return-object p0

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 219
    .local v1, "$i$f$fastForEach":I
    nop

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    :cond_1
    move v4, v3

    .local v4, "index$iv":I
    add-int/lit8 v3, v3, 0x1

    .line 221
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 222
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .local v6, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v7, 0x0

    .line 179
    .local v7, "$i$a$-fastForEach-SemanticsSortKt$findNodeByPredicateTraversal$1":I
    invoke-static {v6, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findNodeByPredicateTraversal(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    .line 180
    .local v8, "result":Landroidx/compose/ui/node/LayoutNode;
    if-eqz v8, :cond_2

    .line 181
    return-object v8

    .line 183
    :cond_2
    nop

    .line 220
    .end local v5    # "item$iv":Ljava/lang/Object;
    .end local v6    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "$i$a$-fastForEach-SemanticsSortKt$findNodeByPredicateTraversal$1":I
    .end local v8    # "result":Landroidx/compose/ui/node/LayoutNode;
    if-le v3, v2, :cond_1

    .line 224
    .end local v4    # "index$iv":I
    :cond_3
    nop

    .line 185
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final findOneLayerOfSemanticsWrappersSortedByBounds(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;
    .locals 19
    .param p0, "$this$findOneLayerOfSemanticsWrappersSortedByBounds"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsWrapper;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "list"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    return-object v1

    .line 49
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "holders":Ljava/util/ArrayList;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 196
    .local v4, "$i$f$fastForEach":I
    nop

    .line 197
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_3

    const/4 v7, 0x0

    :cond_1
    move v8, v7

    .local v8, "index$iv":I
    add-int/lit8 v7, v7, 0x1

    .line 198
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 199
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/node/LayoutNode;

    .local v10, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v11, 0x0

    .line 51
    .local v11, "$i$a$-fastForEach-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$1":I
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Landroidx/compose/ui/semantics/NodeLocationHolder;

    invoke-direct {v12, v0, v10}, Landroidx/compose/ui/semantics/NodeLocationHolder;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2
    nop

    .line 197
    .end local v9    # "item$iv":Ljava/lang/Object;
    .end local v10    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v11    # "$i$a$-fastForEach-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$1":I
    if-le v7, v5, :cond_1

    .line 201
    .end local v8    # "index$iv":I
    :cond_3
    nop

    .line 53
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastMap$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 202
    .local v4, "$i$f$fastMap":I
    nop

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v5, "target$iv":Ljava/util/ArrayList;
    move-object v7, v3

    .local v7, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 205
    .local v8, "$i$f$fastForEach":I
    nop

    .line 206
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_5

    const/4 v10, 0x0

    :cond_4
    move v11, v10

    .local v11, "index$iv$iv":I
    add-int/lit8 v10, v10, 0x1

    .line 207
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 208
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 209
    .local v14, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v15, v5

    check-cast v15, Ljava/util/Collection;

    move-object/from16 v16, v13

    check-cast v16, Landroidx/compose/ui/semantics/NodeLocationHolder;

    .local v16, "it":Landroidx/compose/ui/semantics/NodeLocationHolder;
    const/16 v17, 0x0

    .line 53
    .local v17, "$i$a$-fastMap-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$sortedChildren$1":I
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/NodeLocationHolder;->getNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    .end local v16    # "it":Landroidx/compose/ui/semantics/NodeLocationHolder;
    .end local v17    # "$i$a$-fastMap-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$sortedChildren$1":I
    invoke-interface {v15, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 210
    nop

    .line 206
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    if-le v10, v9, :cond_4

    .line 211
    .end local v11    # "index$iv$iv":I
    :cond_5
    nop

    .line 212
    .end local v7    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEach":I
    move-object v3, v5

    check-cast v3, Ljava/util/List;

    .line 53
    .end local v3    # "$this$fastMap$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastMap":I
    .end local v5    # "target$iv":Ljava/util/ArrayList;
    nop

    .line 55
    .local v3, "sortedChildren":Ljava/util/List;
    move-object v4, v3

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 213
    .local v5, "$i$f$fastForEach":I
    nop

    .line 214
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_8

    const/16 v18, 0x0

    :goto_0
    move/from16 v7, v18

    .local v7, "index$iv":I
    add-int/lit8 v8, v18, 0x1

    .line 215
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 216
    .restart local v9    # "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/node/LayoutNode;

    .local v10, "child":Landroidx/compose/ui/node/LayoutNode;
    const/4 v11, 0x0

    .line 56
    .local v11, "$i$a$-fastForEach-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$2":I
    invoke-static {v10}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsWrapper;

    move-result-object v12

    .line 57
    .local v12, "outerSemantics":Landroidx/compose/ui/semantics/SemanticsWrapper;
    if-eqz v12, :cond_6

    .line 58
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_6
    invoke-static {v10, v1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findOneLayerOfSemanticsWrappersSortedByBounds(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    .line 62
    :goto_1
    nop

    .line 214
    .end local v9    # "item$iv":Ljava/lang/Object;
    .end local v10    # "child":Landroidx/compose/ui/node/LayoutNode;
    .end local v11    # "$i$a$-fastForEach-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$2":I
    .end local v12    # "outerSemantics":Landroidx/compose/ui/semantics/SemanticsWrapper;
    if-le v8, v6, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v18, v8

    goto :goto_0

    .line 218
    .end local v7    # "index$iv":I
    :cond_8
    :goto_2
    nop

    .line 63
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    return-object v1
.end method

.method public static synthetic findOneLayerOfSemanticsWrappersSortedByBounds$default(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 28
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 28
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findOneLayerOfSemanticsWrappersSortedByBounds(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "holders"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/NodeLocationHolder;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/NodeLocationHolder;",
            ">;"
        }
    .end annotation

    .line 35
    nop

    .line 36
    :try_start_0
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    sget-object v1, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Stripe:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;->setComparisonStrategy$ui_release(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V

    .line 37
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 225
    .local v1, "$this$findOneLayerOfSemanticsWrappersSortedByBounds_u24sortWithStrategy_u24lambda_u2d0":Ljava/util/List;
    const/4 v2, 0x0

    .line 37
    .local v2, "$i$a$-apply-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy$1":I
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "$this$findOneLayerOfSemanticsWrappersSortedByBounds_u24sortWithStrategy_u24lambda_u2d0":Ljava/util/List;
    .end local v2    # "$i$a$-apply-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy$1":I
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 41
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    sget-object v2, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Location:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;->setComparisonStrategy$ui_release(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V

    .line 42
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 225
    .local v2, "$this$findOneLayerOfSemanticsWrappersSortedByBounds_u24sortWithStrategy_u24lambda_u2d1":Ljava/util/List;
    const/4 v3, 0x0

    .line 42
    .local v3, "$i$a$-apply-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy$2":I
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    move-object v0, v1

    .line 35
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v2    # "$this$findOneLayerOfSemanticsWrappersSortedByBounds_u24sortWithStrategy_u24lambda_u2d1":Ljava/util/List;
    .end local v3    # "$i$a$-apply-SemanticsSortKt$findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy$2":I
    :goto_0
    return-object v0
.end method

.method public static final findWrapperToGetBounds(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .param p0, "$this$findWrapperToGetBounds"    # Landroidx/compose/ui/node/LayoutNode;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeWrapper;

    :goto_0
    return-object v0
.end method
