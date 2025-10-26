.class public final Landroidx/compose/ui/layout/RelocationRequester;
.super Ljava/lang/Object;
.source "RelocationRequester.kt"


# annotations
.annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRelocationRequester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelocationRequester.kt\nandroidx/compose/ui/layout/RelocationRequester\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,44:1\n1137#2:45\n1116#2,2:46\n459#3,11:48\n*S KotlinDebug\n*F\n+ 1 RelocationRequester.kt\nandroidx/compose/ui/layout/RelocationRequester\n*L\n35#1:45\n35#1:46,2\n41#1:48,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tR\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/ui/layout/RelocationRequester;",
        "",
        "()V",
        "modifiers",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/layout/RelocationRequesterModifier;",
        "getModifiers$ui_release",
        "()Landroidx/compose/runtime/collection/MutableVector;",
        "bringIntoView",
        "",
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
.field private final modifiers:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/layout/RelocationRequesterModifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    sput v0, Landroidx/compose/ui/layout/RelocationRequester;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    .line 45
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 46
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Landroidx/compose/ui/layout/RelocationRequesterModifier;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 45
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 35
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/ui/layout/RelocationRequester;->modifiers:Landroidx/compose/runtime/collection/MutableVector;

    .line 34
    return-void
.end method


# virtual methods
.method public final bringIntoView()V
    .locals 7

    .line 41
    iget-object v0, p0, Landroidx/compose/ui/layout/RelocationRequester;->modifiers:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 48
    .local v1, "$i$f$forEach":I
    nop

    .line 49
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 50
    .local v2, "size$iv":I
    if-lez v2, :cond_1

    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    .line 54
    .local v4, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/ui/layout/RelocationRequesterModifier;

    .local v5, "it":Landroidx/compose/ui/layout/RelocationRequesterModifier;
    const/4 v6, 0x0

    .line 41
    .local v6, "$i$a$-forEach-RelocationRequester$bringIntoView$1":I
    invoke-virtual {v5}, Landroidx/compose/ui/layout/RelocationRequesterModifier;->bringIntoView()V

    .line 55
    .end local v5    # "it":Landroidx/compose/ui/layout/RelocationRequesterModifier;
    .end local v6    # "$i$a$-forEach-RelocationRequester$bringIntoView$1":I
    add-int/lit8 v3, v3, 0x1

    .line 56
    if-lt v3, v2, :cond_0

    .line 58
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    :cond_1
    nop

    .line 42
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    return-void
.end method

.method public final getModifiers$ui_release()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/layout/RelocationRequesterModifier;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Landroidx/compose/ui/layout/RelocationRequester;->modifiers:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method
