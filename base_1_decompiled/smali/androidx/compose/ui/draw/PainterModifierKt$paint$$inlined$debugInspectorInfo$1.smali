.class public final Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InspectableValue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/draw/PainterModifierKt;->paint(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInspectableValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1\n+ 2 PainterModifier.kt\nandroidx/compose/ui/draw/PainterModifierKt\n*L\n1#1,130:1\n73#2,8:131\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0001*\u00020\u0000H\n\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/platform/InspectorInfo;",
        "",
        "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1",
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
.field final synthetic $alignment$inlined:Landroidx/compose/ui/Alignment;

.field final synthetic $alpha$inlined:F

.field final synthetic $colorFilter$inlined:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $contentScale$inlined:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic $painter$inlined:Landroidx/compose/ui/graphics/painter/Painter;

.field final synthetic $sizeToIntrinsics$inlined:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$painter$inlined:Landroidx/compose/ui/graphics/painter/Painter;

    iput-boolean p2, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$sizeToIntrinsics$inlined:Z

    iput-object p3, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$alignment$inlined:Landroidx/compose/ui/Alignment;

    iput-object p4, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$contentScale$inlined:Landroidx/compose/ui/layout/ContentScale;

    iput p5, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$alpha$inlined:F

    iput-object p6, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$colorFilter$inlined:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 129
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 5
    .param p1, "$this$null"    # Landroidx/compose/ui/platform/InspectorInfo;

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    move-object v0, p1

    .local v0, "$this$paint_u24lambda_u2d0":Landroidx/compose/ui/platform/InspectorInfo;
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$a$-debugInspectorInfo-PainterModifierKt$paint$1":I
    const-string v2, "paint"

    invoke-virtual {v0, v2}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    const-string v3, "painter"

    iget-object v4, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$painter$inlined:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$sizeToIntrinsics$inlined:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "sizeToIntrinsics"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    const-string v3, "alignment"

    iget-object v4, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$alignment$inlined:Landroidx/compose/ui/Alignment;

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    const-string v3, "contentScale"

    iget-object v4, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$contentScale$inlined:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$alpha$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    const-string v3, "colorFilter"

    iget-object v4, p0, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;->$colorFilter$inlined:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    nop

    .end local v0    # "$this$paint_u24lambda_u2d0":Landroidx/compose/ui/platform/InspectorInfo;
    .end local v1    # "$i$a$-debugInspectorInfo-PainterModifierKt$paint$1":I
    return-void
.end method
