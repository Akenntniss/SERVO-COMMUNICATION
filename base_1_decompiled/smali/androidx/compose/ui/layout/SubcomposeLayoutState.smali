.class public final Landroidx/compose/ui/layout/SubcomposeLayoutState;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;,
        Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;,
        Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutState\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,487:1\n451#1:502\n451#1:516\n451#1:521\n355#2,7:488\n355#2,7:495\n355#2,7:509\n1088#3,4:503\n1088#3,4:517\n1088#3,4:522\n1088#3,4:526\n1849#4,2:507\n*S KotlinDebug\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/SubcomposeLayoutState\n*L\n282#1:502\n439#1:516\n445#1:521\n190#1:488,7\n220#1:495,7\n398#1:509,7\n282#1:503,4\n439#1:517,4\n445#1:522,4\n451#1:526,4\n375#1:507,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001:\u0003PQRB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J*\u0010*\u001a\u00020+2\u001d\u0010,\u001a\u0019\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001d\u00a2\u0006\u0002\u0008!H\u0002\u00f8\u0001\u0000J\u0010\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0004H\u0002J\u0010\u0010/\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\r\u00100\u001a\u00020\"H\u0000\u00a2\u0006\u0002\u00081J\u0010\u00102\u001a\u00020\"2\u0006\u00103\u001a\u00020\tH\u0002J\u0017\u00104\u001a\u00020\"2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\"05H\u0082\u0008J\u0008\u00106\u001a\u00020\"H\u0002J\"\u00107\u001a\u00020\"2\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u00042\u0008\u0008\u0002\u0010:\u001a\u00020\u0004H\u0002J(\u0010;\u001a\u00020<2\u0008\u0010=\u001a\u0004\u0018\u00010\u00012\u0011\u0010>\u001a\r\u0012\u0004\u0012\u00020\"05\u00a2\u0006\u0002\u0008?\u00a2\u0006\u0002\u0010@J\u0018\u0010A\u001a\u00020\"2\u0006\u00103\u001a\u00020\t2\u0006\u0010B\u001a\u00020\u0013H\u0002J2\u0010A\u001a\u00020\"2\u0006\u00103\u001a\u00020\t2\u0008\u0010=\u001a\u0004\u0018\u00010\u00012\u0011\u0010>\u001a\r\u0012\u0004\u0012\u00020\"05\u00a2\u0006\u0002\u0008?H\u0002\u00a2\u0006\u0002\u0010CJ2\u0010A\u001a\u0008\u0012\u0004\u0012\u00020E0D2\u0008\u0010=\u001a\u0004\u0018\u00010\u00012\u0011\u0010>\u001a\r\u0012\u0004\u0012\u00020\"05\u00a2\u0006\u0002\u0008?H\u0000\u00a2\u0006\u0004\u0008F\u0010GJ:\u0010H\u001a\u00020I2\u0008\u0010J\u001a\u0004\u0018\u00010I2\u0006\u0010K\u001a\u00020\t2\u0006\u0010L\u001a\u00020\u000b2\u0011\u0010M\u001a\r\u0012\u0004\u0012\u00020\"05\u00a2\u0006\u0002\u0008?H\u0002\u00a2\u0006\u0002\u0010NJ\u0012\u0010O\u001a\u00020\t2\u0008\u0010=\u001a\u0004\u0018\u00010\u0001H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\t0\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00060\u001bR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000RE\u0010\u001c\u001a0\u0012\u0004\u0012\u00020\t\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001d\u00a2\u0006\u0002\u0008!\u0012\u0004\u0012\u00020\"0\u001d\u00a2\u0006\u0002\u0008!X\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R%\u0010%\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"0&\u00a2\u0006\u0002\u0008!X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u001c\u0010)\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\t0\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006S"
    }
    d2 = {
        "Landroidx/compose/ui/layout/SubcomposeLayoutState;",
        "",
        "()V",
        "maxSlotsToRetainForReuse",
        "",
        "(I)V",
        "NoIntrinsicsMessage",
        "",
        "_root",
        "Landroidx/compose/ui/node/LayoutNode;",
        "compositionContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "getCompositionContext$ui_release",
        "()Landroidx/compose/runtime/CompositionContext;",
        "setCompositionContext$ui_release",
        "(Landroidx/compose/runtime/CompositionContext;)V",
        "currentIndex",
        "nodeToNodeState",
        "",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;",
        "precomposeMap",
        "precomposedCount",
        "reusableCount",
        "root",
        "getRoot",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "scope",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;",
        "setMeasurePolicy",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Lkotlin/ExtensionFunctionType;",
        "",
        "getSetMeasurePolicy$ui_release",
        "()Lkotlin/jvm/functions/Function2;",
        "setRoot",
        "Lkotlin/Function1;",
        "getSetRoot$ui_release",
        "()Lkotlin/jvm/functions/Function1;",
        "slotIdToNode",
        "createMeasurePolicy",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "block",
        "createNodeAt",
        "index",
        "disposeAfterIndex",
        "disposeCurrentNodes",
        "disposeCurrentNodes$ui_release",
        "disposeNode",
        "node",
        "ignoreRemeasureRequests",
        "Lkotlin/Function0;",
        "makeSureStateIsConsistent",
        "move",
        "from",
        "to",
        "count",
        "precompose",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "slotId",
        "content",
        "Landroidx/compose/runtime/Composable;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "subcompose",
        "nodeState",
        "(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "subcompose$ui_release",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;",
        "subcomposeInto",
        "Landroidx/compose/runtime/Composition;",
        "existing",
        "container",
        "parent",
        "composable",
        "(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;",
        "takeNodeFromReusables",
        "NodeState",
        "PrecomposedSlotHandle",
        "Scope",
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
.field private final NoIntrinsicsMessage:Ljava/lang/String;

.field private _root:Landroidx/compose/ui/node/LayoutNode;

.field private compositionContext:Landroidx/compose/runtime/CompositionContext;

.field private currentIndex:I

.field private final maxSlotsToRetainForReuse:I

.field private final nodeToNodeState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;",
            ">;"
        }
    .end annotation
.end field

.field private final precomposeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field

.field private precomposedCount:I

.field private reusableCount:I

.field private final scope:Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;

.field private final setMeasurePolicy:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final setRoot:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final slotIdToNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSlotsToRetainForReuse"    # I

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->maxSlotsToRetainForReuse:I

    .line 156
    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$setRoot$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$setRoot$1;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->setRoot:Lkotlin/jvm/functions/Function1;

    .line 159
    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$setMeasurePolicy$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$setMeasurePolicy$1;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->setMeasurePolicy:Lkotlin/jvm/functions/Function2;

    .line 165
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->nodeToNodeState:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->slotIdToNode:Ljava/util/Map;

    .line 168
    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V

    iput-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->scope:Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;

    .line 169
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposeMap:Ljava/util/Map;

    .line 364
    const-string v0, "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve \'match parent\' sizing,, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement."

    iput-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->NoIntrinsicsMessage:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public static final synthetic access$createMeasurePolicy(Landroidx/compose/ui/layout/SubcomposeLayoutState;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;

    .line 145
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->createMeasurePolicy(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$disposeAfterIndex(Landroidx/compose/ui/layout/SubcomposeLayoutState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p1, "currentIndex"    # I

    .line 145
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->disposeAfterIndex(I)V

    return-void
.end method

.method public static final synthetic access$disposeNode(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p1, "node"    # Landroidx/compose/ui/node/LayoutNode;

    .line 145
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->disposeNode(Landroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public static final synthetic access$getCurrentIndex$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 145
    iget v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->currentIndex:I

    return v0
.end method

.method public static final synthetic access$getMaxSlotsToRetainForReuse$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 145
    iget v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->maxSlotsToRetainForReuse:I

    return v0
.end method

.method public static final synthetic access$getPrecomposeMap$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 145
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposeMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getPrecomposedCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 145
    iget v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    return v0
.end method

.method public static final synthetic access$getReusableCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 145
    iget v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->reusableCount:I

    return v0
.end method

.method public static final synthetic access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 145
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getScope$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 145
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->scope:Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;

    return-object v0
.end method

.method public static final synthetic access$move(Landroidx/compose/ui/layout/SubcomposeLayoutState;III)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "count"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->move(III)V

    return-void
.end method

.method public static final synthetic access$setCurrentIndex$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p1, "<set-?>"    # I

    .line 145
    iput p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->currentIndex:I

    return-void
.end method

.method public static final synthetic access$setPrecomposedCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p1, "<set-?>"    # I

    .line 145
    iput p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    return-void
.end method

.method public static final synthetic access$setReusableCount$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p1, "<set-?>"    # I

    .line 145
    iput p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->reusableCount:I

    return-void
.end method

.method public static final synthetic access$set_root$p(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p1, "<set-?>"    # Landroidx/compose/ui/node/LayoutNode;

    .line 145
    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->_root:Landroidx/compose/ui/node/LayoutNode;

    return-void
.end method

.method public static final synthetic access$subcomposeInto(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .param p1, "existing"    # Landroidx/compose/runtime/Composition;
    .param p2, "container"    # Landroidx/compose/ui/node/LayoutNode;
    .param p3, "parent"    # Landroidx/compose/runtime/CompositionContext;
    .param p4, "composable"    # Lkotlin/jvm/functions/Function2;

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->subcomposeInto(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;

    move-result-object v0

    return-object v0
.end method

.method private final createMeasurePolicy(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasurePolicy;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->NoIntrinsicsMessage:Ljava/lang/String;

    new-instance v1, Landroidx/compose/ui/layout/SubcomposeLayoutState$createMeasurePolicy$1;

    invoke-direct {v1, p0, p1, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$createMeasurePolicy$1;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 362
    return-object v1
.end method

.method private final createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;
    .locals 9
    .param p1, "index"    # I

    .line 438
    new-instance v0, Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LayoutNode;-><init>(Z)V

    move-object v2, v0

    .local v2, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v3, 0x0

    .line 439
    .local v3, "$i$a$-also-SubcomposeLayoutState$createNodeAt$1":I
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    const/4 v5, 0x0

    .line 516
    .local v5, "$i$f$ignoreRemeasureRequests":I
    invoke-static {v4}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v7, 0x0

    .line 517
    .local v7, "$i$f$ignoreRemeasureRequests$ui_release":I
    invoke-static {v6, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 518
    const/4 v1, 0x0

    .line 440
    .local v1, "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$createNodeAt$1$1":I
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v8

    invoke-virtual {v8, p1, v2}, Landroidx/compose/ui/node/LayoutNode;->insertAt$ui_release(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 441
    nop

    .line 519
    .end local v1    # "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$createNodeAt$1$1":I
    const/4 v1, 0x0

    invoke-static {v6, v1}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 520
    nop

    .line 516
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "$i$f$ignoreRemeasureRequests$ui_release":I
    nop

    .line 442
    .end local v4    # "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .end local v5    # "$i$f$ignoreRemeasureRequests":I
    nop

    .line 438
    .end local v2    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v3    # "$i$a$-also-SubcomposeLayoutState$createNodeAt$1":I
    nop

    .line 442
    return-object v0
.end method

.method private final disposeAfterIndex(I)V
    .locals 13
    .param p1, "currentIndex"    # I

    .line 264
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    sub-int/2addr v0, v1

    .line 267
    .local v0, "precomposedNodesSectionStart":I
    iget v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->maxSlotsToRetainForReuse:I

    sub-int v1, v0, v1

    .line 265
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 271
    .local v1, "reusableNodesSectionStart":I
    sub-int v2, v0, v1

    iput v2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->reusableCount:I

    .line 272
    add-int/2addr v2, v1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    move v4, v1

    :cond_0
    move v5, v4

    .local v5, "i":I
    add-int/2addr v4, v3

    .line 273
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .line 274
    .local v6, "node":Landroidx/compose/ui/node/LayoutNode;
    iget-object v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->nodeToNodeState:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

    .line 276
    .local v7, "state":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    iget-object v8, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->slotIdToNode:Ljava/util/Map;

    invoke-virtual {v7}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v6    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "state":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    if-lt v4, v2, :cond_0

    .line 280
    .end local v5    # "i":I
    :cond_1
    sub-int v2, v1, p1

    .line 281
    .local v2, "nodesToDispose":I
    if-lez v2, :cond_4

    .line 282
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    const/4 v5, 0x0

    .line 502
    .local v5, "$i$f$ignoreRemeasureRequests":I
    invoke-static {v4}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v7, 0x0

    .line 503
    .local v7, "$i$f$ignoreRemeasureRequests$ui_release":I
    invoke-static {v6, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 504
    const/4 v8, 0x0

    .line 283
    .local v8, "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$disposeAfterIndex$1":I
    add-int v9, p1, v2

    if-ge p1, v9, :cond_3

    move v10, p1

    :cond_2
    move v11, v10

    .local v11, "i":I
    add-int/2addr v10, v3

    .line 284
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v12}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->disposeNode(Landroidx/compose/ui/node/LayoutNode;)V

    .line 283
    if-lt v10, v9, :cond_2

    .line 286
    .end local v11    # "i":I
    :cond_3
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroidx/compose/ui/node/LayoutNode;->removeAt$ui_release(II)V

    .line 287
    nop

    .line 505
    .end local v8    # "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$disposeAfterIndex$1":I
    const/4 v3, 0x0

    invoke-static {v6, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 506
    nop

    .line 502
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "$i$f$ignoreRemeasureRequests$ui_release":I
    nop

    .line 290
    .end local v4    # "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .end local v5    # "$i$f$ignoreRemeasureRequests":I
    :cond_4
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->makeSureStateIsConsistent()V

    .line 291
    return-void
.end method

.method private final disposeNode(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3
    .param p1, "node"    # Landroidx/compose/ui/node/LayoutNode;

    .line 329
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->nodeToNodeState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

    .line 330
    .local v0, "nodeState":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composition;->dispose()V

    .line 331
    iget-object v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->slotIdToNode:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    return-void
.end method

.method private final getRoot()Landroidx/compose/ui/node/LayoutNode;
    .locals 2

    .line 163
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->_root:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final ignoreRemeasureRequests(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 451
    .local v0, "$i$f$ignoreRemeasureRequests":I
    invoke-static {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    .local v1, "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v2, 0x0

    .line 526
    .local v2, "$i$f$ignoreRemeasureRequests$ui_release":I
    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 527
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 528
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 529
    nop

    .line 451
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v2    # "$i$f$ignoreRemeasureRequests$ui_release":I
    return-void
.end method

.method private final makeSureStateIsConsistent()V
    .locals 3

    .line 294
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->nodeToNodeState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 299
    return-void

    .line 294
    :cond_1
    const/4 v0, 0x0

    .line 295
    .local v0, "$i$a$-require-SubcomposeLayoutState$makeSureStateIsConsistent$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency between the count of nodes tracked by the state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->nodeToNodeState:Ljava/util/Map;

    .line 296
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    nop

    .line 295
    const-string v2, ") and the children count on the SubcomposeLayout ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v2

    .line 297
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    nop

    .line 295
    const-string v2, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .end local v0    # "$i$a$-require-SubcomposeLayoutState$makeSureStateIsConsistent$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final move(III)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "count"    # I

    .line 445
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    const/4 v1, 0x0

    .line 521
    .local v1, "$i$f$ignoreRemeasureRequests":I
    invoke-static {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->access$getRoot(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .local v2, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v3, 0x0

    .line 522
    .local v3, "$i$f$ignoreRemeasureRequests$ui_release":I
    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 523
    const/4 v4, 0x0

    .line 446
    .local v4, "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$move$1":I
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->move$ui_release(III)V

    .line 447
    nop

    .line 524
    .end local v4    # "$i$a$-ignoreRemeasureRequests-SubcomposeLayoutState$move$1":I
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 525
    nop

    .line 521
    .end local v2    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v3    # "$i$f$ignoreRemeasureRequests$ui_release":I
    nop

    .line 448
    .end local v0    # "this_$iv":Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .end local v1    # "$i$f$ignoreRemeasureRequests":I
    return-void
.end method

.method static synthetic move$default(Landroidx/compose/ui/layout/SubcomposeLayoutState;IIIILjava/lang/Object;)V
    .locals 0

    .line 444
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->move(III)V

    return-void
.end method

.method private final subcompose(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/node/LayoutNode;
    .param p2, "nodeState"    # Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

    .line 231
    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;

    invoke-direct {v0, p0, p2, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$subcompose$2;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;Landroidx/compose/ui/node/LayoutNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->withNoSnapshotReadObservation$ui_release(Lkotlin/jvm/functions/Function0;)V

    .line 245
    return-void
.end method

.method private final subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .param p1, "node"    # Landroidx/compose/ui/node/LayoutNode;
    .param p2, "slotId"    # Ljava/lang/Object;
    .param p3, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->nodeToNodeState:Ljava/util/Map;

    .local v0, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 495
    .local v1, "$i$f$getOrPut":I
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 496
    .local v2, "value$iv":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 497
    const/4 v3, 0x0

    .line 221
    .local v3, "$i$a$-getOrPut-SubcomposeLayoutState$subcompose$nodeState$1":I
    new-instance v10, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

    sget-object v4, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->INSTANCE:Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;

    invoke-virtual {v4}, Landroidx/compose/ui/layout/ComposableSingletons$SubcomposeLayoutKt;->getLambda-1$ui_release()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v3    # "$i$a$-getOrPut-SubcomposeLayoutState$subcompose$nodeState$1":I
    move-object v3, v10

    .line 498
    .local v3, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    nop

    .end local v3    # "answer$iv":Ljava/lang/Object;
    goto :goto_0

    .line 501
    :cond_0
    move-object v3, v2

    .line 496
    :goto_0
    nop

    .line 220
    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "$i$f$getOrPut":I
    .end local v2    # "value$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

    .line 223
    .local v0, "nodeState":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroidx/compose/runtime/Composition;->getHasInvalidations()Z

    move-result v1

    .line 224
    .local v1, "hasPendingChanges":Z
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    if-ne v2, p3, :cond_2

    if-eqz v1, :cond_3

    .line 225
    :cond_2
    invoke-virtual {v0, p3}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 226
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;)V

    .line 228
    :cond_3
    return-void
.end method

.method private final subcomposeInto(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;
    .locals 3
    .param p1, "existing"    # Landroidx/compose/runtime/Composition;
    .param p2, "container"    # Landroidx/compose/ui/node/LayoutNode;
    .param p3, "parent"    # Landroidx/compose/runtime/CompositionContext;
    .param p4, "composable"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composition;",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/Composition;"
        }
    .end annotation

    .line 253
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composition;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    move-object v0, p1

    goto :goto_1

    .line 254
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Landroidx/compose/ui/platform/Wrapper_androidKt;->createSubcomposition(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;)Landroidx/compose/runtime/Composition;

    move-result-object v0

    .line 258
    :goto_1
    move-object v1, v0

    .local v1, "$this$subcomposeInto_u24lambda_u2d3":Landroidx/compose/runtime/Composition;
    const/4 v2, 0x0

    .line 259
    .local v2, "$i$a$-apply-SubcomposeLayoutState$subcomposeInto$1":I
    invoke-interface {v1, p4}, Landroidx/compose/runtime/Composition;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 260
    nop

    .line 258
    .end local v1    # "$this$subcomposeInto_u24lambda_u2d3":Landroidx/compose/runtime/Composition;
    .end local v2    # "$i$a$-apply-SubcomposeLayoutState$subcomposeInto$1":I
    nop

    .line 253
    return-object v0
.end method

.method private final takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;
    .locals 7
    .param p1, "slotId"    # Ljava/lang/Object;

    .line 302
    iget v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->reusableCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 303
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    sub-int/2addr v0, v2

    .line 304
    .local v0, "reusableNodesSectionEnd":I
    iget v2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->reusableCount:I

    sub-int v2, v0, v2

    .line 305
    .local v2, "reusableNodesSectionStart":I
    move v3, v2

    .line 306
    .local v3, "index":I
    :goto_1
    nop

    .line 307
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 308
    .local v4, "node":Landroidx/compose/ui/node/LayoutNode;
    iget-object v5, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->nodeToNodeState:Ljava/util/Map;

    invoke-static {v5, v4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

    .line 309
    .local v5, "nodeState":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    invoke-virtual {v5}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->getSlotId()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 311
    goto :goto_2

    .line 312
    :cond_1
    add-int/lit8 v6, v0, -0x1

    if-ne v3, v6, :cond_3

    .line 314
    invoke-virtual {v5, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->setSlotId(Ljava/lang/Object;)V

    .line 315
    nop

    .line 320
    .end local v4    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v5    # "nodeState":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    :goto_2
    if-eq v3, v2, :cond_2

    .line 322
    invoke-direct {p0, v3, v2, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->move(III)V

    .line 324
    :cond_2
    iget v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->reusableCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->reusableCount:I

    .line 325
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    return-object v1

    .line 317
    .restart local v4    # "node":Landroidx/compose/ui/node/LayoutNode;
    .restart local v5    # "nodeState":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .end local v4    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v5    # "nodeState":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    goto :goto_1

    .line 302
    .end local v0    # "reusableNodesSectionEnd":I
    .end local v2    # "reusableNodesSectionStart":I
    .end local v3    # "index":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final disposeCurrentNodes$ui_release()V
    .locals 7

    .line 375
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->nodeToNodeState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 507
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;

    .local v4, "it":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    const/4 v5, 0x0

    .line 376
    .local v5, "$i$a$-forEach-SubcomposeLayoutState$disposeCurrentNodes$1":I
    invoke-virtual {v4}, Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;->getComposition()Landroidx/compose/runtime/Composition;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composition;->dispose()V

    .line 377
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;
    .end local v5    # "$i$a$-forEach-SubcomposeLayoutState$disposeCurrentNodes$1":I
    goto :goto_0

    .line 508
    :cond_0
    nop

    .line 378
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->nodeToNodeState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 379
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->slotIdToNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 380
    return-void
.end method

.method public final getCompositionContext$ui_release()Landroidx/compose/runtime/CompositionContext;
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    return-object v0
.end method

.method public final getSetMeasurePolicy$ui_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->setMeasurePolicy:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getSetRoot$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->setRoot:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .locals 9
    .param p1, "slotId"    # Ljava/lang/Object;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->makeSureStateIsConsistent()V

    .line 397
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->slotIdToNode:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 398
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposeMap:Ljava/util/Map;

    .local v0, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 509
    .local v1, "$i$f$getOrPut":I
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 510
    .local v2, "value$iv":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 511
    const/4 v3, 0x0

    .line 399
    .local v3, "$i$a$-getOrPut-SubcomposeLayoutState$precompose$node$1":I
    iget v4, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->reusableCount:I

    const/4 v5, 0x1

    if-lez v4, :cond_0

    .line 400
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    .line 402
    .local v4, "node":Landroidx/compose/ui/node/LayoutNode;
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 403
    .local v6, "nodeIndex":I
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, v6, v7, v5}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->move(III)V

    .line 404
    iget v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    add-int/2addr v7, v5

    iput v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    .line 405
    nop

    .end local v4    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v6    # "nodeIndex":I
    goto :goto_0

    .line 407
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    move-object v6, v4

    .local v6, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v7, 0x0

    .line 408
    .local v7, "$i$a$-also-SubcomposeLayoutState$precompose$node$1$1":I
    iget v8, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    add-int/2addr v8, v5

    iput v8, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    .line 409
    nop

    .line 407
    .end local v6    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v7    # "$i$a$-also-SubcomposeLayoutState$precompose$node$1$1":I
    nop

    .line 399
    :goto_0
    nop

    .end local v3    # "$i$a$-getOrPut-SubcomposeLayoutState$precompose$node$1":I
    move-object v3, v4

    .line 512
    .local v3, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    nop

    .end local v3    # "answer$iv":Ljava/lang/Object;
    goto :goto_1

    .line 515
    :cond_1
    move-object v3, v2

    .line 510
    :goto_1
    nop

    .line 398
    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "$i$f$getOrPut":I
    .end local v2    # "value$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 412
    .local v0, "node":Landroidx/compose/ui/node/LayoutNode;
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 414
    .end local v0    # "node":Landroidx/compose/ui/node/LayoutNode;
    :cond_2
    new-instance v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$precompose$1;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    return-object v0
.end method

.method public final setCompositionContext$ui_release(Landroidx/compose/runtime/CompositionContext;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/runtime/CompositionContext;

    .line 153
    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->compositionContext:Landroidx/compose/runtime/CompositionContext;

    return-void
.end method

.method public final subcompose$ui_release(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 10
    .param p1, "slotId"    # Ljava/lang/Object;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->makeSureStateIsConsistent()V

    .line 185
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui_release()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    .line 186
    .local v0, "layoutState":Landroidx/compose/ui/node/LayoutNode$LayoutState;
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_9

    .line 190
    iget-object v1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->slotIdToNode:Ljava/util/Map;

    .local v1, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 488
    .local v4, "$i$f$getOrPut":I
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 489
    .local v5, "value$iv":Ljava/lang/Object;
    if-nez v5, :cond_6

    .line 490
    const/4 v6, 0x0

    .line 191
    .local v6, "$i$a$-getOrPut-SubcomposeLayoutState$subcompose$node$1":I
    iget-object v7, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposeMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 192
    .local v7, "precomposed":Landroidx/compose/ui/node/LayoutNode;
    if-eqz v7, :cond_4

    .line 193
    iget v8, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    if-lez v8, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 194
    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precomposedCount:I

    .line 195
    move-object v2, v7

    goto :goto_2

    .line 193
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Check failed."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 196
    :cond_4
    iget v2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->reusableCount:I

    if-lez v2, :cond_5

    .line 197
    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->takeNodeFromReusables(Ljava/lang/Object;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    goto :goto_2

    .line 199
    :cond_5
    iget v2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->currentIndex:I

    invoke-direct {p0, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->createNodeAt(I)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    .line 192
    :goto_2
    nop

    .line 491
    .end local v6    # "$i$a$-getOrPut-SubcomposeLayoutState$subcompose$node$1":I
    .end local v7    # "precomposed":Landroidx/compose/ui/node/LayoutNode;
    .local v2, "answer$iv":Ljava/lang/Object;
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    nop

    .end local v2    # "answer$iv":Ljava/lang/Object;
    goto :goto_3

    .line 494
    :cond_6
    move-object v2, v5

    .line 489
    :goto_3
    nop

    .line 190
    .end local v1    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v4    # "$i$f$getOrPut":I
    .end local v5    # "value$iv":Ljava/lang/Object;
    move-object v1, v2

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 203
    .local v1, "node":Landroidx/compose/ui/node/LayoutNode;
    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui_release()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 204
    .local v2, "itemIndex":I
    iget v6, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->currentIndex:I

    if-lt v2, v6, :cond_8

    .line 210
    if-eq v6, v2, :cond_7

    .line 211
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    move v5, v2

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->move$default(Landroidx/compose/ui/layout/SubcomposeLayoutState;IIIILjava/lang/Object;)V

    .line 213
    :cond_7
    iget v4, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->currentIndex:I

    add-int/2addr v4, v3

    iput v4, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->currentIndex:I

    .line 215
    invoke-direct {p0, v1, p1, p2}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->subcompose(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 216
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 205
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    .end local v1    # "node":Landroidx/compose/ui/node/LayoutNode;
    .end local v2    # "itemIndex":I
    :cond_9
    const/4 v1, 0x0

    .line 187
    .local v1, "$i$a$-check-SubcomposeLayoutState$subcompose$1":I
    nop

    .line 186
    .end local v1    # "$i$a$-check-SubcomposeLayoutState$subcompose$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "subcompose can only be used inside the measure or layout blocks"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
