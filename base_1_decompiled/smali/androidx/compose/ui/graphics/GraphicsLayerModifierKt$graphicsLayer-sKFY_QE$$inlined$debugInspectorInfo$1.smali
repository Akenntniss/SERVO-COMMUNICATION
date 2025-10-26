.class public final Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InspectableValue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-sKFY_QE(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;Z)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nInspectableValue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1\n+ 2 GraphicsLayerModifier.kt\nandroidx/compose/ui/graphics/GraphicsLayerModifierKt\n*L\n1#1,130:1\n100#2,15:131\n*E\n"
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
.field final synthetic $alpha$inlined:F

.field final synthetic $cameraDistance$inlined:F

.field final synthetic $clip$inlined:Z

.field final synthetic $rotationX$inlined:F

.field final synthetic $rotationY$inlined:F

.field final synthetic $rotationZ$inlined:F

.field final synthetic $scaleX$inlined:F

.field final synthetic $scaleY$inlined:F

.field final synthetic $shadowElevation$inlined:F

.field final synthetic $shape$inlined:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $transformOrigin$inlined:J

.field final synthetic $translationX$inlined:F

.field final synthetic $translationY$inlined:F


# direct methods
.method public constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;Z)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$scaleX$inlined:F

    iput p2, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$scaleY$inlined:F

    iput p3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$alpha$inlined:F

    iput p4, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$translationX$inlined:F

    iput p5, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$translationY$inlined:F

    iput p6, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$shadowElevation$inlined:F

    iput p7, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$rotationX$inlined:F

    iput p8, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$rotationY$inlined:F

    iput p9, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$rotationZ$inlined:F

    iput p10, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$cameraDistance$inlined:F

    iput-wide p11, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$transformOrigin$inlined:J

    iput-object p13, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$shape$inlined:Landroidx/compose/ui/graphics/Shape;

    iput-boolean p14, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$clip$inlined:Z

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

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

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

    .local v0, "$this$graphicsLayer_sKFY_QE_u24lambda_u2d0":Landroidx/compose/ui/platform/InspectorInfo;
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$a$-debugInspectorInfo-GraphicsLayerModifierKt$graphicsLayer$1":I
    const-string v2, "graphicsLayer"

    invoke-virtual {v0, v2}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$scaleX$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "scaleX"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$scaleY$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "scaleY"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$alpha$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$translationX$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "translationX"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$translationY$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "translationY"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$shadowElevation$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "shadowElevation"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$rotationX$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "rotationX"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$rotationY$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "rotationY"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$rotationZ$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "rotationZ"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$cameraDistance$inlined:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "cameraDistance"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$transformOrigin$inlined:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    move-result-object v3

    const-string/jumbo v4, "transformOrigin"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    const-string v3, "shape"

    iget-object v4, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$shape$inlined:Landroidx/compose/ui/graphics/Shape;

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-sKFY_QE$$inlined$debugInspectorInfo$1;->$clip$inlined:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "clip"

    invoke-virtual {v2, v4, v3}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    nop

    .end local v0    # "$this$graphicsLayer_sKFY_QE_u24lambda_u2d0":Landroidx/compose/ui/platform/InspectorInfo;
    .end local v1    # "$i$a$-debugInspectorInfo-GraphicsLayerModifierKt$graphicsLayer$1":I
    return-void
.end method
