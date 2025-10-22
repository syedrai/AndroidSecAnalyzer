.class public final Lcom/google/android/material/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final DEFAULT_EPSILON:F = 1.0E-4f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAllElementsEqual([F)Z
    .locals 5
    .param p0, "array"    # [F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 111
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 112
    return v1

    .line 114
    :cond_0
    const/4 v0, 0x0

    aget v2, p0, v0

    .line 115
    .local v2, "sample":F
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 116
    aget v4, p0, v3

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_1

    .line 117
    return v0

    .line 115
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method public static dist(FFFF)F
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x1",
            "y1",
            "x2",
            "y2"
        }
    .end annotation

    .line 30
    sub-float v0, p2, p0

    .line 31
    .local v0, "x":F
    sub-float v1, p3, p1

    .line 32
    .local v1, "y":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .locals 4
    .param p0, "pointX"    # F
    .param p1, "pointY"    # F
    .param p2, "rectLeft"    # F
    .param p3, "rectTop"    # F
    .param p4, "rectRight"    # F
    .param p5, "rectBottom"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointX",
            "pointY",
            "rectLeft",
            "rectTop",
            "rectRight",
            "rectBottom"
        }
    .end annotation

    .line 67
    nop

    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v0

    .line 69
    invoke-static {p0, p1, p4, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v1

    .line 70
    invoke-static {p0, p1, p4, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v2

    .line 71
    invoke-static {p0, p1, p2, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v3

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/math/MathUtils;->max(FFFF)F

    move-result v0

    return v0
.end method

.method public static floorMod(FI)F
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 84
    int-to-float v0, p1

    div-float v0, p0, v0

    float-to-int v0, v0

    .line 86
    .local v0, "r":I
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    int-to-float v2, p1

    mul-float v1, v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-eqz v1, :cond_0

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 89
    :cond_0
    mul-int v1, v0, p1

    int-to-float v1, v1

    sub-float v1, p0, v1

    return v1
.end method

.method public static floorMod(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 97
    div-int v0, p0, p1

    .line 99
    .local v0, "r":I
    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_0

    .line 100
    add-int/lit8 v0, v0, -0x1

    .line 102
    :cond_0
    mul-int v1, v0, p1

    sub-int v1, p0, v1

    return v1
.end method

.method public static geq(FFF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "epsilon"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "epsilon"
        }
    .end annotation

    .line 51
    add-float v0, p0, p2

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lerp(FFF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "stop",
            "amount"
        }
    .end annotation

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float v0, v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private static max(FFFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 76
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpl-float v0, p0, p3

    if-lez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    cmpl-float v0, p2, p3

    if-lez v0, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    move v0, p3

    :goto_0
    return v0
.end method
