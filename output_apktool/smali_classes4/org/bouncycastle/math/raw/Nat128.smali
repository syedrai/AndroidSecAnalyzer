.class public abstract Lorg/bouncycastle/math/raw/Nat128;
.super Ljava/lang/Object;
.source "Nat128.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 15
    long-to-int v3, v0

    aput v3, p2, v2

    .line 16
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 17
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 18
    long-to-int v4, v0

    aput v4, p2, v3

    .line 19
    ushr-long/2addr v0, v2

    .line 20
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 21
    long-to-int v4, v0

    aput v4, p2, v3

    .line 22
    ushr-long/2addr v0, v2

    .line 23
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 24
    long-to-int v4, v0

    aput v4, p2, v3

    .line 25
    ushr-long/2addr v0, v2

    .line 26
    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 33
    long-to-int v3, v0

    aput v3, p2, v2

    .line 34
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 35
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 36
    long-to-int v4, v0

    aput v4, p2, v3

    .line 37
    ushr-long/2addr v0, v2

    .line 38
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 39
    long-to-int v4, v0

    aput v4, p2, v3

    .line 40
    ushr-long/2addr v0, v2

    .line 41
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 42
    long-to-int v4, v0

    aput v4, p2, v3

    .line 43
    ushr-long/2addr v0, v2

    .line 44
    long-to-int v2, v0

    return v2
.end method

.method public static addTo([II[III)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "cIn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff",
            "cIn"
        }
    .end annotation

    .line 67
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 68
    .local v0, "c":J
    add-int/lit8 v4, p1, 0x0

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 69
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 70
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 71
    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 72
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 73
    ushr-long/2addr v0, v4

    .line 74
    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 75
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 76
    ushr-long/2addr v0, v4

    .line 77
    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 78
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 79
    ushr-long/2addr v0, v4

    .line 80
    long-to-int v2, v0

    return v2
.end method

.method public static addTo([I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 51
    long-to-int v3, v0

    aput v3, p1, v2

    .line 52
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 53
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 54
    long-to-int v4, v0

    aput v4, p1, v3

    .line 55
    ushr-long/2addr v0, v2

    .line 56
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 57
    long-to-int v4, v0

    aput v4, p1, v3

    .line 58
    ushr-long/2addr v0, v2

    .line 59
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 60
    long-to-int v4, v0

    aput v4, p1, v3

    .line 61
    ushr-long/2addr v0, v2

    .line 62
    long-to-int v2, v0

    return v2
.end method

.method public static addToEachOther([II[II)I
    .locals 10
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "uOff",
            "v",
            "vOff"
        }
    .end annotation

    .line 85
    const-wide/16 v0, 0x0

    .line 86
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 87
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 88
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 89
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 90
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 91
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 92
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 93
    ushr-long/2addr v0, v2

    .line 94
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 95
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 96
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 97
    ushr-long/2addr v0, v2

    .line 98
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 99
    add-int/lit8 v3, p1, 0x3

    long-to-int v4, v0

    aput v4, p0, v3

    .line 100
    add-int/lit8 v3, p3, 0x3

    long-to-int v4, v0

    aput v4, p2, v3

    .line 101
    ushr-long/2addr v0, v2

    .line 102
    long-to-int v2, v0

    return v2
.end method

.method public static copy([II[II)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 115
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 116
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 117
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 118
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 119
    return-void
.end method

.method public static copy([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 108
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 109
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 110
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 111
    return-void
.end method

.method public static copy64([JI[JI)V
    .locals 3
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 129
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 130
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 131
    return-void
.end method

.method public static copy64([J[J)V
    .locals 3
    .param p0, "x"    # [J
    .param p1, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 124
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 125
    return-void
.end method

.method public static create()[I
    .locals 1

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    .line 150
    const/4 v0, 0x4

    new-array v0, v0, [J

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 2
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I
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
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 155
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat128;->gte([II[II)Z

    move-result v0

    .line 156
    .local v0, "pos":Z
    if-eqz v0, :cond_0

    .line 158
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat128;->sub([II[II[II)I

    goto :goto_0

    .line 162
    :cond_0
    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .local p0, "y":[I
    .local p1, "yOff":I
    .local p2, "x":[I
    .local p3, "xOff":I
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat128;->sub([II[II[II)I

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 164
    .local p0, "x":[I
    .local p1, "xOff":I
    .local p2, "y":[I
    .local p3, "yOff":I
    :goto_0
    return v0
.end method

.method public static eq([I[I)Z
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
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

    .line 169
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 171
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 173
    const/4 v1, 0x0

    return v1

    .line 169
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static eq64([J[J)Z
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J
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

    .line 181
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 183
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 185
    const/4 v1, 0x0

    return v1

    .line 181
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 188
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_1

    .line 198
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create()[I

    move-result-object v0

    .line 201
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 203
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 204
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 195
    .end local v0    # "z":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 4
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_1

    .line 216
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 219
    .local v0, "z":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 221
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 222
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 213
    .end local v0    # "z":[J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getBit([II)I
    .locals 3
    .param p0, "x"    # [I
    .param p1, "bit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "bit"
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 231
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 233
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    .line 234
    .local v1, "w":I
    if-ltz v1, :cond_2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    and-int/lit8 v0, p1, 0x1f

    .line 239
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 236
    .end local v0    # "b":I
    :cond_2
    :goto_0
    return v0
.end method

.method public static gte([II[II)Z
    .locals 5
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff"
        }
    .end annotation

    .line 258
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 260
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 261
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 262
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 263
    const/4 v1, 0x0

    return v1

    .line 264
    :cond_0
    if-le v2, v3, :cond_1

    .line 265
    return v1

    .line 258
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 267
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static gte([I[I)Z
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I
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

    .line 244
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 246
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 247
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 248
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 249
    const/4 v1, 0x0

    return v1

    .line 250
    :cond_0
    if-le v2, v3, :cond_1

    .line 251
    return v1

    .line 244
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 253
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static isOne([I)Z
    .locals 4
    .param p0, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 274
    return v0

    .line 276
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 278
    aget v3, p0, v1

    if-eqz v3, :cond_1

    .line 280
    return v0

    .line 276
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public static isOne64([J)Z
    .locals 7
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 290
    return v0

    .line 292
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 294
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 296
    return v0

    .line 292
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isZero([I)Z
    .locals 2
    .param p0, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 306
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 308
    const/4 v1, 0x0

    return v1

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isZero64([J)Z
    .locals 6
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 318
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 320
    const/4 v1, 0x0

    return v1

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static mul([II[II[II)V
    .locals 23
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I
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
            "x",
            "xOff",
            "y",
            "yOff",
            "zz",
            "zzOff"
        }
    .end annotation

    .line 371
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 372
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 373
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 374
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 377
    .local v8, "y_3":J
    const-wide/16 v10, 0x0

    .local v10, "c":J
    add-int/lit8 v12, p1, 0x0

    aget v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 378
    .local v12, "x_0":J
    mul-long v14, v12, v0

    add-long/2addr v10, v14

    .line 379
    add-int/lit8 v14, p5, 0x0

    long-to-int v15, v10

    aput v15, p4, v14

    .line 380
    const/16 v14, 0x20

    ushr-long/2addr v10, v14

    .line 381
    mul-long v15, v12, v4

    add-long/2addr v10, v15

    .line 382
    add-int/lit8 v15, p5, 0x1

    move-wide/from16 v16, v2

    long-to-int v2, v10

    aput v2, p4, v15

    .line 383
    ushr-long v2, v10, v14

    .line 384
    .end local v10    # "c":J
    .local v2, "c":J
    mul-long v10, v12, v6

    add-long/2addr v2, v10

    .line 385
    add-int/lit8 v10, p5, 0x2

    long-to-int v11, v2

    aput v11, p4, v10

    .line 386
    ushr-long/2addr v2, v14

    .line 387
    mul-long v10, v12, v8

    add-long/2addr v2, v10

    .line 388
    add-int/lit8 v10, p5, 0x3

    long-to-int v11, v2

    aput v11, p4, v10

    .line 389
    ushr-long/2addr v2, v14

    .line 390
    add-int/lit8 v10, p5, 0x4

    long-to-int v11, v2

    aput v11, p4, v10

    .line 393
    .end local v2    # "c":J
    .end local v12    # "x_0":J
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, p5

    .end local p5    # "zzOff":I
    .local v2, "zzOff":I
    .local v3, "i":I
    :goto_0
    const/4 v10, 0x4

    if-ge v3, v10, :cond_0

    .line 395
    add-int/lit8 v2, v2, 0x1

    .line 396
    const-wide/16 v10, 0x0

    .restart local v10    # "c":J
    add-int v12, p1, v3

    aget v12, p0, v12

    int-to-long v12, v12

    and-long v12, v12, v16

    .line 397
    .local v12, "x_i":J
    mul-long v18, v12, v0

    add-int/lit8 v15, v2, 0x0

    aget v15, p4, v15

    const/16 v20, 0x20

    int-to-long v14, v15

    and-long v14, v14, v16

    add-long v18, v18, v14

    add-long v10, v10, v18

    .line 398
    add-int/lit8 v14, v2, 0x0

    long-to-int v15, v10

    aput v15, p4, v14

    .line 399
    ushr-long v10, v10, v20

    .line 400
    mul-long v14, v12, v4

    add-int/lit8 v18, v2, 0x1

    move-wide/from16 v21, v0

    .end local v0    # "y_0":J
    .local v21, "y_0":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v14, v0

    add-long/2addr v10, v14

    .line 401
    add-int/lit8 v0, v2, 0x1

    long-to-int v1, v10

    aput v1, p4, v0

    .line 402
    ushr-long v0, v10, v20

    .line 403
    .end local v10    # "c":J
    .local v0, "c":J
    mul-long v10, v12, v6

    add-int/lit8 v14, v2, 0x2

    aget v14, p4, v14

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v10, v14

    add-long/2addr v0, v10

    .line 404
    add-int/lit8 v10, v2, 0x2

    long-to-int v11, v0

    aput v11, p4, v10

    .line 405
    ushr-long v0, v0, v20

    .line 406
    mul-long v10, v12, v8

    add-int/lit8 v14, v2, 0x3

    aget v14, p4, v14

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v10, v14

    add-long/2addr v0, v10

    .line 407
    add-int/lit8 v10, v2, 0x3

    long-to-int v11, v0

    aput v11, p4, v10

    .line 408
    ushr-long v0, v0, v20

    .line 409
    add-int/lit8 v10, v2, 0x4

    long-to-int v11, v0

    aput v11, p4, v10

    .line 393
    .end local v0    # "c":J
    .end local v12    # "x_i":J
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v0, v21

    const/16 v14, 0x20

    goto :goto_0

    .line 411
    .end local v3    # "i":I
    .end local v21    # "y_0":J
    .local v0, "y_0":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 23
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "zz"
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 329
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 330
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 331
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 334
    .local v12, "y_3":J
    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    .local v14, "c":J
    aget v0, p0, v16

    move-wide/from16 v17, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    .line 335
    .local v3, "x_0":J
    mul-long v19, v3, v1

    add-long v14, v14, v19

    .line 336
    long-to-int v0, v14

    aput v0, p2, v16

    .line 337
    const/16 v0, 0x20

    ushr-long/2addr v14, v0

    .line 338
    mul-long v19, v3, v6

    add-long v14, v14, v19

    .line 339
    const/16 v16, 0x20

    long-to-int v0, v14

    aput v0, p2, v5

    .line 340
    ushr-long v14, v14, v16

    .line 341
    mul-long v19, v3, v9

    add-long v14, v14, v19

    .line 342
    long-to-int v0, v14

    aput v0, p2, v8

    .line 343
    ushr-long v14, v14, v16

    .line 344
    mul-long v19, v3, v12

    add-long v14, v14, v19

    .line 345
    long-to-int v0, v14

    aput v0, p2, v11

    .line 346
    ushr-long v14, v14, v16

    .line 347
    long-to-int v0, v14

    const/4 v5, 0x4

    aput v0, p2, v5

    .line 350
    .end local v3    # "x_0":J
    .end local v14    # "c":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 352
    const-wide/16 v3, 0x0

    .local v3, "c":J
    aget v8, p0, v0

    int-to-long v14, v8

    and-long v14, v14, v17

    .line 353
    .local v14, "x_i":J
    mul-long v19, v14, v1

    add-int/lit8 v8, v0, 0x0

    aget v8, p2, v8

    move-wide/from16 v21, v6

    .end local v6    # "y_1":J
    .local v21, "y_1":J
    int-to-long v5, v8

    and-long v5, v5, v17

    add-long v19, v19, v5

    add-long v3, v3, v19

    .line 354
    add-int/lit8 v5, v0, 0x0

    long-to-int v6, v3

    aput v6, p2, v5

    .line 355
    ushr-long v3, v3, v16

    .line 356
    mul-long v5, v14, v21

    add-int/lit8 v8, v0, 0x1

    aget v8, p2, v8

    int-to-long v7, v8

    and-long v7, v7, v17

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 357
    add-int/lit8 v5, v0, 0x1

    long-to-int v6, v3

    aput v6, p2, v5

    .line 358
    ushr-long v3, v3, v16

    .line 359
    mul-long v5, v14, v9

    add-int/lit8 v7, v0, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 360
    add-int/lit8 v5, v0, 0x2

    long-to-int v6, v3

    aput v6, p2, v5

    .line 361
    ushr-long v3, v3, v16

    .line 362
    mul-long v5, v14, v12

    add-int/lit8 v7, v0, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 363
    add-int/lit8 v5, v0, 0x3

    long-to-int v6, v3

    aput v6, p2, v5

    .line 364
    ushr-long v3, v3, v16

    .line 365
    add-int/lit8 v5, v0, 0x4

    long-to-int v6, v3

    aput v6, p2, v5

    .line 350
    .end local v3    # "c":J
    .end local v14    # "x_i":J
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v6, v21

    const/4 v5, 0x4

    goto :goto_0

    .line 367
    .end local v0    # "i":I
    .end local v21    # "y_1":J
    .restart local v6    # "y_1":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 22
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 480
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 481
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 482
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 483
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 484
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 485
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 486
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 487
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 488
    ushr-long/2addr v0, v9

    .line 489
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 490
    .local v12, "x2":J
    mul-long v14, v3, v12

    add-long/2addr v14, v10

    add-int/lit8 v16, p4, 0x2

    move-wide/from16 v17, v5

    aget v5, p3, v16

    int-to-long v5, v5

    and-long v5, v5, v17

    add-long/2addr v14, v5

    add-long/2addr v0, v14

    .line 491
    add-int/lit8 v5, p6, 0x2

    long-to-int v6, v0

    aput v6, p5, v5

    .line 492
    ushr-long/2addr v0, v9

    .line 493
    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    int-to-long v5, v5

    and-long v5, v5, v17

    .line 494
    .local v5, "x3":J
    mul-long v14, v3, v5

    add-long/2addr v14, v12

    add-int/lit8 v16, p4, 0x3

    const/16 v19, 0x20

    aget v9, p3, v16

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .local v20, "c":J
    int-to-long v0, v9

    and-long v0, v0, v17

    add-long/2addr v14, v0

    add-long v0, v20, v14

    .line 495
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x3

    long-to-int v14, v0

    aput v14, p5, v9

    .line 496
    ushr-long v0, v0, v19

    .line 497
    add-long/2addr v0, v5

    .line 498
    return-wide v0
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 16
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "zOff"
        }
    .end annotation

    .line 526
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 527
    .local v3, "xVal":J
    and-long v7, p1, v5

    .line 528
    .local v7, "y00":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 529
    add-int/lit8 v9, p4, 0x0

    long-to-int v10, v0

    aput v10, p3, v9

    .line 530
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 531
    ushr-long v10, p1, v9

    .line 532
    .local v10, "y01":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 533
    add-int/lit8 v12, p4, 0x1

    long-to-int v13, v0

    aput v13, p3, v12

    .line 534
    ushr-long/2addr v0, v9

    .line 535
    add-int/lit8 v12, p4, 0x2

    aget v12, p3, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    add-long/2addr v12, v10

    add-long/2addr v0, v12

    .line 536
    add-int/lit8 v12, p4, 0x2

    long-to-int v13, v0

    aput v13, p3, v12

    .line 537
    ushr-long/2addr v0, v9

    .line 538
    add-int/lit8 v12, p4, 0x3

    aget v12, p3, v12

    int-to-long v12, v12

    and-long/2addr v5, v12

    add-long/2addr v0, v5

    .line 539
    add-int/lit8 v5, p4, 0x3

    long-to-int v6, v0

    aput v6, p3, v5

    .line 540
    ushr-long/2addr v0, v9

    .line 541
    long-to-int v5, v0

    return v5
.end method

.method public static mul33WordAdd(II[II)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "zOff"
        }
    .end annotation

    .line 549
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 550
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 551
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 552
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 553
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 554
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 555
    ushr-long/2addr v0, v8

    .line 556
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 557
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 558
    ushr-long/2addr v0, v8

    .line 559
    const-wide/16 v4, 0x0

    cmp-long v8, v0, v4

    if-nez v8, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static mulAddTo([II[II[II)I
    .locals 23
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I
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
            "x",
            "xOff",
            "y",
            "yOff",
            "zz",
            "zzOff"
        }
    .end annotation

    .line 446
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 447
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 448
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 449
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 451
    .local v8, "y_3":J
    const-wide/16 v10, 0x0

    .line 452
    .local v10, "zc":J
    const/4 v12, 0x0

    move v13, v12

    move-wide v11, v10

    move/from16 v10, p5

    .end local p5    # "zzOff":I
    .local v10, "zzOff":I
    .local v11, "zc":J
    .local v13, "i":I
    :goto_0
    const/4 v14, 0x4

    if-ge v13, v14, :cond_0

    .line 454
    const-wide/16 v14, 0x0

    .local v14, "c":J
    add-int v16, p1, v13

    move-wide/from16 v17, v2

    aget v2, p0, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 455
    .local v2, "x_i":J
    mul-long v19, v2, v0

    add-int/lit8 v16, v10, 0x0

    move-wide/from16 v21, v0

    .end local v0    # "y_0":J
    .local v21, "y_0":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v19, v19, v0

    add-long v14, v14, v19

    .line 456
    add-int/lit8 v0, v10, 0x0

    long-to-int v1, v14

    aput v1, p4, v0

    .line 457
    const/16 v0, 0x20

    ushr-long/2addr v14, v0

    .line 458
    mul-long v19, v2, v4

    add-int/lit8 v1, v10, 0x1

    aget v1, p4, v1

    const/16 p5, 0x20

    int-to-long v0, v1

    and-long v0, v0, v17

    add-long v19, v19, v0

    add-long v14, v14, v19

    .line 459
    add-int/lit8 v0, v10, 0x1

    long-to-int v1, v14

    aput v1, p4, v0

    .line 460
    ushr-long v0, v14, p5

    .line 461
    .end local v14    # "c":J
    .local v0, "c":J
    mul-long v14, v2, v6

    add-int/lit8 v16, v10, 0x2

    move-wide/from16 v19, v0

    .end local v0    # "c":J
    .local v19, "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v14, v0

    add-long v0, v19, v14

    .line 462
    .end local v19    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v14, v10, 0x2

    long-to-int v15, v0

    aput v15, p4, v14

    .line 463
    ushr-long v0, v0, p5

    .line 464
    mul-long v14, v2, v8

    add-int/lit8 v16, v10, 0x3

    move-wide/from16 v19, v0

    .end local v0    # "c":J
    .restart local v19    # "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v14, v0

    add-long v0, v19, v14

    .line 465
    .end local v19    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v14, v10, 0x3

    long-to-int v15, v0

    aput v15, p4, v14

    .line 466
    ushr-long v0, v0, p5

    .line 468
    add-int/lit8 v14, v10, 0x4

    aget v14, p4, v14

    int-to-long v14, v14

    and-long v14, v14, v17

    add-long/2addr v14, v0

    add-long/2addr v11, v14

    .line 469
    add-int/lit8 v14, v10, 0x4

    long-to-int v15, v11

    aput v15, p4, v14

    .line 470
    ushr-long v11, v11, p5

    .line 471
    nop

    .end local v0    # "c":J
    .end local v2    # "x_i":J
    add-int/lit8 v10, v10, 0x1

    .line 452
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v2, v17

    move-wide/from16 v0, v21

    goto :goto_0

    .end local v21    # "y_0":J
    .local v0, "y_0":J
    :cond_0
    move-wide/from16 v21, v0

    .line 473
    .end local v0    # "y_0":J
    .end local v13    # "i":I
    .restart local v21    # "y_0":J
    long-to-int v0, v11

    return v0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 24
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "zz"
        }
    .end annotation

    .line 415
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 416
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 417
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 418
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 420
    .local v8, "y_3":J
    const-wide/16 v10, 0x0

    .line 421
    .local v10, "zc":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v13, 0x4

    if-ge v12, v13, :cond_0

    .line 423
    const-wide/16 v13, 0x0

    .local v13, "c":J
    aget v15, p0, v12

    move-wide/from16 v16, v2

    int-to-long v2, v15

    and-long v2, v2, v16

    .line 424
    .local v2, "x_i":J
    mul-long v18, v2, v0

    add-int/lit8 v15, v12, 0x0

    aget v15, p2, v15

    move-wide/from16 v20, v0

    .end local v0    # "y_0":J
    .local v20, "y_0":J
    int-to-long v0, v15

    and-long v0, v0, v16

    add-long v18, v18, v0

    add-long v13, v13, v18

    .line 425
    add-int/lit8 v0, v12, 0x0

    long-to-int v1, v13

    aput v1, p2, v0

    .line 426
    const/16 v0, 0x20

    ushr-long/2addr v13, v0

    .line 427
    mul-long v18, v2, v4

    add-int/lit8 v1, v12, 0x1

    aget v1, p2, v1

    const/16 v15, 0x20

    int-to-long v0, v1

    and-long v0, v0, v16

    add-long v18, v18, v0

    add-long v13, v13, v18

    .line 428
    add-int/lit8 v0, v12, 0x1

    long-to-int v1, v13

    aput v1, p2, v0

    .line 429
    ushr-long v0, v13, v15

    .line 430
    .end local v13    # "c":J
    .local v0, "c":J
    mul-long v13, v2, v6

    add-int/lit8 v18, v12, 0x2

    const/16 v19, 0x20

    aget v15, p2, v18

    move-wide/from16 v22, v0

    .end local v0    # "c":J
    .local v22, "c":J
    int-to-long v0, v15

    and-long v0, v0, v16

    add-long/2addr v13, v0

    add-long v0, v22, v13

    .line 431
    .end local v22    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v13, v12, 0x2

    long-to-int v14, v0

    aput v14, p2, v13

    .line 432
    ushr-long v0, v0, v19

    .line 433
    mul-long v13, v2, v8

    add-int/lit8 v15, v12, 0x3

    aget v15, p2, v15

    move-wide/from16 v22, v0

    .end local v0    # "c":J
    .restart local v22    # "c":J
    int-to-long v0, v15

    and-long v0, v0, v16

    add-long/2addr v13, v0

    add-long v0, v22, v13

    .line 434
    .end local v22    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v13, v12, 0x3

    long-to-int v14, v0

    aput v14, p2, v13

    .line 435
    ushr-long v0, v0, v19

    .line 437
    add-int/lit8 v13, v12, 0x4

    aget v13, p2, v13

    int-to-long v13, v13

    and-long v13, v13, v16

    add-long/2addr v13, v0

    add-long/2addr v10, v13

    .line 438
    add-int/lit8 v13, v12, 0x4

    long-to-int v14, v10

    aput v14, p2, v13

    .line 439
    ushr-long v10, v10, v19

    .line 421
    .end local v0    # "c":J
    .end local v2    # "x_i":J
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v16

    move-wide/from16 v0, v20

    goto :goto_0

    .end local v20    # "y_0":J
    .local v0, "y_0":J
    :cond_0
    move-wide/from16 v20, v0

    .line 441
    .end local v0    # "y_0":J
    .end local v12    # "i":I
    .restart local v20    # "y_0":J
    long-to-int v0, v10

    return v0
.end method

.method public static mulWord(I[I[II)I
    .locals 9
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "zOff"
        }
    .end annotation

    .line 594
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 595
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 598
    .local v6, "i":I
    :cond_0
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-long/2addr v0, v7

    .line 599
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 600
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 602
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    if-lt v6, v7, :cond_0

    .line 603
    long-to-int v4, v0

    return v4
.end method

.method public static mulWordAddExt(I[II[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "yy"    # [I
    .param p2, "yyOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "yy",
            "yyOff",
            "zz",
            "zzOff"
        }
    .end annotation

    .line 505
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 506
    .local v2, "xVal":J
    add-int/lit8 v6, p2, 0x0

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    mul-long v6, v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 507
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 508
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 509
    add-int/lit8 v7, p2, 0x1

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 510
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 511
    ushr-long/2addr v0, v6

    .line 512
    add-int/lit8 v7, p2, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x2

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 513
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 514
    ushr-long/2addr v0, v6

    .line 515
    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x3

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 516
    add-int/lit8 v4, p4, 0x3

    long-to-int v5, v0

    aput v5, p3, v4

    .line 517
    ushr-long/2addr v0, v6

    .line 518
    long-to-int v4, v0

    return v4
.end method

.method public static mulWordDwordAdd(IJ[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "zOff"
        }
    .end annotation

    .line 565
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 566
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long v6, v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 567
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 568
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 569
    ushr-long v7, p1, v6

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 570
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 571
    ushr-long/2addr v0, v6

    .line 572
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 573
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 574
    ushr-long/2addr v0, v6

    .line 575
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static mulWordsAdd(II[II)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "zOff"
        }
    .end annotation

    .line 582
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 583
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 584
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 585
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 586
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 587
    add-int/lit8 v4, p3, 0x1

    long-to-int v5, v0

    aput v5, p2, v4

    .line 588
    ushr-long/2addr v0, v8

    .line 589
    const-wide/16 v4, 0x0

    cmp-long v8, v0, v4

    if-nez v8, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-static {v4, p2, p3, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static square([II[II)V
    .locals 29
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "zz",
            "zzOff"
        }
    .end annotation

    .line 685
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 688
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 690
    .local v4, "c":I
    const/4 v5, 0x3

    .local v5, "i":I
    const/16 v6, 0x8

    .line 693
    .local v6, "j":I
    :goto_0
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 694
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 695
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v15, v14

    or-int/2addr v12, v15

    aput v12, p2, v5

    .line 696
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v15, v14

    aput v15, p2, v5

    .line 697
    long-to-int v4, v10

    .line 699
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_0

    .line 702
    mul-long v8, v0, v0

    .line 703
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 704
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 705
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v14, v13

    and-int/lit8 v4, v14, 0x1

    .line 709
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 710
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 713
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 714
    long-to-int v12, v10

    .line 715
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 716
    ushr-int/lit8 v4, v12, 0x1f

    .line 717
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 720
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 721
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v16, v2

    int-to-long v2, v15

    and-long v2, v2, v16

    .line 722
    .local v2, "zz_3":J
    add-int/lit8 v15, p3, 0x4

    aget v15, p2, v15

    move-wide/from16 v19, v6

    const/16 v18, 0x20

    .end local v6    # "x_1":J
    .local v19, "x_1":J
    int-to-long v5, v15

    and-long v5, v5, v16

    .line 724
    .local v5, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 725
    long-to-int v7, v8

    .line 726
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 727
    ushr-int/lit8 v4, v7, 0x1f

    .line 728
    ushr-long v21, v8, v18

    mul-long v23, v13, v19

    add-long v21, v21, v23

    add-long v2, v2, v21

    .line 729
    ushr-long v21, v2, v18

    add-long v5, v5, v21

    .line 730
    and-long v2, v2, v16

    .line 733
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v0

    .end local v0    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 734
    .local v0, "x_3":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    move-wide/from16 v23, v0

    .end local v0    # "x_3":J
    .local v23, "x_3":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v25, v5, v18

    add-long v0, v0, v25

    .local v0, "zz_5":J
    and-long v5, v5, v16

    .line 735
    add-int/lit8 v12, p3, 0x6

    aget v12, p2, v12

    move-wide/from16 v25, v0

    .end local v0    # "zz_5":J
    .local v25, "zz_5":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v27, v25, v18

    add-long v0, v0, v27

    .local v0, "zz_6":J
    and-long v16, v25, v16

    .line 737
    .end local v25    # "zz_5":J
    .local v16, "zz_5":J
    mul-long v25, v23, v21

    add-long v2, v2, v25

    .line 738
    long-to-int v7, v2

    .line 739
    add-int/lit8 v12, p3, 0x3

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 740
    ushr-int/lit8 v4, v7, 0x1f

    .line 741
    ushr-long v25, v2, v18

    mul-long v27, v23, v19

    add-long v25, v25, v27

    add-long v5, v5, v25

    .line 742
    ushr-long v25, v5, v18

    mul-long v27, v23, v13

    add-long v25, v25, v27

    move-wide/from16 v27, v0

    .end local v0    # "zz_6":J
    .local v27, "zz_6":J
    add-long v0, v16, v25

    .line 743
    .end local v16    # "zz_5":J
    .local v0, "zz_5":J
    ushr-long v15, v0, v18

    move-wide/from16 v25, v2

    .end local v2    # "zz_3":J
    .local v25, "zz_3":J
    add-long v2, v27, v15

    .line 746
    .end local v27    # "zz_6":J
    .local v2, "zz_6":J
    long-to-int v7, v5

    .line 747
    add-int/lit8 v12, p3, 0x4

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 748
    ushr-int/lit8 v4, v7, 0x1f

    .line 749
    long-to-int v7, v0

    .line 750
    add-int/lit8 v12, p3, 0x5

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 751
    ushr-int/lit8 v4, v7, 0x1f

    .line 752
    long-to-int v7, v2

    .line 753
    add-int/lit8 v12, p3, 0x6

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 754
    ushr-int/lit8 v4, v7, 0x1f

    .line 755
    add-int/lit8 v12, p3, 0x7

    aget v12, p2, v12

    move-wide v15, v0

    .end local v0    # "zz_5":J
    .local v15, "zz_5":J
    ushr-long v0, v2, v18

    long-to-int v1, v0

    add-int/2addr v12, v1

    .line 756
    .end local v7    # "w":I
    .restart local v12    # "w":I
    add-int/lit8 v0, p3, 0x7

    shl-int/lit8 v1, v12, 0x1

    or-int/2addr v1, v4

    aput v1, p2, v0

    .line 757
    return-void

    .line 699
    .end local v2    # "zz_6":J
    .end local v5    # "zz_4":J
    .end local v8    # "zz_2":J
    .end local v10    # "zz_1":J
    .end local v12    # "w":I
    .end local v13    # "x_2":J
    .end local v15    # "zz_5":J
    .end local v19    # "x_1":J
    .end local v21    # "x_0":J
    .end local v23    # "x_3":J
    .end local v25    # "zz_3":J
    .local v0, "x_0":J
    .local v6, "j":I
    .local v7, "i":I
    :cond_0
    move-wide/from16 v21, v0

    move-wide/from16 v16, v2

    .end local v0    # "x_0":J
    .restart local v21    # "x_0":J
    move v5, v7

    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 34
    .param p0, "x"    # [I
    .param p1, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "zz"
        }
    .end annotation

    .line 608
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 611
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 613
    .local v5, "c":I
    const/4 v6, 0x3

    .local v6, "i":I
    const/16 v7, 0x8

    .line 616
    .local v7, "j":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 617
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 618
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v15, v14

    or-int/2addr v6, v15

    aput v6, p1, v7

    .line 619
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v15, v14

    aput v15, p1, v7

    .line 620
    long-to-int v5, v11

    .line 622
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_0

    .line 625
    mul-long v9, v1, v1

    .line 626
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 627
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 628
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v14, v13

    and-int/lit8 v5, v14, 0x1

    .line 632
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 633
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 636
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 637
    long-to-int v10, v11

    .line 638
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 639
    ushr-int/lit8 v5, v10, 0x1f

    .line 640
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 643
    aget v6, p0, v9

    move-wide v15, v1

    const/16 v2, 0x20

    .end local v1    # "x_0":J
    .local v15, "x_0":J
    int-to-long v0, v6

    and-long/2addr v0, v3

    .line 644
    .local v0, "x_2":J
    const/4 v6, 0x3

    const/16 v17, 0x20

    aget v2, p1, v6

    move-wide/from16 v18, v3

    int-to-long v3, v2

    and-long v3, v3, v18

    .line 645
    .local v3, "zz_3":J
    const/16 v20, 0x4

    aget v2, p1, v20

    move-wide/from16 v21, v7

    const/4 v8, 0x3

    .end local v7    # "x_1":J
    .local v21, "x_1":J
    int-to-long v6, v2

    and-long v6, v6, v18

    .line 647
    .local v6, "zz_4":J
    mul-long v23, v0, v15

    add-long v13, v13, v23

    .line 648
    long-to-int v2, v13

    .line 649
    .end local v10    # "w":I
    .local v2, "w":I
    shl-int/lit8 v10, v2, 0x1

    or-int/2addr v10, v5

    aput v10, p1, v9

    .line 650
    ushr-int/lit8 v5, v2, 0x1f

    .line 651
    ushr-long v9, v13, v17

    mul-long v23, v0, v21

    add-long v9, v9, v23

    add-long/2addr v3, v9

    .line 652
    ushr-long v9, v3, v17

    add-long/2addr v6, v9

    .line 653
    and-long v3, v3, v18

    .line 656
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v9, v9, v18

    .line 657
    .local v9, "x_3":J
    const/16 v23, 0x5

    const/16 v24, 0x3

    aget v8, p1, v23

    move-wide/from16 v25, v0

    .end local v0    # "x_2":J
    .local v25, "x_2":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v27, v6, v17

    add-long v0, v0, v27

    .local v0, "zz_5":J
    and-long v6, v6, v18

    .line 658
    const/16 v27, 0x6

    aget v8, p1, v27

    move-wide/from16 v28, v0

    .end local v0    # "zz_5":J
    .local v28, "zz_5":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .local v0, "zz_6":J
    and-long v28, v28, v18

    .line 660
    mul-long v30, v9, v15

    add-long v3, v3, v30

    .line 661
    long-to-int v2, v3

    .line 662
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 663
    ushr-int/lit8 v5, v2, 0x1f

    .line 664
    ushr-long v30, v3, v17

    mul-long v32, v9, v21

    add-long v30, v30, v32

    add-long v6, v6, v30

    .line 665
    ushr-long v30, v6, v17

    mul-long v32, v9, v25

    add-long v30, v30, v32

    add-long v28, v28, v30

    .line 666
    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .line 667
    move-wide/from16 v30, v3

    move v4, v2

    .end local v2    # "w":I
    .end local v3    # "zz_3":J
    .local v4, "w":I
    .local v30, "zz_3":J
    and-long v2, v28, v18

    .line 670
    .end local v28    # "zz_5":J
    .local v2, "zz_5":J
    long-to-int v4, v6

    .line 671
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v20

    .line 672
    ushr-int/lit8 v5, v4, 0x1f

    .line 673
    long-to-int v4, v2

    .line 674
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v23

    .line 675
    ushr-int/lit8 v5, v4, 0x1f

    .line 676
    long-to-int v4, v0

    .line 677
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v27

    .line 678
    ushr-int/lit8 v5, v4, 0x1f

    .line 679
    const/4 v8, 0x7

    aget v18, p1, v8

    move-wide/from16 v23, v9

    const/4 v10, 0x7

    .end local v9    # "x_3":J
    .local v23, "x_3":J
    ushr-long v8, v0, v17

    long-to-int v9, v8

    add-int v18, v18, v9

    .line 680
    .end local v4    # "w":I
    .local v18, "w":I
    shl-int/lit8 v4, v18, 0x1

    or-int/2addr v4, v5

    aput v4, p1, v10

    .line 681
    return-void

    .line 622
    .end local v0    # "zz_6":J
    .end local v2    # "zz_5":J
    .end local v6    # "zz_4":J
    .end local v11    # "zz_1":J
    .end local v13    # "zz_2":J
    .end local v15    # "x_0":J
    .end local v18    # "w":I
    .end local v21    # "x_1":J
    .end local v23    # "x_3":J
    .end local v25    # "x_2":J
    .end local v30    # "zz_3":J
    .restart local v1    # "x_0":J
    .local v7, "j":I
    .restart local v8    # "i":I
    :cond_0
    move-wide v15, v1

    move-wide/from16 v18, v3

    .end local v1    # "x_0":J
    .restart local v15    # "x_0":J
    move v6, v8

    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 10
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I
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
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 779
    const-wide/16 v0, 0x0

    .line 780
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 781
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 782
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 783
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 784
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 785
    shr-long/2addr v0, v2

    .line 786
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 787
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 788
    shr-long/2addr v0, v2

    .line 789
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 790
    add-int/lit8 v3, p5, 0x3

    long-to-int v4, v0

    aput v4, p4, v3

    .line 791
    shr-long/2addr v0, v2

    .line 792
    long-to-int v2, v0

    return v2
.end method

.method public static sub([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 761
    const-wide/16 v0, 0x0

    .line 762
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 763
    long-to-int v3, v0

    aput v3, p2, v2

    .line 764
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 765
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 766
    long-to-int v4, v0

    aput v4, p2, v3

    .line 767
    shr-long/2addr v0, v2

    .line 768
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 769
    long-to-int v4, v0

    aput v4, p2, v3

    .line 770
    shr-long/2addr v0, v2

    .line 771
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 772
    long-to-int v4, v0

    aput v4, p2, v3

    .line 773
    shr-long/2addr v0, v2

    .line 774
    long-to-int v2, v0

    return v2
.end method

.method public static subBothFrom([I[I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 797
    const-wide/16 v0, 0x0

    .line 798
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 799
    long-to-int v3, v0

    aput v3, p2, v2

    .line 800
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 801
    const/4 v3, 0x1

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 802
    long-to-int v4, v0

    aput v4, p2, v3

    .line 803
    shr-long/2addr v0, v2

    .line 804
    const/4 v3, 0x2

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 805
    long-to-int v4, v0

    aput v4, p2, v3

    .line 806
    shr-long/2addr v0, v2

    .line 807
    const/4 v3, 0x3

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 808
    long-to-int v4, v0

    aput v4, p2, v3

    .line 809
    shr-long/2addr v0, v2

    .line 810
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([II[II)I
    .locals 10
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 833
    const-wide/16 v0, 0x0

    .line 834
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p1, 0x0

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 835
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 836
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 837
    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 838
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 839
    shr-long/2addr v0, v2

    .line 840
    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 841
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 842
    shr-long/2addr v0, v2

    .line 843
    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 844
    add-int/lit8 v3, p3, 0x3

    long-to-int v4, v0

    aput v4, p2, v3

    .line 845
    shr-long/2addr v0, v2

    .line 846
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([I[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 815
    const-wide/16 v0, 0x0

    .line 816
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 817
    long-to-int v3, v0

    aput v3, p1, v2

    .line 818
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 819
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 820
    long-to-int v4, v0

    aput v4, p1, v3

    .line 821
    shr-long/2addr v0, v2

    .line 822
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 823
    long-to-int v4, v0

    aput v4, p1, v3

    .line 824
    shr-long/2addr v0, v2

    .line 825
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 826
    long-to-int v4, v0

    aput v4, p1, v3

    .line 827
    shr-long/2addr v0, v2

    .line 828
    long-to-int v2, v0

    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4
    .param p0, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 851
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 852
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 854
    aget v2, p0, v1

    .line 855
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 857
    rsub-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 852
    .end local v2    # "x_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 7
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 865
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 866
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 868
    aget-wide v2, p0, v1

    .line 869
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 871
    rsub-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 866
    .end local v2    # "x_i":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 874
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static zero([I)V
    .locals 2
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 879
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 880
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 881
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 882
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 883
    return-void
.end method
