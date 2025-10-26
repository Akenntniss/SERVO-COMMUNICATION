.class final Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;
.super Ljava/lang/Object;
.source "PointerInputEventProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerInputEventProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerInputEventProcessor.kt\nandroidx/compose/ui/input/pointer/PointerInputChangeEventProducer\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,207:1\n28#2,6:208\n*S KotlinDebug\n*F\n+ 1 PointerInputEventProcessor.kt\nandroidx/compose/ui/input/pointer/PointerInputChangeEventProducer\n*L\n124#1:208,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;",
        "",
        "()V",
        "previousPointerInputData",
        "",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;",
        "clear",
        "",
        "produce",
        "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
        "pointerInputEvent",
        "Landroidx/compose/ui/input/pointer/PointerInputEvent;",
        "positionCalculator",
        "Landroidx/compose/ui/input/pointer/PositionCalculator;",
        "PointerInputData",
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


# instance fields
.field private final previousPointerInputData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 113
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    return-void
.end method

.method public final produce(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .locals 39
    .param p1, "pointerInputEvent"    # Landroidx/compose/ui/input/pointer/PointerInputEvent;
    .param p2, "positionCalculator"    # Landroidx/compose/ui/input/pointer/PositionCalculator;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "pointerInputEvent"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "positionCalculator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->getPointers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .line 121
    nop

    .line 124
    .local v3, "changes":Ljava/util/Map;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->getPointers()Ljava/util/List;

    move-result-object v4

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 208
    .local v5, "$i$f$fastForEach":I
    nop

    .line 209
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_3

    const/4 v8, 0x0

    :goto_0
    move v9, v8

    .local v9, "index$iv":I
    add-int/lit8 v8, v8, 0x1

    .line 210
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 211
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .local v11, "it":Landroidx/compose/ui/input/pointer/PointerInputEventData;
    const/4 v12, 0x0

    .local v12, "$i$a$-fastForEach-PointerInputChangeEventProducer$produce$1":I
    const-wide/16 v13, 0x0

    .local v13, "previousTime":J
    const-wide/16 v15, 0x0

    .local v15, "previousPosition":J
    const/16 v17, 0x0

    .line 129
    .local v17, "previousDown":Z
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    move-result-wide v18

    move-object/from16 v20, v4

    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .local v20, "$this$fastForEach$iv":Ljava/util/List;
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    .line 130
    .local v4, "previousData":Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;
    if-nez v4, :cond_0

    .line 131
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getUptime()J

    move-result-wide v13

    .line 132
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getPosition-F1C5BW0()J

    move-result-wide v15

    .line 133
    const/4 v7, 0x0

    move/from16 v17, v9

    move-object/from16 v18, v10

    .end local v17    # "previousDown":Z
    .local v7, "previousDown":Z
    goto :goto_1

    .line 135
    .end local v7    # "previousDown":Z
    .restart local v17    # "previousDown":Z
    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->getUptime()J

    move-result-wide v13

    .line 136
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->getDown()Z

    move-result v7

    .line 138
    .end local v17    # "previousDown":Z
    .restart local v7    # "previousDown":Z
    move/from16 v17, v9

    move-object/from16 v18, v10

    .end local v9    # "index$iv":I
    .end local v10    # "item$iv":Ljava/lang/Object;
    .local v17, "index$iv":I
    .local v18, "item$iv":Ljava/lang/Object;
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->getPositionOnScreen-F1C5BW0()J

    move-result-wide v9

    invoke-interface {v2, v9, v10}, Landroidx/compose/ui/input/pointer/PositionCalculator;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v9

    .line 137
    move-wide v15, v9

    .line 141
    :goto_1
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v9

    .line 142
    new-instance v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 143
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    move-result-wide v22

    .line 144
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getUptime()J

    move-result-wide v24

    .line 145
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getPosition-F1C5BW0()J

    move-result-wide v26

    .line 146
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getDown()Z

    move-result v28

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 150
    new-instance v2, Landroidx/compose/ui/input/pointer/ConsumedData;

    move-object/from16 v19, v4

    .end local v4    # "previousData":Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;
    .local v19, "previousData":Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;
    const/4 v4, 0x3

    move/from16 v37, v5

    .end local v5    # "$i$f$fastForEach":I
    .local v37, "$i$f$fastForEach":I
    const/4 v5, 0x0

    move/from16 v38, v12

    const/4 v12, 0x0

    .end local v12    # "$i$a$-fastForEach-PointerInputChangeEventProducer$produce$1":I
    .local v38, "$i$a$-fastForEach-PointerInputChangeEventProducer$produce$1":I
    invoke-direct {v2, v12, v12, v4, v5}, Landroidx/compose/ui/input/pointer/ConsumedData;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getType-T8wyACA()I

    move-result v35

    const/16 v36, 0x0

    .line 142
    move-object/from16 v21, v10

    move-wide/from16 v29, v13

    move-wide/from16 v31, v15

    move/from16 v33, v7

    move-object/from16 v34, v2

    invoke-direct/range {v21 .. v36}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 141
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v4

    new-instance v5, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    .line 155
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getUptime()J

    move-result-wide v22

    .line 156
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getPositionOnScreen-F1C5BW0()J

    move-result-wide v24

    .line 157
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getDown()Z

    move-result v26

    const/16 v27, 0x0

    .line 154
    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v27}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;-><init>(JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 160
    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_2
    nop

    .line 209
    .end local v7    # "previousDown":Z
    .end local v11    # "it":Landroidx/compose/ui/input/pointer/PointerInputEventData;
    .end local v13    # "previousTime":J
    .end local v15    # "previousPosition":J
    .end local v18    # "item$iv":Ljava/lang/Object;
    .end local v19    # "previousData":Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;
    .end local v38    # "$i$a$-fastForEach-PointerInputChangeEventProducer$produce$1":I
    if-le v8, v6, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v2, p2

    move-object/from16 v4, v20

    move/from16 v5, v37

    goto/16 :goto_0

    .end local v17    # "index$iv":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v37    # "$i$f$fastForEach":I
    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v5    # "$i$f$fastForEach":I
    :cond_3
    move-object/from16 v20, v4

    move/from16 v37, v5

    .line 213
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v37    # "$i$f$fastForEach":I
    :goto_3
    nop

    .line 163
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v37    # "$i$f$fastForEach":I
    new-instance v2, Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    invoke-direct {v2, v3, v1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;-><init>(Ljava/util/Map;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V

    return-object v2
.end method
