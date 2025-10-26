.class public final Landroidx/compose/ui/text/platform/AndroidParagraph;
.super Ljava/lang/Object;
.source "AndroidParagraph.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/Paragraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/platform/AndroidParagraph$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidParagraph.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidParagraph.android.kt\nandroidx/compose/ui/text/platform/AndroidParagraph\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,402:1\n1#2:403\n11328#3:404\n11663#3,3:405\n*S KotlinDebug\n*F\n+ 1 AndroidParagraph.android.kt\nandroidx/compose/ui/text/platform/AndroidParagraph\n*L\n158#1:404\n158#1:405,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001Bg\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u0012\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00080\u0007\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0002\u0010\u0016B%\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020\rH\u0016J\u0010\u0010O\u001a\u0002082\u0006\u0010N\u001a\u00020\rH\u0016J\u0010\u0010P\u001a\u0002082\u0006\u0010N\u001a\u00020\rH\u0016J\u0018\u0010Q\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\r2\u0006\u0010R\u001a\u00020\u000fH\u0016J\u0010\u0010S\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0016J\u0018\u0010U\u001a\u00020\r2\u0006\u0010T\u001a\u00020\r2\u0006\u0010V\u001a\u00020\u000fH\u0016J\u0010\u0010W\u001a\u00020\r2\u0006\u0010N\u001a\u00020\rH\u0016J\u0010\u0010X\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\u0011H\u0016J\u0010\u0010Z\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0016J\u0010\u0010[\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0016J\u0010\u0010\\\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0016J\u0010\u0010]\u001a\u00020\r2\u0006\u0010T\u001a\u00020\rH\u0016J\u0010\u0010^\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0016J\u0010\u0010_\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0016J\u001d\u0010`\u001a\u00020\r2\u0006\u0010a\u001a\u00020bH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008c\u0010dJ\u0010\u0010e\u001a\u00020M2\u0006\u0010N\u001a\u00020\rH\u0016J\u0018\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020\r2\u0006\u0010i\u001a\u00020\rH\u0016J \u0010H\u001a\u00020j2\u0006\u0010N\u001a\u00020\rH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0002\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008k\u0010lJ\u0015\u0010m\u001a\u00020\u000f2\u0006\u0010T\u001a\u00020\rH\u0001\u00a2\u0006\u0002\u0008nJ\u0010\u0010o\u001a\u00020\u000f2\u0006\u0010T\u001a\u00020\rH\u0016J9\u0010p\u001a\u00020q2\u0006\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u00020u2\u0008\u0010v\u001a\u0004\u0018\u00010w2\u0008\u0010x\u001a\u0004\u0018\u00010yH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008z\u0010{R\u001a\u0010\u001a\u001a\u00020\u001b8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\"R\u0014\u0010$\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010&R\u0014\u0010)\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010&R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010-\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0014\u00100\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010&R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010/R\u0014\u00103\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u0010&R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u001c\u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001080\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R\u001a\u0010;\u001a\u00020<8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008=\u0010\u001d\u001a\u0004\u0008>\u0010?R\u001a\u0010@\u001a\u00020A8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008B\u0010\u001d\u001a\u0004\u0008C\u0010DR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010&R\u001b\u0010F\u001a\u00020G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008H\u0010I\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006|"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/AndroidParagraph;",
        "Landroidx/compose/ui/text/Paragraph;",
        "text",
        "",
        "style",
        "Landroidx/compose/ui/text/TextStyle;",
        "spanStyles",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/SpanStyle;",
        "placeholders",
        "Landroidx/compose/ui/text/Placeholder;",
        "maxLines",
        "",
        "ellipsis",
        "",
        "width",
        "",
        "typefaceAdapter",
        "Landroidx/compose/ui/text/platform/TypefaceAdapter;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZFLandroidx/compose/ui/text/platform/TypefaceAdapter;Landroidx/compose/ui/unit/Density;)V",
        "paragraphIntrinsics",
        "Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;",
        "(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZF)V",
        "charSequence",
        "",
        "getCharSequence$ui_text_release$annotations",
        "()V",
        "getCharSequence$ui_text_release",
        "()Ljava/lang/CharSequence;",
        "didExceedMaxLines",
        "getDidExceedMaxLines",
        "()Z",
        "getEllipsis",
        "firstBaseline",
        "getFirstBaseline",
        "()F",
        "height",
        "getHeight",
        "lastBaseline",
        "getLastBaseline",
        "layout",
        "Landroidx/compose/ui/text/android/TextLayout;",
        "lineCount",
        "getLineCount",
        "()I",
        "maxIntrinsicWidth",
        "getMaxIntrinsicWidth",
        "getMaxLines",
        "minIntrinsicWidth",
        "getMinIntrinsicWidth",
        "getParagraphIntrinsics",
        "()Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;",
        "placeholderRects",
        "Landroidx/compose/ui/geometry/Rect;",
        "getPlaceholderRects",
        "()Ljava/util/List;",
        "textLocale",
        "Ljava/util/Locale;",
        "getTextLocale$ui_text_release$annotations",
        "getTextLocale$ui_text_release",
        "()Ljava/util/Locale;",
        "textPaint",
        "Landroidx/compose/ui/text/platform/AndroidTextPaint;",
        "getTextPaint$ui_text_release$annotations",
        "getTextPaint$ui_text_release",
        "()Landroidx/compose/ui/text/platform/AndroidTextPaint;",
        "getWidth",
        "wordBoundary",
        "Landroidx/compose/ui/text/android/selection/WordBoundary;",
        "getWordBoundary",
        "()Landroidx/compose/ui/text/android/selection/WordBoundary;",
        "wordBoundary$delegate",
        "Lkotlin/Lazy;",
        "getBidiRunDirection",
        "Landroidx/compose/ui/text/style/ResolvedTextDirection;",
        "offset",
        "getBoundingBox",
        "getCursorRect",
        "getHorizontalPosition",
        "usePrimaryDirection",
        "getLineBottom",
        "lineIndex",
        "getLineEnd",
        "visibleEnd",
        "getLineForOffset",
        "getLineForVerticalPosition",
        "vertical",
        "getLineHeight",
        "getLineLeft",
        "getLineRight",
        "getLineStart",
        "getLineTop",
        "getLineWidth",
        "getOffsetForPosition",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "getOffsetForPosition-k-4lQ0M",
        "(J)I",
        "getParagraphDirection",
        "getPathForRange",
        "Landroidx/compose/ui/graphics/Path;",
        "start",
        "end",
        "Landroidx/compose/ui/text/TextRange;",
        "getWordBoundary--jx7JFs",
        "(I)J",
        "isEllipsisApplied",
        "isEllipsisApplied$ui_text_release",
        "isLineEllipsized",
        "paint",
        "",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "shadow",
        "Landroidx/compose/ui/graphics/Shadow;",
        "textDecoration",
        "Landroidx/compose/ui/text/style/TextDecoration;",
        "paint-RPmYEkk",
        "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V",
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
.field private final ellipsis:Z

.field private final layout:Landroidx/compose/ui/text/android/TextLayout;

.field private final maxLines:I

.field private final paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

.field private final placeholderRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final width:F

.field private final wordBoundary$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 270
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZF)V
    .locals 29
    .param p1, "paragraphIntrinsics"    # Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
    .param p2, "maxLines"    # I
    .param p3, "ellipsis"    # Z
    .param p4, "width"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v12, p2

    move/from16 v6, p3

    const-string v2, "paragraphIntrinsics"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 62
    iput v12, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    .line 63
    iput-boolean v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->ellipsis:Z

    .line 64
    move/from16 v14, p4

    iput v14, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->width:F

    .line 93
    nop

    .line 94
    const/4 v13, 0x0

    const/4 v11, 0x1

    if-lt v12, v11, :cond_0

    move v2, v11

    goto :goto_0

    :cond_0
    move v2, v13

    :goto_0
    if-eqz v2, :cond_c

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    move v2, v11

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    if-eqz v2, :cond_b

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v21

    .line 99
    .local v21, "style":Landroidx/compose/ui/text/TextStyle;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/text/platform/AndroidParagraph_androidKt;->access$toLayoutAlign-AMY3VfE(Landroidx/compose/ui/text/style/TextAlign;)I

    move-result v22

    .line 101
    .local v22, "alignment":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v2

    .line 102
    sget-object v3, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getJustify-e0LSkKk()I

    move-result v3

    if-nez v2, :cond_2

    move v2, v13

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_3

    move v15, v11

    goto :goto_3

    .line 103
    :cond_3
    move v15, v13

    .line 101
    :goto_3
    nop

    .line 106
    .local v15, "justificationMode":I
    const/16 v23, 0x0

    if-eqz v6, :cond_4

    .line 107
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v7, v2

    goto :goto_4

    .line 109
    :cond_4
    move-object/from16 v2, v23

    check-cast v2, Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v7, v23

    .line 106
    :goto_4
    nop

    .line 112
    .local v7, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    nop

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v3

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    move-result v4

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v5

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getTextDirectionHeuristic$ui_text_release()I

    move-result v8

    .line 120
    nop

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getLayoutIntrinsics$ui_text_release()Landroidx/compose/ui/text/android/LayoutIntrinsics;

    move-result-object v18

    .line 112
    new-instance v10, Landroidx/compose/ui/text/android/TextLayout;

    move-object v2, v10

    .line 113
    nop

    .line 114
    nop

    .line 115
    check-cast v5, Landroid/text/TextPaint;

    .line 117
    nop

    .line 116
    nop

    .line 118
    nop

    .line 119
    const/high16 v9, 0x3f800000    # 1.0f

    .line 112
    const/16 v16, 0x0

    move-object/from16 v24, v10

    move/from16 v10, v16

    const/16 v16, 0x0

    move/from16 v11, v16

    .line 120
    nop

    .line 112
    move/from16 v13, v16

    move/from16 v14, v16

    .line 121
    nop

    .line 112
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 122
    nop

    .line 112
    const/16 v19, 0x6d80

    const/16 v20, 0x0

    move/from16 v6, v22

    move/from16 v12, p2

    invoke-direct/range {v2 .. v20}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v24

    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 124
    .end local v7    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v15    # "justificationMode":I
    .end local v21    # "style":Landroidx/compose/ui/text/TextStyle;
    .end local v22    # "alignment":I
    nop

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "$this$placeholderRects_u24lambda_u2d5":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 157
    .local v3, "$i$a$-with-AndroidParagraph$placeholderRects$1":I
    instance-of v4, v2, Landroid/text/Spanned;

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    goto/16 :goto_c

    .line 158
    :cond_5
    move-object v4, v2

    check-cast v4, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    const/4 v7, 0x0

    invoke-interface {v4, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "getSpans(0, length, PlaceholderSpan::class.java)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v4, "$this$map$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 404
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    array-length v8, v4

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v4

    .local v8, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 405
    .local v9, "$i$f$mapTo":I
    array-length v10, v8

    move v13, v7

    :goto_5
    if-ge v13, v10, :cond_a

    aget-object v11, v8, v13

    .line 406
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .local v12, "span":Landroidx/compose/ui/text/android/style/PlaceholderSpan;
    const/4 v14, 0x0

    .line 159
    .local v14, "$i$a$-map-AndroidParagraph$placeholderRects$1$1":I
    move-object v15, v2

    check-cast v15, Landroid/text/Spanned;

    invoke-interface {v15, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 160
    .local v15, "start":I
    move-object v7, v2

    check-cast v7, Landroid/text/Spanned;

    invoke-interface {v7, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 163
    .local v7, "end":I
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v1, v15}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result v1

    .line 164
    .local v1, "line":I
    move-object/from16 v16, v2

    .end local v2    # "$this$placeholderRects_u24lambda_u2d5":Ljava/lang/CharSequence;
    .local v16, "$this$placeholderRects_u24lambda_u2d5":Ljava/lang/CharSequence;
    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_6

    .line 165
    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineEllipsisOffset(I)I

    move-result v2

    if-le v7, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    .line 164
    :goto_6
    nop

    .line 166
    .local v2, "isPlaceholderSpanEllipsized":Z
    move/from16 v17, v3

    .end local v3    # "$i$a$-with-AndroidParagraph$placeholderRects$1":I
    .local v17, "$i$a$-with-AndroidParagraph$placeholderRects$1":I
    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v3, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result v3

    if-le v7, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    .line 168
    .local v3, "isPlaceholderSpanTruncated":Z
    :goto_7
    if-nez v2, :cond_9

    if-eqz v3, :cond_8

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v25, v5

    move/from16 v27, v7

    move-object/from16 v28, v8

    goto/16 :goto_a

    .line 172
    :cond_8
    invoke-virtual {v0, v15}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v18

    .line 174
    .local v18, "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    sget-object v19, Landroidx/compose/ui/text/platform/AndroidParagraph$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/style/ResolvedTextDirection;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 178
    move/from16 v19, v2

    .end local v2    # "isPlaceholderSpanEllipsized":Z
    .local v19, "isPlaceholderSpanEllipsized":Z
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .end local v19    # "isPlaceholderSpanEllipsized":Z
    .restart local v2    # "isPlaceholderSpanEllipsized":Z
    :pswitch_0
    move/from16 v19, v2

    const/4 v2, 0x1

    .end local v2    # "isPlaceholderSpanEllipsized":Z
    .restart local v19    # "isPlaceholderSpanEllipsized":Z
    invoke-virtual {v0, v15, v2}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHorizontalPosition(IZ)F

    move-result v20

    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result v2

    int-to-float v2, v2

    sub-float v20, v20, v2

    const/4 v2, 0x1

    goto :goto_8

    .line 176
    .end local v19    # "isPlaceholderSpanEllipsized":Z
    .restart local v2    # "isPlaceholderSpanEllipsized":Z
    :pswitch_1
    move/from16 v19, v2

    .end local v2    # "isPlaceholderSpanEllipsized":Z
    .restart local v19    # "isPlaceholderSpanEllipsized":Z
    const/4 v2, 0x1

    invoke-virtual {v0, v15, v2}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHorizontalPosition(IZ)F

    move-result v20

    .line 174
    :goto_8
    move/from16 v21, v20

    .line 180
    .local v21, "left":F
    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result v2

    int-to-float v2, v2

    move/from16 v20, v3

    move/from16 v3, v21

    .end local v21    # "left":F
    .local v3, "left":F
    .local v20, "isPlaceholderSpanTruncated":Z
    add-float/2addr v2, v3

    .line 182
    .local v2, "right":F
    move-object/from16 v21, v4

    .end local v4    # "$this$map$iv":[Ljava/lang/Object;
    .local v21, "$this$map$iv":[Ljava/lang/Object;
    iget-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .local v4, "$this$placeholderRects_u24lambda_u2d5_u24lambda_u2d4_u24lambda_u2d3":Landroidx/compose/ui/text/android/TextLayout;
    const/16 v22, 0x0

    .line 183
    .local v22, "$i$a$-with-AndroidParagraph$placeholderRects$1$1$top$1":I
    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getVerticalAlign()I

    move-result v24

    move/from16 v25, v5

    .end local v5    # "$i$f$map":I
    .local v25, "$i$f$map":I
    packed-switch v24, :pswitch_data_1

    .line 198
    move/from16 v27, v7

    .end local v7    # "end":I
    .local v27, "end":I
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "unexpected verticalAlignment"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    .end local v27    # "end":I
    .restart local v7    # "end":I
    :pswitch_2
    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .local v5, "$this$placeholderRects_u24lambda_u2d5_u24lambda_u2d4_u24lambda_u2d3_u24lambda_u2d2":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v26, 0x0

    .line 196
    .local v26, "$i$a$-with-AndroidParagraph$placeholderRects$1$1$top$1$1":I
    move/from16 v27, v7

    .end local v7    # "end":I
    .restart local v27    # "end":I
    iget v7, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v28, v8

    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .local v28, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    iget v8, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v7, v8

    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v8

    add-float/2addr v7, v8

    .line 195
    .end local v5    # "$this$placeholderRects_u24lambda_u2d5_u24lambda_u2d4_u24lambda_u2d3_u24lambda_u2d2":Landroid/graphics/Paint$FontMetricsInt;
    .end local v26    # "$i$a$-with-AndroidParagraph$placeholderRects$1$1$top$1$1":I
    goto/16 :goto_9

    .line 193
    .end local v27    # "end":I
    .end local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v7    # "end":I
    .restart local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    :pswitch_3
    move/from16 v27, v7

    move-object/from16 v28, v8

    .end local v7    # "end":I
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v27    # "end":I
    .restart local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v5, v5

    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v7

    add-float/2addr v5, v7

    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v5, v7

    goto :goto_9

    .line 191
    .end local v27    # "end":I
    .end local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v7    # "end":I
    .restart local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    :pswitch_4
    move/from16 v27, v7

    move-object/from16 v28, v8

    .end local v7    # "end":I
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v27    # "end":I
    .restart local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v5, v5

    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v7

    add-float/2addr v7, v5

    goto :goto_9

    .line 189
    .end local v27    # "end":I
    .end local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v7    # "end":I
    .restart local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    :pswitch_5
    move/from16 v27, v7

    move-object/from16 v28, v8

    .end local v7    # "end":I
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v27    # "end":I
    .restart local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v5

    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v7

    add-float/2addr v5, v7

    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    const/4 v7, 0x2

    int-to-float v7, v7

    div-float v7, v5, v7

    goto :goto_9

    .line 187
    .end local v27    # "end":I
    .end local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v7    # "end":I
    .restart local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    :pswitch_6
    move/from16 v27, v7

    move-object/from16 v28, v8

    .end local v7    # "end":I
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v27    # "end":I
    .restart local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v5

    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v5, v7

    goto :goto_9

    .line 186
    .end local v27    # "end":I
    .end local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v7    # "end":I
    .restart local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    :pswitch_7
    move/from16 v27, v7

    move-object/from16 v28, v8

    .end local v7    # "end":I
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v27    # "end":I
    .restart local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v7

    goto :goto_9

    .line 185
    .end local v27    # "end":I
    .end local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v7    # "end":I
    .restart local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    :pswitch_8
    move/from16 v27, v7

    move-object/from16 v28, v8

    .end local v7    # "end":I
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v27    # "end":I
    .restart local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v5

    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v5, v7

    .line 183
    :goto_9
    nop

    .line 182
    .end local v4    # "$this$placeholderRects_u24lambda_u2d5_u24lambda_u2d4_u24lambda_u2d3":Landroidx/compose/ui/text/android/TextLayout;
    .end local v22    # "$i$a$-with-AndroidParagraph$placeholderRects$1$1$top$1":I
    move v4, v7

    .line 202
    .local v4, "top":F
    invoke-virtual {v12}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 204
    .local v5, "bottom":F
    new-instance v7, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v7, v3, v4, v2, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_b

    .line 168
    .end local v18    # "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .end local v19    # "isPlaceholderSpanEllipsized":Z
    .end local v20    # "isPlaceholderSpanTruncated":Z
    .end local v21    # "$this$map$iv":[Ljava/lang/Object;
    .end local v25    # "$i$f$map":I
    .end local v27    # "end":I
    .end local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .local v2, "isPlaceholderSpanEllipsized":Z
    .local v3, "isPlaceholderSpanTruncated":Z
    .local v4, "$this$map$iv":[Ljava/lang/Object;
    .local v5, "$i$f$map":I
    .restart local v7    # "end":I
    .restart local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    :cond_9
    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v25, v5

    move/from16 v27, v7

    move-object/from16 v28, v8

    .line 169
    .end local v2    # "isPlaceholderSpanEllipsized":Z
    .end local v3    # "isPlaceholderSpanTruncated":Z
    .end local v4    # "$this$map$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$map":I
    .end local v7    # "end":I
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .restart local v19    # "isPlaceholderSpanEllipsized":Z
    .restart local v20    # "isPlaceholderSpanTruncated":Z
    .restart local v21    # "$this$map$iv":[Ljava/lang/Object;
    .restart local v25    # "$i$f$map":I
    .restart local v27    # "end":I
    .restart local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    :goto_a
    move-object/from16 v7, v23

    .line 204
    .end local v1    # "line":I
    .end local v12    # "span":Landroidx/compose/ui/text/android/style/PlaceholderSpan;
    .end local v14    # "$i$a$-map-AndroidParagraph$placeholderRects$1$1":I
    .end local v15    # "start":I
    .end local v19    # "isPlaceholderSpanEllipsized":Z
    .end local v20    # "isPlaceholderSpanTruncated":Z
    .end local v27    # "end":I
    :goto_b
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 405
    nop

    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v21

    move/from16 v5, v25

    move-object/from16 v8, v28

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 407
    .end local v16    # "$this$placeholderRects_u24lambda_u2d5":Ljava/lang/CharSequence;
    .end local v17    # "$i$a$-with-AndroidParagraph$placeholderRects$1":I
    .end local v21    # "$this$map$iv":[Ljava/lang/Object;
    .end local v25    # "$i$f$map":I
    .end local v28    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .local v2, "$this$placeholderRects_u24lambda_u2d5":Ljava/lang/CharSequence;
    .local v3, "$i$a$-with-AndroidParagraph$placeholderRects$1":I
    .restart local v4    # "$this$map$iv":[Ljava/lang/Object;
    .restart local v5    # "$i$f$map":I
    .restart local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    :cond_a
    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v21, v4

    move/from16 v25, v5

    move-object/from16 v28, v8

    .end local v2    # "$this$placeholderRects_u24lambda_u2d5":Ljava/lang/CharSequence;
    .end local v3    # "$i$a$-with-AndroidParagraph$placeholderRects$1":I
    .end local v4    # "$this$map$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$map":I
    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v9    # "$i$f$mapTo":I
    .restart local v16    # "$this$placeholderRects_u24lambda_u2d5":Ljava/lang/CharSequence;
    .restart local v17    # "$i$a$-with-AndroidParagraph$placeholderRects$1":I
    .restart local v21    # "$this$map$iv":[Ljava/lang/Object;
    .restart local v25    # "$i$f$map":I
    move-object v4, v6

    check-cast v4, Ljava/util/List;

    .line 404
    nop

    .line 158
    .end local v21    # "$this$map$iv":[Ljava/lang/Object;
    .end local v25    # "$i$f$map":I
    nop

    .line 156
    .end local v16    # "$this$placeholderRects_u24lambda_u2d5":Ljava/lang/CharSequence;
    .end local v17    # "$i$a$-with-AndroidParagraph$placeholderRects$1":I
    :goto_c
    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->placeholderRects:Ljava/util/List;

    .line 270
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraph;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->wordBoundary$delegate:Lkotlin/Lazy;

    .line 60
    return-void

    .line 403
    :cond_b
    const/4 v1, 0x0

    .line 95
    .local v1, "$i$a$-require-AndroidParagraph$2":I
    nop

    .end local v1    # "$i$a$-require-AndroidParagraph$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width should not be negative"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 403
    :cond_c
    const/4 v1, 0x0

    .line 94
    .local v1, "$i$a$-require-AndroidParagraph$1":I
    nop

    .end local v1    # "$i$a$-require-AndroidParagraph$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxLines should be greater than 0"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZFLandroidx/compose/ui/text/platform/TypefaceAdapter;Landroidx/compose/ui/unit/Density;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "spanStyles"    # Ljava/util/List;
    .param p4, "placeholders"    # Ljava/util/List;
    .param p5, "maxLines"    # I
    .param p6, "ellipsis"    # Z
    .param p7, "width"    # F
    .param p8, "typefaceAdapter"    # Landroidx/compose/ui/text/platform/TypefaceAdapter;
    .param p9, "density"    # Landroidx/compose/ui/unit/Density;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;IZF",
            "Landroidx/compose/ui/text/platform/TypefaceAdapter;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    const-string v0, "text"

    move-object v8, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanStyles"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholders"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typefaceAdapter"

    move-object/from16 v12, p8

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    move-object/from16 v13, p9

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    nop

    .line 78
    new-instance v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 79
    nop

    .line 80
    nop

    .line 82
    nop

    .line 81
    nop

    .line 83
    nop

    .line 84
    nop

    .line 78
    move-object v1, v0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/platform/TypefaceAdapter;Landroidx/compose/ui/unit/Density;)V

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 77
    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {p0, v0, v2, v3, v4}, Landroidx/compose/ui/text/platform/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZF)V

    .line 89
    return-void
.end method

.method public static final synthetic access$getLayout$p(Landroidx/compose/ui/text/platform/AndroidParagraph;)Landroidx/compose/ui/text/android/TextLayout;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/text/platform/AndroidParagraph;

    .line 59
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    return-object v0
.end method

.method public static synthetic getCharSequence$ui_text_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTextLocale$ui_text_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTextPaint$ui_text_release$annotations()V
    .locals 0

    return-void
.end method

.method private final getWordBoundary()Landroidx/compose/ui/text/android/selection/WordBoundary;
    .locals 1

    .line 270
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->wordBoundary$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/android/selection/WordBoundary;

    return-object v0
.end method


# virtual methods
.method public getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1
    .param p1, "offset"    # I

    .line 317
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->isRtlCharAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    goto :goto_0

    .line 320
    :cond_0
    sget-object v0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 317
    :goto_0
    return-object v0
.end method

.method public getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;
    .locals 6
    .param p1, "offset"    # I

    .line 231
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 232
    .local v0, "left":F
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 234
    .local v1, "right":F
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result v2

    .line 235
    .local v2, "line":I
    iget-object v3, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v3, v2}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v3

    .line 236
    .local v3, "top":F
    iget-object v4, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v4, v2}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v4

    .line 238
    .local v4, "bottom":F
    new-instance v5, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v5, v0, v3, v1, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method public final getCharSequence$ui_text_release()Ljava/lang/CharSequence;
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCursorRect(I)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .param p1, "offset"    # I

    .line 254
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 258
    .local v0, "horizontal":F
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result v1

    .line 262
    .local v1, "line":I
    new-instance v2, Landroidx/compose/ui/geometry/Rect;

    .line 263
    nop

    .line 264
    iget-object v3, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v3, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v3

    .line 265
    nop

    .line 266
    iget-object v4, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v4

    .line 262
    invoke-direct {v2, v0, v3, v0, v4}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v2

    .line 255
    .end local v0    # "horizontal":F
    .end local v1    # "line":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is out of bounds (0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getDidExceedMaxLines()Z
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getDidExceedMaxLines()Z

    move-result v0

    return v0
.end method

.method public final getEllipsis()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->ellipsis:Z

    return v0
.end method

.method public getFirstBaseline()F
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getHorizontalPosition(IZ)F
    .locals 1
    .param p1, "offset"    # I
    .param p2, "usePrimaryDirection"    # Z

    .line 304
    if-eqz p2, :cond_0

    .line 305
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(I)F

    move-result v0

    .line 308
    :goto_0
    return v0
.end method

.method public getLastBaseline()F
    .locals 2

    .line 139
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    iget v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v0

    .line 143
    :goto_0
    return v0
.end method

.method public getLineBottom(I)F
    .locals 1
    .param p1, "lineIndex"    # I

    .line 284
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineEnd(IZ)I
    .locals 1
    .param p1, "lineIndex"    # I
    .param p2, "visibleEnd"    # Z

    .line 293
    if-eqz p2, :cond_0

    .line 294
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineVisibleEnd(I)I

    move-result v0

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result v0

    .line 297
    :goto_0
    return v0
.end method

.method public getLineForOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 301
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result v0

    return v0
.end method

.method public getLineForVerticalPosition(F)I
    .locals 2
    .param p1, "vertical"    # F

    .line 217
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineHeight(I)F
    .locals 1
    .param p1, "lineIndex"    # I

    .line 286
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineHeight(I)F

    move-result v0

    return v0
.end method

.method public getLineLeft(I)F
    .locals 1
    .param p1, "lineIndex"    # I

    .line 278
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineLeft(I)F

    move-result v0

    return v0
.end method

.method public getLineRight(I)F
    .locals 1
    .param p1, "lineIndex"    # I

    .line 280
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineRight(I)F

    move-result v0

    return v0
.end method

.method public getLineStart(I)I
    .locals 1
    .param p1, "lineIndex"    # I

    .line 290
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineTop(I)F
    .locals 1
    .param p1, "lineIndex"    # I

    .line 282
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 1
    .param p1, "lineIndex"    # I

    .line 288
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineWidth(I)F

    move-result v0

    return v0
.end method

.method public getMaxIntrinsicWidth()F
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result v0

    return v0
.end method

.method public final getMaxLines()I
    .locals 1

    .line 62
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    return v0
.end method

.method public getMinIntrinsicWidth()F
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getMinIntrinsicWidth()F

    move-result v0

    return v0
.end method

.method public getOffsetForPosition-k-4lQ0M(J)I
    .locals 3
    .param p1, "position"    # J

    .line 221
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForVertical(I)I

    move-result v0

    .line 222
    .local v0, "line":I
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/text/android/TextLayout;->getOffsetForHorizontal(IF)I

    move-result v1

    return v1
.end method

.method public getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 3
    .param p1, "offset"    # I

    .line 311
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result v0

    .line 312
    .local v0, "lineIndex":I
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/android/TextLayout;->getParagraphDirection(I)I

    move-result v1

    .line 313
    .local v1, "direction":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    :goto_0
    return-object v2
.end method

.method public final getParagraphIntrinsics()Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    return-object v0
.end method

.method public getPathForRange(II)Landroidx/compose/ui/graphics/Path;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 242
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 248
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 249
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/compose/ui/text/android/TextLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 250
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    return-object v1

    .line 243
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or End("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is out of Range(0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), or start > end!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getPlaceholderRects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->placeholderRects:Ljava/util/List;

    return-object v0
.end method

.method public final getTextLocale$ui_text_release()Ljava/util/Locale;
    .locals 2

    .line 150
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "paragraphIntrinsics.textPaint.textLocale"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 64
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->width:F

    return v0
.end method

.method public getWordBoundary--jx7JFs(I)J
    .locals 2
    .param p1, "offset"    # I

    .line 275
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWordBoundary()Landroidx/compose/ui/text/android/selection/WordBoundary;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordBoundary;->getWordStart(I)I

    move-result v0

    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWordBoundary()Landroidx/compose/ui/text/android/selection/WordBoundary;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/selection/WordBoundary;->getWordEnd(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final isEllipsisApplied$ui_text_release(I)Z
    .locals 1
    .param p1, "lineIndex"    # I

    .line 328
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->isEllipsisApplied(I)Z

    move-result v0

    return v0
.end method

.method public isLineEllipsized(I)Z
    .locals 1
    .param p1, "lineIndex"    # I

    .line 299
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->isLineEllipsized(I)Z

    move-result v0

    return v0
.end method

.method public paint-RPmYEkk(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 4
    .param p1, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p2, "color"    # J
    .param p4, "shadow"    # Landroidx/compose/ui/graphics/Shadow;
    .param p5, "textDecoration"    # Landroidx/compose/ui/text/style/TextDecoration;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    .line 337
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 338
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 340
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 341
    .local v0, "nativeCanvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getDidExceedMaxLines()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 343
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 345
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/android/TextLayout;->paint(Landroid/graphics/Canvas;)V

    .line 346
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getDidExceedMaxLines()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 349
    :cond_1
    return-void
.end method
