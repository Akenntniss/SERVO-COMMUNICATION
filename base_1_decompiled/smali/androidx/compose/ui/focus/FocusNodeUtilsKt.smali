.class public final Landroidx/compose/ui/focus/FocusNodeUtilsKt;
.super Ljava/lang/Object;
.source "FocusNodeUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusNodeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusNodeUtils.kt\nandroidx/compose/ui/focus/FocusNodeUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,66:1\n1#2:67\n28#3,6:68\n459#4,11:74\n1137#5:85\n1116#5,2:86\n*S KotlinDebug\n*F\n+ 1 FocusNodeUtils.kt\nandroidx/compose/ui/focus/FocusNodeUtilsKt\n*L\n33#1:68,6\n48#1:74,11\n45#1:85\n45#1:86,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0000\u001a\u001e\u0010\n\u001a\u0004\u0018\u00010\t*\u00020\u00062\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000cH\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\r"
    }
    d2 = {
        "FOCUS_TAG",
        "",
        "getFOCUS_TAG",
        "()Ljava/lang/String;",
        "findFocusableChildren",
        "",
        "Landroidx/compose/ui/node/LayoutNode;",
        "focusableChildren",
        "",
        "Landroidx/compose/ui/node/ModifiedFocusNode;",
        "searchChildrenForFocusNode",
        "queue",
        "Landroidx/compose/runtime/collection/MutableVector;",
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
.field private static final FOCUS_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "Compose Focus"

    sput-object v0, Landroidx/compose/ui/focus/FocusNodeUtilsKt;->FOCUS_TAG:Ljava/lang/String;

    return-void
.end method

.method public static final findFocusableChildren(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)V
    .locals 8
    .param p0, "$this$findFocusableChildren"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "focusableChildren"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/ModifiedFocusNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusableChildren"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->findNextFocusWrapper()Landroidx/compose/ui/node/ModifiedFocusNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 67
    .local v0, "it":Landroidx/compose/ui/node/ModifiedFocusNode;
    :cond_0
    const/4 v1, 0x0

    .line 32
    .local v1, "$i$a$-let-FocusNodeUtilsKt$findFocusableChildren$1":I
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .end local v0    # "it":Landroidx/compose/ui/node/ModifiedFocusNode;
    .end local v1    # "$i$a$-let-FocusNodeUtilsKt$findFocusableChildren$1":I
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 68
    .local v1, "$i$f$fastForEach":I
    nop

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    const/4 v3, 0x0

    :cond_1
    move v4, v3

    .local v4, "index$iv":I
    add-int/lit8 v3, v3, 0x1

    .line 70
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 71
    .local v5, "item$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .local v6, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v7, 0x0

    .line 33
    .local v7, "$i$a$-fastForEach-FocusNodeUtilsKt$findFocusableChildren$2":I
    invoke-static {v6, p1}, Landroidx/compose/ui/focus/FocusNodeUtilsKt;->findFocusableChildren(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)V

    .line 69
    .end local v5    # "item$iv":Ljava/lang/Object;
    .end local v6    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "$i$a$-fastForEach-FocusNodeUtilsKt$findFocusableChildren$2":I
    if-le v3, v2, :cond_1

    .line 73
    .end local v4    # "index$iv":I
    :cond_2
    nop

    .line 34
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    :cond_3
    return-void
.end method

.method public static final getFOCUS_TAG()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Landroidx/compose/ui/focus/FocusNodeUtilsKt;->FOCUS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final searchChildrenForFocusNode(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/node/ModifiedFocusNode;
    .locals 8
    .param p0, "$this$searchChildrenForFocusNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p1, "queue"    # Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;)",
            "Landroidx/compose/ui/node/ModifiedFocusNode;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 74
    .local v1, "$i$f$forEach":I
    nop

    .line 75
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 76
    .local v2, "size$iv":I
    if-lez v2, :cond_2

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .local v5, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    const/4 v6, 0x0

    .line 49
    .local v6, "$i$a$-forEach-FocusNodeUtilsKt$searchChildrenForFocusNode$1":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->getOuterLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNodeWrapper;->findNextFocusWrapper()Landroidx/compose/ui/node/ModifiedFocusNode;

    move-result-object v7

    .line 50
    .local v7, "focusNode":Landroidx/compose/ui/node/ModifiedFocusNode;
    if-eqz v7, :cond_1

    .line 51
    return-object v7

    .line 53
    :cond_1
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 55
    nop

    .line 81
    .end local v5    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v6    # "$i$a$-forEach-FocusNodeUtilsKt$searchChildrenForFocusNode$1":I
    .end local v7    # "focusNode":Landroidx/compose/ui/node/ModifiedFocusNode;
    add-int/lit8 v3, v3, 0x1

    .line 82
    if-lt v3, v2, :cond_0

    .line 84
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    :cond_2
    nop

    .line 58
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusNodeUtilsKt;->searchChildrenForFocusNode(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/node/ModifiedFocusNode;

    move-result-object v0

    .line 60
    .local v0, "focusNode":Landroidx/compose/ui/node/ModifiedFocusNode;
    if-eqz v0, :cond_3

    .line 61
    return-object v0

    .line 65
    .end local v0    # "focusNode":Landroidx/compose/ui/node/ModifiedFocusNode;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic searchChildrenForFocusNode$default(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/collection/MutableVector;ILjava/lang/Object;)Landroidx/compose/ui/node/ModifiedFocusNode;
    .locals 3

    .line 44
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 45
    const/4 p1, 0x0

    .line 85
    .local p1, "$i$f$mutableVectorOf":I
    nop

    .line 86
    const/16 p2, 0x10

    .local p2, "capacity$iv$iv":I
    const/4 p3, 0x0

    .line 87
    .local p3, "$i$f$MutableVector":I
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    new-array v1, p2, [Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 85
    .end local p2    # "capacity$iv$iv":I
    .end local p3    # "$i$f$MutableVector":I
    move-object p1, v0

    .line 44
    .end local p1    # "$i$f$mutableVectorOf":I
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusNodeUtilsKt;->searchChildrenForFocusNode(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/node/ModifiedFocusNode;

    move-result-object p0

    return-object p0
.end method
