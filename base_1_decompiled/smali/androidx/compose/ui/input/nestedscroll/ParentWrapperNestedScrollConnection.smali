.class final Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;
.super Ljava/lang/Object;
.source "NestedScrollDelegatingWrapper.kt"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004J)\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J-\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J%\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0002\u001a\u00020\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0003\u001a\u00020\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0006\"\u0004\u0008\n\u0010\u0008\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "parent",
        "self",
        "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V",
        "getParent",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "setParent",
        "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V",
        "getSelf",
        "setSelf",
        "onPostFling",
        "Landroidx/compose/ui/unit/Velocity;",
        "consumed",
        "available",
        "onPostFling-RZ2iAVY",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onPostScroll",
        "Landroidx/compose/ui/geometry/Offset;",
        "source",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "onPostScroll-DzOQY0M",
        "(JJI)J",
        "onPreFling",
        "onPreFling-QWom1Mo",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onPreScroll",
        "onPreScroll-OzD1aCk",
        "(JI)J",
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
.field private parent:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field private self:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V
    .locals 1
    .param p1, "parent"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .param p2, "self"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "self"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->parent:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 154
    iput-object p2, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->self:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 152
    return-void
.end method


# virtual methods
.method public final getParent()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->parent:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v0
.end method

.method public final getSelf()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->self:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v0
.end method

.method public onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;

    iget v2, v1, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 183
    iget v3, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->label:I

    packed-switch v3, :pswitch_data_0

    .line 186
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const-wide/16 v3, 0x0

    .local v3, "selfConsumed":J
    iget-wide v3, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v4, v3

    move-object v3, v1

    goto :goto_2

    .end local v3    # "selfConsumed":J
    :pswitch_1
    move-object/from16 v3, p0

    .local v3, "this":Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;
    move-wide/from16 v4, p1

    .local v4, "consumed":J
    move-wide/from16 v6, p3

    .local v6, "available":J
    iget-wide v6, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->J$1:J

    iget-wide v4, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->J$0:J

    iget-object v8, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->L$0:Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v3

    move-wide v11, v4

    move-wide v13, v6

    move-object v3, v1

    goto :goto_1

    .end local v3    # "this":Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;
    .end local v4    # "consumed":J
    .end local v6    # "available":J
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p0

    .local v10, "this":Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;
    move-wide/from16 v11, p1

    .local v11, "consumed":J
    move-wide/from16 v13, p3

    .line 184
    .local v13, "available":J
    invoke-virtual {v10}, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->getSelf()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v3

    iput-object v10, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->L$0:Ljava/lang/Object;

    iput-wide v11, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->J$0:J

    iput-wide v13, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->J$1:J

    const/4 v4, 0x1

    iput v4, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->label:I

    move-wide v4, v11

    move-wide v6, v13

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_1

    .line 183
    return-object v9

    .line 184
    :cond_1
    :goto_1
    check-cast v3, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v6

    .line 185
    .local v6, "selfConsumed":J
    invoke-virtual {v10}, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->getParent()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v3

    invoke-static {v11, v12, v6, v7}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    move-result-wide v4

    invoke-static {v13, v14, v6, v7}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v15

    const/4 v8, 0x0

    iput-object v8, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->J$0:J

    const/4 v8, 0x2

    iput v8, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPostFling$1;->label:I

    move-wide/from16 v17, v6

    .end local v6    # "selfConsumed":J
    .local v17, "selfConsumed":J
    move-wide v6, v15

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v10    # "this":Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;
    .end local v11    # "consumed":J
    .end local v13    # "available":J
    if-ne v3, v9, :cond_2

    .line 183
    return-object v9

    .line 185
    :cond_2
    move-wide/from16 v4, v17

    .end local v17    # "selfConsumed":J
    .local v4, "selfConsumed":J
    :goto_2
    check-cast v3, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v6

    .line 186
    .local v6, "parentConsumed":J
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 8
    .param p1, "consumed"    # J
    .param p3, "available"    # J
    .param p5, "source"    # I

    .line 171
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->self:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostScroll-DzOQY0M(JJI)J

    move-result-wide v0

    .line 173
    .local v0, "selfConsumed":J
    iget-object v2, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->parent:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v3

    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v5

    move v7, p5

    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPostScroll-DzOQY0M(JJI)J

    move-result-wide v2

    .line 172
    nop

    .line 174
    .local v2, "parentConsumed":J
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;

    iget v1, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;-><init>(Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 177
    iget v2, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 180
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const-wide/16 p1, 0x0

    .local p1, "parentPreConsumed":J
    iget-wide p1, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->J$0:J

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v3, p1

    move-object p1, v0

    goto :goto_2

    .end local p1    # "parentPreConsumed":J
    :pswitch_1
    move-object v2, p0

    .local v2, "this":Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;
    .local p1, "available":J
    iget-wide p1, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->J$0:J

    iget-object v3, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->L$0:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_1

    .end local v2    # "this":Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;
    .end local p1    # "available":J
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 178
    .restart local v2    # "this":Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;
    .restart local p1    # "available":J
    invoke-virtual {v2}, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->getParent()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v3

    iput-object v2, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->L$0:Ljava/lang/Object;

    iput-wide p1, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->J$0:J

    const/4 v4, 0x1

    iput v4, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->label:I

    invoke-interface {v3, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 177
    return-object v1

    .line 178
    :cond_1
    :goto_1
    check-cast v3, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v3

    .line 179
    .local v3, "parentPreConsumed":J
    invoke-virtual {v2}, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->getSelf()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v5

    invoke-static {p1, p2, v3, v4}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    iput-object v8, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->L$0:Ljava/lang/Object;

    iput-wide v3, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->J$0:J

    const/4 v8, 0x2

    iput v8, p3, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection$onPreFling$1;->label:I

    invoke-interface {v5, v6, v7, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;
    .end local p1    # "available":J
    if-ne p1, v1, :cond_2

    .line 177
    return-object v1

    .line 179
    :cond_2
    :goto_2
    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide p1

    .line 180
    .local p1, "selfPreConsumed":J
    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/unit/Velocity;->plus-AH228Gc(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 6
    .param p1, "available"    # J
    .param p3, "source"    # I

    .line 161
    iget-object v0, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->parent:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreScroll-OzD1aCk(JI)J

    move-result-wide v0

    .line 162
    .local v0, "parentPreConsumed":J
    iget-object v2, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->self:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    invoke-interface {v2, v3, v4, p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->onPreScroll-OzD1aCk(JI)J

    move-result-wide v2

    .line 163
    .local v2, "selfPreConsumed":J
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public final setParent(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->parent:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-void
.end method

.method public final setSelf(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Landroidx/compose/ui/input/nestedscroll/ParentWrapperNestedScrollConnection;->self:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-void
.end method
