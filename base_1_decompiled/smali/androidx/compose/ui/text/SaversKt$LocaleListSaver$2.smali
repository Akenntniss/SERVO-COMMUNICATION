.class final Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;
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
        "Landroidx/compose/ui/text/intl/LocaleList;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSavers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$LocaleListSaver$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Savers.kt\nandroidx/compose/ui/text/SaversKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,399:1\n98#2,3:400\n28#2,4:403\n101#2:407\n102#2:411\n33#2:412\n103#2:413\n55#3,2:408\n1#4:410\n*S KotlinDebug\n*F\n+ 1 Savers.kt\nandroidx/compose/ui/text/SaversKt$LocaleListSaver$2\n*L\n389#1:400,3\n389#1:403,4\n389#1:407\n389#1:411\n389#1:412\n389#1:413\n389#1:408,2\n389#1:410\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "",
        "it",
        "Landroidx/compose/ui/text/intl/LocaleList;",
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
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/intl/LocaleList;
    .locals 22
    .param p1, "it"    # Ljava/lang/Object;

    move-object/from16 v0, p1

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 387
    nop

    .line 389
    .local v1, "list":Ljava/util/List;
    move-object v2, v1

    .local v2, "$this$fastMap$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 400
    .local v3, "$i$f$fastMap":I
    nop

    .line 401
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    .local v4, "target$iv":Ljava/util/ArrayList;
    move-object v5, v2

    .local v5, "$this$fastForEach$iv$iv":Ljava/util/List;
    const/4 v6, 0x0

    .line 403
    .local v6, "$i$f$fastForEach":I
    nop

    .line 404
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_3

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    move v10, v9

    .local v10, "index$iv$iv":I
    add-int/lit8 v9, v9, 0x1

    .line 405
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 406
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 407
    .local v13, "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    move-object v14, v4

    check-cast v14, Ljava/util/Collection;

    move-object v15, v12

    .local v15, "item":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 389
    .local v16, "$i$a$-fastMap-SaversKt$LocaleListSaver$2$1":I
    sget-object v17, Landroidx/compose/ui/text/intl/Locale;->Companion:Landroidx/compose/ui/text/intl/Locale$Companion;

    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/intl/Locale$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v17

    .local v17, "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v18, 0x0

    .line 408
    .local v18, "$i$f$restore":I
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v19, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v0, v19

    goto :goto_2

    .line 409
    :cond_0
    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v15

    .line 410
    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 409
    .local v19, "$i$a$-let-SaversKt$restore$1$iv":I
    move-object/from16 v20, v17

    .line 410
    .local v20, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    const/16 v21, 0x0

    .line 409
    .local v21, "$i$a$-with-SaversKt$restore$1$1$iv":I
    move-object/from16 v8, v20

    .end local v20    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .local v8, "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    invoke-interface {v8, v15}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "$this$restore_u24lambda_u2d3_u24lambda_u2d2$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v21    # "$i$a$-with-SaversKt$restore$1$1$iv":I
    check-cast v8, Landroidx/compose/ui/text/intl/Locale;

    move-object/from16 v19, v8

    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v19    # "$i$a$-let-SaversKt$restore$1$iv":I
    :goto_1
    move-object/from16 v0, v19

    .end local v17    # "saver$iv":Landroidx/compose/runtime/saveable/Saver;
    .end local v18    # "$i$f$restore":I
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 389
    nop

    .end local v15    # "item":Ljava/lang/Object;
    .end local v16    # "$i$a$-fastMap-SaversKt$LocaleListSaver$2$1":I
    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 411
    nop

    .line 404
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-fastForEach-ListUtilsKt$fastMap$2$iv":I
    if-le v9, v7, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v0, p1

    const/4 v8, 0x0

    goto :goto_0

    .line 412
    .end local v10    # "index$iv$iv":I
    :cond_3
    :goto_3
    nop

    .line 413
    .end local v5    # "$this$fastForEach$iv$iv":Ljava/util/List;
    .end local v6    # "$i$f$fastForEach":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 389
    .end local v2    # "$this$fastMap$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastMap":I
    .end local v4    # "target$iv":Ljava/util/ArrayList;
    new-instance v2, Landroidx/compose/ui/text/intl/LocaleList;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 386
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v0

    return-object v0
.end method
