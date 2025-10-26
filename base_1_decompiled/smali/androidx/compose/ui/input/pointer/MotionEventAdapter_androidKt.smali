.class public final Landroidx/compose/ui/input/pointer/MotionEventAdapter_androidKt;
.super Ljava/lang/Object;
.source "MotionEventAdapter.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001aG\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000e\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "createPointerInputEventData",
        "Landroidx/compose/ui/input/pointer/PointerInputEventData;",
        "positionCalculator",
        "Landroidx/compose/ui/input/pointer/PositionCalculator;",
        "pointerId",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "timestamp",
        "",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "index",
        "",
        "upIndex",
        "createPointerInputEventData-VnAYq1g",
        "(Landroidx/compose/ui/input/pointer/PositionCalculator;JJLandroid/view/MotionEvent;ILjava/lang/Integer;)Landroidx/compose/ui/input/pointer/PointerInputEventData;",
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
.method public static final synthetic access$createPointerInputEventData-VnAYq1g(Landroidx/compose/ui/input/pointer/PositionCalculator;JJLandroid/view/MotionEvent;ILjava/lang/Integer;)Landroidx/compose/ui/input/pointer/PointerInputEventData;
    .locals 1
    .param p0, "positionCalculator"    # Landroidx/compose/ui/input/pointer/PositionCalculator;
    .param p1, "pointerId"    # J
    .param p3, "timestamp"    # J
    .param p5, "motionEvent"    # Landroid/view/MotionEvent;
    .param p6, "index"    # I
    .param p7, "upIndex"    # Ljava/lang/Integer;

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/input/pointer/MotionEventAdapter_androidKt;->createPointerInputEventData-VnAYq1g(Landroidx/compose/ui/input/pointer/PositionCalculator;JJLandroid/view/MotionEvent;ILjava/lang/Integer;)Landroidx/compose/ui/input/pointer/PointerInputEventData;

    move-result-object v0

    return-object v0
.end method

.method private static final createPointerInputEventData-VnAYq1g(Landroidx/compose/ui/input/pointer/PositionCalculator;JJLandroid/view/MotionEvent;ILjava/lang/Integer;)Landroidx/compose/ui/input/pointer/PointerInputEventData;
    .locals 20
    .param p0, "positionCalculator"    # Landroidx/compose/ui/input/pointer/PositionCalculator;
    .param p1, "pointerId"    # J
    .param p3, "timestamp"    # J
    .param p5, "motionEvent"    # Landroid/view/MotionEvent;
    .param p6, "index"    # I
    .param p7, "upIndex"    # Ljava/lang/Integer;

    .line 154
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual/range {p5 .. p6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p5 .. p6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    .local v2, "position":J
    const-wide/16 v4, 0x0

    .line 156
    .local v4, "rawPosition":J
    if-nez v1, :cond_0

    .line 157
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    .line 158
    invoke-interface {v0, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v2

    move-object/from16 v7, p5

    goto :goto_0

    .line 159
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_1

    .line 160
    sget-object v6, Landroidx/compose/ui/input/pointer/MotionEventHelper;->INSTANCE:Landroidx/compose/ui/input/pointer/MotionEventHelper;

    move-object/from16 v7, p5

    invoke-virtual {v6, v7, v1}, Landroidx/compose/ui/input/pointer/MotionEventHelper;->toRawOffset-dBAh8RU(Landroid/view/MotionEvent;I)J

    move-result-wide v4

    .line 161
    invoke-interface {v0, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v2

    goto :goto_0

    .line 163
    :cond_1
    move-object/from16 v7, p5

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/input/pointer/PositionCalculator;->localToScreen-MK-Hz9U(J)J

    move-result-wide v4

    .line 165
    :goto_0
    invoke-virtual/range {p5 .. p6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 171
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getUnknown-T8wyACA()I

    move-result v6

    move/from16 v18, v6

    goto :goto_1

    .line 170
    :pswitch_0
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getEraser-T8wyACA()I

    move-result v6

    move/from16 v18, v6

    goto :goto_1

    .line 169
    :pswitch_1
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getMouse-T8wyACA()I

    move-result v6

    move/from16 v18, v6

    goto :goto_1

    .line 168
    :pswitch_2
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getStylus-T8wyACA()I

    move-result v6

    move/from16 v18, v6

    goto :goto_1

    .line 167
    :pswitch_3
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v6

    move/from16 v18, v6

    goto :goto_1

    .line 166
    :pswitch_4
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getUnknown-T8wyACA()I

    move-result v6

    move/from16 v18, v6

    .line 165
    :goto_1
    nop

    .line 174
    .local v18, "toolType":I
    new-instance v6, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 175
    nop

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 179
    if-nez p7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v1, v8, :cond_3

    :goto_2
    const/4 v8, 0x1

    :goto_3
    move/from16 v17, v8

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 180
    :goto_4
    const/16 v19, 0x0

    .line 174
    move-object v8, v6

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide v13, v4

    move-wide v15, v2

    invoke-direct/range {v8 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputEventData;-><init>(JJJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
