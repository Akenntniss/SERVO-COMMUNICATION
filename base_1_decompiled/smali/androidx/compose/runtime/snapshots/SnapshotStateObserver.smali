.class public final Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.super Ljava/lang/Object;
.source "SnapshotStateObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 IdentityScopeMap.kt\nandroidx/compose/runtime/collection/IdentityScopeMap\n+ 5 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,279:1\n1137#2:280\n1116#2,2:281\n62#3:283\n62#3:284\n62#3:323\n62#3:373\n62#3:423\n220#4,5:285\n225#4,17:306\n220#4,5:331\n225#4,17:352\n220#4,5:381\n225#4,17:402\n146#5,16:290\n146#5,16:336\n146#5,16:386\n459#6,7:324\n466#6,4:369\n459#6,7:374\n466#6,4:419\n459#6,11:424\n459#6,11:435\n545#6,11:446\n727#6,2:457\n522#6:459\n*S KotlinDebug\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n*L\n66#1:280\n66#1:281,2\n108#1:283\n118#1:284\n155#1:323\n169#1:373\n203#1:423\n119#1:285,5\n119#1:306,17\n157#1:331,5\n157#1:352,17\n171#1:381,5\n171#1:402,17\n119#1:290,16\n157#1:336,16\n171#1:386,16\n156#1:324,7\n156#1:369,4\n170#1:374,7\n170#1:419,4\n204#1:424,11\n214#1:435,11\n230#1:446,11\n233#1:457,2\n237#1:459\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0016\u0008\u0007\u0018\u00002\u00020\u0001:\u0001*B.\u0012\'\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0018\u001a\u00020\u0005H\u0002J\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0001J)\u0010\u001b\u001a\u00020\u00052!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00150\u0003J,\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0\u000c\"\u0008\u0008\u0000\u0010\u001e*\u00020\u00012\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u001c\u0010 \u001a\u00020\u00052\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000f2\u0006\u0010\"\u001a\u00020\u0010J?\u0010#\u001a\u00020\u0005\"\u0008\u0008\u0000\u0010\u001e*\u00020\u00012\u0006\u0010\u001a\u001a\u0002H\u001e2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u00020\u00050\u00032\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010&J\u0006\u0010\'\u001a\u00020\u0005J\u0006\u0010(\u001a\u00020\u0005J\u0014\u0010)\u001a\u00020\u00052\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004R\u0018\u0010\n\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\r\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00050\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R/\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "",
        "onChangedExecutor",
        "Lkotlin/Function1;",
        "Lkotlin/Function0;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "callback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "applyMaps",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;",
        "applyObserver",
        "Lkotlin/Function2;",
        "",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "applyUnsubscribe",
        "Landroidx/compose/runtime/snapshots/ObserverHandle;",
        "currentMap",
        "isObserving",
        "",
        "isPaused",
        "readObserver",
        "callOnChanged",
        "clear",
        "scope",
        "clearIf",
        "predicate",
        "ensureMap",
        "T",
        "onChanged",
        "notifyChanges",
        "changes",
        "snapshot",
        "observeReads",
        "onValueChangedForScope",
        "block",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "start",
        "stop",
        "withNoObservations",
        "ApplyMap",
        "runtime_release"
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
.field private final applyMaps:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final applyObserver:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

.field private currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap<",
            "*>;"
        }
    .end annotation
.end field

.field private isObserving:Z

.field private isPaused:Z

.field private final onChangedExecutor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->$stable:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "onChangedExecutor"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onChangedExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    .line 26
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$applyObserver$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$applyObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    .line 54
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$readObserver$1;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$readObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 66
    const/4 v0, 0x0

    .line 280
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 281
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 282
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 280
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 66
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    return-void
.end method

.method public static final synthetic access$callOnChanged(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 24
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->callOnChanged()V

    return-void
.end method

.method public static final synthetic access$getApplyMaps$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 24
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public static final synthetic access$getCurrentMap$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 24
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    return-object v0
.end method

.method public static final synthetic access$getOnChangedExecutor$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 24
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$isPaused$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 24
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    return v0
.end method

.method private final callOnChanged()V
    .locals 9

    .line 214
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 435
    .local v1, "$i$f$forEach":I
    nop

    .line 436
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 437
    .local v2, "size$iv":I
    if-lez v2, :cond_2

    .line 438
    const/4 v3, 0x0

    .line 439
    .local v3, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    .line 441
    .local v4, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .local v5, "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    const/4 v6, 0x0

    .line 215
    .local v6, "$i$a$-forEach-SnapshotStateObserver$callOnChanged$1":I
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->getInvalidated()Ljava/util/HashSet;

    move-result-object v7

    .line 216
    .local v7, "scopes":Ljava/util/HashSet;
    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 217
    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->callOnChanged(Ljava/util/Collection;)V

    .line 218
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 220
    :cond_1
    nop

    .line 442
    .end local v5    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local v6    # "$i$a$-forEach-SnapshotStateObserver$callOnChanged$1":I
    .end local v7    # "scopes":Ljava/util/HashSet;
    add-int/lit8 v3, v3, 0x1

    .line 443
    if-lt v3, v2, :cond_0

    .line 445
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    :cond_2
    nop

    .line 221
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    return-void
.end method

.method private final ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .locals 9
    .param p1, "onChanged"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap<",
            "TT;>;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 446
    .local v1, "$i$f$indexOfFirst":I
    nop

    .line 447
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 448
    .local v2, "size$iv":I
    const/4 v3, -0x1

    if-lez v2, :cond_3

    .line 449
    const/4 v4, 0x0

    .line 450
    .local v4, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    .line 452
    .local v5, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v6, v5, v4

    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .local v6, "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    const/4 v7, 0x0

    .line 230
    .local v7, "$i$a$-indexOfFirst-SnapshotStateObserver$ensureMap$index$1":I
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->getOnChanged()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    if-ne v8, p1, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .end local v6    # "it":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local v7    # "$i$a$-indexOfFirst-SnapshotStateObserver$ensureMap$index$1":I
    :goto_0
    if-eqz v8, :cond_2

    goto :goto_1

    .line 453
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 454
    if-lt v4, v2, :cond_0

    .line 456
    .end local v4    # "i$iv":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    :cond_3
    move v4, v3

    .line 230
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "size$iv":I
    :goto_1
    move v0, v4

    .line 231
    .local v0, "index":I
    if-ne v0, v3, :cond_4

    .line 232
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    invoke-direct {v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 233
    .local v1, "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v3, 0x0

    .line 457
    .local v3, "$i$f$plusAssign":I
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 458
    nop

    .line 234
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "$i$f$plusAssign":I
    return-object v1

    .line 237
    .end local v1    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :cond_4
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 459
    .local v2, "$i$f$get":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    aget-object v1, v3, v0

    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$get":I
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 237
    return-object v1
.end method


# virtual methods
.method public final clear()V
    .locals 11

    .line 203
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "lock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 423
    .local v1, "$i$f$synchronized":I
    monitor-enter v0

    const/4 v2, 0x0

    .line 204
    .local v2, "$i$a$-synchronized-SnapshotStateObserver$clear$2":I
    :try_start_0
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v3, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 424
    .local v4, "$i$f$forEach":I
    nop

    .line 425
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v5

    .line 426
    .local v5, "size$iv":I
    if-lez v5, :cond_1

    .line 427
    const/4 v6, 0x0

    .line 428
    .local v6, "i$iv":I
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v7

    .line 430
    .local v7, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v8, v7, v6

    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .local v8, "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    const/4 v9, 0x0

    .line 205
    .local v9, "$i$a$-forEach-SnapshotStateObserver$clear$2$1":I
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->getMap()Landroidx/compose/runtime/collection/IdentityScopeMap;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/runtime/collection/IdentityScopeMap;->clear()V

    .line 206
    nop

    .line 431
    .end local v8    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local v9    # "$i$a$-forEach-SnapshotStateObserver$clear$2$1":I
    add-int/lit8 v6, v6, 0x1

    .line 432
    if-lt v6, v5, :cond_0

    .line 434
    .end local v6    # "i$iv":I
    .end local v7    # "content$iv":[Ljava/lang/Object;
    :cond_1
    nop

    .line 207
    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "size$iv":I
    nop

    .end local v2    # "$i$a$-synchronized-SnapshotStateObserver$clear$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 423
    nop

    .line 208
    .end local v0    # "lock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$synchronized":I
    return-void

    .line 207
    .restart local v0    # "lock$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$synchronized":I
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public final clear(Ljava/lang/Object;)V
    .locals 32
    .param p1, "scope"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "scope"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v3, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 323
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    const/4 v0, 0x0

    .line 156
    .local v0, "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    :try_start_0
    iget-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v5, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v6, 0x0

    .line 324
    .local v6, "$i$f$forEach":I
    nop

    .line 325
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 326
    .local v7, "size$iv":I
    if-lez v7, :cond_f

    .line 327
    const/4 v8, 0x0

    .line 328
    .local v8, "i$iv":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    .line 330
    .local v9, "content$iv":[Ljava/lang/Object;
    :goto_0
    aget-object v10, v9, v8

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .local v10, "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    const/4 v11, 0x0

    .line 157
    .local v11, "$i$a$-forEach-SnapshotStateObserver$clear$1$1":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->getMap()Landroidx/compose/runtime/collection/IdentityScopeMap;

    move-result-object v12

    .local v12, "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    const/4 v13, 0x0

    .line 331
    .local v13, "$i$f$removeValueIf":I
    const/4 v14, 0x0

    .line 332
    .local v14, "destinationIndex$iv":I
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-lez v15, :cond_b

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_1
    move/from16 v20, v19

    move/from16 v21, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    .local v20, "i$iv":I
    .local v21, "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    add-int/lit8 v0, v19, 0x1

    .line 333
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v19

    move/from16 v1, v20

    .end local v20    # "i$iv":I
    .local v1, "i$iv":I
    aget v19, v19, v1

    .line 334
    .local v19, "valueIndex$iv":I
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getScopeSets()[Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v20

    aget-object v20, v20, v19

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 335
    .local v20, "set$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    move-object/from16 v22, v20

    .local v22, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/16 v23, 0x0

    .line 336
    .local v23, "$i$f$removeValueIf":I
    const/16 v24, 0x0

    .line 337
    .local v24, "destinationIndex$iv$iv":I
    move/from16 v25, v4

    .end local v4    # "$i$f$synchronized":I
    .local v25, "$i$f$synchronized":I
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-lez v4, :cond_5

    move-object/from16 v26, v5

    move/from16 v5, v24

    move/from16 v24, v18

    .end local v24    # "destinationIndex$iv$iv":I
    .local v5, "destinationIndex$iv$iv":I
    .local v26, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    :goto_2
    move/from16 v27, v24

    move/from16 v28, v6

    .end local v6    # "$i$f$forEach":I
    .local v27, "i$iv$iv":I
    .local v28, "$i$f$forEach":I
    add-int/lit8 v6, v24, 0x1

    .line 339
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v29, v9

    move/from16 v9, v27

    .end local v27    # "i$iv$iv":I
    .local v9, "i$iv$iv":I
    .local v29, "content$iv":[Ljava/lang/Object;
    aget-object v24, v24, v9

    if-eqz v24, :cond_4

    .line 338
    nop

    .line 340
    .local v24, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v27, v24

    .local v27, "it":Ljava/lang/Object;
    const/16 v30, 0x0

    .line 158
    .local v30, "$i$a$-removeValueIf-SnapshotStateObserver$clear$1$1$1":I
    move-object/from16 v31, v10

    move-object/from16 v10, v27

    .end local v27    # "it":Ljava/lang/Object;
    .local v10, "it":Ljava/lang/Object;
    .local v31, "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    if-ne v10, v2, :cond_0

    move/from16 v10, v17

    goto :goto_3

    :cond_0
    move/from16 v10, v18

    .end local v10    # "it":Ljava/lang/Object;
    .end local v30    # "$i$a$-removeValueIf-SnapshotStateObserver$clear$1$1$1":I
    :goto_3
    if-nez v10, :cond_2

    .line 341
    if-eq v5, v9, :cond_1

    .line 342
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v10

    aput-object v24, v10, v5

    .line 344
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 337
    .end local v24    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    if-lt v6, v4, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v24, v6

    move/from16 v6, v28

    move-object/from16 v9, v29

    move-object/from16 v10, v31

    goto :goto_2

    .line 339
    .end local v31    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v10, "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :cond_4
    move-object/from16 v31, v10

    .end local v10    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v31    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$synchronized":I
    .end local p1    # "scope":Ljava/lang/Object;
    throw v0

    .line 337
    .end local v26    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v28    # "$i$f$forEach":I
    .end local v29    # "content$iv":[Ljava/lang/Object;
    .end local v31    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .local v5, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v6    # "$i$f$forEach":I
    .local v9, "content$iv":[Ljava/lang/Object;
    .restart local v10    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v24, "destinationIndex$iv$iv":I
    .restart local v25    # "$i$f$synchronized":I
    .restart local p1    # "scope":Ljava/lang/Object;
    :cond_5
    move-object/from16 v26, v5

    move/from16 v28, v6

    move-object/from16 v29, v9

    move-object/from16 v31, v10

    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$forEach":I
    .end local v9    # "content$iv":[Ljava/lang/Object;
    .end local v10    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v26    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v28    # "$i$f$forEach":I
    .restart local v29    # "content$iv":[Ljava/lang/Object;
    .restart local v31    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    move/from16 v5, v24

    .line 347
    .end local v24    # "destinationIndex$iv$iv":I
    .local v5, "destinationIndex$iv$iv":I
    :goto_4
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-ge v5, v4, :cond_7

    move v6, v5

    :cond_6
    move v9, v6

    .local v9, "i$iv$iv":I
    add-int/lit8 v6, v6, 0x1

    .line 348
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v10

    aput-object v16, v10, v9

    .line 347
    if-lt v6, v4, :cond_6

    .line 350
    .end local v9    # "i$iv$iv":I
    :cond_7
    move-object/from16 v4, v22

    .end local v22    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .local v4, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/IdentityArraySet;->setSize(I)V

    .line 351
    nop

    .line 352
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v5    # "destinationIndex$iv$iv":I
    .end local v23    # "$i$f$removeValueIf":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 353
    if-eq v14, v1, :cond_8

    .line 356
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v4

    aget v4, v4, v14

    .line 357
    .local v4, "destinationKeyOrder$iv":I
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v5

    aput v19, v5, v14

    .line 358
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v5

    aput v4, v5, v1

    .line 360
    .end local v4    # "destinationKeyOrder$iv":I
    :cond_8
    add-int/lit8 v14, v14, 0x1

    .line 332
    .end local v19    # "valueIndex$iv":I
    .end local v20    # "set$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    :cond_9
    if-lt v0, v15, :cond_a

    goto :goto_5

    :cond_a
    move-object/from16 v1, p0

    move/from16 v19, v0

    move/from16 v0, v21

    move/from16 v4, v25

    move-object/from16 v5, v26

    move/from16 v6, v28

    move-object/from16 v9, v29

    move-object/from16 v10, v31

    goto/16 :goto_1

    .end local v1    # "i$iv":I
    .end local v21    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    .end local v25    # "$i$f$synchronized":I
    .end local v26    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v28    # "$i$f$forEach":I
    .end local v29    # "content$iv":[Ljava/lang/Object;
    .end local v31    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v0    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    .local v4, "$i$f$synchronized":I
    .local v5, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v6    # "$i$f$forEach":I
    .local v9, "content$iv":[Ljava/lang/Object;
    .restart local v10    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :cond_b
    move/from16 v21, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v28, v6

    move-object/from16 v29, v9

    move-object/from16 v31, v10

    .line 364
    .end local v0    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    .end local v4    # "$i$f$synchronized":I
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$forEach":I
    .end local v9    # "content$iv":[Ljava/lang/Object;
    .end local v10    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v21    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    .restart local v25    # "$i$f$synchronized":I
    .restart local v26    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v28    # "$i$f$forEach":I
    .restart local v29    # "content$iv":[Ljava/lang/Object;
    .restart local v31    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :goto_5
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v0

    if-ge v14, v0, :cond_d

    move v1, v14

    :cond_c
    move v4, v1

    .local v4, "i$iv":I
    add-int/lit8 v1, v1, 0x1

    .line 365
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValues()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v6

    aget v6, v6, v4

    aput-object v16, v5, v6

    .line 364
    if-lt v1, v0, :cond_c

    .line 367
    .end local v4    # "i$iv":I
    :cond_d
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/collection/IdentityScopeMap;->setSize(I)V

    .line 368
    nop

    .line 160
    .end local v12    # "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    .end local v13    # "$i$f$removeValueIf":I
    .end local v14    # "destinationIndex$iv":I
    nop

    .line 369
    .end local v11    # "$i$a$-forEach-SnapshotStateObserver$clear$1$1":I
    .end local v31    # "commitMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    add-int/lit8 v8, v8, 0x1

    .line 370
    if-lt v8, v7, :cond_e

    goto :goto_6

    :cond_e
    move-object/from16 v1, p0

    move/from16 v0, v21

    move/from16 v4, v25

    move-object/from16 v5, v26

    move/from16 v6, v28

    move-object/from16 v9, v29

    goto/16 :goto_0

    .line 326
    .end local v8    # "i$iv":I
    .end local v21    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    .end local v25    # "$i$f$synchronized":I
    .end local v26    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v28    # "$i$f$forEach":I
    .end local v29    # "content$iv":[Ljava/lang/Object;
    .restart local v0    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    .local v4, "$i$f$synchronized":I
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v6    # "$i$f$forEach":I
    :cond_f
    move/from16 v21, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v28, v6

    .line 372
    .end local v0    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    .end local v4    # "$i$f$synchronized":I
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$forEach":I
    .restart local v21    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    .restart local v25    # "$i$f$synchronized":I
    .restart local v26    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v28    # "$i$f$forEach":I
    :goto_6
    nop

    .line 161
    .end local v7    # "size$iv":I
    .end local v26    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v28    # "$i$f$forEach":I
    nop

    .end local v21    # "$i$a$-synchronized-SnapshotStateObserver$clear$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 323
    nop

    .line 162
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v25    # "$i$f$synchronized":I
    return-void

    .line 161
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v25    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    goto :goto_7

    .end local v25    # "$i$f$synchronized":I
    .restart local v4    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v25, v4

    .end local v4    # "$i$f$synchronized":I
    .restart local v25    # "$i$f$synchronized":I
    :goto_7
    monitor-exit v3

    throw v0
.end method

.method public final clearIf(Lkotlin/jvm/functions/Function1;)V
    .locals 30
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "predicate"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v3, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 373
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    const/4 v0, 0x0

    .line 170
    .local v0, "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    :try_start_0
    iget-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v5, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v6, 0x0

    .line 374
    .local v6, "$i$f$forEach":I
    nop

    .line 375
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v7

    .line 376
    .local v7, "size$iv":I
    if-lez v7, :cond_e

    .line 377
    const/4 v8, 0x0

    .line 378
    .local v8, "i$iv":I
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v9

    .line 380
    .local v9, "content$iv":[Ljava/lang/Object;
    :goto_0
    aget-object v10, v9, v8

    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .local v10, "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    const/4 v11, 0x0

    .line 171
    .local v11, "$i$a$-forEach-SnapshotStateObserver$clearIf$1$1":I
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->getMap()Landroidx/compose/runtime/collection/IdentityScopeMap;

    move-result-object v12

    .local v12, "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    const/4 v13, 0x0

    .line 381
    .local v13, "$i$f$removeValueIf":I
    const/4 v14, 0x0

    .line 382
    .local v14, "destinationIndex$iv":I
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v15

    const/16 v16, 0x0

    if-lez v15, :cond_a

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_1
    move/from16 v19, v18

    move/from16 v20, v0

    .end local v0    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    .local v19, "i$iv":I
    .local v20, "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    add-int/lit8 v0, v18, 0x1

    .line 383
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v18

    move/from16 v1, v19

    .end local v19    # "i$iv":I
    .local v1, "i$iv":I
    aget v18, v18, v1

    .line 384
    .local v18, "valueIndex$iv":I
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getScopeSets()[Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v19

    aget-object v19, v19, v18

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    .local v19, "set$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    move-object/from16 v21, v19

    .local v21, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/16 v22, 0x0

    .line 386
    .local v22, "$i$f$removeValueIf":I
    const/16 v23, 0x0

    .line 387
    .local v23, "destinationIndex$iv$iv":I
    move/from16 v24, v4

    .end local v4    # "$i$f$synchronized":I
    .local v24, "$i$f$synchronized":I
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-lez v4, :cond_4

    move-object/from16 v25, v5

    move/from16 v5, v23

    move/from16 v23, v17

    .end local v23    # "destinationIndex$iv$iv":I
    .local v5, "destinationIndex$iv$iv":I
    .local v25, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    :goto_2
    move/from16 v26, v23

    move/from16 v27, v6

    .end local v6    # "$i$f$forEach":I
    .local v26, "i$iv$iv":I
    .local v27, "$i$f$forEach":I
    add-int/lit8 v6, v23, 0x1

    .line 389
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v28, v9

    move/from16 v9, v26

    .end local v26    # "i$iv$iv":I
    .local v9, "i$iv$iv":I
    .local v28, "content$iv":[Ljava/lang/Object;
    aget-object v23, v23, v9

    if-eqz v23, :cond_3

    .line 388
    move-object/from16 v26, v23

    .line 390
    .local v26, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v29, v10

    move-object/from16 v10, v26

    .end local v26    # "item$iv$iv":Ljava/lang/Object;
    .local v10, "item$iv$iv":Ljava/lang/Object;
    .local v29, "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    invoke-interface {v2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_1

    .line 391
    if-eq v5, v9, :cond_0

    .line 392
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v23

    aput-object v10, v23, v5

    .line 394
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 387
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    if-lt v6, v4, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v23, v6

    move/from16 v6, v27

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    goto :goto_2

    .line 389
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v10, "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :cond_3
    move-object/from16 v29, v10

    .end local v10    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v24    # "$i$f$synchronized":I
    .end local p1    # "predicate":Lkotlin/jvm/functions/Function1;
    throw v0

    .line 387
    .end local v25    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v27    # "$i$f$forEach":I
    .end local v28    # "content$iv":[Ljava/lang/Object;
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .local v5, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v6    # "$i$f$forEach":I
    .local v9, "content$iv":[Ljava/lang/Object;
    .restart local v10    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v23    # "destinationIndex$iv$iv":I
    .restart local v24    # "$i$f$synchronized":I
    .restart local p1    # "predicate":Lkotlin/jvm/functions/Function1;
    :cond_4
    move-object/from16 v25, v5

    move/from16 v27, v6

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$forEach":I
    .end local v9    # "content$iv":[Ljava/lang/Object;
    .end local v10    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v25    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v27    # "$i$f$forEach":I
    .restart local v28    # "content$iv":[Ljava/lang/Object;
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    move/from16 v5, v23

    .line 397
    .end local v23    # "destinationIndex$iv$iv":I
    .local v5, "destinationIndex$iv$iv":I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-ge v5, v4, :cond_6

    move v6, v5

    :cond_5
    move v9, v6

    .local v9, "i$iv$iv":I
    add-int/lit8 v6, v6, 0x1

    .line 398
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v10

    aput-object v16, v10, v9

    .line 397
    if-lt v6, v4, :cond_5

    .line 400
    .end local v9    # "i$iv$iv":I
    :cond_6
    move-object/from16 v4, v21

    .end local v21    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .local v4, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/IdentityArraySet;->setSize(I)V

    .line 401
    nop

    .line 402
    .end local v4    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v5    # "destinationIndex$iv$iv":I
    .end local v22    # "$i$f$removeValueIf":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 403
    if-eq v14, v1, :cond_7

    .line 406
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v4

    aget v4, v4, v14

    .line 407
    .local v4, "destinationKeyOrder$iv":I
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v5

    aput v18, v5, v14

    .line 408
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v5

    aput v4, v5, v1

    .line 410
    .end local v4    # "destinationKeyOrder$iv":I
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 382
    .end local v18    # "valueIndex$iv":I
    .end local v19    # "set$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    :cond_8
    if-lt v0, v15, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v1, p0

    move/from16 v18, v0

    move/from16 v0, v20

    move/from16 v4, v24

    move-object/from16 v5, v25

    move/from16 v6, v27

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    goto/16 :goto_1

    .end local v1    # "i$iv":I
    .end local v20    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    .end local v24    # "$i$f$synchronized":I
    .end local v25    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v27    # "$i$f$forEach":I
    .end local v28    # "content$iv":[Ljava/lang/Object;
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v0    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    .local v4, "$i$f$synchronized":I
    .local v5, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v6    # "$i$f$forEach":I
    .local v9, "content$iv":[Ljava/lang/Object;
    .restart local v10    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :cond_a
    move/from16 v20, v0

    move/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v27, v6

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    .line 414
    .end local v0    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    .end local v4    # "$i$f$synchronized":I
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$forEach":I
    .end local v9    # "content$iv":[Ljava/lang/Object;
    .end local v10    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v20    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    .restart local v24    # "$i$f$synchronized":I
    .restart local v25    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v27    # "$i$f$forEach":I
    .restart local v28    # "content$iv":[Ljava/lang/Object;
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :goto_4
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v0

    if-ge v14, v0, :cond_c

    move v1, v14

    :cond_b
    move v4, v1

    .local v4, "i$iv":I
    add-int/lit8 v1, v1, 0x1

    .line 415
    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValues()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v6

    aget v6, v6, v4

    aput-object v16, v5, v6

    .line 414
    if-lt v1, v0, :cond_b

    .line 417
    .end local v4    # "i$iv":I
    :cond_c
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/collection/IdentityScopeMap;->setSize(I)V

    .line 418
    nop

    .line 172
    .end local v12    # "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    .end local v13    # "$i$f$removeValueIf":I
    .end local v14    # "destinationIndex$iv":I
    nop

    .line 419
    .end local v11    # "$i$a$-forEach-SnapshotStateObserver$clearIf$1$1":I
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    add-int/lit8 v8, v8, 0x1

    .line 420
    if-lt v8, v7, :cond_d

    goto :goto_5

    :cond_d
    move-object/from16 v1, p0

    move/from16 v0, v20

    move/from16 v4, v24

    move-object/from16 v5, v25

    move/from16 v6, v27

    move-object/from16 v9, v28

    goto/16 :goto_0

    .line 376
    .end local v8    # "i$iv":I
    .end local v20    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    .end local v24    # "$i$f$synchronized":I
    .end local v25    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v27    # "$i$f$forEach":I
    .end local v28    # "content$iv":[Ljava/lang/Object;
    .restart local v0    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    .local v4, "$i$f$synchronized":I
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v6    # "$i$f$forEach":I
    :cond_e
    move/from16 v20, v0

    move/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v27, v6

    .line 422
    .end local v0    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    .end local v4    # "$i$f$synchronized":I
    .end local v5    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v6    # "$i$f$forEach":I
    .restart local v20    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    .restart local v24    # "$i$f$synchronized":I
    .restart local v25    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .restart local v27    # "$i$f$forEach":I
    :goto_5
    nop

    .line 173
    .end local v7    # "size$iv":I
    .end local v25    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v27    # "$i$f$forEach":I
    nop

    .end local v20    # "$i$a$-synchronized-SnapshotStateObserver$clearIf$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 373
    nop

    .line 174
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v24    # "$i$f$synchronized":I
    return-void

    .line 173
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v24    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v24    # "$i$f$synchronized":I
    .restart local v4    # "$i$f$synchronized":I
    :catchall_1
    move-exception v0

    move/from16 v24, v4

    .end local v4    # "$i$f$synchronized":I
    .restart local v24    # "$i$f$synchronized":I
    :goto_6
    monitor-exit v3

    throw v0
.end method

.method public final notifyChanges(Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1
    .param p1, "changes"    # Ljava/util/Set;
    .param p2, "snapshot"    # Landroidx/compose/runtime/snapshots/Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")V"
        }
    .end annotation

    const-string v0, "changes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapshot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public final observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 30
    .param p1, "scope"    # Ljava/lang/Object;
    .param p2, "onValueChangedForScope"    # Lkotlin/jvm/functions/Function1;
    .param p3, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "scope"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChangedForScope"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 107
    .local v5, "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    iget-boolean v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 108
    .local v6, "oldPaused":Z
    iget-object v7, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v7, "lock$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 283
    .local v8, "$i$f$synchronized":I
    monitor-enter v7

    const/4 v0, 0x0

    .line 108
    .local v0, "$i$a$-synchronized-SnapshotStateObserver$observeReads$applyMap$1":I
    :try_start_0
    invoke-direct {v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->ensureMap(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .end local v0    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$applyMap$1":I
    monitor-exit v7

    .line 283
    nop

    .line 108
    .end local v7    # "lock$iv":Ljava/lang/Object;
    .end local v8    # "$i$f$synchronized":I
    move-object v7, v9

    .line 109
    .local v7, "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->getCurrentScope()Ljava/lang/Object;

    move-result-object v8

    .line 111
    .local v8, "oldScope":Ljava/lang/Object;
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->setCurrentScope(Ljava/lang/Object;)V

    .line 112
    iput-object v7, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 113
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 115
    iget-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isObserving:Z

    if-nez v0, :cond_e

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isObserving:Z

    .line 117
    nop

    .line 118
    :try_start_1
    iget-object v10, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .local v10, "lock$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 284
    .local v11, "$i$f$synchronized":I
    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v12, 0x0

    .line 119
    .local v12, "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    :try_start_2
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->getMap()Landroidx/compose/runtime/collection/IdentityScopeMap;

    move-result-object v13

    .local v13, "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    const/4 v14, 0x0

    .line 285
    .local v14, "$i$f$removeValueIf":I
    const/4 v15, 0x0

    .line 286
    .local v15, "destinationIndex$iv":I
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v9

    if-lez v9, :cond_b

    const/16 v17, 0x0

    :goto_0
    move/from16 v18, v17

    const/16 v16, 0x1

    .local v18, "i$iv":I
    add-int/lit8 v0, v17, 0x1

    .line 287
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v17

    move/from16 v3, v18

    .end local v18    # "i$iv":I
    .local v3, "i$iv":I
    aget v17, v17, v3

    .line 288
    .local v17, "valueIndex$iv":I
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getScopeSets()[Landroidx/compose/runtime/collection/IdentityArraySet;

    move-result-object v18

    aget-object v18, v18, v17

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 289
    .local v18, "set$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    move-object/from16 v20, v18

    .local v20, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    const/16 v21, 0x0

    .line 290
    .local v21, "$i$f$removeValueIf":I
    const/16 v22, 0x0

    .line 291
    .local v22, "destinationIndex$iv$iv":I
    move/from16 v23, v11

    .end local v11    # "$i$f$synchronized":I
    .local v23, "$i$f$synchronized":I
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v11

    if-lez v11, :cond_5

    move/from16 v24, v12

    move/from16 v12, v22

    const/16 v22, 0x0

    .end local v22    # "destinationIndex$iv$iv":I
    .local v12, "destinationIndex$iv$iv":I
    .local v24, "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    :goto_1
    move/from16 v25, v22

    move/from16 v26, v14

    const/16 v16, 0x1

    .end local v14    # "$i$f$removeValueIf":I
    .local v25, "i$iv$iv":I
    .local v26, "$i$f$removeValueIf":I
    add-int/lit8 v14, v22, 0x1

    .line 293
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v27, v6

    move/from16 v6, v25

    .end local v25    # "i$iv$iv":I
    .local v6, "i$iv$iv":I
    .local v27, "oldPaused":Z
    :try_start_4
    aget-object v22, v22, v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v22, :cond_4

    .line 292
    nop

    .line 294
    .local v22, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v22

    .local v25, "it":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 120
    .local v28, "$i$a$-removeValueIf-SnapshotStateObserver$observeReads$1$1":I
    move-object/from16 v29, v7

    move-object/from16 v7, v25

    .end local v25    # "it":Ljava/lang/Object;
    .local v7, "it":Ljava/lang/Object;
    .local v29, "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    if-ne v7, v2, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    .end local v7    # "it":Ljava/lang/Object;
    .end local v28    # "$i$a$-removeValueIf-SnapshotStateObserver$observeReads$1$1":I
    :goto_2
    if-nez v7, :cond_2

    .line 295
    if-eq v12, v6, :cond_1

    .line 296
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v7

    aput-object v22, v7, v12

    .line 298
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 291
    .end local v22    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    if-lt v14, v11, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v22, v14

    move/from16 v14, v26

    move/from16 v6, v27

    move-object/from16 v7, v29

    goto :goto_1

    .line 293
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v7, "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :cond_4
    move-object/from16 v29, v7

    .end local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-direct {v0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v5    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local v8    # "oldScope":Ljava/lang/Object;
    .end local v10    # "lock$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    .end local v27    # "oldPaused":Z
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local p1    # "scope":Ljava/lang/Object;
    .end local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .end local p3    # "block":Lkotlin/jvm/functions/Function0;
    throw v0

    .line 122
    .end local v3    # "i$iv":I
    .end local v6    # "i$iv$iv":I
    .end local v12    # "destinationIndex$iv$iv":I
    .end local v13    # "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    .end local v15    # "destinationIndex$iv":I
    .end local v17    # "valueIndex$iv":I
    .end local v18    # "set$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v20    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v21    # "$i$f$removeValueIf":I
    .end local v24    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    .end local v26    # "$i$f$removeValueIf":I
    .restart local v5    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v8    # "oldScope":Ljava/lang/Object;
    .restart local v10    # "lock$iv":Ljava/lang/Object;
    .restart local v23    # "$i$f$synchronized":I
    .restart local v27    # "oldPaused":Z
    .restart local p1    # "scope":Ljava/lang/Object;
    .restart local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "block":Lkotlin/jvm/functions/Function0;
    :catchall_0
    move-exception v0

    move-object/from16 v29, v7

    .end local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    goto/16 :goto_5

    .line 291
    .end local v27    # "oldPaused":Z
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v3    # "i$iv":I
    .local v6, "oldPaused":Z
    .restart local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v12, "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    .restart local v13    # "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    .restart local v14    # "$i$f$removeValueIf":I
    .restart local v15    # "destinationIndex$iv":I
    .restart local v17    # "valueIndex$iv":I
    .restart local v18    # "set$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v20    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .restart local v21    # "$i$f$removeValueIf":I
    .local v22, "destinationIndex$iv$iv":I
    :cond_5
    move/from16 v27, v6

    move-object/from16 v29, v7

    move/from16 v24, v12

    move/from16 v26, v14

    .end local v6    # "oldPaused":Z
    .end local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local v12    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    .end local v14    # "$i$f$removeValueIf":I
    .restart local v24    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    .restart local v26    # "$i$f$removeValueIf":I
    .restart local v27    # "oldPaused":Z
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    move/from16 v12, v22

    .line 301
    .end local v22    # "destinationIndex$iv$iv":I
    .local v12, "destinationIndex$iv$iv":I
    :goto_3
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v6

    if-ge v12, v6, :cond_7

    move v7, v12

    :cond_6
    move v11, v7

    const/4 v14, 0x1

    .local v11, "i$iv$iv":I
    add-int/2addr v7, v14

    .line 302
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v14

    const/16 v19, 0x0

    aput-object v19, v14, v11

    .line 301
    if-lt v7, v6, :cond_6

    .line 304
    .end local v11    # "i$iv$iv":I
    :cond_7
    move-object/from16 v6, v20

    .end local v20    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .local v6, "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/collection/IdentityArraySet;->setSize(I)V

    .line 305
    nop

    .line 306
    .end local v6    # "this_$iv$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v12    # "destinationIndex$iv$iv":I
    .end local v21    # "$i$f$removeValueIf":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 307
    if-eq v15, v3, :cond_8

    .line 310
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v6

    aget v6, v6, v15

    .line 311
    .local v6, "destinationKeyOrder$iv":I
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v7

    aput v17, v7, v15

    .line 312
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v7

    aput v6, v7, v3

    .line 314
    .end local v6    # "destinationKeyOrder$iv":I
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 286
    .end local v17    # "valueIndex$iv":I
    .end local v18    # "set$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    :cond_9
    if-lt v0, v9, :cond_a

    goto :goto_4

    :cond_a
    move-object/from16 v3, p2

    move/from16 v17, v0

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v14, v26

    move/from16 v6, v27

    move-object/from16 v7, v29

    goto/16 :goto_0

    .line 122
    .end local v3    # "i$iv":I
    .end local v13    # "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    .end local v15    # "destinationIndex$iv":I
    .end local v24    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    .end local v26    # "$i$f$removeValueIf":I
    .end local v27    # "oldPaused":Z
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v6, "oldPaused":Z
    .restart local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :catchall_1
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v29, v7

    .end local v6    # "oldPaused":Z
    .end local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v27    # "oldPaused":Z
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    goto :goto_5

    .line 286
    .end local v23    # "$i$f$synchronized":I
    .end local v27    # "oldPaused":Z
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v6    # "oldPaused":Z
    .restart local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v11, "$i$f$synchronized":I
    .local v12, "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    .restart local v13    # "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    .restart local v14    # "$i$f$removeValueIf":I
    .restart local v15    # "destinationIndex$iv":I
    :cond_b
    move/from16 v27, v6

    move-object/from16 v29, v7

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v26, v14

    .line 318
    .end local v6    # "oldPaused":Z
    .end local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local v11    # "$i$f$synchronized":I
    .end local v12    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    .end local v14    # "$i$f$removeValueIf":I
    .restart local v23    # "$i$f$synchronized":I
    .restart local v24    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    .restart local v26    # "$i$f$removeValueIf":I
    .restart local v27    # "oldPaused":Z
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :goto_4
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getSize()I

    move-result v0

    if-ge v15, v0, :cond_d

    move v3, v15

    :cond_c
    move v6, v3

    const/4 v7, 0x1

    .local v6, "i$iv":I
    add-int/2addr v3, v7

    .line 319
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValues()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityScopeMap;->getValueOrder()[I

    move-result-object v11

    aget v11, v11, v6

    const/4 v12, 0x0

    aput-object v12, v9, v11

    .line 318
    if-lt v3, v0, :cond_c

    .line 321
    .end local v6    # "i$iv":I
    :cond_d
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/collection/IdentityScopeMap;->setSize(I)V

    .line 322
    nop

    .line 122
    .end local v13    # "this_$iv":Landroidx/compose/runtime/collection/IdentityScopeMap;
    .end local v15    # "destinationIndex$iv":I
    .end local v26    # "$i$f$removeValueIf":I
    nop

    .end local v24    # "$i$a$-synchronized-SnapshotStateObserver$observeReads$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v10

    .line 284
    nop

    .line 123
    .end local v10    # "lock$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 125
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isObserving:Z

    .line 126
    goto :goto_7

    .line 122
    .restart local v10    # "lock$iv":Ljava/lang/Object;
    .restart local v23    # "$i$f$synchronized":I
    :catchall_2
    move-exception v0

    goto :goto_5

    .end local v23    # "$i$f$synchronized":I
    .end local v27    # "oldPaused":Z
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v6, "oldPaused":Z
    .restart local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v11    # "$i$f$synchronized":I
    :catchall_3
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v29, v7

    move/from16 v23, v11

    .end local v6    # "oldPaused":Z
    .end local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local v11    # "$i$f$synchronized":I
    .restart local v23    # "$i$f$synchronized":I
    .restart local v27    # "oldPaused":Z
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :goto_5
    :try_start_7
    monitor-exit v10

    .end local v5    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local v8    # "oldScope":Ljava/lang/Object;
    .end local v27    # "oldPaused":Z
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .end local p1    # "scope":Ljava/lang/Object;
    .end local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .end local p3    # "block":Lkotlin/jvm/functions/Function0;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 126
    .end local v10    # "lock$iv":Ljava/lang/Object;
    .end local v23    # "$i$f$synchronized":I
    .restart local v5    # "oldMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v8    # "oldScope":Ljava/lang/Object;
    .restart local v27    # "oldPaused":Z
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local p1    # "scope":Ljava/lang/Object;
    .restart local p2    # "onValueChangedForScope":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "block":Lkotlin/jvm/functions/Function0;
    :catchall_4
    move-exception v0

    goto :goto_6

    .end local v27    # "oldPaused":Z
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v6    # "oldPaused":Z
    .restart local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :catchall_5
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v29, v7

    .line 125
    .end local v6    # "oldPaused":Z
    .end local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v27    # "oldPaused":Z
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :goto_6
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isObserving:Z

    throw v0

    .line 128
    .end local v27    # "oldPaused":Z
    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v6    # "oldPaused":Z
    .restart local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    :cond_e
    move/from16 v27, v6

    move-object/from16 v29, v7

    .end local v6    # "oldPaused":Z
    .end local v7    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .restart local v27    # "oldPaused":Z
    .restart local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 131
    :goto_7
    iput-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 132
    move-object/from16 v3, v29

    .end local v29    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v3, "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->setCurrentScope(Ljava/lang/Object;)V

    .line 133
    move/from16 v6, v27

    .end local v27    # "oldPaused":Z
    .restart local v6    # "oldPaused":Z
    iput-boolean v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 134
    return-void

    .line 108
    .end local v3    # "applyMap":Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .local v7, "lock$iv":Ljava/lang/Object;
    .local v8, "$i$f$synchronized":I
    :catchall_6
    move-exception v0

    move-object v3, v0

    monitor-exit v7

    throw v3
.end method

.method public final start()V
    .locals 2

    .line 180
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->registerApplyObserver(Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/snapshots/ObserverHandle;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 181
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 187
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 188
    :goto_0
    return-void
.end method

.method public final withNoObservations(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 142
    .local v0, "oldPaused":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 143
    nop

    .line 144
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 147
    nop

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    .line 146
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    throw v1
.end method
