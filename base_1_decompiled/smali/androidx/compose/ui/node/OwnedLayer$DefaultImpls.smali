.class public final Landroidx/compose/ui/node/OwnedLayer$DefaultImpls;
.super Ljava/lang/Object;
.source "OwnedLayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/OwnedLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getOwnerViewId(Landroidx/compose/ui/node/OwnedLayer;)J
    .locals 2
    .param p0, "this"    # Landroidx/compose/ui/node/OwnedLayer;
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/GraphicLayerInfo;

    invoke-static {v0}, Landroidx/compose/ui/layout/GraphicLayerInfo$DefaultImpls;->getOwnerViewId(Landroidx/compose/ui/layout/GraphicLayerInfo;)J

    move-result-wide v0

    .line 113
    return-wide v0
.end method
