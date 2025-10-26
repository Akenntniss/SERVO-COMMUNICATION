.class public final Landroidx/compose/ui/graphics/GraphicsLayerScope$DefaultImpls;
.super Ljava/lang/Object;
.source "GraphicsLayerScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/GraphicsLayerScope;
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
.method public static roundToPx--R2X_6o(Landroidx/compose/ui/graphics/GraphicsLayerScope;J)I
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # J

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/unit/Density$DefaultImpls;->roundToPx--R2X_6o(Landroidx/compose/ui/unit/Density;J)I

    move-result v0

    .line 135
    return v0
.end method

.method public static roundToPx-0680j_4(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)I
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Density$DefaultImpls;->roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    move-result v0

    .line 135
    return v0
.end method

.method public static toDp-GaN1DYA(Landroidx/compose/ui/graphics/GraphicsLayerScope;J)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # J

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/unit/Density$DefaultImpls;->toDp-GaN1DYA(Landroidx/compose/ui/unit/Density;J)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Density$DefaultImpls;->toDp-u2uoSUM(Landroidx/compose/ui/unit/Density;F)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/graphics/GraphicsLayerScope;I)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # I

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Density$DefaultImpls;->toDp-u2uoSUM(Landroidx/compose/ui/unit/Density;I)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toPx--R2X_6o(Landroidx/compose/ui/graphics/GraphicsLayerScope;J)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # J

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/unit/Density$DefaultImpls;->toPx--R2X_6o(Landroidx/compose/ui/unit/Density;J)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toPx-0680j_4(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Density$DefaultImpls;->toPx-0680j_4(Landroidx/compose/ui/unit/Density;F)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toRect(Landroidx/compose/ui/graphics/GraphicsLayerScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # Landroidx/compose/ui/unit/DpRect;

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Density$DefaultImpls;->toRect(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public static toSp-0xMU5do(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)J
    .locals 2
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Density$DefaultImpls;->toSp-0xMU5do(Landroidx/compose/ui/unit/Density;F)J

    move-result-wide v0

    .line 135
    return-wide v0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/graphics/GraphicsLayerScope;F)J
    .locals 2
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Density$DefaultImpls;->toSp-kPz2Gy4(Landroidx/compose/ui/unit/Density;F)J

    move-result-wide v0

    .line 135
    return-wide v0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/graphics/GraphicsLayerScope;I)J
    .locals 2
    .param p0, "this"    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .param p1, "receiver"    # I

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-static {v0, p1}, Landroidx/compose/ui/unit/Density$DefaultImpls;->toSp-kPz2Gy4(Landroidx/compose/ui/unit/Density;I)J

    move-result-wide v0

    .line 135
    return-wide v0
.end method
