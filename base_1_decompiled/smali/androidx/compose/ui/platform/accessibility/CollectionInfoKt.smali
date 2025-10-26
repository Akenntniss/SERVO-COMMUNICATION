.class public final Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;
.super Ljava/lang/Object;
.source "CollectionInfo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionInfo.kt\nandroidx/compose/ui/platform/accessibility/CollectionInfoKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/ui/TempListUtilsKt\n*L\n1#1,150:1\n28#2,6:151\n28#2,6:157\n41#2,6:163\n33#3,11:169\n58#3,7:180\n*S KotlinDebug\n*F\n+ 1 CollectionInfo.kt\nandroidx/compose/ui/platform/accessibility/CollectionInfoKt\n*L\n44#1:151,6\n87#1:157,6\n96#1:163,6\n119#1:169,11\n127#1:180,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0016\u0010\u0004\u001a\u00020\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u001a\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u001a\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u001a\u0014\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f*\u00020\u0002H\u0002\u001a\u001c\u0010\u0011\u001a\n \u0010*\u0004\u0018\u00010\u00120\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0007H\u0002\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0003\u00a8\u0006\u0015"
    }
    d2 = {
        "isLazyCollection",
        "",
        "Landroidx/compose/ui/semantics/CollectionInfo;",
        "(Landroidx/compose/ui/semantics/CollectionInfo;)Z",
        "calculateIfHorizontallyStacked",
        "items",
        "",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        "setCollectionInfo",
        "",
        "node",
        "info",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "setCollectionItemInfo",
        "toAccessibilityCollectionInfo",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;",
        "kotlin.jvm.PlatformType",
        "toAccessibilityCollectionItemInfo",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;",
        "Landroidx/compose/ui/semantics/CollectionItemInfo;",
        "itemNode",
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
.method private static final calculateIfHorizontallyStacked(Ljava/util/List;)Z
    .locals 17
    .param p0, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;)Z"
        }
    .end annotation

    .line 117
    move-object/from16 v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 119
    :cond_0
    move-object/from16 v0, p0

    .local v0, "$this$fastZipWithNext$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 169
    .local v1, "$i$f$fastZipWithNext":I
    nop

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 172
    .local v3, "result$iv":Ljava/util/List;
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 174
    .local v5, "current$iv":Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_3

    move v7, v4

    :cond_2
    move v8, v7

    .local v8, "i$iv":I
    add-int/2addr v7, v2

    .line 175
    add-int/lit8 v9, v8, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 176
    .local v9, "next$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v10, "el2":Landroidx/compose/ui/semantics/SemanticsNode;
    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v11, "el1":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v12, 0x0

    .line 121
    .local v12, "$i$a$-fastZipWithNext-CollectionInfoKt$calculateIfHorizontallyStacked$deltas$1":I
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v13

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 122
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v14

    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 120
    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v10

    .end local v10    # "el2":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v11    # "el1":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v12    # "$i$a$-fastZipWithNext-CollectionInfoKt$calculateIfHorizontallyStacked$deltas$1":I
    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    move-object v5, v9

    .line 174
    .end local v9    # "next$iv":Ljava/lang/Object;
    if-lt v7, v6, :cond_2

    .line 179
    .end local v8    # "i$iv":I
    :cond_3
    goto :goto_1

    .line 170
    .end local v3    # "result$iv":Ljava/util/List;
    .end local v5    # "current$iv":Ljava/lang/Object;
    :cond_4
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 119
    .end local v0    # "$this$fastZipWithNext$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastZipWithNext":I
    :goto_1
    move-object v0, v3

    .line 125
    .local v0, "deltas":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 126
    if-ne v1, v2, :cond_5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v5

    goto :goto_2

    .line 127
    :cond_5
    move-object v1, v0

    .local v1, "$this$fastReduce$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 180
    .local v3, "$i$f$fastReduce":I
    nop

    .line 181
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 182
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    .line 183
    .local v5, "accumulator$iv":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-gt v2, v6, :cond_7

    move v7, v2

    :cond_6
    move v8, v7

    .restart local v8    # "i$iv":I
    add-int/2addr v7, v2

    .line 184
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v9

    .local v9, "element":J
    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v11}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v11

    .local v11, "result":J
    const/4 v13, 0x0

    .line 127
    .local v13, "$i$a$-fastReduce-CollectionInfoKt$calculateIfHorizontallyStacked$1":I
    invoke-static {v11, v12, v9, v10}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v9

    .end local v9    # "element":J
    .end local v11    # "result":J
    .end local v13    # "$i$a$-fastReduce-CollectionInfoKt$calculateIfHorizontallyStacked$1":I
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    .line 183
    if-ne v8, v6, :cond_6

    .line 186
    .end local v8    # "i$iv":I
    :cond_7
    nop

    .end local v1    # "$this$fastReduce$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastReduce":I
    .end local v5    # "accumulator$iv":Ljava/lang/Object;
    move-object v1, v5

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v5

    .line 125
    :goto_2
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->component1-impl(J)F

    move-result v1

    .local v1, "deltaX":F
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->component2-impl(J)F

    move-result v3

    .line 129
    .local v3, "deltaY":F
    cmpg-float v5, v3, v1

    if-gez v5, :cond_8

    goto :goto_3

    :cond_8
    move v2, v4

    :goto_3
    return v2

    .line 181
    .local v1, "$this$fastReduce$iv":Ljava/util/List;
    .local v3, "$i$f$fastReduce":I
    :cond_9
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Empty collection can\'t be reduced."

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final isLazyCollection(Landroidx/compose/ui/semantics/CollectionInfo;)Z
    .locals 1
    .param p0, "$this$isLazyCollection"    # Landroidx/compose/ui/semantics/CollectionInfo;

    .line 132
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionInfo;->getRowCount()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionInfo;->getColumnCount()I

    move-result v0

    if-gez v0, :cond_0

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

.method public static final setCollectionInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 14
    .param p0, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    const-string v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 35
    .local v0, "collectionInfo":Landroidx/compose/ui/semantics/CollectionInfo;
    if-eqz v0, :cond_0

    .line 36
    invoke-static {v0}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->toAccessibilityCollectionInfo(Landroidx/compose/ui/semantics/CollectionInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 37
    return-void

    .line 41
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 43
    .local v1, "groupedChildren":Ljava/util/List;
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelectableGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v2

    .local v2, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 151
    .local v5, "$i$f$fastForEach":I
    nop

    .line 152
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_3

    move v7, v3

    :cond_1
    move v8, v7

    .local v8, "index$iv":I
    add-int/2addr v7, v4

    .line 153
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 154
    .local v9, "item$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v10, "childNode":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v11, 0x0

    .line 46
    .local v11, "$i$a$-fastForEach-CollectionInfoKt$setCollectionInfo$1":I
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 47
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    nop

    .line 152
    .end local v9    # "item$iv":Ljava/lang/Object;
    .end local v10    # "childNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v11    # "$i$a$-fastForEach-CollectionInfoKt$setCollectionInfo$1":I
    if-le v7, v6, :cond_1

    .line 156
    .end local v8    # "index$iv":I
    :cond_3
    nop

    .line 52
    .end local v2    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    :cond_4
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_7

    .line 53
    invoke-static {v1}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->calculateIfHorizontallyStacked(Ljava/util/List;)Z

    move-result v2

    .line 54
    .local v2, "isHorizontal":Z
    nop

    .line 56
    if-eqz v2, :cond_5

    move v5, v4

    goto :goto_0

    :cond_5
    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    .line 57
    :goto_0
    if-eqz v2, :cond_6

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    .line 58
    :cond_6
    nop

    .line 59
    nop

    .line 55
    invoke-static {v5, v4, v3, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v3

    .line 54
    invoke-virtual {p1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 63
    .end local v2    # "isHorizontal":Z
    :cond_7
    return-void
.end method

.method public static final setCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 24
    .param p0, "node"    # Landroidx/compose/ui/semantics/SemanticsNode;
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "node"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "info"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionItemInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/semantics/CollectionItemInfo;

    .line 68
    .local v2, "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    if-eqz v2, :cond_0

    .line 69
    invoke-static {v2, v0}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->toAccessibilityCollectionItemInfo(Landroidx/compose/ui/semantics/CollectionItemInfo;Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 73
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 74
    .local v3, "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelectableGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 78
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsProperties;->getCollectionInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 79
    .local v4, "collectionInfo":Landroidx/compose/ui/semantics/CollectionInfo;
    if-eqz v4, :cond_2

    invoke-static {v4}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->isLazyCollection(Landroidx/compose/ui/semantics/CollectionInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 82
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v5

    if-nez v5, :cond_3

    return-void

    .line 84
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 87
    .local v5, "groupedChildren":Ljava/util/List;
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getReplacedChildren$ui_release()Ljava/util/List;

    move-result-object v6

    .local v6, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 157
    .local v7, "$i$f$fastForEach":I
    nop

    .line 158
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_6

    const/4 v10, 0x0

    :cond_4
    move v11, v10

    .local v11, "index$iv":I
    add-int/lit8 v10, v10, 0x1

    .line 159
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 160
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v13, "childNode":Landroidx/compose/ui/semantics/SemanticsNode;
    const/4 v14, 0x0

    .line 88
    .local v14, "$i$a$-fastForEach-CollectionInfoKt$setCollectionItemInfo$1":I
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v15

    sget-object v16, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->contains(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 89
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_5
    nop

    .line 158
    .end local v12    # "item$iv":Ljava/lang/Object;
    .end local v13    # "childNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v14    # "$i$a$-fastForEach-CollectionInfoKt$setCollectionItemInfo$1":I
    if-le v10, v8, :cond_4

    .line 162
    .end local v11    # "index$iv":I
    :cond_6
    nop

    .line 93
    .end local v6    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v7    # "$i$f$fastForEach":I
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_d

    .line 94
    invoke-static {v5}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->calculateIfHorizontallyStacked(Ljava/util/List;)Z

    move-result v6

    .line 96
    .local v6, "isHorizontal":Z
    move-object v7, v5

    .local v7, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 163
    .local v8, "$i$f$fastForEachIndexed":I
    nop

    .line 164
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_c

    const/4 v10, 0x0

    :goto_0
    move v11, v10

    .restart local v11    # "index$iv":I
    add-int/lit8 v10, v10, 0x1

    .line 165
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 166
    .restart local v12    # "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/semantics/SemanticsNode;

    .local v13, "tabNode":Landroidx/compose/ui/semantics/SemanticsNode;
    move v14, v11

    .local v14, "index":I
    const/4 v15, 0x0

    .line 97
    .local v15, "$i$a$-fastForEachIndexed-CollectionInfoKt$setCollectionItemInfo$2":I
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    move-object/from16 v16, v2

    .end local v2    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .local v16, "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 99
    if-eqz v6, :cond_7

    const/16 v17, 0x0

    goto :goto_1

    :cond_7
    move/from16 v17, v14

    .line 100
    :goto_1
    const/16 v18, 0x1

    .line 101
    if-eqz v6, :cond_8

    move/from16 v19, v14

    goto :goto_2

    :cond_8
    const/16 v19, 0x0

    .line 102
    :goto_2
    const/16 v20, 0x1

    .line 103
    const/16 v21, 0x0

    .line 104
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    sget-object v22, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt$setCollectionItemInfo$2$itemInfo$1;->INSTANCE:Landroidx/compose/ui/platform/accessibility/CollectionInfoKt$setCollectionItemInfo$2$itemInfo$1;

    move-object/from16 v23, v3

    .end local v3    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .local v23, "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    move-object/from16 v3, v22

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->getOrElse(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 98
    invoke-static/range {v17 .. v22}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 106
    .local v0, "itemInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    if-eqz v0, :cond_a

    .line 107
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_3

    .line 97
    .end local v0    # "itemInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .end local v23    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v3    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_9
    move-object/from16 v23, v3

    .line 110
    .end local v3    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v23    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_a
    :goto_3
    nop

    .line 164
    .end local v12    # "item$iv":Ljava/lang/Object;
    .end local v13    # "tabNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .end local v14    # "index":I
    .end local v15    # "$i$a$-fastForEachIndexed-CollectionInfoKt$setCollectionItemInfo$2":I
    if-le v10, v9, :cond_b

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v23

    goto :goto_0

    .end local v11    # "index$iv":I
    .end local v16    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .end local v23    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v2    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .restart local v3    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_c
    move-object/from16 v16, v2

    move-object/from16 v23, v3

    .line 168
    .end local v2    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .end local v3    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v16    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .restart local v23    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_4
    goto :goto_5

    .line 93
    .end local v6    # "isHorizontal":Z
    .end local v7    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v8    # "$i$f$fastForEachIndexed":I
    .end local v16    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .end local v23    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v2    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .restart local v3    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_d
    move-object/from16 v16, v2

    move-object/from16 v23, v3

    .end local v2    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .end local v3    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v16    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .restart local v23    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    goto :goto_5

    .line 74
    .end local v4    # "collectionInfo":Landroidx/compose/ui/semantics/CollectionInfo;
    .end local v5    # "groupedChildren":Ljava/util/List;
    .end local v16    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .end local v23    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v2    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .restart local v3    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :cond_e
    move-object/from16 v16, v2

    move-object/from16 v23, v3

    .line 113
    .end local v2    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .end local v3    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    .restart local v16    # "collectionItemInfo":Landroidx/compose/ui/semantics/CollectionItemInfo;
    .restart local v23    # "parentNode":Landroidx/compose/ui/semantics/SemanticsNode;
    :goto_5
    return-void
.end method

.method private static final toAccessibilityCollectionInfo(Landroidx/compose/ui/semantics/CollectionInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    .locals 3
    .param p0, "$this$toAccessibilityCollectionInfo"    # Landroidx/compose/ui/semantics/CollectionInfo;

    .line 136
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionInfo;->getRowCount()I

    move-result v0

    .line 137
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionInfo;->getColumnCount()I

    move-result v1

    .line 138
    nop

    .line 139
    nop

    .line 135
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 140
    return-object v0
.end method

.method private static final toAccessibilityCollectionItemInfo(Landroidx/compose/ui/semantics/CollectionItemInfo;Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .locals 8
    .param p0, "$this$toAccessibilityCollectionItemInfo"    # Landroidx/compose/ui/semantics/CollectionItemInfo;
    .param p1, "itemNode"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 144
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionItemInfo;->getRowIndex()I

    move-result v0

    .line 145
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionItemInfo;->getRowSpan()I

    move-result v1

    .line 146
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionItemInfo;->getColumnIndex()I

    move-result v2

    .line 147
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionItemInfo;->getColumnSpan()I

    move-result v3

    .line 148
    const/4 v4, 0x0

    .line 149
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt$toAccessibilityCollectionItemInfo$1;->INSTANCE:Landroidx/compose/ui/platform/accessibility/CollectionInfoKt$toAccessibilityCollectionItemInfo$1;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->getOrElse(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 143
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 150
    return-object v0
.end method
