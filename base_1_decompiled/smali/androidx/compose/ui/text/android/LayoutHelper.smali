.class public final Landroidx/compose/ui/text/android/LayoutHelper;
.super Ljava/lang/Object;
.source "LayoutHelper.kt"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutHelper.kt\nandroidx/compose/ui/text/android/LayoutHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,350:1\n1#2:351\n1620#3,6:352\n1620#3,6:358\n*S KotlinDebug\n*F\n+ 1 LayoutHelper.kt\nandroidx/compose/ui/text/android/LayoutHelper\n*L\n265#1:352,6\n295#1:358,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000c\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\'B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0015\u001a\u00020\rJ\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u001e\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aJ\u0010\u0010\u001e\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\rJ\u0010\u0010\u001f\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\rJ\u0010\u0010 \u001a\u00020\r2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\rJ\u000e\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#J\u0010\u0010$\u001a\u00020\u001a2\u0008\u0008\u0001\u0010\u0015\u001a\u00020\rJ\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\rH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Landroidx/compose/ui/text/android/LayoutHelper;",
        "",
        "layout",
        "Landroid/text/Layout;",
        "(Landroid/text/Layout;)V",
        "bidiProcessedParagraphs",
        "",
        "getLayout",
        "()Landroid/text/Layout;",
        "paragraphBidi",
        "",
        "Ljava/text/Bidi;",
        "paragraphCount",
        "",
        "getParagraphCount",
        "()I",
        "paragraphEnds",
        "",
        "tmpBuffer",
        "",
        "analyzeBidi",
        "paragraphIndex",
        "getDownstreamHorizontal",
        "",
        "offset",
        "primary",
        "",
        "getHorizontalPosition",
        "usePrimaryDirection",
        "upstream",
        "getParagraphEnd",
        "getParagraphForOffset",
        "getParagraphStart",
        "isLineEndSpace",
        "c",
        "",
        "isRtlParagraph",
        "lineEndToVisibleEnd",
        "lineEnd",
        "BidiRun",
        "ui-text_release"
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
.field private final bidiProcessedParagraphs:[Z

.field private final layout:Landroid/text/Layout;

.field private final paragraphBidi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/Bidi;",
            ">;"
        }
    .end annotation
.end field

.field private final paragraphCount:I

.field private final paragraphEnds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tmpBuffer:[C


# direct methods
.method public constructor <init>(Landroid/text/Layout;)V
    .locals 8
    .param p1, "layout"    # Landroid/text/Layout;

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 50
    nop

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "paragraphEnd":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 54
    .local v1, "lineFeeds":Ljava/util/List;
    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "layout.text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v4, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 55
    if-gez v0, :cond_1

    .line 57
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 64
    iput-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    .line 351
    move v5, v4

    .local v5, "it":I
    const/4 v6, 0x0

    .line 65
    .local v6, "$i$a$-MutableList-LayoutHelper$1":I
    const/4 v5, 0x0

    .end local v5    # "it":I
    .end local v6    # "$i$a$-MutableList-LayoutHelper$1":I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    .line 66
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    .line 67
    .end local v0    # "paragraphEnd":I
    .end local v1    # "lineFeeds":Ljava/util/List;
    nop

    .line 144
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphCount:I

    .line 34
    return-void
.end method

.method private final getDownstreamHorizontal(IZ)F
    .locals 1
    .param p1, "offset"    # I
    .param p2, "primary"    # Z

    .line 325
    if-eqz p2, :cond_0

    .line 326
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    .line 329
    :goto_0
    return v0
.end method

.method private final lineEndToVisibleEnd(I)I
    .locals 3
    .param p1, "lineEnd"    # I

    .line 335
    move v0, p1

    .line 336
    .local v0, "visibleEnd":I
    :goto_0
    if-lez v0, :cond_1

    .line 337
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/android/LayoutHelper;->isLineEndSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 340
    :cond_0
    nop

    .line 343
    :cond_1
    return v0
.end method


# virtual methods
.method public final analyzeBidi(I)Ljava/text/Bidi;
    .locals 14
    .param p1, "paragraphIndex"    # I

    .line 82
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Bidi;

    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 87
    .local v1, "paragraphStart":I
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 88
    .local v2, "paragraphEnd":I
    sub-int v10, v2, v1

    .line 99
    .local v10, "paragraphLength":I
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    .line 100
    .local v3, "buffer":[C
    if-eqz v3, :cond_3

    array-length v4, v3

    if-ge v4, v10, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    move-object v4, v3

    goto :goto_2

    .line 101
    :cond_3
    :goto_1
    new-array v4, v10, [C

    .line 100
    :goto_2
    move-object v11, v4

    .line 105
    .end local v3    # "buffer":[C
    .local v11, "buffer":[C
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v1, v2, v11, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 107
    invoke-static {v11, v0, v10}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v3

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v3, :cond_6

    .line 108
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/LayoutHelper;->isRtlParagraph(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    move v9, v13

    goto :goto_3

    .line 111
    :cond_4
    move v9, v0

    .line 108
    :goto_3
    nop

    .line 113
    .local v9, "flag":I
    new-instance v0, Ljava/text/Bidi;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    move-object v4, v11

    move v8, v10

    invoke-direct/range {v3 .. v9}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 115
    .local v0, "bidi":Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->getRunCount()I

    move-result v3

    if-ne v3, v13, :cond_5

    .line 118
    move-object v3, v12

    check-cast v3, Ljava/text/Bidi;

    move-object v0, v12

    goto :goto_4

    .line 120
    :cond_5
    nop

    .end local v0    # "bidi":Ljava/text/Bidi;
    .end local v9    # "flag":I
    goto :goto_4

    .line 123
    :cond_6
    move-object v0, v12

    check-cast v0, Ljava/text/Bidi;

    move-object v0, v12

    .line 107
    :goto_4
    nop

    .line 126
    .local v0, "result":Ljava/text/Bidi;
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    invoke-interface {v3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    aput-boolean v13, v3, p1

    .line 129
    if-eqz v0, :cond_8

    .line 132
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    if-ne v11, v3, :cond_7

    goto :goto_5

    :cond_7
    move-object v12, v3

    goto :goto_5

    .line 136
    :cond_8
    move-object v12, v11

    .line 129
    :goto_5
    iput-object v12, p0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    .line 138
    return-object v0
.end method

.method public final getHorizontalPosition(IZZ)F
    .locals 19
    .param p1, "offset"    # I
    .param p2, "usePrimaryDirection"    # Z
    .param p3, "upstream"    # Z

    .line 215
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    move/from16 v3, p3

    invoke-static {v2, v1, v3}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v2

    .line 216
    .local v2, "lineNo":I
    iget-object v4, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 217
    .local v4, "lineStart":I
    iget-object v5, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 221
    .local v5, "lineEnd":I
    if-eq v1, v4, :cond_0

    if-eq v1, v5, :cond_0

    .line 222
    invoke-direct/range {p0 .. p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    move-result v6

    return v6

    .line 227
    :cond_0
    if-eqz v1, :cond_21

    iget-object v6, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v1, v6, :cond_1

    goto/16 :goto_13

    .line 231
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphForOffset(I)I

    move-result v6

    .line 232
    .local v6, "paraNo":I
    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->isRtlParagraph(I)Z

    move-result v7

    .line 236
    .local v7, "isParaRtl":Z
    invoke-virtual {v0, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->analyzeBidi(I)Ljava/text/Bidi;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {v0, v5}, Landroidx/compose/ui/text/android/LayoutHelper;->lineEndToVisibleEnd(I)I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    move-result-object v8

    .line 237
    .local v8, "lineBidi":Ljava/text/Bidi;
    :goto_0
    const/4 v10, 0x1

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Ljava/text/Bidi;->getRunCount()I

    move-result v11

    if-ne v11, v10, :cond_3

    goto/16 :goto_e

    .line 249
    :cond_3
    invoke-virtual {v8}, Ljava/text/Bidi;->getRunCount()I

    move-result v11

    new-array v12, v11, [Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_5

    .line 254
    new-instance v14, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 255
    invoke-virtual {v8, v13}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v15

    add-int/2addr v15, v4

    .line 256
    invoke-virtual {v8, v13}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v16

    add-int v9, v4, v16

    .line 257
    invoke-virtual {v8, v13}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v16

    rem-int/lit8 v3, v16, 0x2

    if-ne v3, v10, :cond_4

    move v3, v10

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 254
    :goto_2
    invoke-direct {v14, v15, v9, v3}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    aput-object v14, v12, v13

    .line 249
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p3

    goto :goto_1

    :cond_5
    move-object v3, v12

    .line 260
    .local v3, "runs":[Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    invoke-virtual {v8}, Ljava/text/Bidi;->getRunCount()I

    move-result v9

    new-array v11, v9, [B

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_6

    invoke-virtual {v8, v12}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    move-object v9, v11

    .line 261
    .local v9, "levels":[B
    array-length v11, v3

    const/4 v12, 0x0

    invoke-static {v9, v12, v3, v12, v11}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 263
    if-ne v1, v4, :cond_10

    .line 265
    move-object v13, v3

    .local v13, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v14, 0x0

    .line 352
    .local v14, "$i$f$indexOfFirst":I
    array-length v15, v13

    move v10, v12

    :goto_4
    if-ge v10, v15, :cond_9

    .line 353
    .local v10, "index$iv":I
    aget-object v17, v13, v10

    .local v17, "it":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    const/16 v18, 0x0

    .line 265
    .local v18, "$i$a$-indexOfFirst-LayoutHelper$getHorizontalPosition$index$1":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getStart()I

    move-result v11

    if-ne v11, v1, :cond_7

    const/4 v11, 0x1

    goto :goto_5

    :cond_7
    move v11, v12

    .end local v17    # "it":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .end local v18    # "$i$a$-indexOfFirst-LayoutHelper$getHorizontalPosition$index$1":I
    :goto_5
    if-eqz v11, :cond_8

    .line 354
    move v11, v10

    goto :goto_6

    .line 352
    :cond_8
    nop

    .end local v10    # "index$iv":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 357
    :cond_9
    const/4 v11, -0x1

    .line 265
    .end local v13    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v14    # "$i$f$indexOfFirst":I
    :goto_6
    move v10, v11

    .line 266
    .local v10, "index":I
    aget-object v11, v3, v10

    .line 268
    .local v11, "run":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    if-nez p2, :cond_b

    invoke-virtual {v11}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl()Z

    move-result v13

    if-ne v7, v13, :cond_a

    goto :goto_7

    .line 271
    :cond_a
    move v12, v7

    goto :goto_8

    .line 269
    :cond_b
    :goto_7
    if-nez v7, :cond_c

    const/4 v12, 0x1

    .line 268
    :cond_c
    :goto_8
    nop

    .line 274
    .local v12, "isLeftRequested":Z
    if-nez v10, :cond_d

    if-eqz v12, :cond_d

    .line 276
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v13, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v13

    return v13

    .line 277
    :cond_d
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v13

    if-ne v10, v13, :cond_e

    if-nez v12, :cond_e

    .line 279
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v13, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v13

    return v13

    .line 280
    :cond_e
    if-eqz v12, :cond_f

    .line 285
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/lit8 v14, v10, -0x1

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getStart()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    return v13

    .line 291
    :cond_f
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/lit8 v14, v10, 0x1

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getStart()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    return v13

    .line 295
    .end local v10    # "index":I
    .end local v11    # "run":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .end local v12    # "isLeftRequested":Z
    :cond_10
    move-object v10, v3

    .local v10, "$this$indexOfFirst$iv":[Ljava/lang/Object;
    const/4 v11, 0x0

    .line 358
    .local v11, "$i$f$indexOfFirst":I
    array-length v13, v10

    move v14, v12

    :goto_9
    if-ge v14, v13, :cond_13

    .line 359
    .local v14, "index$iv":I
    aget-object v15, v10, v14

    .local v15, "it":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    const/16 v17, 0x0

    .line 295
    .local v17, "$i$a$-indexOfFirst-LayoutHelper$getHorizontalPosition$index$2":I
    invoke-virtual {v15}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getEnd()I

    move-result v12

    if-ne v12, v1, :cond_11

    const/4 v12, 0x1

    goto :goto_a

    :cond_11
    const/4 v12, 0x0

    .end local v15    # "it":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .end local v17    # "$i$a$-indexOfFirst-LayoutHelper$getHorizontalPosition$index$2":I
    :goto_a
    if-eqz v12, :cond_12

    .line 360
    move v11, v14

    goto :goto_b

    .line 358
    :cond_12
    nop

    .end local v14    # "index$iv":I
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto :goto_9

    .line 363
    :cond_13
    const/4 v11, -0x1

    .line 295
    .end local v10    # "$this$indexOfFirst$iv":[Ljava/lang/Object;
    .end local v11    # "$i$f$indexOfFirst":I
    :goto_b
    move v10, v11

    .line 296
    .local v10, "index":I
    aget-object v11, v3, v10

    .line 298
    .local v11, "run":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    if-nez p2, :cond_16

    invoke-virtual {v11}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl()Z

    move-result v12

    if-ne v7, v12, :cond_14

    goto :goto_c

    .line 301
    :cond_14
    if-nez v7, :cond_15

    const/16 v16, 0x1

    goto :goto_d

    :cond_15
    const/16 v16, 0x0

    goto :goto_d

    .line 299
    :cond_16
    :goto_c
    move/from16 v16, v7

    .line 298
    :goto_d
    move/from16 v12, v16

    .line 303
    .restart local v12    # "isLeftRequested":Z
    if-nez v10, :cond_17

    if-eqz v12, :cond_17

    .line 305
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v13, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v13

    return v13

    .line 306
    :cond_17
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v13

    if-ne v10, v13, :cond_18

    if-nez v12, :cond_18

    .line 308
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v13, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v13

    return v13

    .line 309
    :cond_18
    if-eqz v12, :cond_19

    .line 314
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/lit8 v14, v10, -0x1

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getEnd()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    return v13

    .line 320
    :cond_19
    iget-object v13, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    add-int/lit8 v14, v10, 0x1

    aget-object v14, v3, v14

    invoke-virtual {v14}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getEnd()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    return v13

    .line 238
    .end local v3    # "runs":[Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .end local v9    # "levels":[B
    .end local v10    # "index":I
    .end local v11    # "run":Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    .end local v12    # "isLeftRequested":Z
    :cond_1a
    :goto_e
    iget-object v3, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v3, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    .line 239
    .local v3, "runDirection":Z
    if-nez p2, :cond_1c

    if-ne v7, v3, :cond_1b

    goto :goto_f

    .line 242
    :cond_1b
    move v9, v7

    goto :goto_10

    .line 240
    :cond_1c
    :goto_f
    if-nez v7, :cond_1d

    const/4 v9, 0x1

    goto :goto_10

    :cond_1d
    const/4 v9, 0x0

    .line 239
    :goto_10
    nop

    .line 244
    .local v9, "isStartLeft":Z
    if-ne v1, v4, :cond_1e

    move/from16 v16, v9

    goto :goto_11

    :cond_1e
    if-nez v9, :cond_1f

    const/16 v16, 0x1

    goto :goto_11

    :cond_1f
    const/16 v16, 0x0

    :goto_11
    move/from16 v10, v16

    .line 245
    .local v10, "isOffsetLeft":Z
    iget-object v11, v0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    if-eqz v10, :cond_20

    invoke-virtual {v11, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    goto :goto_12

    :cond_20
    invoke-virtual {v11, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    :goto_12
    return v11

    .line 228
    .end local v3    # "runDirection":Z
    .end local v6    # "paraNo":I
    .end local v7    # "isParaRtl":Z
    .end local v8    # "lineBidi":Ljava/text/Bidi;
    .end local v9    # "isStartLeft":Z
    .end local v10    # "isOffsetLeft":Z
    :cond_21
    :goto_13
    invoke-direct/range {p0 .. p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    move-result v3

    return v3
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getParagraphCount()I
    .locals 1

    .line 144
    iget v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphCount:I

    return v0
.end method

.method public final getParagraphEnd(I)I
    .locals 1
    .param p1, "paragraphIndex"    # I

    .line 174
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getParagraphForOffset(I)I
    .locals 6
    .param p1, "offset"    # I

    .line 157
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result v0

    .line 351
    .local v0, "it":I
    const/4 v1, 0x0

    .line 157
    .local v1, "$i$a$-let-LayoutHelper$getParagraphForOffset$1":I
    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    neg-int v2, v2

    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-LayoutHelper$getParagraphForOffset$1":I
    :cond_0
    return v2
.end method

.method public final getParagraphStart(I)I
    .locals 2
    .param p1, "paragraphIndex"    # I

    .line 166
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final isLineEndSpace(C)Z
    .locals 3
    .param p1, "c"    # C

    .line 348
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1680

    if-eq p1, v0, :cond_3

    .line 349
    const/16 v0, 0x2000

    const/4 v2, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x200a

    if-gt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x2007

    if-ne p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x205f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3000

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    nop

    :goto_2
    return v1
.end method

.method public final isRtlParagraph(I)Z
    .locals 3
    .param p1, "paragraphIndex"    # I

    .line 183
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 184
    .local v0, "lineNumber":I
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
