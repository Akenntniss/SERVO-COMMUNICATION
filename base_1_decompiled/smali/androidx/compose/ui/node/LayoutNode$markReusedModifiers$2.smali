.class final Landroidx/compose/ui/node/LayoutNode$markReusedModifiers$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->markReusedModifiers(Landroidx/compose/ui/Modifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Unit;",
        "Landroidx/compose/ui/Modifier$Element;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$markReusedModifiers$2\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,1402:1\n643#2,12:1403\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$markReusedModifiers$2\n*L\n1211#1:1403,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "Landroidx/compose/ui/Modifier$Element;",
        "mod",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$markReusedModifiers$2;->this$0:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 1210
    move-object v0, p1

    check-cast v0, Lkotlin/Unit;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/Modifier$Element;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/LayoutNode$markReusedModifiers$2;->invoke(Lkotlin/Unit;Landroidx/compose/ui/Modifier$Element;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lkotlin/Unit;Landroidx/compose/ui/Modifier$Element;)V
    .locals 11
    .param p1, "$noName_0"    # Lkotlin/Unit;
    .param p2, "mod"    # Landroidx/compose/ui/Modifier$Element;

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$markReusedModifiers$2;->this$0:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNode;->access$getWrapperCache$p(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 1403
    .local v1, "$i$f$lastOrNull":I
    nop

    .line 1404
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 1405
    .local v2, "size$iv":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_3

    .line 1406
    add-int/lit8 v5, v2, -0x1

    .line 1407
    .local v5, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v6

    .line 1409
    .local v6, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v7, v6, v5

    .line 1410
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .local v8, "it":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v9, 0x0

    .line 1212
    .local v9, "$i$a$-lastOrNull-LayoutNode$markReusedModifiers$2$wrapper$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getModifier()Landroidx/compose/ui/Modifier$Element;

    move-result-object v10

    if-ne v10, p2, :cond_1

    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getToBeReusedForSameModifier()Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .end local v8    # "it":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v9    # "$i$a$-lastOrNull-LayoutNode$markReusedModifiers$2$wrapper$1":I
    :goto_0
    if-eqz v10, :cond_2

    goto :goto_1

    .line 1411
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 1412
    if-gez v5, :cond_0

    .line 1414
    .end local v5    # "i$iv":I
    .end local v6    # "content$iv":[Ljava/lang/Object;
    .end local v7    # "item$iv":Ljava/lang/Object;
    :cond_3
    move-object v7, v4

    .line 1211
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$lastOrNull":I
    .end local v2    # "size$iv":I
    :goto_1
    move-object v0, v7

    check-cast v0, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1215
    .local v0, "wrapper":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :goto_2
    if-eqz v0, :cond_6

    .line 1216
    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setToBeReusedForSameModifier(Z)V

    .line 1217
    invoke-virtual {v0}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->isChained()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1218
    invoke-virtual {v0}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v1

    instance-of v2, v1, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    if-eqz v2, :cond_4

    check-cast v1, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    goto :goto_3

    :cond_4
    move-object v1, v4

    goto :goto_3

    .line 1220
    :cond_5
    move-object v1, v4

    .line 1217
    :goto_3
    move-object v0, v1

    goto :goto_2

    .line 1222
    :cond_6
    return-void
.end method
