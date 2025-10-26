.class public final Landroidx/compose/ui/layout/SubcomposeMeasureScope$DefaultImpls;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/SubcomposeMeasureScope;
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
.method public static layout(Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "alignmentLines"    # Ljava/util/Map;
    .param p4, "placementBlock"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
            "II",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentLines"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementBlock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->layout(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public static roundToPx--R2X_6o(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)I
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # J

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->roundToPx--R2X_6o(Landroidx/compose/ui/layout/MeasureScope;J)I

    move-result v0

    .line 135
    return v0
.end method

.method public static roundToPx-0680j_4(Landroidx/compose/ui/layout/SubcomposeMeasureScope;F)I
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->roundToPx-0680j_4(Landroidx/compose/ui/layout/MeasureScope;F)I

    move-result v0

    .line 135
    return v0
.end method

.method public static toDp-GaN1DYA(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # J

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->toDp-GaN1DYA(Landroidx/compose/ui/layout/MeasureScope;J)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/layout/SubcomposeMeasureScope;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->toDp-u2uoSUM(Landroidx/compose/ui/layout/MeasureScope;F)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/layout/SubcomposeMeasureScope;I)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # I

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->toDp-u2uoSUM(Landroidx/compose/ui/layout/MeasureScope;I)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toPx--R2X_6o(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # J

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->toPx--R2X_6o(Landroidx/compose/ui/layout/MeasureScope;J)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toPx-0680j_4(Landroidx/compose/ui/layout/SubcomposeMeasureScope;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->toPx-0680j_4(Landroidx/compose/ui/layout/MeasureScope;F)F

    move-result v0

    .line 135
    return v0
.end method

.method public static toRect(Landroidx/compose/ui/layout/SubcomposeMeasureScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # Landroidx/compose/ui/unit/DpRect;

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->toRect(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public static toSp-0xMU5do(Landroidx/compose/ui/layout/SubcomposeMeasureScope;F)J
    .locals 2
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->toSp-0xMU5do(Landroidx/compose/ui/layout/MeasureScope;F)J

    move-result-wide v0

    .line 135
    return-wide v0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/layout/SubcomposeMeasureScope;F)J
    .locals 2
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->toSp-kPz2Gy4(Landroidx/compose/ui/layout/MeasureScope;F)J

    move-result-wide v0

    .line 135
    return-wide v0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/layout/SubcomposeMeasureScope;I)J
    .locals 2
    .param p0, "this"    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
    .param p1, "receiver"    # I

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    invoke-static {v0, p1}, Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;->toSp-kPz2Gy4(Landroidx/compose/ui/layout/MeasureScope;I)J

    move-result-wide v0

    .line 135
    return-wide v0
.end method
