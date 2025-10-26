.class public final Landroidx/compose/ui/graphics/vector/VectorOverride$DefaultImpls;
.super Ljava/lang/Object;
.source "VectorPainter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/VectorOverride;
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
.method public static obtainFill(Landroidx/compose/ui/graphics/vector/VectorOverride;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/graphics/Brush;
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "fill"    # Landroidx/compose/ui/graphics/Brush;

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    return-object p1
.end method

.method public static obtainFillAlpha(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "fillAlpha"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    return p1
.end method

.method public static obtainPathData(Landroidx/compose/ui/graphics/vector/VectorOverride;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "pathData"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/VectorOverride;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    return-object p1
.end method

.method public static obtainPivotX(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "pivotX"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    return p1
.end method

.method public static obtainPivotY(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "pivotY"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    return p1
.end method

.method public static obtainRotation(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "rotation"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    return p1
.end method

.method public static obtainScaleX(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "scaleX"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    return p1
.end method

.method public static obtainScaleY(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "scaleY"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    return p1
.end method

.method public static obtainStroke(Landroidx/compose/ui/graphics/vector/VectorOverride;Landroidx/compose/ui/graphics/Brush;)Landroidx/compose/ui/graphics/Brush;
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "stroke"    # Landroidx/compose/ui/graphics/Brush;

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    return-object p1
.end method

.method public static obtainStrokeAlpha(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "strokeAlpha"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    return p1
.end method

.method public static obtainStrokeWidth(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "strokeWidth"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    return p1
.end method

.method public static obtainTranslateX(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "translateX"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    return p1
.end method

.method public static obtainTranslateY(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "translateY"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    return p1
.end method

.method public static obtainTrimPathEnd(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "trimPathEnd"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    return p1
.end method

.method public static obtainTrimPathOffset(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "trimPathOffset"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    return p1
.end method

.method public static obtainTrimPathStart(Landroidx/compose/ui/graphics/vector/VectorOverride;F)F
    .locals 1
    .param p0, "this"    # Landroidx/compose/ui/graphics/vector/VectorOverride;
    .param p1, "trimPathStart"    # F

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    return p1
.end method
