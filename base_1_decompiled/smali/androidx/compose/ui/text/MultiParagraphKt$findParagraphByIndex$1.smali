.class final Landroidx/compose/ui/text/MultiParagraphKt$findParagraphByIndex$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MultiParagraph.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/MultiParagraphKt;->findParagraphByIndex(Ljava/util/List;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/text/ParagraphInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Landroidx/compose/ui/text/ParagraphInfo;",
        "paragraphInfo",
        "",
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
.field final synthetic $index:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/text/MultiParagraphKt$findParagraphByIndex$1;->$index:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/text/ParagraphInfo;)I
    .locals 2
    .param p1, "paragraphInfo"    # Landroidx/compose/ui/text/ParagraphInfo;

    const-string v0, "paragraphInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    nop

    .line 614
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphInfo;->getStartIndex()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/text/MultiParagraphKt$findParagraphByIndex$1;->$index:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphInfo;->getEndIndex()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/text/MultiParagraphKt$findParagraphByIndex$1;->$index:I

    if-gt v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 616
    :cond_1
    const/4 v0, 0x0

    .line 613
    :goto_0
    return v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 612
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/text/ParagraphInfo;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/MultiParagraphKt$findParagraphByIndex$1;->invoke(Landroidx/compose/ui/text/ParagraphInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
