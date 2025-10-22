.class public abstract Lorg/bouncycastle/math/raw/Nat160;
.super Ljava/lang/Object;
.source "Nat160.java"


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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 24
    long-to-int v4, v0

    aput v4, p2, v3

    .line 25
    ushr-long/2addr v0, v2

    .line 26
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 27
    long-to-int v4, v0

    aput v4, p2, v3

    .line 28
    ushr-long/2addr v0, v2

    .line 29
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

    .line 34
    const-wide/16 v0, 0x0

    .line 35
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

    .line 36
    long-to-int v3, v0

    aput v3, p2, v2

    .line 37
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 38
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

    .line 39
    long-to-int v4, v0

    aput v4, p2, v3

    .line 40
    ushr-long/2addr v0, v2

    .line 41
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

    .line 42
    long-to-int v4, v0

    aput v4, p2, v3

    .line 43
    ushr-long/2addr v0, v2

    .line 44
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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 45
    long-to-int v4, v0

    aput v4, p2, v3

    .line 46
    ushr-long/2addr v0, v2

    .line 47
    const/4 v3, 0x4

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

    .line 48
    long-to-int v4, v0

    aput v4, p2, v3

    .line 49
    ushr-long/2addr v0, v2

    .line 50
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

    .line 76
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 77
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

    .line 78
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 79
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 80
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

    .line 81
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 82
    ushr-long/2addr v0, v4

    .line 83
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

    .line 84
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 85
    ushr-long/2addr v0, v4

    .line 86
    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 87
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 88
    ushr-long/2addr v0, v4

    .line 89
    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 90
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 91
    ushr-long/2addr v0, v4

    .line 92
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

    .line 55
    const-wide/16 v0, 0x0

    .line 56
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

    .line 57
    long-to-int v3, v0

    aput v3, p1, v2

    .line 58
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 59
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 60
    long-to-int v4, v0

    aput v4, p1, v3

    .line 61
    ushr-long/2addr v0, v2

    .line 62
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 63
    long-to-int v4, v0

    aput v4, p1, v3

    .line 64
    ushr-long/2addr v0, v2

    .line 65
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 66
    long-to-int v4, v0

    aput v4, p1, v3

    .line 67
    ushr-long/2addr v0, v2

    .line 68
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 69
    long-to-int v4, v0

    aput v4, p1, v3

    .line 70
    ushr-long/2addr v0, v2

    .line 71
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

    .line 97
    const-wide/16 v0, 0x0

    .line 98
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

    .line 99
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 100
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 101
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 102
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

    .line 103
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 104
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 105
    ushr-long/2addr v0, v2

    .line 106
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

    .line 107
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 108
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 109
    ushr-long/2addr v0, v2

    .line 110
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 111
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 112
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 113
    ushr-long/2addr v0, v2

    .line 114
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 115
    add-int/lit8 v3, p1, 0x4

    long-to-int v4, v0

    aput v4, p0, v3

    .line 116
    add-int/lit8 v3, p3, 0x4

    long-to-int v4, v0

    aput v4, p2, v3

    .line 117
    ushr-long/2addr v0, v2

    .line 118
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

    .line 132
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 133
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 134
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 135
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 136
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 137
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

    .line 123
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 124
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 125
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 126
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 127
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 128
    return-void
.end method

.method public static create()[I
    .locals 1

    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .line 146
    const/16 v0, 0xa

    new-array v0, v0, [I

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

    .line 151
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat160;->gte([II[II)Z

    move-result v0

    .line 152
    .local v0, "pos":Z
    if-eqz v0, :cond_0

    .line 154
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat160;->sub([II[II[II)I

    goto :goto_0

    .line 158
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
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat160;->sub([II[II[II)I

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 160
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

    .line 165
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 167
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 169
    const/4 v1, 0x0

    return v1

    .line 165
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 172
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

    .line 177
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    .line 182
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 185
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 187
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 188
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 179
    .end local v0    # "z":[I
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

    .line 195
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 197
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 199
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    .line 200
    .local v1, "w":I
    if-ltz v1, :cond_2

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    and-int/lit8 v0, p1, 0x1f

    .line 205
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 202
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

    .line 224
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 226
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 227
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 228
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 229
    const/4 v1, 0x0

    return v1

    .line 230
    :cond_0
    if-le v2, v3, :cond_1

    .line 231
    return v1

    .line 224
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 233
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

    .line 210
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 212
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 213
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 214
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 215
    const/4 v1, 0x0

    return v1

    .line 216
    :cond_0
    if-le v2, v3, :cond_1

    .line 217
    return v1

    .line 210
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 219
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

    .line 238
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 240
    return v0

    .line 242
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_2

    .line 244
    aget v3, p0, v1

    if-eqz v3, :cond_1

    .line 246
    return v0

    .line 242
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_2
    return v2
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

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 256
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x0

    return v1

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static mul([II[II[II)V
    .locals 24
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

    .line 316
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 317
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 318
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 319
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 320
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 323
    .local v10, "y_4":J
    const-wide/16 v12, 0x0

    .local v12, "c":J
    add-int/lit8 v14, p1, 0x0

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 324
    .local v14, "x_0":J
    mul-long v16, v14, v0

    add-long v12, v12, v16

    .line 325
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v17, v2

    long-to-int v2, v12

    aput v2, p4, v16

    .line 326
    const/16 v2, 0x20

    ushr-long/2addr v12, v2

    .line 327
    mul-long v19, v14, v4

    add-long v12, v12, v19

    .line 328
    add-int/lit8 v3, p5, 0x1

    const/16 v16, 0x20

    long-to-int v2, v12

    aput v2, p4, v3

    .line 329
    ushr-long v2, v12, v16

    .line 330
    .end local v12    # "c":J
    .local v2, "c":J
    mul-long v12, v14, v6

    add-long/2addr v2, v12

    .line 331
    add-int/lit8 v12, p5, 0x2

    long-to-int v13, v2

    aput v13, p4, v12

    .line 332
    ushr-long v2, v2, v16

    .line 333
    mul-long v12, v14, v8

    add-long/2addr v2, v12

    .line 334
    add-int/lit8 v12, p5, 0x3

    long-to-int v13, v2

    aput v13, p4, v12

    .line 335
    ushr-long v2, v2, v16

    .line 336
    mul-long v12, v14, v10

    add-long/2addr v2, v12

    .line 337
    add-int/lit8 v12, p5, 0x4

    long-to-int v13, v2

    aput v13, p4, v12

    .line 338
    ushr-long v2, v2, v16

    .line 339
    add-int/lit8 v12, p5, 0x5

    long-to-int v13, v2

    aput v13, p4, v12

    .line 342
    .end local v2    # "c":J
    .end local v14    # "x_0":J
    const/4 v2, 0x1

    move v3, v2

    move/from16 v2, p5

    .end local p5    # "zzOff":I
    .local v2, "zzOff":I
    .local v3, "i":I
    :goto_0
    const/4 v12, 0x5

    if-ge v3, v12, :cond_0

    .line 344
    add-int/lit8 v2, v2, 0x1

    .line 345
    const-wide/16 v12, 0x0

    .restart local v12    # "c":J
    add-int v14, p1, v3

    aget v14, p0, v14

    int-to-long v14, v14

    and-long v14, v14, v17

    .line 346
    .local v14, "x_i":J
    mul-long v19, v14, v0

    add-int/lit8 v21, v2, 0x0

    move-wide/from16 v22, v0

    .end local v0    # "y_0":J
    .local v22, "y_0":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v19, v19, v0

    add-long v12, v12, v19

    .line 347
    add-int/lit8 v0, v2, 0x0

    long-to-int v1, v12

    aput v1, p4, v0

    .line 348
    ushr-long v0, v12, v16

    .line 349
    .end local v12    # "c":J
    .local v0, "c":J
    mul-long v12, v14, v4

    add-int/lit8 v19, v2, 0x1

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .local v20, "c":J
    aget v0, p4, v19

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v12, v0

    add-long v0, v20, v12

    .line 350
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v12, v2, 0x1

    long-to-int v13, v0

    aput v13, p4, v12

    .line 351
    ushr-long v0, v0, v16

    .line 352
    mul-long v12, v14, v6

    add-int/lit8 v19, v2, 0x2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    aget v0, p4, v19

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v12, v0

    add-long v0, v20, v12

    .line 353
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v12, v2, 0x2

    long-to-int v13, v0

    aput v13, p4, v12

    .line 354
    ushr-long v0, v0, v16

    .line 355
    mul-long v12, v14, v8

    add-int/lit8 v19, v2, 0x3

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    aget v0, p4, v19

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v12, v0

    add-long v0, v20, v12

    .line 356
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v12, v2, 0x3

    long-to-int v13, v0

    aput v13, p4, v12

    .line 357
    ushr-long v0, v0, v16

    .line 358
    mul-long v12, v14, v10

    add-int/lit8 v19, v2, 0x4

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    aget v0, p4, v19

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v12, v0

    add-long v0, v20, v12

    .line 359
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v12, v2, 0x4

    long-to-int v13, v0

    aput v13, p4, v12

    .line 360
    ushr-long v0, v0, v16

    .line 361
    add-int/lit8 v12, v2, 0x5

    long-to-int v13, v0

    aput v13, p4, v12

    .line 342
    .end local v0    # "c":J
    .end local v14    # "x_i":J
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v0, v22

    goto/16 :goto_0

    .line 363
    .end local v3    # "i":I
    .end local v22    # "y_0":J
    .local v0, "y_0":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 27
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

    .line 266
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 267
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 268
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 269
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 270
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    move-wide/from16 v17, v1

    const/16 v16, 0x0

    .end local v1    # "y_0":J
    .local v17, "y_0":J
    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 273
    .local v0, "y_4":J
    const-wide/16 v19, 0x0

    .local v19, "c":J
    aget v2, p0, v16

    move-wide/from16 v21, v3

    int-to-long v3, v2

    and-long v3, v3, v21

    .line 274
    .local v3, "x_0":J
    mul-long v23, v3, v17

    move-wide/from16 v25, v6

    const/4 v2, 0x1

    .end local v6    # "y_1":J
    .local v25, "y_1":J
    add-long v5, v19, v23

    .line 275
    .end local v19    # "c":J
    .local v5, "c":J
    long-to-int v7, v5

    aput v7, p2, v16

    .line 276
    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    .line 277
    mul-long v15, v3, v25

    add-long/2addr v5, v15

    .line 278
    long-to-int v15, v5

    aput v15, p2, v2

    .line 279
    ushr-long/2addr v5, v7

    .line 280
    mul-long v15, v3, v9

    add-long/2addr v5, v15

    .line 281
    long-to-int v2, v5

    aput v2, p2, v8

    .line 282
    ushr-long/2addr v5, v7

    .line 283
    mul-long v15, v3, v12

    add-long/2addr v5, v15

    .line 284
    long-to-int v2, v5

    aput v2, p2, v11

    .line 285
    ushr-long/2addr v5, v7

    .line 286
    mul-long v15, v3, v0

    add-long/2addr v5, v15

    .line 287
    long-to-int v2, v5

    aput v2, p2, v14

    .line 288
    ushr-long/2addr v5, v7

    .line 289
    long-to-int v2, v5

    const/4 v8, 0x5

    aput v2, p2, v8

    .line 292
    .end local v3    # "x_0":J
    .end local v5    # "c":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 294
    const-wide/16 v3, 0x0

    .local v3, "c":J
    aget v5, p0, v2

    int-to-long v5, v5

    and-long v5, v5, v21

    .line 295
    .local v5, "x_i":J
    mul-long v14, v5, v17

    add-int/lit8 v11, v2, 0x0

    aget v11, p2, v11

    const/16 v16, 0x20

    int-to-long v7, v11

    and-long v7, v7, v21

    add-long/2addr v14, v7

    add-long/2addr v3, v14

    .line 296
    add-int/lit8 v7, v2, 0x0

    long-to-int v8, v3

    aput v8, p2, v7

    .line 297
    ushr-long v3, v3, v16

    .line 298
    mul-long v7, v5, v25

    add-int/lit8 v11, v2, 0x1

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v21

    add-long/2addr v7, v14

    add-long/2addr v3, v7

    .line 299
    add-int/lit8 v7, v2, 0x1

    long-to-int v8, v3

    aput v8, p2, v7

    .line 300
    ushr-long v3, v3, v16

    .line 301
    mul-long v7, v5, v9

    add-int/lit8 v11, v2, 0x2

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v21

    add-long/2addr v7, v14

    add-long/2addr v3, v7

    .line 302
    add-int/lit8 v7, v2, 0x2

    long-to-int v8, v3

    aput v8, p2, v7

    .line 303
    ushr-long v3, v3, v16

    .line 304
    mul-long v7, v5, v12

    add-int/lit8 v11, v2, 0x3

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v21

    add-long/2addr v7, v14

    add-long/2addr v3, v7

    .line 305
    add-int/lit8 v7, v2, 0x3

    long-to-int v8, v3

    aput v8, p2, v7

    .line 306
    ushr-long v3, v3, v16

    .line 307
    mul-long v7, v5, v0

    add-int/lit8 v11, v2, 0x4

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v21

    add-long/2addr v7, v14

    add-long/2addr v3, v7

    .line 308
    add-int/lit8 v7, v2, 0x4

    long-to-int v8, v3

    aput v8, p2, v7

    .line 309
    ushr-long v3, v3, v16

    .line 310
    add-int/lit8 v7, v2, 0x5

    long-to-int v8, v3

    aput v8, p2, v7

    .line 292
    .end local v3    # "c":J
    .end local v5    # "x_i":J
    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x20

    const/4 v8, 0x5

    goto :goto_0

    .line 312
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 24
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

    .line 440
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 441
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 442
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 443
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 444
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 445
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 446
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 447
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 448
    ushr-long/2addr v0, v9

    .line 449
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 450
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

    .line 451
    add-int/lit8 v5, p6, 0x2

    long-to-int v6, v0

    aput v6, p5, v5

    .line 452
    ushr-long/2addr v0, v9

    .line 453
    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    int-to-long v5, v5

    and-long v5, v5, v17

    .line 454
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

    .line 455
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x3

    long-to-int v14, v0

    aput v14, p5, v9

    .line 456
    ushr-long v0, v0, v19

    .line 457
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v14, v9

    and-long v14, v14, v17

    .line 458
    .local v14, "x4":J
    mul-long v20, v3, v14

    add-long v20, v20, v5

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    move-wide/from16 v22, v0

    .end local v0    # "c":J
    .local v22, "c":J
    int-to-long v0, v9

    and-long v0, v0, v17

    add-long v20, v20, v0

    add-long v0, v22, v20

    .line 459
    .end local v22    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x4

    long-to-int v2, v0

    aput v2, p5, v9

    .line 460
    ushr-long v0, v0, v19

    .line 461
    add-long/2addr v0, v14

    .line 462
    return-wide v0
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 19
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

    .line 493
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 494
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 495
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 496
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 497
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 498
    ushr-long v12, p1, v11

    .line 499
    .local v12, "y01":J
    mul-long v14, v5, v12

    add-long/2addr v14, v9

    add-int/lit8 v16, v1, 0x1

    move-wide/from16 v17, v7

    aget v7, v0, v16

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v14, v7

    add-long/2addr v2, v14

    .line 500
    add-int/lit8 v7, v1, 0x1

    long-to-int v8, v2

    aput v8, v0, v7

    .line 501
    ushr-long/2addr v2, v11

    .line 502
    add-int/lit8 v7, v1, 0x2

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v7, v12

    add-long/2addr v2, v7

    .line 503
    add-int/lit8 v7, v1, 0x2

    long-to-int v8, v2

    aput v8, v0, v7

    .line 504
    ushr-long/2addr v2, v11

    .line 505
    add-int/lit8 v7, v1, 0x3

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v2, v7

    .line 506
    add-int/lit8 v7, v1, 0x3

    long-to-int v8, v2

    aput v8, v0, v7

    .line 507
    ushr-long/2addr v2, v11

    .line 508
    const-wide/16 v7, 0x0

    cmp-long v11, v2, v7

    if-nez v11, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 v7, 0x5

    const/4 v8, 0x4

    invoke-static {v7, v0, v1, v8}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v7

    :goto_0
    return v7
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

    .line 516
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 517
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 518
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 519
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 520
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 521
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 522
    ushr-long/2addr v0, v8

    .line 523
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 524
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 525
    ushr-long/2addr v0, v8

    .line 526
    const-wide/16 v4, 0x0

    cmp-long v8, v0, v4

    if-nez v8, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static mulAddTo([II[II[II)I
    .locals 27
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

    .line 402
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 403
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 404
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 405
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 406
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 408
    .local v10, "y_4":J
    const-wide/16 v12, 0x0

    .line 409
    .local v12, "zc":J
    const/4 v14, 0x0

    move v15, v14

    move-wide v13, v12

    move/from16 v12, p5

    .end local p5    # "zzOff":I
    .local v12, "zzOff":I
    .local v13, "zc":J
    .local v15, "i":I
    :goto_0
    move-wide/from16 v16, v2

    const/4 v2, 0x5

    if-ge v15, v2, :cond_0

    .line 411
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v18, p1, v15

    move-wide/from16 v19, v0

    .end local v0    # "y_0":J
    .local v19, "y_0":J
    aget v0, p0, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    .line 412
    .local v0, "x_i":J
    mul-long v21, v0, v19

    add-int/lit8 v18, v12, 0x0

    move-wide/from16 v23, v0

    .end local v0    # "x_i":J
    .local v23, "x_i":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long v21, v21, v0

    add-long v2, v2, v21

    .line 413
    add-int/lit8 v0, v12, 0x0

    long-to-int v1, v2

    aput v1, p4, v0

    .line 414
    const/16 v0, 0x20

    ushr-long v1, v2, v0

    .line 415
    .end local v2    # "c":J
    .local v1, "c":J
    mul-long v21, v23, v4

    add-int/lit8 v3, v12, 0x1

    aget v3, p4, v3

    move-wide/from16 v25, v1

    const/16 p5, 0x20

    .end local v1    # "c":J
    .local v25, "c":J
    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v21, v21, v0

    add-long v1, v25, v21

    .line 416
    .end local v25    # "c":J
    .restart local v1    # "c":J
    add-int/lit8 v0, v12, 0x1

    long-to-int v3, v1

    aput v3, p4, v0

    .line 417
    ushr-long v0, v1, p5

    .line 418
    .end local v1    # "c":J
    .local v0, "c":J
    mul-long v2, v23, v6

    add-int/lit8 v18, v12, 0x2

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .local v21, "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 419
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v12, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 420
    ushr-long v0, v0, p5

    .line 421
    mul-long v2, v23, v8

    add-int/lit8 v18, v12, 0x3

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 422
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v12, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 423
    ushr-long v0, v0, p5

    .line 424
    mul-long v2, v23, v10

    add-int/lit8 v18, v12, 0x4

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 425
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v12, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 426
    ushr-long v0, v0, p5

    .line 428
    add-int/lit8 v2, v12, 0x5

    aget v2, p4, v2

    int-to-long v2, v2

    and-long v2, v2, v16

    add-long/2addr v2, v0

    add-long/2addr v13, v2

    .line 429
    add-int/lit8 v2, v12, 0x5

    long-to-int v3, v13

    aput v3, p4, v2

    .line 430
    ushr-long v13, v13, p5

    .line 431
    nop

    .end local v0    # "c":J
    .end local v23    # "x_i":J
    add-int/lit8 v12, v12, 0x1

    .line 409
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v2, v16

    move-wide/from16 v0, v19

    goto/16 :goto_0

    .end local v19    # "y_0":J
    .local v0, "y_0":J
    :cond_0
    move-wide/from16 v19, v0

    .line 433
    .end local v0    # "y_0":J
    .end local v15    # "i":I
    .restart local v19    # "y_0":J
    long-to-int v0, v13

    return v0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 26
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

    .line 367
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 368
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 369
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 370
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 371
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 373
    .local v10, "y_4":J
    const-wide/16 v12, 0x0

    .line 374
    .local v12, "zc":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/4 v15, 0x5

    if-ge v14, v15, :cond_0

    .line 376
    const-wide/16 v15, 0x0

    move-wide/from16 v17, v2

    .local v15, "c":J
    aget v2, p0, v14

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 377
    .local v2, "x_i":J
    mul-long v19, v2, v0

    add-int/lit8 v21, v14, 0x0

    move-wide/from16 v22, v0

    .end local v0    # "y_0":J
    .local v22, "y_0":J
    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v19, v19, v0

    add-long v0, v15, v19

    .line 378
    .end local v15    # "c":J
    .local v0, "c":J
    add-int/lit8 v15, v14, 0x0

    move-wide/from16 v19, v2

    .end local v2    # "x_i":J
    .local v19, "x_i":J
    long-to-int v2, v0

    aput v2, p2, v15

    .line 379
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 380
    mul-long v15, v19, v4

    add-int/lit8 v3, v14, 0x1

    aget v3, p2, v3

    const/16 v21, 0x20

    int-to-long v2, v3

    and-long v2, v2, v17

    add-long/2addr v15, v2

    add-long/2addr v0, v15

    .line 381
    add-int/lit8 v2, v14, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 382
    ushr-long v0, v0, v21

    .line 383
    mul-long v2, v19, v6

    add-int/lit8 v15, v14, 0x2

    aget v15, p2, v15

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .local v24, "c":J
    int-to-long v0, v15

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 384
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v14, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 385
    ushr-long v0, v0, v21

    .line 386
    mul-long v2, v19, v8

    add-int/lit8 v15, v14, 0x3

    aget v15, p2, v15

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    int-to-long v0, v15

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 387
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v14, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 388
    ushr-long v0, v0, v21

    .line 389
    mul-long v2, v19, v10

    add-int/lit8 v15, v14, 0x4

    aget v15, p2, v15

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    int-to-long v0, v15

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 390
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v14, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 391
    ushr-long v0, v0, v21

    .line 393
    add-int/lit8 v2, v14, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    and-long v2, v2, v17

    add-long/2addr v2, v0

    add-long/2addr v12, v2

    .line 394
    add-int/lit8 v2, v14, 0x5

    long-to-int v3, v12

    aput v3, p2, v2

    .line 395
    ushr-long v12, v12, v21

    .line 374
    .end local v0    # "c":J
    .end local v19    # "x_i":J
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v2, v17

    move-wide/from16 v0, v22

    goto/16 :goto_0

    .end local v22    # "y_0":J
    .local v0, "y_0":J
    :cond_0
    move-wide/from16 v22, v0

    .line 397
    .end local v0    # "y_0":J
    .end local v14    # "i":I
    .restart local v22    # "y_0":J
    long-to-int v0, v12

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

    .line 561
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 562
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 565
    .local v6, "i":I
    :cond_0
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-long/2addr v0, v7

    .line 566
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 567
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 569
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-lt v6, v7, :cond_0

    .line 570
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

    .line 469
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 470
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

    .line 471
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 472
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 473
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

    .line 474
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 475
    ushr-long/2addr v0, v6

    .line 476
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

    .line 477
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 478
    ushr-long/2addr v0, v6

    .line 479
    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x3

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 480
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 481
    ushr-long/2addr v0, v6

    .line 482
    add-int/lit8 v7, p2, 0x4

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 483
    add-int/lit8 v4, p4, 0x4

    long-to-int v5, v0

    aput v5, p3, v4

    .line 484
    ushr-long/2addr v0, v6

    .line 485
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

    .line 532
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 533
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long v6, v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 534
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 535
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 536
    ushr-long v7, p1, v6

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 537
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 538
    ushr-long/2addr v0, v6

    .line 539
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 540
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 541
    ushr-long/2addr v0, v6

    .line 542
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

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

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 554
    add-int/lit8 v4, p3, 0x1

    long-to-int v5, v0

    aput v5, p2, v4

    .line 555
    ushr-long/2addr v0, v8

    .line 556
    const-wide/16 v4, 0x0

    cmp-long v8, v0, v4

    if-nez v8, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-static {v4, p2, p3, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static square([II[II)V
    .locals 35
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

    .line 670
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 673
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 675
    .local v4, "c":I
    const/4 v5, 0x4

    .local v5, "i":I
    const/16 v6, 0xa

    .line 678
    .local v6, "j":I
    :goto_0
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 679
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 680
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v15, v14

    or-int/2addr v12, v15

    aput v12, p2, v5

    .line 681
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v15, v14

    aput v15, p2, v5

    .line 682
    long-to-int v4, v10

    .line 684
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_0

    .line 687
    mul-long v8, v0, v0

    .line 688
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 689
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 690
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v14, v13

    and-int/lit8 v4, v14, 0x1

    .line 694
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 695
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 698
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 699
    long-to-int v12, v10

    .line 700
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 701
    ushr-int/lit8 v4, v12, 0x1f

    .line 702
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 705
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 706
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v16, v2

    int-to-long v2, v15

    and-long v2, v2, v16

    .line 707
    .local v2, "zz_3":J
    add-int/lit8 v15, p3, 0x4

    aget v15, p2, v15

    move-wide/from16 v19, v6

    const/16 v18, 0x20

    .end local v6    # "x_1":J
    .local v19, "x_1":J
    int-to-long v5, v15

    and-long v5, v5, v16

    .line 709
    .local v5, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 710
    long-to-int v7, v8

    .line 711
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 712
    ushr-int/lit8 v4, v7, 0x1f

    .line 713
    ushr-long v21, v8, v18

    mul-long v23, v13, v19

    add-long v21, v21, v23

    add-long v2, v2, v21

    .line 714
    ushr-long v21, v2, v18

    add-long v5, v5, v21

    .line 715
    and-long v2, v2, v16

    .line 718
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v0

    .end local v0    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 719
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

    .line 720
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
    and-long v25, v25, v16

    .line 722
    mul-long v27, v23, v21

    add-long v2, v2, v27

    .line 723
    long-to-int v7, v2

    .line 724
    add-int/lit8 v12, p3, 0x3

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 725
    ushr-int/lit8 v4, v7, 0x1f

    .line 726
    ushr-long v27, v2, v18

    mul-long v29, v23, v19

    add-long v27, v27, v29

    add-long v5, v5, v27

    .line 727
    ushr-long v27, v5, v18

    mul-long v29, v23, v13

    add-long v27, v27, v29

    add-long v25, v25, v27

    .line 728
    and-long v5, v5, v16

    .line 729
    ushr-long v27, v25, v18

    add-long v0, v0, v27

    .line 730
    and-long v25, v25, v16

    .line 733
    add-int/lit8 v12, p1, 0x4

    aget v12, p0, v12

    move-wide/from16 v27, v0

    .end local v0    # "zz_6":J
    .local v27, "zz_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 734
    .local v0, "x_4":J
    add-int/lit8 v12, p3, 0x7

    aget v12, p2, v12

    move-wide/from16 v29, v0

    .end local v0    # "x_4":J
    .local v29, "x_4":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v31, v27, v18

    add-long v0, v0, v31

    .local v0, "zz_7":J
    and-long v27, v27, v16

    .line 735
    add-int/lit8 v12, p3, 0x8

    aget v12, p2, v12

    move-wide/from16 v31, v0

    .end local v0    # "zz_7":J
    .local v31, "zz_7":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v33, v31, v18

    add-long v0, v0, v33

    .local v0, "zz_8":J
    and-long v16, v31, v16

    .line 737
    .end local v31    # "zz_7":J
    .local v16, "zz_7":J
    mul-long v31, v29, v21

    add-long v5, v5, v31

    .line 738
    long-to-int v7, v5

    .line 739
    add-int/lit8 v12, p3, 0x4

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 740
    ushr-int/lit8 v4, v7, 0x1f

    .line 741
    ushr-long v31, v5, v18

    mul-long v33, v29, v19

    add-long v31, v31, v33

    move-wide/from16 v33, v0

    .end local v0    # "zz_8":J
    .local v33, "zz_8":J
    add-long v0, v25, v31

    .line 742
    .end local v25    # "zz_5":J
    .local v0, "zz_5":J
    ushr-long v25, v0, v18

    mul-long v31, v29, v13

    add-long v25, v25, v31

    move-wide/from16 v31, v2

    .end local v2    # "zz_3":J
    .local v31, "zz_3":J
    add-long v2, v27, v25

    .line 743
    .end local v27    # "zz_6":J
    .local v2, "zz_6":J
    ushr-long v25, v2, v18

    mul-long v27, v29, v23

    add-long v25, v25, v27

    move-wide/from16 v27, v5

    move v6, v4

    .end local v4    # "c":I
    .end local v5    # "zz_4":J
    .local v6, "c":I
    .local v27, "zz_4":J
    add-long v4, v16, v25

    .line 744
    .end local v16    # "zz_7":J
    .local v4, "zz_7":J
    ushr-long v15, v4, v18

    move/from16 v17, v6

    move v12, v7

    .end local v6    # "c":I
    .end local v7    # "w":I
    .restart local v12    # "w":I
    .local v17, "c":I
    add-long v6, v33, v15

    .line 747
    .end local v33    # "zz_8":J
    .local v6, "zz_8":J
    long-to-int v12, v0

    .line 748
    add-int/lit8 v15, p3, 0x5

    shl-int/lit8 v16, v12, 0x1

    or-int v16, v16, v17

    aput v16, p2, v15

    .line 749
    ushr-int/lit8 v15, v12, 0x1f

    .line 750
    .end local v17    # "c":I
    .local v15, "c":I
    long-to-int v12, v2

    .line 751
    add-int/lit8 v16, p3, 0x6

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 752
    ushr-int/lit8 v15, v12, 0x1f

    .line 753
    long-to-int v12, v4

    .line 754
    add-int/lit8 v16, p3, 0x7

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 755
    ushr-int/lit8 v15, v12, 0x1f

    .line 756
    long-to-int v12, v6

    .line 757
    add-int/lit8 v16, p3, 0x8

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 758
    ushr-int/lit8 v15, v12, 0x1f

    .line 759
    add-int/lit8 v16, p3, 0x9

    aget v16, p2, v16

    move-wide/from16 v25, v0

    .end local v0    # "zz_5":J
    .restart local v25    # "zz_5":J
    ushr-long v0, v6, v18

    long-to-int v1, v0

    add-int v16, v16, v1

    .line 760
    .end local v12    # "w":I
    .local v16, "w":I
    add-int/lit8 v0, p3, 0x9

    shl-int/lit8 v1, v16, 0x1

    or-int/2addr v1, v15

    aput v1, p2, v0

    .line 761
    return-void

    .line 684
    .end local v2    # "zz_6":J
    .end local v8    # "zz_2":J
    .end local v10    # "zz_1":J
    .end local v13    # "x_2":J
    .end local v15    # "c":I
    .end local v16    # "w":I
    .end local v19    # "x_1":J
    .end local v21    # "x_0":J
    .end local v23    # "x_3":J
    .end local v25    # "zz_5":J
    .end local v27    # "zz_4":J
    .end local v29    # "x_4":J
    .end local v31    # "zz_3":J
    .local v0, "x_0":J
    .local v4, "c":I
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
    .locals 39
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

    .line 575
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 578
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 580
    .local v5, "c":I
    const/4 v6, 0x4

    .local v6, "i":I
    const/16 v7, 0xa

    .line 583
    .local v7, "j":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 584
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 585
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v15, v14

    or-int/2addr v6, v15

    aput v6, p1, v7

    .line 586
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v15, v14

    aput v15, p1, v7

    .line 587
    long-to-int v5, v11

    .line 589
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_0

    .line 592
    mul-long v9, v1, v1

    .line 593
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 594
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 595
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v14, v13

    and-int/lit8 v5, v14, 0x1

    .line 599
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 600
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 603
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 604
    long-to-int v10, v11

    .line 605
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 606
    ushr-int/lit8 v5, v10, 0x1f

    .line 607
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 610
    aget v6, p0, v9

    move-wide v15, v1

    const/16 v2, 0x20

    .end local v1    # "x_0":J
    .local v15, "x_0":J
    int-to-long v0, v6

    and-long/2addr v0, v3

    .line 611
    .local v0, "x_2":J
    const/4 v6, 0x3

    const/16 v17, 0x20

    aget v2, p1, v6

    move-wide/from16 v18, v3

    int-to-long v3, v2

    and-long v3, v3, v18

    .line 612
    .local v3, "zz_3":J
    const/16 v20, 0x4

    aget v2, p1, v20

    move-wide/from16 v21, v7

    const/4 v8, 0x3

    .end local v7    # "x_1":J
    .local v21, "x_1":J
    int-to-long v6, v2

    and-long v6, v6, v18

    .line 614
    .local v6, "zz_4":J
    mul-long v23, v0, v15

    add-long v13, v13, v23

    .line 615
    long-to-int v2, v13

    .line 616
    .end local v10    # "w":I
    .local v2, "w":I
    shl-int/lit8 v10, v2, 0x1

    or-int/2addr v10, v5

    aput v10, p1, v9

    .line 617
    ushr-int/lit8 v5, v2, 0x1f

    .line 618
    ushr-long v9, v13, v17

    mul-long v23, v0, v21

    add-long v9, v9, v23

    add-long/2addr v3, v9

    .line 619
    ushr-long v9, v3, v17

    add-long/2addr v6, v9

    .line 620
    and-long v3, v3, v18

    .line 623
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v9, v9, v18

    .line 624
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

    .line 625
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

    .line 627
    mul-long v30, v9, v15

    add-long v3, v3, v30

    .line 628
    long-to-int v2, v3

    .line 629
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 630
    ushr-int/lit8 v5, v2, 0x1f

    .line 631
    ushr-long v30, v3, v17

    mul-long v32, v9, v21

    add-long v30, v30, v32

    add-long v6, v6, v30

    .line 632
    ushr-long v30, v6, v17

    mul-long v32, v9, v25

    add-long v30, v30, v32

    add-long v28, v28, v30

    .line 633
    and-long v6, v6, v18

    .line 634
    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .line 635
    and-long v28, v28, v18

    .line 638
    aget v8, p0, v20

    move-wide/from16 v30, v0

    .end local v0    # "zz_6":J
    .local v30, "zz_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 639
    .local v0, "x_4":J
    const/16 v24, 0x7

    aget v8, p1, v24

    move-wide/from16 v32, v0

    .end local v0    # "x_4":J
    .local v32, "x_4":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v34, v30, v17

    add-long v0, v0, v34

    .local v0, "zz_7":J
    and-long v30, v30, v18

    .line 640
    const/16 v34, 0x8

    aget v8, p1, v34

    move-wide/from16 v35, v0

    .end local v0    # "zz_7":J
    .local v35, "zz_7":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v37, v35, v17

    add-long v0, v0, v37

    .local v0, "zz_8":J
    and-long v18, v35, v18

    .line 642
    .end local v35    # "zz_7":J
    .local v18, "zz_7":J
    mul-long v35, v32, v15

    add-long v6, v6, v35

    .line 643
    long-to-int v2, v6

    .line 644
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v20

    .line 645
    ushr-int/lit8 v5, v2, 0x1f

    .line 646
    ushr-long v35, v6, v17

    mul-long v37, v32, v21

    add-long v35, v35, v37

    move-wide/from16 v37, v0

    .end local v0    # "zz_8":J
    .local v37, "zz_8":J
    add-long v0, v28, v35

    .line 647
    .end local v28    # "zz_5":J
    .local v0, "zz_5":J
    ushr-long v28, v0, v17

    mul-long v35, v32, v25

    add-long v28, v28, v35

    move-wide/from16 v35, v3

    move v4, v2

    .end local v2    # "w":I
    .end local v3    # "zz_3":J
    .local v4, "w":I
    .local v35, "zz_3":J
    add-long v2, v30, v28

    .line 648
    .end local v30    # "zz_6":J
    .local v2, "zz_6":J
    ushr-long v28, v2, v17

    mul-long v30, v32, v9

    add-long v28, v28, v30

    move/from16 v20, v4

    move v8, v5

    .end local v4    # "w":I
    .end local v5    # "c":I
    .local v8, "c":I
    .local v20, "w":I
    add-long v4, v18, v28

    .line 649
    .end local v18    # "zz_7":J
    .local v4, "zz_7":J
    ushr-long v18, v4, v17

    move-wide/from16 v28, v6

    .end local v6    # "zz_4":J
    .local v28, "zz_4":J
    add-long v6, v37, v18

    .line 652
    .end local v37    # "zz_8":J
    .local v6, "zz_8":J
    move/from16 v18, v8

    .end local v8    # "c":I
    .local v18, "c":I
    long-to-int v8, v0

    .line 653
    .end local v20    # "w":I
    .local v8, "w":I
    shl-int/lit8 v19, v8, 0x1

    or-int v19, v19, v18

    aput v19, p1, v23

    .line 654
    ushr-int/lit8 v18, v8, 0x1f

    .line 655
    long-to-int v8, v2

    .line 656
    shl-int/lit8 v19, v8, 0x1

    or-int v19, v19, v18

    aput v19, p1, v27

    .line 657
    ushr-int/lit8 v18, v8, 0x1f

    .line 658
    long-to-int v8, v4

    .line 659
    shl-int/lit8 v19, v8, 0x1

    or-int v19, v19, v18

    aput v19, p1, v24

    .line 660
    ushr-int/lit8 v18, v8, 0x1f

    .line 661
    long-to-int v8, v6

    .line 662
    shl-int/lit8 v19, v8, 0x1

    or-int v19, v19, v18

    aput v19, p1, v34

    .line 663
    ushr-int/lit8 v18, v8, 0x1f

    .line 664
    const/16 v19, 0x9

    aget v20, p1, v19

    move-wide/from16 v23, v0

    .end local v0    # "zz_5":J
    .local v23, "zz_5":J
    ushr-long v0, v6, v17

    long-to-int v1, v0

    add-int v20, v20, v1

    .line 665
    .end local v8    # "w":I
    .restart local v20    # "w":I
    shl-int/lit8 v0, v20, 0x1

    or-int v0, v0, v18

    aput v0, p1, v19

    .line 666
    return-void

    .line 589
    .end local v2    # "zz_6":J
    .end local v4    # "zz_7":J
    .end local v6    # "zz_8":J
    .end local v9    # "x_3":J
    .end local v11    # "zz_1":J
    .end local v13    # "zz_2":J
    .end local v15    # "x_0":J
    .end local v18    # "c":I
    .end local v20    # "w":I
    .end local v21    # "x_1":J
    .end local v23    # "zz_5":J
    .end local v25    # "x_2":J
    .end local v28    # "zz_4":J
    .end local v32    # "x_4":J
    .end local v35    # "zz_3":J
    .restart local v1    # "x_0":J
    .restart local v5    # "c":I
    .local v7, "j":I
    .local v8, "i":I
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

    .line 786
    const-wide/16 v0, 0x0

    .line 787
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

    .line 788
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 789
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 790
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

    .line 791
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 792
    shr-long/2addr v0, v2

    .line 793
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

    .line 794
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 795
    shr-long/2addr v0, v2

    .line 796
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 797
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 798
    shr-long/2addr v0, v2

    .line 799
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 800
    add-int/lit8 v3, p5, 0x4

    long-to-int v4, v0

    aput v4, p4, v3

    .line 801
    shr-long/2addr v0, v2

    .line 802
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

    .line 765
    const-wide/16 v0, 0x0

    .line 766
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

    .line 767
    long-to-int v3, v0

    aput v3, p2, v2

    .line 768
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 769
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 770
    long-to-int v4, v0

    aput v4, p2, v3

    .line 771
    shr-long/2addr v0, v2

    .line 772
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 773
    long-to-int v4, v0

    aput v4, p2, v3

    .line 774
    shr-long/2addr v0, v2

    .line 775
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 776
    long-to-int v4, v0

    aput v4, p2, v3

    .line 777
    shr-long/2addr v0, v2

    .line 778
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 779
    long-to-int v4, v0

    aput v4, p2, v3

    .line 780
    shr-long/2addr v0, v2

    .line 781
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

    .line 807
    const-wide/16 v0, 0x0

    .line 808
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

    .line 809
    long-to-int v3, v0

    aput v3, p2, v2

    .line 810
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 811
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

    .line 812
    long-to-int v4, v0

    aput v4, p2, v3

    .line 813
    shr-long/2addr v0, v2

    .line 814
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

    .line 815
    long-to-int v4, v0

    aput v4, p2, v3

    .line 816
    shr-long/2addr v0, v2

    .line 817
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

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 818
    long-to-int v4, v0

    aput v4, p2, v3

    .line 819
    shr-long/2addr v0, v2

    .line 820
    const/4 v3, 0x4

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

    .line 821
    long-to-int v4, v0

    aput v4, p2, v3

    .line 822
    shr-long/2addr v0, v2

    .line 823
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

    .line 849
    const-wide/16 v0, 0x0

    .line 850
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

    .line 851
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 852
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 853
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

    .line 854
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 855
    shr-long/2addr v0, v2

    .line 856
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

    .line 857
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 858
    shr-long/2addr v0, v2

    .line 859
    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 860
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 861
    shr-long/2addr v0, v2

    .line 862
    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 863
    add-int/lit8 v3, p3, 0x4

    long-to-int v4, v0

    aput v4, p2, v3

    .line 864
    shr-long/2addr v0, v2

    .line 865
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

    .line 828
    const-wide/16 v0, 0x0

    .line 829
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

    .line 830
    long-to-int v3, v0

    aput v3, p1, v2

    .line 831
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 832
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 833
    long-to-int v4, v0

    aput v4, p1, v3

    .line 834
    shr-long/2addr v0, v2

    .line 835
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 836
    long-to-int v4, v0

    aput v4, p1, v3

    .line 837
    shr-long/2addr v0, v2

    .line 838
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 839
    long-to-int v4, v0

    aput v4, p1, v3

    .line 840
    shr-long/2addr v0, v2

    .line 841
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 842
    long-to-int v4, v0

    aput v4, p1, v3

    .line 843
    shr-long/2addr v0, v2

    .line 844
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

    .line 870
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 871
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 873
    aget v2, p0, v1

    .line 874
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 876
    rsub-int/lit8 v3, v1, 0x4

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 871
    .end local v2    # "x_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 879
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

    .line 884
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 885
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 886
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 887
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 888
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 889
    return-void
.end method
