.class final Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 3 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNodeKt\n*L\n1#1,1402:1\n727#2,2:1403\n727#2,2:1465\n1397#3,5:1405\n1397#3,5:1410\n1397#3,5:1415\n1397#3,5:1420\n1397#3,5:1425\n1397#3,5:1430\n1397#3,5:1435\n1397#3,5:1440\n1397#3,5:1445\n1397#3,5:1450\n1397#3,5:1455\n1397#3,5:1460\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1\n*L\n667#1:1403,2\n714#1:1465,2\n679#1:1405,5\n682#1:1410,5\n685#1:1415,5\n688#1:1420,5\n691#1:1425,5\n694#1:1430,5\n697#1:1435,5\n700#1:1440,5\n703#1:1445,5\n706#1:1450,5\n709#1:1455,5\n713#1:1460,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n"
    }
    d2 = {
        "Landroidx/compose/ui/Modifier$Element;",
        "mod",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
        "toWrap",
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

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 6
    .param p1, "mod"    # Landroidx/compose/ui/Modifier$Element;
    .param p2, "toWrap"    # Landroidx/compose/ui/node/LayoutNodeWrapper;

    const-string v0, "mod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "toWrap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    move-object v0, p2

    .line 660
    .local v0, "wrapper":Landroidx/compose/ui/node/LayoutNodeWrapper;
    instance-of v1, p1, Landroidx/compose/ui/layout/RemeasurementModifier;

    if-eqz v1, :cond_0

    .line 661
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/layout/RemeasurementModifier;

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    check-cast v2, Landroidx/compose/ui/layout/Remeasurement;

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/RemeasurementModifier;->onRemeasurementAvailable(Landroidx/compose/ui/layout/Remeasurement;)V

    .line 664
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v1, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->access$reuseLayoutNodeWrapper(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    move-result-object v1

    .line 665
    .local v1, "delegate":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    if-eqz v1, :cond_2

    .line 666
    instance-of v2, v1, Landroidx/compose/ui/node/OnGloballyPositionedModifierWrapper;

    if-eqz v2, :cond_1

    .line 667
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNode;->access$getOrCreateOnPositionedCallbacks(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v3, v1

    .local v3, "element$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1403
    .local v4, "$i$f$plusAssign":I
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1404
    nop

    .line 669
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$plusAssign":I
    :cond_1
    move-object v0, v1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeWrapper;

    goto/16 :goto_0

    .line 675
    :cond_2
    instance-of v2, p1, Landroidx/compose/ui/draw/DrawModifier;

    if-eqz v2, :cond_3

    .line 676
    new-instance v2, Landroidx/compose/ui/node/ModifiedDrawNode;

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/draw/DrawModifier;

    invoke-direct {v2, v0, v3}, Landroidx/compose/ui/node/ModifiedDrawNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/draw/DrawModifier;)V

    move-object v0, v2

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 678
    :cond_3
    instance-of v2, p1, Landroidx/compose/ui/focus/FocusModifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 679
    new-instance v2, Landroidx/compose/ui/node/ModifiedFocusNode;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/focus/FocusModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/ModifiedFocusNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/focus/FocusModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .local v2, "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1405
    .local v4, "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_4

    .line 1406
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1407
    .local v5, "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1409
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_4
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 679
    move-object v0, v2

    .line 681
    :cond_5
    instance-of v2, p1, Landroidx/compose/ui/focus/FocusEventModifier;

    if-eqz v2, :cond_7

    .line 682
    new-instance v2, Landroidx/compose/ui/node/ModifiedFocusEventNode;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/focus/FocusEventModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/ModifiedFocusEventNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/focus/FocusEventModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1410
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_6

    .line 1411
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1412
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1414
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_6
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 682
    move-object v0, v2

    .line 684
    :cond_7
    instance-of v2, p1, Landroidx/compose/ui/focus/FocusRequesterModifier;

    if-eqz v2, :cond_9

    .line 685
    new-instance v2, Landroidx/compose/ui/node/ModifiedFocusRequesterNode;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/focus/FocusRequesterModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/ModifiedFocusRequesterNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/focus/FocusRequesterModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1415
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_8

    .line 1416
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1417
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1419
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_8
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 685
    move-object v0, v2

    .line 687
    :cond_9
    instance-of v2, p1, Landroidx/compose/ui/focus/FocusOrderModifier;

    if-eqz v2, :cond_b

    .line 688
    new-instance v2, Landroidx/compose/ui/node/ModifiedFocusOrderNode;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/focus/FocusOrderModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/ModifiedFocusOrderNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/focus/FocusOrderModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1420
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_a

    .line 1421
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1422
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1424
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_a
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 688
    move-object v0, v2

    .line 690
    :cond_b
    instance-of v2, p1, Landroidx/compose/ui/input/key/KeyInputModifier;

    if-eqz v2, :cond_d

    .line 691
    new-instance v2, Landroidx/compose/ui/node/ModifiedKeyInputNode;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/input/key/KeyInputModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/ModifiedKeyInputNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/input/key/KeyInputModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1425
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_c

    .line 1426
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1427
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1429
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_c
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 691
    move-object v0, v2

    .line 693
    :cond_d
    instance-of v2, p1, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    if-eqz v2, :cond_f

    .line 694
    new-instance v2, Landroidx/compose/ui/node/PointerInputDelegatingWrapper;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/PointerInputDelegatingWrapper;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/input/pointer/PointerInputModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1430
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_e

    .line 1431
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1432
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1434
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_e
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 694
    move-object v0, v2

    .line 696
    :cond_f
    instance-of v2, p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifier;

    if-eqz v2, :cond_11

    .line 697
    new-instance v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDelegatingWrapper;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDelegatingWrapper;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/input/nestedscroll/NestedScrollModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1435
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_10

    .line 1436
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1437
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1439
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_10
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 697
    move-object v0, v2

    .line 699
    :cond_11
    instance-of v2, p1, Landroidx/compose/ui/layout/LayoutModifier;

    if-eqz v2, :cond_13

    .line 700
    new-instance v2, Landroidx/compose/ui/node/ModifiedLayoutNode;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/layout/LayoutModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/ModifiedLayoutNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1440
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_12

    .line 1441
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1442
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1444
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_12
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 700
    move-object v0, v2

    .line 702
    :cond_13
    instance-of v2, p1, Landroidx/compose/ui/layout/ParentDataModifier;

    if-eqz v2, :cond_15

    .line 703
    new-instance v2, Landroidx/compose/ui/node/ModifiedParentDataNode;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/layout/ParentDataModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/ModifiedParentDataNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/ParentDataModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1445
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_14

    .line 1446
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1447
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1449
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_14
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 703
    move-object v0, v2

    .line 705
    :cond_15
    instance-of v2, p1, Landroidx/compose/ui/semantics/SemanticsModifier;

    if-eqz v2, :cond_17

    .line 706
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsWrapper;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/semantics/SemanticsWrapper;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/semantics/SemanticsModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1450
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_16

    .line 1451
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1452
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1454
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_16
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 706
    move-object v0, v2

    .line 708
    :cond_17
    instance-of v2, p1, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    if-eqz v2, :cond_19

    .line 709
    new-instance v2, Landroidx/compose/ui/node/RemeasureModifierWrapper;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/RemeasureModifierWrapper;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/OnRemeasuredModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1455
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_18

    .line 1456
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1457
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1459
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_18
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 709
    move-object v0, v2

    .line 711
    :cond_19
    instance-of v2, p1, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    if-eqz v2, :cond_1b

    .line 713
    new-instance v2, Landroidx/compose/ui/node/OnGloballyPositionedModifierWrapper;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    invoke-direct {v2, v0, v4}, Landroidx/compose/ui/node/OnGloballyPositionedModifierWrapper;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/OnGloballyPositionedModifier;)V

    check-cast v2, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .restart local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    const/4 v4, 0x0

    .line 1460
    .restart local v4    # "$i$f$assignChained":I
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    if-eq p2, v5, :cond_1a

    .line 1461
    invoke-virtual {v2}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;

    .line 1462
    .restart local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;->setChained(Z)V

    .line 1464
    .end local v5    # "wrapper$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    :cond_1a
    nop

    .end local v2    # "$this$assignChained$iv":Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;
    .end local v4    # "$i$f$assignChained":I
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 712
    move-object v0, v2

    .line 714
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNode;->access$getOrCreateOnPositionedCallbacks(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .local v2, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    move-object v3, v0

    .restart local v3    # "element$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1465
    .local v4, "$i$f$plusAssign":I
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1466
    nop

    .line 717
    .end local v2    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$plusAssign":I
    :cond_1b
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 658
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/Modifier$Element;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/node/LayoutNodeWrapper;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->invoke(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v0

    return-object v0
.end method
