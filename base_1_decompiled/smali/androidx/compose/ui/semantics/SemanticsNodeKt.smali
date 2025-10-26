.class public final Landroidx/compose/ui/semantics/SemanticsNodeKt;
.super Ljava/lang/Object;
.source "SemanticsNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsNode.kt\nandroidx/compose/ui/semantics/SemanticsNodeKt\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,410:1\n367#1,6:411\n367#1,6:417\n459#2,11:423\n*S KotlinDebug\n*F\n+ 1 SemanticsNode.kt\nandroidx/compose/ui/semantics/SemanticsNodeKt\n*L\n354#1:411,6\n357#1:417,6\n378#1:423,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u000c\u0010\u000c\u001a\u00020\r*\u00020\tH\u0002\u001a\"\u0010\u000e\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00110\u0010H\u0002\u001a\"\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0013*\u00020\u00022\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0015H\u0002\u001a&\u0010\u0016\u001a\u0004\u0018\u00010\u0001*\u00020\u00172\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\u0008\u00f8\u0001\u0001\u001a\u000c\u0010\u0019\u001a\u00020\r*\u00020\tH\u0002\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004\"\u001d\u0010\u0007\u001a\u0004\u0018\u00010\u0008*\u00020\t8BX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001a"
    }
    d2 = {
        "outerMergingSemantics",
        "Landroidx/compose/ui/semantics/SemanticsWrapper;",
        "Landroidx/compose/ui/node/LayoutNode;",
        "getOuterMergingSemantics",
        "(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsWrapper;",
        "outerSemantics",
        "getOuterSemantics",
        "role",
        "Landroidx/compose/ui/semantics/Role;",
        "Landroidx/compose/ui/semantics/SemanticsNode;",
        "getRole",
        "(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;",
        "contentDescriptionFakeNodeId",
        "",
        "findClosestParentNode",
        "selector",
        "Lkotlin/Function1;",
        "",
        "findOneLayerOfSemanticsWrappers",
        "",
        "list",
        "",
        "nearestSemantics",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
        "predicate",
        "roleFakeNodeId",
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
.method public static final synthetic access$contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "selector"    # Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I

    move-result v0

    return v0
.end method

.method private static final contentDescriptionFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2
    .param p0, "$this$contentDescriptionFakeNodeId"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 408
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    const v1, 0x77359400

    add-int/2addr v0, v1

    return v0
.end method

.method private static final findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .locals 2
    .param p0, "$this$findClosestParentNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "selector"    # Lkotlin/jvm/functions/Function1;
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

    .line 395
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 396
    .local v0, "currentParent":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v0, :cond_1

    .line 397
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    return-object v0

    .line 400
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static final findOneLayerOfSemanticsWrappers(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "$this$findOneLayerOfSemanticsWrappers"    # Landroidx/compose/ui/node/LayoutNode;
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

    .line 378
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getZSortedChildren()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 423
    .local v1, "$i$f$forEach":I
    nop

    .line 424
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 425
    .local v2, "size$iv":I
    if-lez v2, :cond_2

    .line 426
    const/4 v3, 0x0

    .line 427
    .local v3, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    .line 429
    .local v4, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .local v5, "child":Landroidx/compose/ui/node/LayoutNode;
    const/4 v6, 0x0

    .line 379
    .local v6, "$i$a$-forEach-SemanticsNodeKt$findOneLayerOfSemanticsWrappers$1":I
    invoke-static {v5}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsWrapper;

    move-result-object v7

    .line 380
    .local v7, "outerSemantics":Landroidx/compose/ui/semantics/SemanticsWrapper;
    if-eqz v7, :cond_1

    .line 381
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_1
    invoke-static {v5, p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->findOneLayerOfSemanticsWrappers(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    .line 385
    :goto_0
    nop

    .line 430
    .end local v5    # "child":Landroidx/compose/ui/node/LayoutNode;
    .end local v6    # "$i$a$-forEach-SemanticsNodeKt$findOneLayerOfSemanticsWrappers$1":I
    .end local v7    # "outerSemantics":Landroidx/compose/ui/semantics/SemanticsWrapper;
    add-int/lit8 v3, v3, 0x1

    .line 431
    if-lt v3, v2, :cond_0

    .line 433
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    :cond_2
    nop

    .line 386
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    return-object p1
.end method

.method static synthetic findOneLayerOfSemanticsWrappers$default(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 375
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 376
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 375
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->findOneLayerOfSemanticsWrappers(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsWrapper;
    .locals 6
    .param p0, "$this$outerMergingSemantics"    # Landroidx/compose/ui/node/LayoutNode;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v0

    .local v0, "$this$nearestSemantics$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    const/4 v1, 0x0

    .line 417
    .local v1, "$i$f$nearestSemantics":I
    move-object v2, v0

    .line 418
    .local v2, "wrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    :goto_0
    if-eqz v2, :cond_1

    .line 419
    instance-of v3, v2, Landroidx/compose/ui/semantics/SemanticsWrapper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsWrapper;

    .local v3, "it":Landroidx/compose/ui/semantics/SemanticsWrapper;
    const/4 v4, 0x0

    .line 358
    .local v4, "$i$a$-nearestSemantics-SemanticsNodeKt$outerMergingSemantics$1":I
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsWrapper;->getModifier()Landroidx/compose/ui/Modifier$Element;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/semantics/SemanticsModifier;

    invoke-interface {v5}, Landroidx/compose/ui/semantics/SemanticsModifier;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants()Z

    move-result v3

    .end local v3    # "it":Landroidx/compose/ui/semantics/SemanticsWrapper;
    .end local v4    # "$i$a$-nearestSemantics-SemanticsNodeKt$outerMergingSemantics$1":I
    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsWrapper;

    goto :goto_1

    .line 420
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v2

    goto :goto_0

    .line 422
    :cond_1
    const/4 v3, 0x0

    .line 359
    .end local v0    # "$this$nearestSemantics$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    .end local v1    # "$i$f$nearestSemantics":I
    .end local v2    # "wrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    :goto_1
    return-object v3
.end method

.method public static final getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsWrapper;
    .locals 5
    .param p0, "$this$outerSemantics"    # Landroidx/compose/ui/node/LayoutNode;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v0

    .local v0, "$this$nearestSemantics$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    const/4 v1, 0x0

    .line 411
    .local v1, "$i$f$nearestSemantics":I
    move-object v2, v0

    .line 412
    .local v2, "wrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    :goto_0
    if-eqz v2, :cond_1

    .line 413
    instance-of v3, v2, Landroidx/compose/ui/semantics/SemanticsWrapper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsWrapper;

    .local v3, "it":Landroidx/compose/ui/semantics/SemanticsWrapper;
    const/4 v4, 0x0

    .line 354
    .local v4, "$i$a$-nearestSemantics-SemanticsNodeKt$outerSemantics$1":I
    nop

    .end local v3    # "it":Landroidx/compose/ui/semantics/SemanticsWrapper;
    .end local v4    # "$i$a$-nearestSemantics-SemanticsNodeKt$outerSemantics$1":I
    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsWrapper;

    goto :goto_1

    .line 414
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v2

    goto :goto_0

    .line 416
    :cond_1
    const/4 v3, 0x0

    .line 354
    .end local v0    # "$this$nearestSemantics$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    .end local v1    # "$i$f$nearestSemantics":I
    .end local v2    # "wrapper$iv":Landroidx/compose/ui/node/LayoutNodeWrapper;
    :goto_1
    return-object v3
.end method

.method private static final getRole(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;
    .locals 2
    .param p0, "$this$role"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 407
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getUnmergedConfig$ui_release()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/semantics/Role;

    return-object v0
.end method

.method public static final nearestSemantics(Landroidx/compose/ui/node/LayoutNodeWrapper;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/semantics/SemanticsWrapper;
    .locals 3
    .param p0, "$this$nearestSemantics"    # Landroidx/compose/ui/node/LayoutNodeWrapper;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/semantics/SemanticsWrapper;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/semantics/SemanticsWrapper;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 367
    .local v0, "$i$f$nearestSemantics":I
    move-object v1, p0

    .line 368
    .local v1, "wrapper":Landroidx/compose/ui/node/LayoutNodeWrapper;
    :goto_0
    if-eqz v1, :cond_1

    .line 369
    instance-of v2, v1, Landroidx/compose/ui/semantics/SemanticsWrapper;

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsWrapper;

    return-object v2

    .line 370
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v1

    goto :goto_0

    .line 372
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static final roleFakeNodeId(Landroidx/compose/ui/semantics/SemanticsNode;)I
    .locals 2
    .param p0, "$this$roleFakeNodeId"    # Landroidx/compose/ui/semantics/SemanticsNode;

    .line 409
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    const v1, 0x3b9aca00

    add-int/2addr v0, v1

    return v0
.end method
