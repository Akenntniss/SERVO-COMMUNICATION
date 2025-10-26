.class final Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/SaversKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/SpanStyle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$SpanStyleSaver$2\n+ 2 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,399:1\n55#2,2:400\n55#2,2:403\n55#2,2:406\n70#2:409\n70#2:411\n70#2:413\n55#2,2:415\n55#2,2:418\n55#2,2:421\n55#2,2:424\n55#2,2:427\n55#2,2:430\n55#2,2:433\n1#3:402\n1#3:405\n1#3:408\n1#3:410\n1#3:412\n1#3:414\n1#3:417\n1#3:420\n1#3:423\n1#3:426\n1#3:429\n1#3:432\n1#3:435\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$SpanStyleSaver$2\n*L\n220#1:400,2\n221#1:403,2\n222#1:406,2\n223#1:409\n224#1:411\n226#1:413\n227#1:415,2\n228#1:418,2\n229#1:421,2\n230#1:424,2\n231#1:427,2\n232#1:430,2\n233#1:433,2\n220#1:402\n221#1:405\n222#1:408\n223#1:410\n224#1:412\n226#1:414\n227#1:417\n228#1:420\n229#1:423\n230#1:426\n231#1:429\n232#1:432\n233#1:435\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "",
        "it",
        "Landroidx/compose/ui/text/SpanStyle;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;
    .locals 27
    .param p1, "it"    # Ljava/lang/Object;

    move-object/from16 v0, p1

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 219
    .local v1, "list":Ljava/util/List;
    new-instance v23, Landroidx/compose/ui/text/SpanStyle;

    .line 220
    const/4 v2, 0x0

    .line 400
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 220
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    .local v4, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v5, 0x0

    .line 400
    .local v5, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    .line 401
    :cond_0
    if-nez v2, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    move-object v6, v2

    .line 402
    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 401
    .local v8, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v9, v4

    .line 402
    .local v9, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v10, 0x0

    .line 401
    .local v10, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v9, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v10    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v9, Landroidx/compose/ui/graphics/Color;

    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v4    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v5    # "$i$f$restore":I
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_0
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    .line 221
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v8, 0x0

    .line 403
    .local v8, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    .line 404
    :cond_2
    if-nez v2, :cond_3

    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    move-object v9, v2

    .line 405
    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 404
    .local v10, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v11, v6

    .line 405
    .local v11, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v12, 0x0

    .line 404
    .local v12, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v11, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v12    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v11, Landroidx/compose/ui/unit/TextUnit;

    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v8    # "$i$f$restore":I
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_1
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroidx/compose/ui/unit/TextUnit;->unbox-impl()J

    move-result-wide v8

    .line 222
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v10, 0x0

    .line 406
    .local v10, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v13, 0x0

    goto :goto_2

    .line 407
    :cond_4
    if-nez v2, :cond_5

    const/4 v13, 0x0

    goto :goto_2

    :cond_5
    move-object v11, v2

    .line 408
    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 407
    .local v12, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object v13, v6

    .line 408
    .local v13, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v14, 0x0

    .line 407
    .local v14, "$i$a$-with-SaversKt$restore$1$1$iv":I
    invoke-interface {v13, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v14    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v13, Landroidx/compose/ui/text/font/FontWeight;

    .line 223
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v10    # "$i$f$restore":I
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_2
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 409
    .local v6, "$i$f$restore":I
    if-nez v2, :cond_6

    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    move-object v10, v2

    .line 410
    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 409
    .local v11, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v10, Landroidx/compose/ui/text/font/FontStyle;

    .line 224
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$restore":I
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-SaversKt$restore$2$iv":I
    :goto_3
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 411
    .restart local v6    # "$i$f$restore":I
    if-nez v2, :cond_7

    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    move-object v11, v2

    .line 412
    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 411
    .local v12, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v11, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 219
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$restore":I
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-SaversKt$restore$2$iv":I
    :goto_4
    nop

    .line 226
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 413
    .restart local v6    # "$i$f$restore":I
    if-nez v2, :cond_8

    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    move-object v14, v2

    .line 414
    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 413
    .local v15, "$i$a$-let-SaversKt$restore$2$iv":I
    check-cast v14, Ljava/lang/String;

    .line 227
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$restore":I
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-SaversKt$restore$2$iv":I
    :goto_5
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v15, 0x0

    .line 415
    .local v15, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/4 v7, 0x0

    goto :goto_6

    .line 416
    :cond_9
    if-nez v2, :cond_a

    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 v16, v2

    .line 417
    .local v16, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 416
    .local v17, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v18, v6

    .line 417
    .local v18, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v19, 0x0

    .line 416
    .local v19, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v7, v18

    .end local v18    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v7, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v7, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v19    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v7, Landroidx/compose/ui/unit/TextUnit;

    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v15    # "$i$f$restore":I
    .end local v16    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_6
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroidx/compose/ui/unit/TextUnit;->unbox-impl()J

    move-result-wide v15

    .line 228
    const/16 v2, 0x8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/style/BaselineShift$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 418
    .local v7, "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x0

    goto :goto_8

    .line 419
    :cond_b
    if-nez v2, :cond_c

    const/4 v12, 0x0

    goto :goto_7

    :cond_c
    move-object/from16 v17, v2

    .line 420
    .local v17, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 419
    .local v18, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v19, v6

    .line 420
    .local v19, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v21, 0x0

    .line 419
    .local v21, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v12, v19

    .end local v19    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v12, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v12, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v12, Landroidx/compose/ui/text/style/BaselineShift;

    .end local v17    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_7
    move-object/from16 v17, v12

    .line 229
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v7    # "$i$f$restore":I
    :goto_8
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 421
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v0, 0x0

    goto :goto_9

    .line 422
    :cond_d
    if-nez v2, :cond_e

    const/4 v0, 0x0

    goto :goto_9

    :cond_e
    move-object v12, v2

    .line 423
    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 422
    .restart local v18    # "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v19, v6

    .line 423
    .restart local v19    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v21, 0x0

    .line 422
    .restart local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v0, v19

    .end local v19    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v0, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v0, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 230
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v7    # "$i$f$restore":I
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_9
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/intl/LocaleList$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .restart local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 424
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/16 v18, 0x0

    goto :goto_b

    .line 425
    :cond_f
    if-nez v2, :cond_10

    move-object/from16 v22, v6

    const/4 v6, 0x0

    goto :goto_a

    :cond_10
    move-object v12, v2

    .line 426
    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 425
    .restart local v18    # "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v19, v6

    .line 426
    .restart local v19    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v21, 0x0

    .line 425
    .restart local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v22, v6

    .end local v19    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v22, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v6, Landroidx/compose/ui/text/intl/LocaleList;

    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_a
    move-object/from16 v18, v6

    .line 231
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$restore":I
    .end local v22    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :goto_b
    const/16 v2, 0xb

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 427
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v6, 0x0

    goto :goto_c

    .line 428
    :cond_11
    if-nez v2, :cond_12

    move-object/from16 v24, v6

    const/4 v6, 0x0

    goto :goto_c

    :cond_12
    move-object v12, v2

    .line 429
    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 428
    .local v19, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v21, v6

    .line 429
    .local v21, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v22, 0x0

    .line 428
    .local v22, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v24, v6

    .end local v21    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v24, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v22    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$restore":I
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-SaversKt$restore$1$iv":I
    .end local v24    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :goto_c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v24

    .line 232
    const/16 v2, 0xc

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/style/TextDecoration$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 430
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    const/16 v19, 0x0

    goto :goto_e

    .line 431
    :cond_13
    if-nez v2, :cond_14

    move-object/from16 v26, v6

    const/4 v6, 0x0

    goto :goto_d

    :cond_14
    move-object v12, v2

    .line 432
    .restart local v12    # "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 431
    .restart local v19    # "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v21, v6

    .line 432
    .restart local v21    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v22, 0x0

    .line 431
    .restart local v22    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v26, v6

    .end local v21    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v6, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v26, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v6, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v22    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v6, Landroidx/compose/ui/text/style/TextDecoration;

    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_d
    move-object/from16 v19, v6

    .line 233
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$restore":I
    .end local v26    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    :goto_e
    const/16 v2, 0xd

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value$iv":Ljava/lang/Object;
    sget-object v6, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-static {v6}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/graphics/Shadow$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v6

    .local v6, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/4 v7, 0x0

    .line 433
    .restart local v7    # "$i$f$restore":I
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v26, v1

    const/16 v20, 0x0

    goto :goto_10

    .line 434
    :cond_15
    if-nez v2, :cond_16

    move-object/from16 v26, v1

    const/4 v1, 0x0

    goto :goto_f

    :cond_16
    move-object v3, v2

    .line 435
    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 434
    .local v12, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v20, v6

    .line 435
    .local v20, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v21, 0x0

    .line 434
    .local v21, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v26, v1

    move-object/from16 v1, v20

    .end local v20    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v1, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v26, "list":Ljava/util/List;
    invoke-interface {v1, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v1, Landroidx/compose/ui/graphics/Shadow;

    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_f
    move-object/from16 v20, v1

    .line 219
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v6    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v7    # "$i$f$restore":I
    :goto_10
    const/16 v21, 0x20

    const/16 v22, 0x0

    move-object/from16 v2, v23

    move-wide v3, v4

    move-wide v5, v8

    move-object v7, v13

    move-object v8, v10

    move-object v9, v11

    const/4 v1, 0x0

    move-object v10, v1

    move-object v11, v14

    move-wide v12, v15

    move-object/from16 v14, v17

    move-object v15, v0

    move-object/from16 v16, v18

    move-wide/from16 v17, v24

    invoke-direct/range {v2 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v23
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 217
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v0

    return-object v0
.end method
