.class public abstract Lorg/bouncycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([II[II[II)I
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

    .line 40
    const-wide/16 v0, 0x0

    .line 41
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

    .line 42
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 43
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 44
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

    .line 45
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 46
    ushr-long/2addr v0, v2

    .line 47
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

    .line 48
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 49
    ushr-long/2addr v0, v2

    .line 50
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

    .line 51
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 52
    ushr-long/2addr v0, v2

    .line 53
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 54
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 55
    ushr-long/2addr v0, v2

    .line 56
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 57
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 58
    ushr-long/2addr v0, v2

    .line 59
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 60
    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v0

    aput v4, p4, v3

    .line 61
    ushr-long/2addr v0, v2

    .line 62
    long-to-int v2, v0

    return v2
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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 27
    long-to-int v4, v0

    aput v4, p2, v3

    .line 28
    ushr-long/2addr v0, v2

    .line 29
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 30
    long-to-int v4, v0

    aput v4, p2, v3

    .line 31
    ushr-long/2addr v0, v2

    .line 32
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 33
    long-to-int v4, v0

    aput v4, p2, v3

    .line 34
    ushr-long/2addr v0, v2

    .line 35
    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo([II[II[II)I
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

    .line 94
    const-wide/16 v0, 0x0

    .line 95
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

    add-int/lit8 v6, p5, 0x0

    aget v6, p4, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 96
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 97
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 98
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x1

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 99
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 100
    ushr-long/2addr v0, v2

    .line 101
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x2

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 102
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 103
    ushr-long/2addr v0, v2

    .line 104
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x3

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 105
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 106
    ushr-long/2addr v0, v2

    .line 107
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x4

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 108
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 109
    ushr-long/2addr v0, v2

    .line 110
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x5

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 111
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 112
    ushr-long/2addr v0, v2

    .line 113
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x6

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 114
    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v0

    aput v4, p4, v3

    .line 115
    ushr-long/2addr v0, v2

    .line 116
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

    .line 67
    const-wide/16 v0, 0x0

    .line 68
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

    .line 69
    long-to-int v3, v0

    aput v3, p2, v2

    .line 70
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 71
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

    .line 72
    long-to-int v4, v0

    aput v4, p2, v3

    .line 73
    ushr-long/2addr v0, v2

    .line 74
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

    .line 75
    long-to-int v4, v0

    aput v4, p2, v3

    .line 76
    ushr-long/2addr v0, v2

    .line 77
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

    .line 78
    long-to-int v4, v0

    aput v4, p2, v3

    .line 79
    ushr-long/2addr v0, v2

    .line 80
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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 81
    long-to-int v4, v0

    aput v4, p2, v3

    .line 82
    ushr-long/2addr v0, v2

    .line 83
    const/4 v3, 0x5

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

    .line 84
    long-to-int v4, v0

    aput v4, p2, v3

    .line 85
    ushr-long/2addr v0, v2

    .line 86
    const/4 v3, 0x6

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

    .line 87
    long-to-int v4, v0

    aput v4, p2, v3

    .line 88
    ushr-long/2addr v0, v2

    .line 89
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

    .line 175
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 176
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

    .line 177
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 178
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 179
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

    .line 180
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 181
    ushr-long/2addr v0, v4

    .line 182
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

    .line 183
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 184
    ushr-long/2addr v0, v4

    .line 185
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

    .line 186
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 187
    ushr-long/2addr v0, v4

    .line 188
    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 189
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 190
    ushr-long/2addr v0, v4

    .line 191
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 192
    add-int/lit8 v5, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v5

    .line 193
    ushr-long/2addr v0, v4

    .line 194
    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 195
    add-int/lit8 v2, p3, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 196
    ushr-long/2addr v0, v4

    .line 197
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

    .line 121
    const-wide/16 v0, 0x0

    .line 122
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

    .line 123
    long-to-int v3, v0

    aput v3, p1, v2

    .line 124
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 125
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 126
    long-to-int v4, v0

    aput v4, p1, v3

    .line 127
    ushr-long/2addr v0, v2

    .line 128
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 129
    long-to-int v4, v0

    aput v4, p1, v3

    .line 130
    ushr-long/2addr v0, v2

    .line 131
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 132
    long-to-int v4, v0

    aput v4, p1, v3

    .line 133
    ushr-long/2addr v0, v2

    .line 134
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 135
    long-to-int v4, v0

    aput v4, p1, v3

    .line 136
    ushr-long/2addr v0, v2

    .line 137
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 138
    long-to-int v4, v0

    aput v4, p1, v3

    .line 139
    ushr-long/2addr v0, v2

    .line 140
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 141
    long-to-int v4, v0

    aput v4, p1, v3

    .line 142
    ushr-long/2addr v0, v2

    .line 143
    long-to-int v2, v0

    return v2
.end method

.method public static addTo([I[II)I
    .locals 10
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "cIn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "z",
            "cIn"
        }
    .end annotation

    .line 148
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 149
    .local v0, "c":J
    const/4 v4, 0x0

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 150
    long-to-int v5, v0

    aput v5, p1, v4

    .line 151
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 152
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 153
    long-to-int v6, v0

    aput v6, p1, v5

    .line 154
    ushr-long/2addr v0, v4

    .line 155
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 156
    long-to-int v6, v0

    aput v6, p1, v5

    .line 157
    ushr-long/2addr v0, v4

    .line 158
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 159
    long-to-int v6, v0

    aput v6, p1, v5

    .line 160
    ushr-long/2addr v0, v4

    .line 161
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 162
    long-to-int v6, v0

    aput v6, p1, v5

    .line 163
    ushr-long/2addr v0, v4

    .line 164
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 165
    long-to-int v6, v0

    aput v6, p1, v5

    .line 166
    ushr-long/2addr v0, v4

    .line 167
    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v2, v8

    add-long/2addr v6, v2

    add-long/2addr v0, v6

    .line 168
    long-to-int v2, v0

    aput v2, p1, v5

    .line 169
    ushr-long/2addr v0, v4

    .line 170
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

    .line 202
    const-wide/16 v0, 0x0

    .line 203
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

    .line 204
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 205
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 206
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 207
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

    .line 208
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 209
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 210
    ushr-long/2addr v0, v2

    .line 211
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

    .line 212
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 213
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 214
    ushr-long/2addr v0, v2

    .line 215
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

    .line 216
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 217
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 218
    ushr-long/2addr v0, v2

    .line 219
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 220
    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    .line 221
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 222
    ushr-long/2addr v0, v2

    .line 223
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 224
    add-int/lit8 v3, p1, 0x5

    long-to-int v6, v0

    aput v6, p0, v3

    .line 225
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 226
    ushr-long/2addr v0, v2

    .line 227
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 228
    add-int/lit8 v3, p1, 0x6

    long-to-int v4, v0

    aput v4, p0, v3

    .line 229
    add-int/lit8 v3, p3, 0x6

    long-to-int v4, v0

    aput v4, p2, v3

    .line 230
    ushr-long/2addr v0, v2

    .line 231
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

    .line 247
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 248
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 249
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 250
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 251
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 252
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 253
    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    aget v1, p0, v1

    aput v1, p2, v0

    .line 254
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

    .line 236
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 237
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 238
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 239
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 240
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 241
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 242
    const/4 v0, 0x6

    aget v1, p0, v0

    aput v1, p1, v0

    .line 243
    return-void
.end method

.method public static create()[I
    .locals 1

    .line 258
    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .line 263
    const/16 v0, 0xe

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

    .line 268
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat224;->gte([II[II)Z

    move-result v0

    .line 269
    .local v0, "pos":Z
    if-eqz v0, :cond_0

    .line 271
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

    goto :goto_0

    .line 275
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
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 277
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

    .line 282
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 284
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 286
    const/4 v1, 0x0

    return v1

    .line 282
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 289
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

    .line 294
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_1

    .line 299
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 302
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 304
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 305
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 296
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

    .line 312
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 314
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 316
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    .line 317
    .local v1, "w":I
    if-ltz v1, :cond_2

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    and-int/lit8 v0, p1, 0x1f

    .line 322
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 319
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

    .line 341
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 343
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 344
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 345
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 346
    const/4 v1, 0x0

    return v1

    .line 347
    :cond_0
    if-le v2, v3, :cond_1

    .line 348
    return v1

    .line 341
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 350
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

    .line 327
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 329
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 330
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 331
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 332
    const/4 v1, 0x0

    return v1

    .line 333
    :cond_0
    if-le v2, v3, :cond_1

    .line 334
    return v1

    .line 327
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 336
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

    .line 355
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 357
    return v0

    .line 359
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    .line 361
    aget v3, p0, v1

    if-eqz v3, :cond_1

    .line 363
    return v0

    .line 359
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
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

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 373
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x0

    return v1

    .line 371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static mul([II[II[II)V
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

    .line 447
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 448
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 449
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 450
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 451
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 452
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 453
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 456
    .local v14, "y_6":J
    const-wide/16 v16, 0x0

    .local v16, "c":J
    add-int/lit8 v18, p1, 0x0

    move-wide/from16 v19, v2

    aget v2, p0, v18

    int-to-long v2, v2

    and-long v2, v2, v19

    .line 457
    .local v2, "x_0":J
    mul-long v21, v2, v0

    move-wide/from16 v23, v0

    .end local v0    # "y_0":J
    .local v23, "y_0":J
    add-long v0, v16, v21

    .line 458
    .end local v16    # "c":J
    .local v0, "c":J
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v17, v2

    .end local v2    # "x_0":J
    .local v17, "x_0":J
    long-to-int v2, v0

    aput v2, p4, v16

    .line 459
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 460
    mul-long v21, v17, v4

    add-long v0, v0, v21

    .line 461
    add-int/lit8 v3, p5, 0x1

    const/16 v16, 0x20

    long-to-int v2, v0

    aput v2, p4, v3

    .line 462
    ushr-long v0, v0, v16

    .line 463
    mul-long v2, v17, v6

    add-long/2addr v0, v2

    .line 464
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 465
    ushr-long v0, v0, v16

    .line 466
    mul-long v2, v17, v8

    add-long/2addr v0, v2

    .line 467
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 468
    ushr-long v0, v0, v16

    .line 469
    mul-long v2, v17, v10

    add-long/2addr v0, v2

    .line 470
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 471
    ushr-long v0, v0, v16

    .line 472
    mul-long v2, v17, v12

    add-long/2addr v0, v2

    .line 473
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 474
    ushr-long v0, v0, v16

    .line 475
    mul-long v2, v17, v14

    add-long/2addr v0, v2

    .line 476
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 477
    ushr-long v0, v0, v16

    .line 478
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 481
    .end local v0    # "c":J
    .end local v17    # "x_0":J
    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 483
    add-int/lit8 v0, v0, 0x1

    .line 484
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v17, p1, v1

    move/from16 p5, v0

    .end local v0    # "zzOff":I
    .restart local p5    # "zzOff":I
    aget v0, p0, v17

    move/from16 v17, v1

    .end local v1    # "i":I
    .local v17, "i":I
    int-to-long v0, v0

    and-long v0, v0, v19

    .line 485
    .local v0, "x_i":J
    mul-long v21, v0, v23

    add-int/lit8 v18, p5, 0x0

    move-wide/from16 v25, v0

    .end local v0    # "x_i":J
    .local v25, "x_i":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long v21, v21, v0

    add-long v2, v2, v21

    .line 486
    add-int/lit8 v0, p5, 0x0

    long-to-int v1, v2

    aput v1, p4, v0

    .line 487
    ushr-long v0, v2, v16

    .line 488
    .end local v2    # "c":J
    .local v0, "c":J
    mul-long v2, v25, v4

    add-int/lit8 v18, p5, 0x1

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .local v21, "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 489
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 490
    ushr-long v0, v0, v16

    .line 491
    mul-long v2, v25, v6

    add-int/lit8 v18, p5, 0x2

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 492
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 493
    ushr-long v0, v0, v16

    .line 494
    mul-long v2, v25, v8

    add-int/lit8 v18, p5, 0x3

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 495
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 496
    ushr-long v0, v0, v16

    .line 497
    mul-long v2, v25, v10

    add-int/lit8 v18, p5, 0x4

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 498
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 499
    ushr-long v0, v0, v16

    .line 500
    mul-long v2, v25, v12

    add-int/lit8 v18, p5, 0x5

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 501
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 502
    ushr-long v0, v0, v16

    .line 503
    mul-long v2, v25, v14

    add-int/lit8 v18, p5, 0x6

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 504
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 505
    ushr-long v0, v0, v16

    .line 506
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 481
    .end local v0    # "c":J
    .end local v25    # "x_i":J
    add-int/lit8 v1, v17, 0x1

    move/from16 v0, p5

    .end local v17    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    .line 508
    .end local v1    # "i":I
    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 33
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

    .line 383
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 384
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 385
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 386
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 387
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    move-wide/from16 v17, v1

    const/16 v16, 0x0

    .end local v1    # "y_0":J
    .local v17, "y_0":J
    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 388
    .local v0, "y_4":J
    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    const/4 v4, 0x5

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 389
    .local v2, "y_5":J
    const/4 v15, 0x6

    const/16 v21, 0x5

    aget v4, p1, v15

    move-wide/from16 v23, v6

    const/16 v22, 0x1

    .end local v6    # "y_1":J
    .local v23, "y_1":J
    int-to-long v5, v4

    and-long v5, v5, v19

    .line 392
    .local v5, "y_6":J
    const-wide/16 v25, 0x0

    .local v25, "c":J
    aget v4, p0, v16

    move-wide/from16 v27, v9

    const/4 v7, 0x2

    .end local v9    # "y_2":J
    .local v27, "y_2":J
    int-to-long v8, v4

    and-long v8, v8, v19

    .line 393
    .local v8, "x_0":J
    mul-long v29, v8, v17

    move-wide/from16 v31, v8

    const/4 v4, 0x2

    .end local v8    # "x_0":J
    .local v31, "x_0":J
    add-long v7, v25, v29

    .line 394
    .end local v25    # "c":J
    .local v7, "c":J
    long-to-int v9, v7

    aput v9, p2, v16

    .line 395
    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    .line 396
    mul-long v25, v31, v23

    add-long v7, v7, v25

    .line 397
    long-to-int v10, v7

    aput v10, p2, v22

    .line 398
    ushr-long/2addr v7, v9

    .line 399
    mul-long v25, v31, v27

    add-long v7, v7, v25

    .line 400
    long-to-int v10, v7

    aput v10, p2, v4

    .line 401
    ushr-long/2addr v7, v9

    .line 402
    mul-long v25, v31, v12

    add-long v7, v7, v25

    .line 403
    long-to-int v4, v7

    aput v4, p2, v11

    .line 404
    ushr-long/2addr v7, v9

    .line 405
    mul-long v10, v31, v0

    add-long/2addr v7, v10

    .line 406
    long-to-int v4, v7

    aput v4, p2, v14

    .line 407
    ushr-long/2addr v7, v9

    .line 408
    mul-long v10, v31, v2

    add-long/2addr v7, v10

    .line 409
    long-to-int v4, v7

    aput v4, p2, v21

    .line 410
    ushr-long/2addr v7, v9

    .line 411
    mul-long v10, v31, v5

    add-long/2addr v7, v10

    .line 412
    long-to-int v4, v7

    aput v4, p2, v15

    .line 413
    ushr-long/2addr v7, v9

    .line 414
    long-to-int v4, v7

    const/4 v10, 0x7

    aput v4, p2, v10

    .line 417
    .end local v7    # "c":J
    .end local v31    # "x_0":J
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_0

    .line 419
    const-wide/16 v7, 0x0

    .restart local v7    # "c":J
    aget v11, p0, v4

    int-to-long v14, v11

    and-long v14, v14, v19

    .line 420
    .local v14, "x_i":J
    mul-long v21, v14, v17

    add-int/lit8 v11, v4, 0x0

    aget v11, p2, v11

    const/16 v16, 0x20

    int-to-long v9, v11

    and-long v9, v9, v19

    add-long v21, v21, v9

    add-long v7, v7, v21

    .line 421
    add-int/lit8 v9, v4, 0x0

    long-to-int v10, v7

    aput v10, p2, v9

    .line 422
    ushr-long v7, v7, v16

    .line 423
    mul-long v9, v14, v23

    add-int/lit8 v11, v4, 0x1

    aget v11, p2, v11

    move-wide/from16 v21, v0

    .end local v0    # "y_4":J
    .local v21, "y_4":J
    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v9, v0

    add-long/2addr v7, v9

    .line 424
    add-int/lit8 v0, v4, 0x1

    long-to-int v1, v7

    aput v1, p2, v0

    .line 425
    ushr-long v0, v7, v16

    .line 426
    .end local v7    # "c":J
    .local v0, "c":J
    mul-long v9, v14, v27

    add-int/lit8 v7, v4, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long v7, v7, v19

    add-long/2addr v9, v7

    add-long/2addr v0, v9

    .line 427
    add-int/lit8 v7, v4, 0x2

    long-to-int v8, v0

    aput v8, p2, v7

    .line 428
    ushr-long v0, v0, v16

    .line 429
    mul-long v7, v14, v12

    add-int/lit8 v9, v4, 0x3

    aget v9, p2, v9

    int-to-long v9, v9

    and-long v9, v9, v19

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 430
    add-int/lit8 v7, v4, 0x3

    long-to-int v8, v0

    aput v8, p2, v7

    .line 431
    ushr-long v0, v0, v16

    .line 432
    mul-long v7, v14, v21

    add-int/lit8 v9, v4, 0x4

    aget v9, p2, v9

    int-to-long v9, v9

    and-long v9, v9, v19

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 433
    add-int/lit8 v7, v4, 0x4

    long-to-int v8, v0

    aput v8, p2, v7

    .line 434
    ushr-long v0, v0, v16

    .line 435
    mul-long v7, v14, v2

    add-int/lit8 v9, v4, 0x5

    aget v9, p2, v9

    int-to-long v9, v9

    and-long v9, v9, v19

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 436
    add-int/lit8 v7, v4, 0x5

    long-to-int v8, v0

    aput v8, p2, v7

    .line 437
    ushr-long v0, v0, v16

    .line 438
    mul-long v7, v14, v5

    add-int/lit8 v9, v4, 0x6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long v9, v9, v19

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 439
    add-int/lit8 v7, v4, 0x6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 440
    ushr-long v0, v0, v16

    .line 441
    add-int/lit8 v7, v4, 0x7

    long-to-int v8, v0

    aput v8, p2, v7

    .line 417
    .end local v0    # "c":J
    .end local v14    # "x_i":J
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v0, v21

    const/16 v9, 0x20

    const/4 v10, 0x7

    goto/16 :goto_0

    .line 443
    .end local v4    # "i":I
    .end local v21    # "y_4":J
    .local v0, "y_4":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 28
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

    .line 601
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 602
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 603
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 604
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 605
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 606
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 607
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 608
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 609
    ushr-long/2addr v0, v9

    .line 610
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 611
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

    .line 612
    add-int/lit8 v5, p6, 0x2

    long-to-int v6, v0

    aput v6, p5, v5

    .line 613
    ushr-long/2addr v0, v9

    .line 614
    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    int-to-long v5, v5

    and-long v5, v5, v17

    .line 615
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

    .line 616
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x3

    long-to-int v14, v0

    aput v14, p5, v9

    .line 617
    ushr-long v0, v0, v19

    .line 618
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v14, v9

    and-long v14, v14, v17

    .line 619
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

    .line 620
    .end local v22    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x4

    long-to-int v2, v0

    aput v2, p5, v9

    .line 621
    ushr-long v0, v0, v19

    .line 622
    add-int/lit8 v2, p2, 0x5

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 623
    .local v0, "x5":J
    mul-long v22, v3, v0

    add-long v22, v22, v14

    add-int/lit8 v2, p4, 0x5

    aget v2, p3, v2

    move-wide/from16 v24, v0

    .end local v0    # "x5":J
    .local v24, "x5":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long v22, v22, v0

    add-long v0, v20, v22

    .line 624
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x5

    long-to-int v9, v0

    aput v9, p5, v2

    .line 625
    ushr-long v0, v0, v19

    .line 626
    add-int/lit8 v2, p2, 0x6

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 627
    .local v0, "x6":J
    mul-long v22, v3, v0

    add-long v22, v22, v24

    add-int/lit8 v2, p4, 0x6

    aget v2, p3, v2

    move-wide/from16 v26, v0

    .end local v0    # "x6":J
    .local v26, "x6":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long v22, v22, v0

    add-long v0, v20, v22

    .line 628
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x6

    long-to-int v9, v0

    aput v9, p5, v2

    .line 629
    ushr-long v0, v0, v19

    .line 630
    add-long v0, v0, v26

    .line 631
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

    .line 720
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 721
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 722
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 723
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 724
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 725
    ushr-long v12, p1, v11

    .line 726
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

    .line 727
    add-int/lit8 v7, v1, 0x1

    long-to-int v8, v2

    aput v8, v0, v7

    .line 728
    ushr-long/2addr v2, v11

    .line 729
    add-int/lit8 v7, v1, 0x2

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v7, v12

    add-long/2addr v2, v7

    .line 730
    add-int/lit8 v7, v1, 0x2

    long-to-int v8, v2

    aput v8, v0, v7

    .line 731
    ushr-long/2addr v2, v11

    .line 732
    add-int/lit8 v7, v1, 0x3

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v2, v7

    .line 733
    add-int/lit8 v7, v1, 0x3

    long-to-int v8, v2

    aput v8, v0, v7

    .line 734
    ushr-long/2addr v2, v11

    .line 735
    const-wide/16 v7, 0x0

    cmp-long v11, v2, v7

    if-nez v11, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 v7, 0x7

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

    .line 743
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 744
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 745
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 746
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 747
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 748
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 749
    ushr-long/2addr v0, v8

    .line 750
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 751
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 752
    ushr-long/2addr v0, v8

    .line 753
    const-wide/16 v4, 0x0

    cmp-long v8, v0, v4

    if-nez v8, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static mulAddTo([II[II[II)I
    .locals 32
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

    .line 555
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 556
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 557
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 558
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 559
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 560
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 561
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 563
    .local v14, "y_6":J
    const-wide/16 v16, 0x0

    .line 564
    .local v16, "zc":J
    const/16 v18, 0x0

    move-wide/from16 v19, v0

    move/from16 v0, v18

    move-wide/from16 v30, v16

    move/from16 v16, p5

    move-wide/from16 v17, v2

    move-wide/from16 v2, v30

    .end local p5    # "zzOff":I
    .local v0, "i":I
    .local v2, "zc":J
    .local v16, "zzOff":I
    .local v19, "y_0":J
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 566
    const-wide/16 v21, 0x0

    .local v21, "c":J
    add-int v1, p1, v0

    aget v1, p0, v1

    move/from16 p5, v0

    .end local v0    # "i":I
    .local p5, "i":I
    int-to-long v0, v1

    and-long v0, v0, v17

    .line 567
    .local v0, "x_i":J
    mul-long v23, v0, v19

    add-int/lit8 v25, v16, 0x0

    move-wide/from16 v26, v0

    .end local v0    # "x_i":J
    .local v26, "x_i":J
    aget v0, p4, v25

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v0, v21, v23

    .line 568
    .end local v21    # "c":J
    .local v0, "c":J
    add-int/lit8 v21, v16, 0x0

    move-wide/from16 v22, v4

    .end local v4    # "y_1":J
    .local v22, "y_1":J
    long-to-int v4, v0

    aput v4, p4, v21

    .line 569
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 570
    mul-long v24, v26, v22

    add-int/lit8 v5, v16, 0x1

    aget v5, p4, v5

    const/16 v21, 0x20

    int-to-long v4, v5

    and-long v4, v4, v17

    add-long v24, v24, v4

    add-long v0, v0, v24

    .line 571
    add-int/lit8 v4, v16, 0x1

    long-to-int v5, v0

    aput v5, p4, v4

    .line 572
    ushr-long v0, v0, v21

    .line 573
    mul-long v4, v26, v6

    add-int/lit8 v24, v16, 0x2

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .local v28, "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 574
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x2

    long-to-int v5, v0

    aput v5, p4, v4

    .line 575
    ushr-long v0, v0, v21

    .line 576
    mul-long v4, v26, v8

    add-int/lit8 v24, v16, 0x3

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 577
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x3

    long-to-int v5, v0

    aput v5, p4, v4

    .line 578
    ushr-long v0, v0, v21

    .line 579
    mul-long v4, v26, v10

    add-int/lit8 v24, v16, 0x4

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 580
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x4

    long-to-int v5, v0

    aput v5, p4, v4

    .line 581
    ushr-long v0, v0, v21

    .line 582
    mul-long v4, v26, v12

    add-int/lit8 v24, v16, 0x5

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 583
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x5

    long-to-int v5, v0

    aput v5, p4, v4

    .line 584
    ushr-long v0, v0, v21

    .line 585
    mul-long v4, v26, v14

    add-int/lit8 v24, v16, 0x6

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 586
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x6

    long-to-int v5, v0

    aput v5, p4, v4

    .line 587
    ushr-long v0, v0, v21

    .line 589
    add-int/lit8 v4, v16, 0x7

    aget v4, p4, v4

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 590
    add-int/lit8 v4, v16, 0x7

    long-to-int v5, v2

    aput v5, p4, v4

    .line 591
    ushr-long v2, v2, v21

    .line 592
    nop

    .end local v0    # "c":J
    .end local v26    # "x_i":J
    add-int/lit8 v16, v16, 0x1

    .line 564
    add-int/lit8 v0, p5, 0x1

    move-wide/from16 v4, v22

    .end local p5    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .end local v22    # "y_1":J
    .restart local v4    # "y_1":J
    :cond_0
    move/from16 p5, v0

    .line 594
    .end local v0    # "i":I
    long-to-int v0, v2

    return v0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 30
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

    .line 512
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 513
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 514
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 515
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 516
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 517
    .local v10, "y_4":J
    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 518
    .local v12, "y_5":J
    const/4 v14, 0x6

    aget v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 520
    .local v14, "y_6":J
    const-wide/16 v16, 0x0

    .line 521
    .local v16, "zc":J
    const/16 v18, 0x0

    move-wide/from16 v19, v2

    move-wide/from16 v2, v16

    move-wide/from16 v16, v0

    move/from16 v0, v18

    .local v0, "i":I
    .local v2, "zc":J
    .local v16, "y_0":J
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 523
    const-wide/16 v21, 0x0

    .local v21, "c":J
    aget v1, p0, v0

    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    int-to-long v0, v1

    and-long v0, v0, v19

    .line 524
    .local v0, "x_i":J
    mul-long v23, v0, v16

    add-int/lit8 v25, v18, 0x0

    move-wide/from16 v26, v0

    .end local v0    # "x_i":J
    .local v26, "x_i":J
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long v23, v23, v0

    add-long v0, v21, v23

    .line 525
    .end local v21    # "c":J
    .local v0, "c":J
    add-int/lit8 v21, v18, 0x0

    move-wide/from16 v22, v4

    .end local v4    # "y_1":J
    .local v22, "y_1":J
    long-to-int v4, v0

    aput v4, p2, v21

    .line 526
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 527
    mul-long v24, v26, v22

    add-int/lit8 v5, v18, 0x1

    aget v5, p2, v5

    const/16 v21, 0x20

    int-to-long v4, v5

    and-long v4, v4, v19

    add-long v24, v24, v4

    add-long v0, v0, v24

    .line 528
    add-int/lit8 v4, v18, 0x1

    long-to-int v5, v0

    aput v5, p2, v4

    .line 529
    ushr-long v0, v0, v21

    .line 530
    mul-long v4, v26, v6

    add-int/lit8 v24, v18, 0x2

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .local v28, "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 531
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 532
    ushr-long v0, v0, v21

    .line 533
    mul-long v4, v26, v8

    add-int/lit8 v24, v18, 0x3

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 534
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x3

    long-to-int v5, v0

    aput v5, p2, v4

    .line 535
    ushr-long v0, v0, v21

    .line 536
    mul-long v4, v26, v10

    add-int/lit8 v24, v18, 0x4

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 537
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 538
    ushr-long v0, v0, v21

    .line 539
    mul-long v4, v26, v12

    add-int/lit8 v24, v18, 0x5

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 540
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x5

    long-to-int v5, v0

    aput v5, p2, v4

    .line 541
    ushr-long v0, v0, v21

    .line 542
    mul-long v4, v26, v14

    add-int/lit8 v24, v18, 0x6

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 543
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x6

    long-to-int v5, v0

    aput v5, p2, v4

    .line 544
    ushr-long v0, v0, v21

    .line 546
    add-int/lit8 v4, v18, 0x7

    aget v4, p2, v4

    int-to-long v4, v4

    and-long v4, v4, v19

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 547
    add-int/lit8 v4, v18, 0x7

    long-to-int v5, v2

    aput v5, p2, v4

    .line 548
    ushr-long v2, v2, v21

    .line 521
    .end local v0    # "c":J
    .end local v26    # "x_i":J
    add-int/lit8 v0, v18, 0x1

    move-wide/from16 v4, v22

    .end local v18    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .end local v22    # "y_1":J
    .restart local v4    # "y_1":J
    :cond_0
    move/from16 v18, v0

    .line 550
    .end local v0    # "i":I
    long-to-int v0, v2

    return v0
.end method

.method public static mulByWord(I[I)I
    .locals 10
    .param p0, "x"    # I
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

    .line 636
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 637
    .local v2, "xVal":J
    const/4 v6, 0x0

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-long/2addr v0, v7

    .line 638
    long-to-int v7, v0

    aput v7, p1, v6

    .line 639
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 640
    const/4 v7, 0x1

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 641
    long-to-int v8, v0

    aput v8, p1, v7

    .line 642
    ushr-long/2addr v0, v6

    .line 643
    const/4 v7, 0x2

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 644
    long-to-int v8, v0

    aput v8, p1, v7

    .line 645
    ushr-long/2addr v0, v6

    .line 646
    const/4 v7, 0x3

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 647
    long-to-int v8, v0

    aput v8, p1, v7

    .line 648
    ushr-long/2addr v0, v6

    .line 649
    const/4 v7, 0x4

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 650
    long-to-int v8, v0

    aput v8, p1, v7

    .line 651
    ushr-long/2addr v0, v6

    .line 652
    const/4 v7, 0x5

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 653
    long-to-int v8, v0

    aput v8, p1, v7

    .line 654
    ushr-long/2addr v0, v6

    .line 655
    const/4 v7, 0x6

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v4, v8

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    .line 656
    long-to-int v4, v0

    aput v4, p1, v7

    .line 657
    ushr-long/2addr v0, v6

    .line 658
    long-to-int v4, v0

    return v4
.end method

.method public static mulByWordAddTo(I[I[I)I
    .locals 12
    .param p0, "x"    # I
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

    .line 663
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 664
    .local v2, "xVal":J
    const/4 v6, 0x0

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 665
    long-to-int v7, v0

    aput v7, p2, v6

    .line 666
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 667
    const/4 v7, 0x1

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 668
    long-to-int v8, v0

    aput v8, p2, v7

    .line 669
    ushr-long/2addr v0, v6

    .line 670
    const/4 v7, 0x2

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 671
    long-to-int v8, v0

    aput v8, p2, v7

    .line 672
    ushr-long/2addr v0, v6

    .line 673
    const/4 v7, 0x3

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 674
    long-to-int v8, v0

    aput v8, p2, v7

    .line 675
    ushr-long/2addr v0, v6

    .line 676
    const/4 v7, 0x4

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 677
    long-to-int v8, v0

    aput v8, p2, v7

    .line 678
    ushr-long/2addr v0, v6

    .line 679
    const/4 v7, 0x5

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 680
    long-to-int v8, v0

    aput v8, p2, v7

    .line 681
    ushr-long/2addr v0, v6

    .line 682
    const/4 v7, 0x6

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long/2addr v0, v8

    .line 683
    long-to-int v4, v0

    aput v4, p2, v7

    .line 684
    ushr-long/2addr v0, v6

    .line 685
    long-to-int v4, v0

    return v4
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

    .line 774
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 775
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 778
    .local v6, "i":I
    :cond_0
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-long/2addr v0, v7

    .line 779
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 780
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 782
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x7

    if-lt v6, v7, :cond_0

    .line 783
    long-to-int v4, v0

    return v4
.end method

.method public static mulWordAddTo(I[II[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "yOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
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
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 690
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 691
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

    .line 692
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 693
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 694
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

    .line 695
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 696
    ushr-long/2addr v0, v6

    .line 697
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

    .line 698
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 699
    ushr-long/2addr v0, v6

    .line 700
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

    .line 701
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 702
    ushr-long/2addr v0, v6

    .line 703
    add-int/lit8 v7, p2, 0x4

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 704
    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 705
    ushr-long/2addr v0, v6

    .line 706
    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x5

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 707
    add-int/lit8 v7, p4, 0x5

    long-to-int v8, v0

    aput v8, p3, v7

    .line 708
    ushr-long/2addr v0, v6

    .line 709
    add-int/lit8 v7, p2, 0x6

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x6

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 710
    add-int/lit8 v4, p4, 0x6

    long-to-int v5, v0

    aput v5, p3, v4

    .line 711
    ushr-long/2addr v0, v6

    .line 712
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

    .line 759
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 760
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long v6, v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 761
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 762
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 763
    ushr-long v7, p1, v6

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 764
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 765
    ushr-long/2addr v0, v6

    .line 766
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 767
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 768
    ushr-long/2addr v0, v6

    .line 769
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static square([II[II)V
    .locals 47
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

    .line 927
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 930
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 932
    .local v4, "c":I
    const/4 v5, 0x6

    .local v5, "i":I
    const/16 v6, 0xe

    .line 935
    .local v6, "j":I
    :goto_0
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 936
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 937
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v15, v14

    or-int/2addr v12, v15

    aput v12, p2, v5

    .line 938
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v15, v14

    aput v15, p2, v5

    .line 939
    long-to-int v4, v10

    .line 941
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_0

    .line 944
    mul-long v8, v0, v0

    .line 945
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 946
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 947
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v14, v13

    and-int/lit8 v4, v14, 0x1

    .line 951
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 952
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 955
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 956
    long-to-int v12, v10

    .line 957
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 958
    ushr-int/lit8 v4, v12, 0x1f

    .line 959
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 962
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 963
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v16, v2

    int-to-long v2, v15

    and-long v2, v2, v16

    .line 964
    .local v2, "zz_3":J
    add-int/lit8 v15, p3, 0x4

    aget v15, p2, v15

    move-wide/from16 v19, v6

    const/16 v18, 0x20

    .end local v6    # "x_1":J
    .local v19, "x_1":J
    int-to-long v5, v15

    and-long v5, v5, v16

    .line 966
    .local v5, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 967
    long-to-int v7, v8

    .line 968
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 969
    ushr-int/lit8 v4, v7, 0x1f

    .line 970
    ushr-long v21, v8, v18

    mul-long v23, v13, v19

    add-long v21, v21, v23

    add-long v2, v2, v21

    .line 971
    ushr-long v21, v2, v18

    add-long v5, v5, v21

    .line 972
    and-long v2, v2, v16

    .line 975
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v0

    .end local v0    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 976
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

    .line 977
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

    .line 979
    mul-long v27, v23, v21

    add-long v2, v2, v27

    .line 980
    long-to-int v7, v2

    .line 981
    add-int/lit8 v12, p3, 0x3

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 982
    ushr-int/lit8 v4, v7, 0x1f

    .line 983
    ushr-long v27, v2, v18

    mul-long v29, v23, v19

    add-long v27, v27, v29

    add-long v5, v5, v27

    .line 984
    ushr-long v27, v5, v18

    mul-long v29, v23, v13

    add-long v27, v27, v29

    add-long v25, v25, v27

    .line 985
    and-long v5, v5, v16

    .line 986
    ushr-long v27, v25, v18

    add-long v0, v0, v27

    .line 987
    and-long v25, v25, v16

    .line 990
    add-int/lit8 v12, p1, 0x4

    aget v12, p0, v12

    move-wide/from16 v27, v0

    .end local v0    # "zz_6":J
    .local v27, "zz_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 991
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

    .line 992
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
    and-long v31, v31, v16

    .line 994
    mul-long v33, v29, v21

    add-long v5, v5, v33

    .line 995
    long-to-int v7, v5

    .line 996
    add-int/lit8 v12, p3, 0x4

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 997
    ushr-int/lit8 v4, v7, 0x1f

    .line 998
    ushr-long v33, v5, v18

    mul-long v35, v29, v19

    add-long v33, v33, v35

    add-long v25, v25, v33

    .line 999
    ushr-long v33, v25, v18

    mul-long v35, v29, v13

    add-long v33, v33, v35

    add-long v27, v27, v33

    .line 1000
    and-long v25, v25, v16

    .line 1001
    ushr-long v33, v27, v18

    mul-long v35, v29, v23

    add-long v33, v33, v35

    add-long v31, v31, v33

    .line 1002
    and-long v27, v27, v16

    .line 1003
    ushr-long v33, v31, v18

    add-long v0, v0, v33

    .line 1004
    and-long v31, v31, v16

    .line 1007
    add-int/lit8 v12, p1, 0x5

    aget v12, p0, v12

    move-wide/from16 v33, v0

    .end local v0    # "zz_8":J
    .local v33, "zz_8":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1008
    .local v0, "x_5":J
    add-int/lit8 v12, p3, 0x9

    aget v12, p2, v12

    move-wide/from16 v35, v0

    .end local v0    # "x_5":J
    .local v35, "x_5":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v37, v33, v18

    add-long v0, v0, v37

    .local v0, "zz_9":J
    and-long v33, v33, v16

    .line 1009
    add-int/lit8 v12, p3, 0xa

    aget v12, p2, v12

    move-wide/from16 v37, v0

    .end local v0    # "zz_9":J
    .local v37, "zz_9":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v39, v37, v18

    add-long v0, v0, v39

    .local v0, "zz_10":J
    and-long v37, v37, v16

    .line 1011
    mul-long v39, v35, v21

    move-wide/from16 v41, v0

    .end local v0    # "zz_10":J
    .local v41, "zz_10":J
    add-long v0, v25, v39

    .line 1012
    .end local v25    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v7, v0

    .line 1013
    add-int/lit8 v12, p3, 0x5

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1014
    ushr-int/lit8 v4, v7, 0x1f

    .line 1015
    ushr-long v25, v0, v18

    mul-long v39, v35, v19

    add-long v25, v25, v39

    add-long v27, v27, v25

    .line 1016
    ushr-long v25, v27, v18

    mul-long v39, v35, v13

    add-long v25, v25, v39

    add-long v31, v31, v25

    .line 1017
    and-long v25, v27, v16

    .line 1018
    .end local v27    # "zz_6":J
    .local v25, "zz_6":J
    ushr-long v27, v31, v18

    mul-long v39, v35, v23

    add-long v27, v27, v39

    add-long v33, v33, v27

    .line 1019
    and-long v27, v31, v16

    .line 1020
    .end local v31    # "zz_7":J
    .local v27, "zz_7":J
    ushr-long v31, v33, v18

    mul-long v39, v35, v29

    add-long v31, v31, v39

    add-long v37, v37, v31

    .line 1021
    and-long v31, v33, v16

    .line 1022
    .end local v33    # "zz_8":J
    .local v31, "zz_8":J
    ushr-long v33, v37, v18

    add-long v33, v41, v33

    .line 1023
    .end local v41    # "zz_10":J
    .local v33, "zz_10":J
    and-long v37, v37, v16

    .line 1026
    add-int/lit8 v12, p1, 0x6

    aget v12, p0, v12

    move-wide/from16 v39, v0

    .end local v0    # "zz_5":J
    .local v39, "zz_5":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1027
    .local v0, "x_6":J
    add-int/lit8 v12, p3, 0xb

    aget v12, p2, v12

    move-wide/from16 v41, v0

    .end local v0    # "x_6":J
    .local v41, "x_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v43, v33, v18

    add-long v0, v0, v43

    .local v0, "zz_11":J
    and-long v33, v33, v16

    .line 1028
    add-int/lit8 v12, p3, 0xc

    aget v12, p2, v12

    move-wide/from16 v43, v0

    .end local v0    # "zz_11":J
    .local v43, "zz_11":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v45, v43, v18

    add-long v0, v0, v45

    .local v0, "zz_12":J
    and-long v16, v43, v16

    .line 1030
    .end local v43    # "zz_11":J
    .local v16, "zz_11":J
    mul-long v43, v41, v21

    move-wide/from16 v45, v0

    .end local v0    # "zz_12":J
    .local v45, "zz_12":J
    add-long v0, v25, v43

    .line 1031
    .end local v25    # "zz_6":J
    .local v0, "zz_6":J
    long-to-int v7, v0

    .line 1032
    add-int/lit8 v12, p3, 0x6

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1033
    ushr-int/lit8 v4, v7, 0x1f

    .line 1034
    ushr-long v25, v0, v18

    mul-long v43, v41, v19

    add-long v25, v25, v43

    move-wide/from16 v43, v0

    .end local v0    # "zz_6":J
    .local v43, "zz_6":J
    add-long v0, v27, v25

    .line 1035
    .end local v27    # "zz_7":J
    .local v0, "zz_7":J
    ushr-long v25, v0, v18

    mul-long v27, v41, v13

    add-long v25, v25, v27

    move-wide/from16 v27, v2

    .end local v2    # "zz_3":J
    .local v27, "zz_3":J
    add-long v2, v31, v25

    .line 1036
    .end local v31    # "zz_8":J
    .local v2, "zz_8":J
    ushr-long v25, v2, v18

    mul-long v31, v41, v23

    add-long v25, v25, v31

    move-wide/from16 v31, v5

    move v6, v4

    .end local v4    # "c":I
    .end local v5    # "zz_4":J
    .local v6, "c":I
    .local v31, "zz_4":J
    add-long v4, v37, v25

    .line 1037
    .end local v37    # "zz_9":J
    .local v4, "zz_9":J
    ushr-long v25, v4, v18

    mul-long v37, v41, v29

    add-long v25, v25, v37

    move v15, v6

    move v12, v7

    .end local v6    # "c":I
    .end local v7    # "w":I
    .restart local v12    # "w":I
    .local v15, "c":I
    add-long v6, v33, v25

    .line 1038
    .end local v33    # "zz_10":J
    .local v6, "zz_10":J
    ushr-long v25, v6, v18

    mul-long v33, v41, v35

    add-long v25, v25, v33

    move-wide/from16 v33, v8

    .end local v8    # "zz_2":J
    .local v33, "zz_2":J
    add-long v8, v16, v25

    .line 1039
    .end local v16    # "zz_11":J
    .local v8, "zz_11":J
    ushr-long v16, v8, v18

    move-wide/from16 v25, v10

    .end local v10    # "zz_1":J
    .local v25, "zz_1":J
    add-long v10, v45, v16

    .line 1042
    .end local v45    # "zz_12":J
    .local v10, "zz_12":J
    long-to-int v12, v0

    .line 1043
    add-int/lit8 v16, p3, 0x7

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1044
    ushr-int/lit8 v15, v12, 0x1f

    .line 1045
    long-to-int v12, v2

    .line 1046
    add-int/lit8 v16, p3, 0x8

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1047
    ushr-int/lit8 v15, v12, 0x1f

    .line 1048
    long-to-int v12, v4

    .line 1049
    add-int/lit8 v16, p3, 0x9

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1050
    ushr-int/lit8 v15, v12, 0x1f

    .line 1051
    long-to-int v12, v6

    .line 1052
    add-int/lit8 v16, p3, 0xa

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1053
    ushr-int/lit8 v15, v12, 0x1f

    .line 1054
    long-to-int v12, v8

    .line 1055
    add-int/lit8 v16, p3, 0xb

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1056
    ushr-int/lit8 v15, v12, 0x1f

    .line 1057
    long-to-int v12, v10

    .line 1058
    add-int/lit8 v16, p3, 0xc

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1059
    ushr-int/lit8 v15, v12, 0x1f

    .line 1060
    add-int/lit8 v16, p3, 0xd

    aget v16, p2, v16

    move-wide/from16 v37, v0

    .end local v0    # "zz_7":J
    .local v37, "zz_7":J
    ushr-long v0, v10, v18

    long-to-int v1, v0

    add-int v16, v16, v1

    .line 1061
    .end local v12    # "w":I
    .local v16, "w":I
    add-int/lit8 v0, p3, 0xd

    shl-int/lit8 v1, v16, 0x1

    or-int/2addr v1, v15

    aput v1, p2, v0

    .line 1062
    return-void

    .line 941
    .end local v2    # "zz_8":J
    .end local v8    # "zz_11":J
    .end local v10    # "zz_12":J
    .end local v13    # "x_2":J
    .end local v15    # "c":I
    .end local v16    # "w":I
    .end local v19    # "x_1":J
    .end local v21    # "x_0":J
    .end local v23    # "x_3":J
    .end local v25    # "zz_1":J
    .end local v27    # "zz_3":J
    .end local v29    # "x_4":J
    .end local v31    # "zz_4":J
    .end local v33    # "zz_2":J
    .end local v35    # "x_5":J
    .end local v37    # "zz_7":J
    .end local v39    # "zz_5":J
    .end local v41    # "x_6":J
    .end local v43    # "zz_6":J
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
    .locals 53
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

    .line 788
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 791
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 793
    .local v5, "c":I
    const/4 v6, 0x6

    .local v6, "i":I
    const/16 v7, 0xe

    .line 796
    .local v7, "j":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 797
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 798
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v15, v14

    or-int/2addr v6, v15

    aput v6, p1, v7

    .line 799
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v15, v14

    aput v15, p1, v7

    .line 800
    long-to-int v5, v11

    .line 802
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_0

    .line 805
    mul-long v9, v1, v1

    .line 806
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 807
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 808
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v14, v13

    and-int/lit8 v5, v14, 0x1

    .line 812
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 813
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 816
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 817
    long-to-int v10, v11

    .line 818
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 819
    ushr-int/lit8 v5, v10, 0x1f

    .line 820
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 823
    aget v6, p0, v9

    move-wide v15, v1

    const/16 v2, 0x20

    .end local v1    # "x_0":J
    .local v15, "x_0":J
    int-to-long v0, v6

    and-long/2addr v0, v3

    .line 824
    .local v0, "x_2":J
    const/4 v6, 0x3

    const/16 v17, 0x20

    aget v2, p1, v6

    move-wide/from16 v18, v3

    int-to-long v3, v2

    and-long v3, v3, v18

    .line 825
    .local v3, "zz_3":J
    const/16 v20, 0x4

    aget v2, p1, v20

    move-wide/from16 v21, v7

    const/4 v8, 0x3

    .end local v7    # "x_1":J
    .local v21, "x_1":J
    int-to-long v6, v2

    and-long v6, v6, v18

    .line 827
    .local v6, "zz_4":J
    mul-long v23, v0, v15

    add-long v13, v13, v23

    .line 828
    long-to-int v2, v13

    .line 829
    .end local v10    # "w":I
    .local v2, "w":I
    shl-int/lit8 v10, v2, 0x1

    or-int/2addr v10, v5

    aput v10, p1, v9

    .line 830
    ushr-int/lit8 v5, v2, 0x1f

    .line 831
    ushr-long v9, v13, v17

    mul-long v23, v0, v21

    add-long v9, v9, v23

    add-long/2addr v3, v9

    .line 832
    ushr-long v9, v3, v17

    add-long/2addr v6, v9

    .line 833
    and-long v3, v3, v18

    .line 836
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v9, v9, v18

    .line 837
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

    .line 838
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

    .line 840
    mul-long v30, v9, v15

    add-long v3, v3, v30

    .line 841
    long-to-int v2, v3

    .line 842
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 843
    ushr-int/lit8 v5, v2, 0x1f

    .line 844
    ushr-long v30, v3, v17

    mul-long v32, v9, v21

    add-long v30, v30, v32

    add-long v6, v6, v30

    .line 845
    ushr-long v30, v6, v17

    mul-long v32, v9, v25

    add-long v30, v30, v32

    add-long v28, v28, v30

    .line 846
    and-long v6, v6, v18

    .line 847
    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .line 848
    and-long v28, v28, v18

    .line 851
    aget v8, p0, v20

    move-wide/from16 v30, v0

    .end local v0    # "zz_6":J
    .local v30, "zz_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 852
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

    .line 853
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
    and-long v35, v35, v18

    .line 855
    mul-long v37, v32, v15

    add-long v6, v6, v37

    .line 856
    long-to-int v2, v6

    .line 857
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v20

    .line 858
    ushr-int/lit8 v5, v2, 0x1f

    .line 859
    ushr-long v37, v6, v17

    mul-long v39, v32, v21

    add-long v37, v37, v39

    add-long v28, v28, v37

    .line 860
    ushr-long v37, v28, v17

    mul-long v39, v32, v25

    add-long v37, v37, v39

    add-long v30, v30, v37

    .line 861
    and-long v28, v28, v18

    .line 862
    ushr-long v37, v30, v17

    mul-long v39, v32, v9

    add-long v37, v37, v39

    add-long v35, v35, v37

    .line 863
    and-long v30, v30, v18

    .line 864
    ushr-long v37, v35, v17

    add-long v0, v0, v37

    .line 865
    and-long v35, v35, v18

    .line 868
    aget v8, p0, v23

    move-wide/from16 v37, v0

    .end local v0    # "zz_8":J
    .local v37, "zz_8":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 869
    .local v0, "x_5":J
    const/16 v20, 0x9

    aget v8, p1, v20

    move-wide/from16 v39, v0

    .end local v0    # "x_5":J
    .local v39, "x_5":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v41, v37, v17

    add-long v0, v0, v41

    .local v0, "zz_9":J
    and-long v37, v37, v18

    .line 870
    const/16 v41, 0xa

    aget v8, p1, v41

    move-wide/from16 v42, v0

    .end local v0    # "zz_9":J
    .local v42, "zz_9":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v44, v42, v17

    add-long v0, v0, v44

    .local v0, "zz_10":J
    and-long v42, v42, v18

    .line 872
    mul-long v44, v39, v15

    move-wide/from16 v46, v0

    .end local v0    # "zz_10":J
    .local v46, "zz_10":J
    add-long v0, v28, v44

    .line 873
    .end local v28    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v2, v0

    .line 874
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v23

    .line 875
    ushr-int/lit8 v5, v2, 0x1f

    .line 876
    ushr-long v28, v0, v17

    mul-long v44, v39, v21

    add-long v28, v28, v44

    add-long v30, v30, v28

    .line 877
    ushr-long v28, v30, v17

    mul-long v44, v39, v25

    add-long v28, v28, v44

    add-long v35, v35, v28

    .line 878
    and-long v28, v30, v18

    .line 879
    .end local v30    # "zz_6":J
    .local v28, "zz_6":J
    ushr-long v30, v35, v17

    mul-long v44, v39, v9

    add-long v30, v30, v44

    add-long v37, v37, v30

    .line 880
    and-long v30, v35, v18

    .line 881
    .end local v35    # "zz_7":J
    .local v30, "zz_7":J
    ushr-long v35, v37, v17

    mul-long v44, v39, v32

    add-long v35, v35, v44

    add-long v42, v42, v35

    .line 882
    and-long v35, v37, v18

    .line 883
    .end local v37    # "zz_8":J
    .local v35, "zz_8":J
    ushr-long v37, v42, v17

    add-long v37, v46, v37

    .line 884
    .end local v46    # "zz_10":J
    .local v37, "zz_10":J
    and-long v42, v42, v18

    .line 887
    aget v8, p0, v27

    move-wide/from16 v44, v0

    .end local v0    # "zz_5":J
    .local v44, "zz_5":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 888
    .local v0, "x_6":J
    const/16 v23, 0xb

    aget v8, p1, v23

    move-wide/from16 v46, v0

    .end local v0    # "x_6":J
    .local v46, "x_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v48, v37, v17

    add-long v0, v0, v48

    .local v0, "zz_11":J
    and-long v37, v37, v18

    .line 889
    const/16 v48, 0xc

    aget v8, p1, v48

    move-wide/from16 v49, v0

    .end local v0    # "zz_11":J
    .local v49, "zz_11":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v51, v49, v17

    add-long v0, v0, v51

    .local v0, "zz_12":J
    and-long v18, v49, v18

    .line 891
    .end local v49    # "zz_11":J
    .local v18, "zz_11":J
    mul-long v49, v46, v15

    move-wide/from16 v51, v0

    .end local v0    # "zz_12":J
    .local v51, "zz_12":J
    add-long v0, v28, v49

    .line 892
    .end local v28    # "zz_6":J
    .local v0, "zz_6":J
    long-to-int v2, v0

    .line 893
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v27

    .line 894
    ushr-int/lit8 v5, v2, 0x1f

    .line 895
    ushr-long v27, v0, v17

    mul-long v49, v46, v21

    add-long v27, v27, v49

    move-wide/from16 v49, v0

    .end local v0    # "zz_6":J
    .local v49, "zz_6":J
    add-long v0, v30, v27

    .line 896
    .end local v30    # "zz_7":J
    .local v0, "zz_7":J
    ushr-long v27, v0, v17

    mul-long v29, v46, v25

    add-long v27, v27, v29

    move-wide/from16 v29, v3

    move v4, v2

    .end local v2    # "w":I
    .end local v3    # "zz_3":J
    .local v4, "w":I
    .local v29, "zz_3":J
    add-long v2, v35, v27

    .line 897
    .end local v35    # "zz_8":J
    .local v2, "zz_8":J
    ushr-long v27, v2, v17

    mul-long v35, v46, v9

    add-long v27, v27, v35

    move/from16 v31, v4

    move v8, v5

    .end local v4    # "w":I
    .end local v5    # "c":I
    .local v8, "c":I
    .local v31, "w":I
    add-long v4, v42, v27

    .line 898
    .end local v42    # "zz_9":J
    .local v4, "zz_9":J
    ushr-long v27, v4, v17

    mul-long v35, v46, v32

    add-long v27, v27, v35

    move-wide/from16 v35, v6

    .end local v6    # "zz_4":J
    .local v35, "zz_4":J
    add-long v6, v37, v27

    .line 899
    .end local v37    # "zz_10":J
    .local v6, "zz_10":J
    ushr-long v27, v6, v17

    mul-long v37, v46, v39

    add-long v27, v27, v37

    move-wide/from16 v37, v9

    move v10, v8

    .end local v8    # "c":I
    .end local v9    # "x_3":J
    .local v10, "c":I
    .local v37, "x_3":J
    add-long v8, v18, v27

    .line 900
    .end local v18    # "zz_11":J
    .local v8, "zz_11":J
    ushr-long v18, v8, v17

    move-wide/from16 v27, v11

    move v12, v10

    .end local v10    # "c":I
    .end local v11    # "zz_1":J
    .local v12, "c":I
    .local v27, "zz_1":J
    add-long v10, v51, v18

    .line 903
    .end local v51    # "zz_12":J
    .local v10, "zz_12":J
    move/from16 v18, v12

    .end local v12    # "c":I
    .local v18, "c":I
    long-to-int v12, v0

    .line 904
    .end local v31    # "w":I
    .local v12, "w":I
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v24

    .line 905
    ushr-int/lit8 v18, v12, 0x1f

    .line 906
    long-to-int v12, v2

    .line 907
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v34

    .line 908
    ushr-int/lit8 v18, v12, 0x1f

    .line 909
    long-to-int v12, v4

    .line 910
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v20

    .line 911
    ushr-int/lit8 v18, v12, 0x1f

    .line 912
    long-to-int v12, v6

    .line 913
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v41

    .line 914
    ushr-int/lit8 v18, v12, 0x1f

    .line 915
    long-to-int v12, v8

    .line 916
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v23

    .line 917
    ushr-int/lit8 v18, v12, 0x1f

    .line 918
    long-to-int v12, v10

    .line 919
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v48

    .line 920
    ushr-int/lit8 v18, v12, 0x1f

    .line 921
    const/16 v19, 0xd

    aget v20, p1, v19

    move-wide/from16 v23, v0

    .end local v0    # "zz_7":J
    .local v23, "zz_7":J
    ushr-long v0, v10, v17

    long-to-int v1, v0

    add-int v20, v20, v1

    .line 922
    .end local v12    # "w":I
    .local v20, "w":I
    shl-int/lit8 v0, v20, 0x1

    or-int v0, v0, v18

    aput v0, p1, v19

    .line 923
    return-void

    .line 802
    .end local v2    # "zz_8":J
    .end local v4    # "zz_9":J
    .end local v6    # "zz_10":J
    .end local v10    # "zz_12":J
    .end local v13    # "zz_2":J
    .end local v15    # "x_0":J
    .end local v18    # "c":I
    .end local v20    # "w":I
    .end local v21    # "x_1":J
    .end local v23    # "zz_7":J
    .end local v25    # "x_2":J
    .end local v27    # "zz_1":J
    .end local v29    # "zz_3":J
    .end local v32    # "x_4":J
    .end local v35    # "zz_4":J
    .end local v37    # "x_3":J
    .end local v39    # "x_5":J
    .end local v44    # "zz_5":J
    .end local v46    # "x_6":J
    .end local v49    # "zz_6":J
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

    .line 1093
    const-wide/16 v0, 0x0

    .line 1094
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

    .line 1095
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1096
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1097
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

    .line 1098
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1099
    shr-long/2addr v0, v2

    .line 1100
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

    .line 1101
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1102
    shr-long/2addr v0, v2

    .line 1103
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

    .line 1104
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1105
    shr-long/2addr v0, v2

    .line 1106
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1107
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1108
    shr-long/2addr v0, v2

    .line 1109
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1110
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1111
    shr-long/2addr v0, v2

    .line 1112
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 1113
    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v0

    aput v4, p4, v3

    .line 1114
    shr-long/2addr v0, v2

    .line 1115
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

    .line 1066
    const-wide/16 v0, 0x0

    .line 1067
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

    .line 1068
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1069
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1070
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1071
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1072
    shr-long/2addr v0, v2

    .line 1073
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1074
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1075
    shr-long/2addr v0, v2

    .line 1076
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1077
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1078
    shr-long/2addr v0, v2

    .line 1079
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1080
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1081
    shr-long/2addr v0, v2

    .line 1082
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1083
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1084
    shr-long/2addr v0, v2

    .line 1085
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 1086
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1087
    shr-long/2addr v0, v2

    .line 1088
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

    .line 1120
    const-wide/16 v0, 0x0

    .line 1121
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

    .line 1122
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1123
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1124
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

    .line 1125
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1126
    shr-long/2addr v0, v2

    .line 1127
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

    .line 1128
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1129
    shr-long/2addr v0, v2

    .line 1130
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

    .line 1131
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1132
    shr-long/2addr v0, v2

    .line 1133
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

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1134
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1135
    shr-long/2addr v0, v2

    .line 1136
    const/4 v3, 0x5

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

    .line 1137
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1138
    shr-long/2addr v0, v2

    .line 1139
    const/4 v3, 0x6

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

    .line 1140
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1141
    shr-long/2addr v0, v2

    .line 1142
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

    .line 1174
    const-wide/16 v0, 0x0

    .line 1175
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

    .line 1176
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1177
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1178
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

    .line 1179
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1180
    shr-long/2addr v0, v2

    .line 1181
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

    .line 1182
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1183
    shr-long/2addr v0, v2

    .line 1184
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

    .line 1185
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1186
    shr-long/2addr v0, v2

    .line 1187
    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1188
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1189
    shr-long/2addr v0, v2

    .line 1190
    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1191
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1192
    shr-long/2addr v0, v2

    .line 1193
    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 1194
    add-int/lit8 v3, p3, 0x6

    long-to-int v4, v0

    aput v4, p2, v3

    .line 1195
    shr-long/2addr v0, v2

    .line 1196
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

    .line 1147
    const-wide/16 v0, 0x0

    .line 1148
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

    .line 1149
    long-to-int v3, v0

    aput v3, p1, v2

    .line 1150
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1151
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1152
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1153
    shr-long/2addr v0, v2

    .line 1154
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1155
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1156
    shr-long/2addr v0, v2

    .line 1157
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1158
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1159
    shr-long/2addr v0, v2

    .line 1160
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1161
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1162
    shr-long/2addr v0, v2

    .line 1163
    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1164
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1165
    shr-long/2addr v0, v2

    .line 1166
    const/4 v3, 0x6

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 1167
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1168
    shr-long/2addr v0, v2

    .line 1169
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

    .line 1201
    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 1202
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 1204
    aget v2, p0, v1

    .line 1205
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1207
    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1202
    .end local v2    # "x_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1210
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

    .line 1215
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1216
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1217
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1218
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1219
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1220
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1221
    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1222
    return-void
.end method
