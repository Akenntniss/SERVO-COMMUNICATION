.class public Lcom/github/mikephil/charting/data/filter/Approximator;
.super Ljava/lang/Object;
.source "Approximator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/filter/Approximator$Line;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method varargs concat([[F)[F
    .locals 10
    .param p1, "arrays"    # [[F

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "length":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 59
    .local v4, "array":[F
    array-length v5, v4

    add-int/2addr v0, v5

    .line 58
    .end local v4    # "array":[F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-array v1, v0, [F

    .line 62
    .local v1, "result":[F
    const/4 v3, 0x0

    .line 63
    .local v3, "pos":I
    array-length v4, p1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p1, v5

    .line 64
    .local v6, "array":[F
    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 65
    .local v9, "element":F
    aput v9, v1, v3

    .line 66
    nop

    .end local v9    # "element":F
    add-int/lit8 v3, v3, 0x1

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 63
    .end local v6    # "array":[F
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 69
    :cond_2
    return-object v1
.end method

.method public reduceWithDouglasPeucker([FF)[F
    .locals 12
    .param p1, "points"    # [F
    .param p2, "tolerance"    # F

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "greatestIndex":I
    const/4 v1, 0x0

    .line 23
    .local v1, "greatestDistance":F
    new-instance v8, Lcom/github/mikephil/charting/data/filter/Approximator$Line;

    const/4 v9, 0x0

    aget v4, p1, v9

    const/4 v10, 0x1

    aget v5, p1, v10

    array-length v2, p1

    const/4 v11, 0x2

    sub-int/2addr v2, v11

    aget v6, p1, v2

    array-length v2, p1

    sub-int/2addr v2, v10

    aget v7, p1, v2

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/github/mikephil/charting/data/filter/Approximator$Line;-><init>(Lcom/github/mikephil/charting/data/filter/Approximator;FFFF)V

    .line 25
    .local v2, "line":Lcom/github/mikephil/charting/data/filter/Approximator$Line;
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    sub-int/2addr v4, v11

    if-ge v3, v4, :cond_1

    .line 27
    aget v4, p1, v3

    add-int/lit8 v5, v3, 0x1

    aget v5, p1, v5

    invoke-virtual {v2, v4, v5}, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->distance(FF)F

    move-result v4

    .line 29
    .local v4, "distance":F
    cmpl-float v5, v4, v1

    if-lez v5, :cond_0

    .line 30
    move v1, v4

    .line 31
    move v0, v3

    .line 25
    .end local v4    # "distance":F
    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 35
    .end local v3    # "i":I
    :cond_1
    cmpl-float v3, v1, p2

    if-lez v3, :cond_2

    .line 37
    add-int/lit8 v3, v0, 0x2

    invoke-static {p1, v9, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/mikephil/charting/data/filter/Approximator;->reduceWithDouglasPeucker([FF)[F

    move-result-object v3

    .line 38
    .local v3, "reduced1":[F
    array-length v4, p1

    invoke-static {p1, v0, v4}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/github/mikephil/charting/data/filter/Approximator;->reduceWithDouglasPeucker([FF)[F

    move-result-object v4

    .line 41
    .local v4, "reduced2":[F
    move-object v5, v3

    .line 42
    .local v5, "result1":[F
    array-length v6, v4

    invoke-static {v4, v11, v6}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v6

    .line 44
    .local v6, "result2":[F
    new-array v7, v11, [[F

    aput-object v5, v7, v9

    aput-object v6, v7, v10

    invoke-virtual {p0, v7}, Lcom/github/mikephil/charting/data/filter/Approximator;->concat([[F)[F

    move-result-object v7

    return-object v7

    .line 46
    .end local v3    # "reduced1":[F
    .end local v4    # "reduced2":[F
    .end local v5    # "result1":[F
    .end local v6    # "result2":[F
    :cond_2
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->getPoints()[F

    move-result-object v3

    return-object v3
.end method
