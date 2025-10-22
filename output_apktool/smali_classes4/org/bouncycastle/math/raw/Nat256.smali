.class public abstract Lorg/bouncycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "Nat256.java"


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

    .line 43
    const-wide/16 v0, 0x0

    .line 44
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

    .line 45
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 46
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 47
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

    .line 48
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 49
    ushr-long/2addr v0, v2

    .line 50
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

    .line 51
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 52
    ushr-long/2addr v0, v2

    .line 53
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

    .line 54
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 55
    ushr-long/2addr v0, v2

    .line 56
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

    .line 57
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 58
    ushr-long/2addr v0, v2

    .line 59
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

    .line 60
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 61
    ushr-long/2addr v0, v2

    .line 62
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 63
    add-int/lit8 v3, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v3

    .line 64
    ushr-long/2addr v0, v2

    .line 65
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 66
    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v0

    aput v4, p4, v3

    .line 67
    ushr-long/2addr v0, v2

    .line 68
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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 33
    long-to-int v4, v0

    aput v4, p2, v3

    .line 34
    ushr-long/2addr v0, v2

    .line 35
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 36
    long-to-int v4, v0

    aput v4, p2, v3

    .line 37
    ushr-long/2addr v0, v2

    .line 38
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

    .line 103
    const-wide/16 v0, 0x0

    .line 104
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

    .line 105
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 106
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 107
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

    .line 108
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 109
    ushr-long/2addr v0, v2

    .line 110
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

    .line 111
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 112
    ushr-long/2addr v0, v2

    .line 113
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

    .line 114
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 115
    ushr-long/2addr v0, v2

    .line 116
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

    .line 117
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 118
    ushr-long/2addr v0, v2

    .line 119
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

    .line 120
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 121
    ushr-long/2addr v0, v2

    .line 122
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

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 123
    add-int/lit8 v3, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v3

    .line 124
    ushr-long/2addr v0, v2

    .line 125
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x7

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 126
    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v0

    aput v4, p4, v3

    .line 127
    ushr-long/2addr v0, v2

    .line 128
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

    .line 73
    const-wide/16 v0, 0x0

    .line 74
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

    .line 75
    long-to-int v3, v0

    aput v3, p2, v2

    .line 76
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 77
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

    .line 78
    long-to-int v4, v0

    aput v4, p2, v3

    .line 79
    ushr-long/2addr v0, v2

    .line 80
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

    .line 81
    long-to-int v4, v0

    aput v4, p2, v3

    .line 82
    ushr-long/2addr v0, v2

    .line 83
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

    .line 84
    long-to-int v4, v0

    aput v4, p2, v3

    .line 85
    ushr-long/2addr v0, v2

    .line 86
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

    .line 87
    long-to-int v4, v0

    aput v4, p2, v3

    .line 88
    ushr-long/2addr v0, v2

    .line 89
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

    .line 90
    long-to-int v4, v0

    aput v4, p2, v3

    .line 91
    ushr-long/2addr v0, v2

    .line 92
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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 93
    long-to-int v4, v0

    aput v4, p2, v3

    .line 94
    ushr-long/2addr v0, v2

    .line 95
    const/4 v3, 0x7

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

    .line 96
    long-to-int v4, v0

    aput v4, p2, v3

    .line 97
    ushr-long/2addr v0, v2

    .line 98
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

    .line 193
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 194
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

    .line 195
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 196
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 197
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

    .line 198
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 199
    ushr-long/2addr v0, v4

    .line 200
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

    .line 201
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 202
    ushr-long/2addr v0, v4

    .line 203
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

    .line 204
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 205
    ushr-long/2addr v0, v4

    .line 206
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

    .line 207
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 208
    ushr-long/2addr v0, v4

    .line 209
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

    .line 210
    add-int/lit8 v5, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v5

    .line 211
    ushr-long/2addr v0, v4

    .line 212
    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 213
    add-int/lit8 v5, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v5

    .line 214
    ushr-long/2addr v0, v4

    .line 215
    add-int/lit8 v5, p1, 0x7

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x7

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 216
    add-int/lit8 v2, p3, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 217
    ushr-long/2addr v0, v4

    .line 218
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

    .line 133
    const-wide/16 v0, 0x0

    .line 134
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

    .line 135
    long-to-int v3, v0

    aput v3, p1, v2

    .line 136
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 137
    const/4 v3, 0x1

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
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 141
    long-to-int v4, v0

    aput v4, p1, v3

    .line 142
    ushr-long/2addr v0, v2

    .line 143
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 144
    long-to-int v4, v0

    aput v4, p1, v3

    .line 145
    ushr-long/2addr v0, v2

    .line 146
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 147
    long-to-int v4, v0

    aput v4, p1, v3

    .line 148
    ushr-long/2addr v0, v2

    .line 149
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 150
    long-to-int v4, v0

    aput v4, p1, v3

    .line 151
    ushr-long/2addr v0, v2

    .line 152
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 153
    long-to-int v4, v0

    aput v4, p1, v3

    .line 154
    ushr-long/2addr v0, v2

    .line 155
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 156
    long-to-int v4, v0

    aput v4, p1, v3

    .line 157
    ushr-long/2addr v0, v2

    .line 158
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

    .line 163
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 164
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

    .line 165
    long-to-int v5, v0

    aput v5, p1, v4

    .line 166
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 167
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 168
    long-to-int v6, v0

    aput v6, p1, v5

    .line 169
    ushr-long/2addr v0, v4

    .line 170
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 171
    long-to-int v6, v0

    aput v6, p1, v5

    .line 172
    ushr-long/2addr v0, v4

    .line 173
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 174
    long-to-int v6, v0

    aput v6, p1, v5

    .line 175
    ushr-long/2addr v0, v4

    .line 176
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 177
    long-to-int v6, v0

    aput v6, p1, v5

    .line 178
    ushr-long/2addr v0, v4

    .line 179
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 180
    long-to-int v6, v0

    aput v6, p1, v5

    .line 181
    ushr-long/2addr v0, v4

    .line 182
    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 183
    long-to-int v6, v0

    aput v6, p1, v5

    .line 184
    ushr-long/2addr v0, v4

    .line 185
    const/4 v5, 0x7

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v2, v8

    add-long/2addr v6, v2

    add-long/2addr v0, v6

    .line 186
    long-to-int v2, v0

    aput v2, p1, v5

    .line 187
    ushr-long/2addr v0, v4

    .line 188
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

    .line 223
    const-wide/16 v0, 0x0

    .line 224
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

    .line 225
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 226
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 227
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 228
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

    .line 229
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 230
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 231
    ushr-long/2addr v0, v2

    .line 232
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

    .line 233
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 234
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 235
    ushr-long/2addr v0, v2

    .line 236
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

    .line 237
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 238
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 239
    ushr-long/2addr v0, v2

    .line 240
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

    .line 241
    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    .line 242
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 243
    ushr-long/2addr v0, v2

    .line 244
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

    .line 245
    add-int/lit8 v3, p1, 0x5

    long-to-int v6, v0

    aput v6, p0, v3

    .line 246
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 247
    ushr-long/2addr v0, v2

    .line 248
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 249
    add-int/lit8 v3, p1, 0x6

    long-to-int v6, v0

    aput v6, p0, v3

    .line 250
    add-int/lit8 v3, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v3

    .line 251
    ushr-long/2addr v0, v2

    .line 252
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 253
    add-int/lit8 v3, p1, 0x7

    long-to-int v4, v0

    aput v4, p0, v3

    .line 254
    add-int/lit8 v3, p3, 0x7

    long-to-int v4, v0

    aput v4, p2, v3

    .line 255
    ushr-long/2addr v0, v2

    .line 256
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

    .line 273
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 274
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 275
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 276
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 277
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 278
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 279
    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    aget v1, p0, v1

    aput v1, p2, v0

    .line 280
    add-int/lit8 v0, p3, 0x7

    add-int/lit8 v1, p1, 0x7

    aget v1, p0, v1

    aput v1, p2, v0

    .line 281
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

    .line 261
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 262
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 263
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 264
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 265
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 266
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 267
    const/4 v0, 0x6

    aget v1, p0, v0

    aput v1, p1, v0

    .line 268
    const/4 v0, 0x7

    aget v1, p0, v0

    aput v1, p1, v0

    .line 269
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

    .line 293
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 294
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 295
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 296
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 297
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

    .line 285
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 286
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 287
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 288
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 289
    return-void
.end method

.method public static create()[I
    .locals 1

    .line 301
    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    .line 306
    const/4 v0, 0x4

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .line 311
    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    .line 316
    const/16 v0, 0x8

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

    .line 321
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat256;->gte([II[II)Z

    move-result v0

    .line 322
    .local v0, "pos":Z
    if-eqz v0, :cond_0

    .line 324
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    goto :goto_0

    .line 328
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
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 330
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

    .line 335
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 337
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 339
    const/4 v1, 0x0

    return v1

    .line 335
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 342
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

    .line 347
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 349
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 351
    const/4 v1, 0x0

    return v1

    .line 347
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 354
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

    .line 359
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 364
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 367
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 369
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 370
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 361
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

    .line 377
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 382
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 385
    .local v0, "z":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 387
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 388
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 379
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

    .line 395
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 397
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 399
    :cond_0
    and-int/lit16 v1, p1, 0xff

    if-eq v1, p1, :cond_1

    .line 401
    return v0

    .line 403
    :cond_1
    ushr-int/lit8 v0, p1, 0x5

    .line 404
    .local v0, "w":I
    and-int/lit8 v1, p1, 0x1f

    .line 405
    .local v1, "b":I
    aget v2, p0, v0

    ushr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x1

    return v2
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

    .line 424
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 426
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 427
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 428
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 429
    const/4 v1, 0x0

    return v1

    .line 430
    :cond_0
    if-le v2, v3, :cond_1

    .line 431
    return v1

    .line 424
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 433
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

    .line 410
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 412
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 413
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 414
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 415
    const/4 v1, 0x0

    return v1

    .line 416
    :cond_0
    if-le v2, v3, :cond_1

    .line 417
    return v1

    .line 410
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 419
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

    .line 438
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 440
    return v0

    .line 442
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    .line 444
    aget v3, p0, v1

    if-eqz v3, :cond_1

    .line 446
    return v0

    .line 442
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
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

    .line 454
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 456
    return v0

    .line 458
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 460
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 462
    return v0

    .line 458
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
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

    .line 470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 472
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 474
    const/4 v1, 0x0

    return v1

    .line 470
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
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

    .line 482
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 484
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 486
    const/4 v1, 0x0

    return v1

    .line 482
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static mul([II[II[II)V
    .locals 29
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

    .line 565
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 566
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 567
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 568
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 569
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 570
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 571
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 572
    .local v14, "y_6":J
    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v2

    aget v2, p2, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 575
    .local v2, "y_7":J
    const-wide/16 v19, 0x0

    .local v19, "c":J
    add-int/lit8 v16, p1, 0x0

    move-wide/from16 v21, v0

    .end local v0    # "y_0":J
    .local v21, "y_0":J
    aget v0, p0, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    .line 576
    .local v0, "x_0":J
    mul-long v23, v0, v21

    move-wide/from16 v25, v0

    .end local v0    # "x_0":J
    .local v25, "x_0":J
    add-long v0, v19, v23

    .line 577
    .end local v19    # "c":J
    .local v0, "c":J
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v19, v2

    .end local v2    # "y_7":J
    .local v19, "y_7":J
    long-to-int v2, v0

    aput v2, p4, v16

    .line 578
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 579
    mul-long v23, v25, v4

    add-long v0, v0, v23

    .line 580
    add-int/lit8 v3, p5, 0x1

    const/16 v16, 0x20

    long-to-int v2, v0

    aput v2, p4, v3

    .line 581
    ushr-long v0, v0, v16

    .line 582
    mul-long v2, v25, v6

    add-long/2addr v0, v2

    .line 583
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 584
    ushr-long v0, v0, v16

    .line 585
    mul-long v2, v25, v8

    add-long/2addr v0, v2

    .line 586
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 587
    ushr-long v0, v0, v16

    .line 588
    mul-long v2, v25, v10

    add-long/2addr v0, v2

    .line 589
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 590
    ushr-long v0, v0, v16

    .line 591
    mul-long v2, v25, v12

    add-long/2addr v0, v2

    .line 592
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 593
    ushr-long v0, v0, v16

    .line 594
    mul-long v2, v25, v14

    add-long/2addr v0, v2

    .line 595
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 596
    ushr-long v0, v0, v16

    .line 597
    mul-long v2, v25, v19

    add-long/2addr v0, v2

    .line 598
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 599
    ushr-long v0, v0, v16

    .line 600
    add-int/lit8 v2, p5, 0x8

    long-to-int v3, v0

    aput v3, p4, v2

    .line 603
    .end local v0    # "c":J
    .end local v25    # "x_0":J
    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 605
    add-int/lit8 v0, v0, 0x1

    .line 606
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v23, p1, v1

    move/from16 p5, v0

    .end local v0    # "zzOff":I
    .restart local p5    # "zzOff":I
    aget v0, p0, v23

    move/from16 v23, v1

    .end local v1    # "i":I
    .local v23, "i":I
    int-to-long v0, v0

    and-long v0, v0, v17

    .line 607
    .local v0, "x_i":J
    mul-long v24, v0, v21

    add-int/lit8 v26, p5, 0x0

    move-wide/from16 v27, v0

    .end local v0    # "x_i":J
    .local v27, "x_i":J
    aget v0, p4, v26

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v24, v24, v0

    add-long v2, v2, v24

    .line 608
    add-int/lit8 v0, p5, 0x0

    long-to-int v1, v2

    aput v1, p4, v0

    .line 609
    ushr-long v0, v2, v16

    .line 610
    .end local v2    # "c":J
    .local v0, "c":J
    mul-long v2, v27, v4

    add-int/lit8 v24, p5, 0x1

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .local v25, "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 611
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 612
    ushr-long v0, v0, v16

    .line 613
    mul-long v2, v27, v6

    add-int/lit8 v24, p5, 0x2

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 614
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 615
    ushr-long v0, v0, v16

    .line 616
    mul-long v2, v27, v8

    add-int/lit8 v24, p5, 0x3

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 617
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 618
    ushr-long v0, v0, v16

    .line 619
    mul-long v2, v27, v10

    add-int/lit8 v24, p5, 0x4

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 620
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 621
    ushr-long v0, v0, v16

    .line 622
    mul-long v2, v27, v12

    add-int/lit8 v24, p5, 0x5

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 623
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 624
    ushr-long v0, v0, v16

    .line 625
    mul-long v2, v27, v14

    add-int/lit8 v24, p5, 0x6

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 626
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 627
    ushr-long v0, v0, v16

    .line 628
    mul-long v2, v27, v19

    add-int/lit8 v24, p5, 0x7

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 629
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 630
    ushr-long v0, v0, v16

    .line 631
    add-int/lit8 v2, p5, 0x8

    long-to-int v3, v0

    aput v3, p4, v2

    .line 603
    .end local v0    # "c":J
    .end local v27    # "x_i":J
    add-int/lit8 v1, v23, 0x1

    move/from16 v0, p5

    .end local v23    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    .line 633
    .end local v1    # "i":I
    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 35
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

    .line 494
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 495
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 496
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 497
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 498
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    move-wide/from16 v17, v1

    const/16 v16, 0x0

    .end local v1    # "y_0":J
    .local v17, "y_0":J
    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 499
    .local v0, "y_4":J
    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    const/4 v4, 0x5

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 500
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

    .line 501
    .local v5, "y_6":J
    const/4 v4, 0x7

    aget v7, p1, v4

    move-wide/from16 v25, v5

    const/4 v6, 0x7

    .end local v5    # "y_6":J
    .local v25, "y_6":J
    int-to-long v4, v7

    and-long v4, v4, v19

    .line 504
    .local v4, "y_7":J
    const-wide/16 v27, 0x0

    .local v27, "c":J
    aget v7, p0, v16

    const/16 v29, 0x7

    int-to-long v6, v7

    and-long v6, v6, v19

    .line 505
    .local v6, "x_0":J
    mul-long v30, v6, v17

    move-wide/from16 v33, v9

    const/16 v32, 0x2

    .end local v9    # "y_2":J
    .local v33, "y_2":J
    add-long v8, v27, v30

    .line 506
    .end local v27    # "c":J
    .local v8, "c":J
    long-to-int v10, v8

    aput v10, p2, v16

    .line 507
    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    .line 508
    mul-long v27, v6, v23

    add-long v8, v8, v27

    .line 509
    const/16 v16, 0x20

    long-to-int v10, v8

    aput v10, p2, v22

    .line 510
    ushr-long v8, v8, v16

    .line 511
    mul-long v27, v6, v33

    add-long v8, v8, v27

    .line 512
    long-to-int v10, v8

    aput v10, p2, v32

    .line 513
    ushr-long v8, v8, v16

    .line 514
    mul-long v27, v6, v12

    add-long v8, v8, v27

    .line 515
    long-to-int v10, v8

    aput v10, p2, v11

    .line 516
    ushr-long v8, v8, v16

    .line 517
    mul-long v10, v6, v0

    add-long/2addr v8, v10

    .line 518
    long-to-int v10, v8

    aput v10, p2, v14

    .line 519
    ushr-long v8, v8, v16

    .line 520
    mul-long v10, v6, v2

    add-long/2addr v8, v10

    .line 521
    long-to-int v10, v8

    aput v10, p2, v21

    .line 522
    ushr-long v8, v8, v16

    .line 523
    mul-long v10, v6, v25

    add-long/2addr v8, v10

    .line 524
    long-to-int v10, v8

    aput v10, p2, v15

    .line 525
    ushr-long v8, v8, v16

    .line 526
    mul-long v10, v6, v4

    add-long/2addr v8, v10

    .line 527
    long-to-int v10, v8

    aput v10, p2, v29

    .line 528
    ushr-long v8, v8, v16

    .line 529
    long-to-int v10, v8

    const/16 v11, 0x8

    aput v10, p2, v11

    .line 532
    .end local v6    # "x_0":J
    .end local v8    # "c":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 534
    const-wide/16 v7, 0x0

    .local v7, "c":J
    aget v9, p0, v6

    int-to-long v9, v9

    and-long v9, v9, v19

    .line 535
    .local v9, "x_i":J
    mul-long v14, v9, v17

    add-int/lit8 v21, v6, 0x0

    aget v11, p2, v21

    move-wide/from16 v27, v0

    .end local v0    # "y_4":J
    .local v27, "y_4":J
    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long/2addr v7, v14

    .line 536
    add-int/lit8 v0, v6, 0x0

    long-to-int v1, v7

    aput v1, p2, v0

    .line 537
    ushr-long v0, v7, v16

    .line 538
    .end local v7    # "c":J
    .local v0, "c":J
    mul-long v7, v9, v23

    add-int/lit8 v11, v6, 0x1

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 539
    add-int/lit8 v7, v6, 0x1

    long-to-int v8, v0

    aput v8, p2, v7

    .line 540
    ushr-long v0, v0, v16

    .line 541
    mul-long v7, v9, v33

    add-int/lit8 v11, v6, 0x2

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 542
    add-int/lit8 v7, v6, 0x2

    long-to-int v8, v0

    aput v8, p2, v7

    .line 543
    ushr-long v0, v0, v16

    .line 544
    mul-long v7, v9, v12

    add-int/lit8 v11, v6, 0x3

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 545
    add-int/lit8 v7, v6, 0x3

    long-to-int v8, v0

    aput v8, p2, v7

    .line 546
    ushr-long v0, v0, v16

    .line 547
    mul-long v7, v9, v27

    add-int/lit8 v11, v6, 0x4

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 548
    add-int/lit8 v7, v6, 0x4

    long-to-int v8, v0

    aput v8, p2, v7

    .line 549
    ushr-long v0, v0, v16

    .line 550
    mul-long v7, v9, v2

    add-int/lit8 v11, v6, 0x5

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 551
    add-int/lit8 v7, v6, 0x5

    long-to-int v8, v0

    aput v8, p2, v7

    .line 552
    ushr-long v0, v0, v16

    .line 553
    mul-long v7, v9, v25

    add-int/lit8 v11, v6, 0x6

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 554
    add-int/lit8 v7, v6, 0x6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 555
    ushr-long v0, v0, v16

    .line 556
    mul-long v7, v9, v4

    add-int/lit8 v11, v6, 0x7

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 557
    add-int/lit8 v7, v6, 0x7

    long-to-int v8, v0

    aput v8, p2, v7

    .line 558
    ushr-long v0, v0, v16

    .line 559
    add-int/lit8 v7, v6, 0x8

    long-to-int v8, v0

    aput v8, p2, v7

    .line 532
    .end local v0    # "c":J
    .end local v9    # "x_i":J
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v0, v27

    const/16 v11, 0x8

    goto/16 :goto_0

    .line 561
    .end local v6    # "i":I
    .end local v27    # "y_4":J
    .local v0, "y_4":J
    :cond_0
    return-void
.end method

.method public static mul128([I[I[I)V
    .locals 35
    .param p0, "x"    # [I
    .param p1, "y128"    # [I
    .param p2, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y128",
            "zz"
        }
    .end annotation

    .line 637
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 638
    .local v1, "x_0":J
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 639
    .local v6, "x_1":J
    const/4 v8, 0x2

    aget v9, p0, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 640
    .local v9, "x_2":J
    const/4 v11, 0x3

    aget v12, p0, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 641
    .local v12, "x_3":J
    const/4 v14, 0x4

    aget v15, p0, v14

    move-wide/from16 v17, v1

    const/16 v16, 0x0

    .end local v1    # "x_0":J
    .local v17, "x_0":J
    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 642
    .local v0, "x_4":J
    const/4 v2, 0x5

    aget v15, p0, v2

    move-wide/from16 v19, v3

    const/4 v4, 0x5

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 643
    .local v2, "x_5":J
    const/4 v15, 0x6

    const/16 v21, 0x5

    aget v4, p0, v15

    move-wide/from16 v23, v6

    const/16 v22, 0x1

    .end local v6    # "x_1":J
    .local v23, "x_1":J
    int-to-long v5, v4

    and-long v5, v5, v19

    .line 644
    .local v5, "x_6":J
    const/4 v4, 0x7

    aget v7, p0, v4

    move-wide/from16 v25, v5

    const/4 v6, 0x7

    .end local v5    # "x_6":J
    .local v25, "x_6":J
    int-to-long v4, v7

    and-long v4, v4, v19

    .line 647
    .local v4, "x_7":J
    const-wide/16 v27, 0x0

    .local v27, "c":J
    aget v7, p1, v16

    const/16 v29, 0x7

    int-to-long v6, v7

    and-long v6, v6, v19

    .line 648
    .local v6, "y_0":J
    mul-long v30, v6, v17

    move-wide/from16 v33, v9

    const/16 v32, 0x2

    .end local v9    # "x_2":J
    .local v33, "x_2":J
    add-long v8, v27, v30

    .line 649
    .end local v27    # "c":J
    .local v8, "c":J
    long-to-int v10, v8

    aput v10, p2, v16

    .line 650
    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    .line 651
    mul-long v27, v6, v23

    add-long v8, v8, v27

    .line 652
    const/16 v16, 0x20

    long-to-int v10, v8

    aput v10, p2, v22

    .line 653
    ushr-long v8, v8, v16

    .line 654
    mul-long v27, v6, v33

    add-long v8, v8, v27

    .line 655
    long-to-int v10, v8

    aput v10, p2, v32

    .line 656
    ushr-long v8, v8, v16

    .line 657
    mul-long v27, v6, v12

    add-long v8, v8, v27

    .line 658
    long-to-int v10, v8

    aput v10, p2, v11

    .line 659
    ushr-long v8, v8, v16

    .line 660
    mul-long v10, v6, v0

    add-long/2addr v8, v10

    .line 661
    long-to-int v10, v8

    aput v10, p2, v14

    .line 662
    ushr-long v8, v8, v16

    .line 663
    mul-long v10, v6, v2

    add-long/2addr v8, v10

    .line 664
    long-to-int v10, v8

    aput v10, p2, v21

    .line 665
    ushr-long v8, v8, v16

    .line 666
    mul-long v10, v6, v25

    add-long/2addr v8, v10

    .line 667
    long-to-int v10, v8

    aput v10, p2, v15

    .line 668
    ushr-long v8, v8, v16

    .line 669
    mul-long v10, v6, v4

    add-long/2addr v8, v10

    .line 670
    long-to-int v10, v8

    aput v10, p2, v29

    .line 671
    ushr-long v8, v8, v16

    .line 672
    const/16 v10, 0x8

    long-to-int v11, v8

    aput v11, p2, v10

    .line 675
    .end local v6    # "y_0":J
    .end local v8    # "c":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v14, :cond_0

    .line 677
    const-wide/16 v7, 0x0

    .local v7, "c":J
    aget v9, p1, v6

    int-to-long v9, v9

    and-long v9, v9, v19

    .line 678
    .local v9, "y_i":J
    mul-long v21, v9, v17

    add-int/lit8 v11, v6, 0x0

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long v21, v21, v14

    add-long v7, v7, v21

    .line 679
    add-int/lit8 v11, v6, 0x0

    long-to-int v14, v7

    aput v14, p2, v11

    .line 680
    ushr-long v7, v7, v16

    .line 681
    mul-long v14, v9, v23

    add-int/lit8 v11, v6, 0x1

    aget v11, p2, v11

    move-wide/from16 v21, v0

    .end local v0    # "x_4":J
    .local v21, "x_4":J
    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long/2addr v7, v14

    .line 682
    add-int/lit8 v0, v6, 0x1

    long-to-int v1, v7

    aput v1, p2, v0

    .line 683
    ushr-long v0, v7, v16

    .line 684
    .end local v7    # "c":J
    .local v0, "c":J
    mul-long v7, v9, v33

    add-int/lit8 v11, v6, 0x2

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 685
    add-int/lit8 v7, v6, 0x2

    long-to-int v8, v0

    aput v8, p2, v7

    .line 686
    ushr-long v0, v0, v16

    .line 687
    mul-long v7, v9, v12

    add-int/lit8 v11, v6, 0x3

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 688
    add-int/lit8 v7, v6, 0x3

    long-to-int v8, v0

    aput v8, p2, v7

    .line 689
    ushr-long v0, v0, v16

    .line 690
    mul-long v7, v9, v21

    add-int/lit8 v11, v6, 0x4

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 691
    add-int/lit8 v7, v6, 0x4

    long-to-int v8, v0

    aput v8, p2, v7

    .line 692
    ushr-long v0, v0, v16

    .line 693
    mul-long v7, v9, v2

    add-int/lit8 v11, v6, 0x5

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 694
    add-int/lit8 v7, v6, 0x5

    long-to-int v8, v0

    aput v8, p2, v7

    .line 695
    ushr-long v0, v0, v16

    .line 696
    mul-long v7, v9, v25

    add-int/lit8 v11, v6, 0x6

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 697
    add-int/lit8 v7, v6, 0x6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 698
    ushr-long v0, v0, v16

    .line 699
    mul-long v7, v9, v4

    add-int/lit8 v11, v6, 0x7

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v7, v14

    add-long/2addr v0, v7

    .line 700
    add-int/lit8 v7, v6, 0x7

    long-to-int v8, v0

    aput v8, p2, v7

    .line 701
    ushr-long v0, v0, v16

    .line 702
    add-int/lit8 v7, v6, 0x8

    long-to-int v8, v0

    aput v8, p2, v7

    .line 675
    .end local v0    # "c":J
    .end local v9    # "y_i":J
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v0, v21

    const/4 v14, 0x4

    goto/16 :goto_0

    .line 704
    .end local v6    # "i":I
    .end local v21    # "x_4":J
    .local v0, "x_4":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 30
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

    .line 805
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 806
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 807
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 808
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 809
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 810
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 811
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 812
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 813
    ushr-long/2addr v0, v9

    .line 814
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 815
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

    .line 816
    add-int/lit8 v5, p6, 0x2

    long-to-int v6, v0

    aput v6, p5, v5

    .line 817
    ushr-long/2addr v0, v9

    .line 818
    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    int-to-long v5, v5

    and-long v5, v5, v17

    .line 819
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

    .line 820
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x3

    long-to-int v14, v0

    aput v14, p5, v9

    .line 821
    ushr-long v0, v0, v19

    .line 822
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v14, v9

    and-long v14, v14, v17

    .line 823
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

    .line 824
    .end local v22    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x4

    long-to-int v2, v0

    aput v2, p5, v9

    .line 825
    ushr-long v0, v0, v19

    .line 826
    add-int/lit8 v2, p2, 0x5

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 827
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

    .line 828
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x5

    long-to-int v9, v0

    aput v9, p5, v2

    .line 829
    ushr-long v0, v0, v19

    .line 830
    add-int/lit8 v2, p2, 0x6

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 831
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

    .line 832
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x6

    long-to-int v9, v0

    aput v9, p5, v2

    .line 833
    ushr-long v0, v0, v19

    .line 834
    add-int/lit8 v2, p2, 0x7

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 835
    .local v0, "x7":J
    mul-long v22, v3, v0

    add-long v22, v22, v26

    add-int/lit8 v2, p4, 0x7

    aget v2, p3, v2

    move-wide/from16 v28, v0

    .end local v0    # "x7":J
    .local v28, "x7":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long v22, v22, v0

    add-long v0, v20, v22

    .line 836
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x7

    long-to-int v9, v0

    aput v9, p5, v2

    .line 837
    ushr-long v0, v0, v19

    .line 838
    add-long v0, v0, v28

    .line 839
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

    .line 937
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 938
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 939
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 940
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 941
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 942
    ushr-long v12, p1, v11

    .line 943
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

    .line 944
    add-int/lit8 v7, v1, 0x1

    long-to-int v8, v2

    aput v8, v0, v7

    .line 945
    ushr-long/2addr v2, v11

    .line 946
    add-int/lit8 v7, v1, 0x2

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v7, v12

    add-long/2addr v2, v7

    .line 947
    add-int/lit8 v7, v1, 0x2

    long-to-int v8, v2

    aput v8, v0, v7

    .line 948
    ushr-long/2addr v2, v11

    .line 949
    add-int/lit8 v7, v1, 0x3

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v2, v7

    .line 950
    add-int/lit8 v7, v1, 0x3

    long-to-int v8, v2

    aput v8, v0, v7

    .line 951
    ushr-long/2addr v2, v11

    .line 952
    const-wide/16 v7, 0x0

    cmp-long v11, v2, v7

    if-nez v11, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/16 v7, 0x8

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

    .line 960
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 961
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 962
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 963
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 964
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 965
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 966
    ushr-long/2addr v0, v8

    .line 967
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 968
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 969
    ushr-long/2addr v0, v8

    .line 970
    const-wide/16 v4, 0x0

    cmp-long v8, v0, v4

    if-nez v8, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static mulAddTo([II[II[II)I
    .locals 36
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

    .line 755
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 756
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 757
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 758
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 759
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 760
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 761
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 762
    .local v14, "y_6":J
    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v2

    aget v2, p2, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 764
    .local v2, "y_7":J
    const-wide/16 v19, 0x0

    .line 765
    .local v19, "zc":J
    const/16 v16, 0x0

    move-wide/from16 v21, v2

    move/from16 v33, v16

    move/from16 v16, p5

    move-wide/from16 v34, v0

    move/from16 v0, v33

    move-wide/from16 v1, v19

    move-wide/from16 v19, v34

    .end local v2    # "y_7":J
    .end local p5    # "zzOff":I
    .local v0, "i":I
    .local v1, "zc":J
    .local v16, "zzOff":I
    .local v19, "y_0":J
    .local v21, "y_7":J
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    .line 767
    const-wide/16 v23, 0x0

    .local v23, "c":J
    add-int v3, p1, v0

    aget v3, p0, v3

    move-wide/from16 v25, v4

    .end local v4    # "y_1":J
    .local v25, "y_1":J
    int-to-long v3, v3

    and-long v3, v3, v17

    .line 768
    .local v3, "x_i":J
    mul-long v27, v3, v19

    add-int/lit8 v5, v16, 0x0

    aget v5, p4, v5

    move-wide/from16 v29, v3

    .end local v3    # "x_i":J
    .local v29, "x_i":J
    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v27, v27, v3

    add-long v3, v23, v27

    .line 769
    .end local v23    # "c":J
    .local v3, "c":J
    add-int/lit8 v5, v16, 0x0

    move/from16 v23, v0

    .end local v0    # "i":I
    .local v23, "i":I
    long-to-int v0, v3

    aput v0, p4, v5

    .line 770
    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    .line 771
    mul-long v27, v29, v25

    add-int/lit8 v5, v16, 0x1

    aget v5, p4, v5

    move-wide/from16 v31, v1

    const/16 p5, 0x20

    .end local v1    # "zc":J
    .local v31, "zc":J
    int-to-long v0, v5

    and-long v0, v0, v17

    add-long v27, v27, v0

    add-long v3, v3, v27

    .line 772
    add-int/lit8 v0, v16, 0x1

    long-to-int v1, v3

    aput v1, p4, v0

    .line 773
    ushr-long v0, v3, p5

    .line 774
    .end local v3    # "c":J
    .local v0, "c":J
    mul-long v3, v29, v6

    add-int/lit8 v2, v16, 0x2

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .local v27, "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 775
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 776
    ushr-long v0, v0, p5

    .line 777
    mul-long v3, v29, v8

    add-int/lit8 v2, v16, 0x3

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 778
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 779
    ushr-long v0, v0, p5

    .line 780
    mul-long v3, v29, v10

    add-int/lit8 v2, v16, 0x4

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 781
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 782
    ushr-long v0, v0, p5

    .line 783
    mul-long v3, v29, v12

    add-int/lit8 v2, v16, 0x5

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 784
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 785
    ushr-long v0, v0, p5

    .line 786
    mul-long v3, v29, v14

    add-int/lit8 v2, v16, 0x6

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 787
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 788
    ushr-long v0, v0, p5

    .line 789
    mul-long v3, v29, v21

    add-int/lit8 v2, v16, 0x7

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 790
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 791
    ushr-long v0, v0, p5

    .line 793
    add-int/lit8 v2, v16, 0x8

    aget v2, p4, v2

    int-to-long v2, v2

    and-long v2, v2, v17

    add-long/2addr v2, v0

    add-long v2, v31, v2

    .line 794
    .end local v31    # "zc":J
    .local v2, "zc":J
    add-int/lit8 v4, v16, 0x8

    long-to-int v5, v2

    aput v5, p4, v4

    .line 795
    ushr-long v2, v2, p5

    .line 796
    nop

    .end local v0    # "c":J
    .end local v29    # "x_i":J
    add-int/lit8 v16, v16, 0x1

    .line 765
    add-int/lit8 v0, v23, 0x1

    move-wide v1, v2

    move-wide/from16 v4, v25

    .end local v23    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .end local v2    # "zc":J
    .end local v25    # "y_1":J
    .restart local v1    # "zc":J
    .restart local v4    # "y_1":J
    :cond_0
    move/from16 v23, v0

    move-wide/from16 v31, v1

    .line 798
    .end local v0    # "i":I
    .end local v1    # "zc":J
    .restart local v31    # "zc":J
    move-wide/from16 v2, v31

    .end local v31    # "zc":J
    .restart local v2    # "zc":J
    long-to-int v0, v2

    return v0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 35
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

    .line 708
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 709
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 710
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 711
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 712
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 713
    .local v10, "y_4":J
    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 714
    .local v12, "y_5":J
    const/4 v14, 0x6

    aget v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 715
    .local v14, "y_6":J
    const/16 v16, 0x7

    move-wide/from16 v17, v2

    aget v2, p1, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 717
    .local v2, "y_7":J
    const-wide/16 v19, 0x0

    .line 718
    .local v19, "zc":J
    const/16 v16, 0x0

    move-wide/from16 v21, v0

    move/from16 v0, v16

    move-wide/from16 v33, v19

    move-wide/from16 v19, v2

    move-wide/from16 v1, v33

    .end local v2    # "y_7":J
    .local v0, "i":I
    .local v1, "zc":J
    .local v19, "y_7":J
    .local v21, "y_0":J
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    .line 720
    const-wide/16 v23, 0x0

    .local v23, "c":J
    aget v3, p0, v0

    move-wide/from16 v25, v4

    .end local v4    # "y_1":J
    .local v25, "y_1":J
    int-to-long v3, v3

    and-long v3, v3, v17

    .line 721
    .local v3, "x_i":J
    mul-long v27, v3, v21

    add-int/lit8 v5, v0, 0x0

    aget v5, p2, v5

    move-wide/from16 v29, v3

    .end local v3    # "x_i":J
    .local v29, "x_i":J
    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v27, v27, v3

    add-long v3, v23, v27

    .line 722
    .end local v23    # "c":J
    .local v3, "c":J
    add-int/lit8 v5, v0, 0x0

    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    long-to-int v0, v3

    aput v0, p2, v5

    .line 723
    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    .line 724
    mul-long v23, v29, v25

    add-int/lit8 v5, v16, 0x1

    aget v5, p2, v5

    move-wide/from16 v27, v1

    const/16 v2, 0x20

    .end local v1    # "zc":J
    .local v27, "zc":J
    int-to-long v0, v5

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v3, v3, v23

    .line 725
    add-int/lit8 v0, v16, 0x1

    long-to-int v1, v3

    aput v1, p2, v0

    .line 726
    ushr-long v0, v3, v2

    .line 727
    .end local v3    # "c":J
    .local v0, "c":J
    mul-long v3, v29, v6

    add-int/lit8 v5, v16, 0x2

    aget v5, p2, v5

    move-wide/from16 v31, v3

    const/16 v23, 0x20

    int-to-long v2, v5

    and-long v2, v2, v17

    add-long v2, v31, v2

    add-long/2addr v0, v2

    .line 728
    add-int/lit8 v2, v16, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 729
    ushr-long v0, v0, v23

    .line 730
    mul-long v3, v29, v8

    add-int/lit8 v2, v16, 0x3

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .local v31, "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 731
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 732
    ushr-long v0, v0, v23

    .line 733
    mul-long v3, v29, v10

    add-int/lit8 v2, v16, 0x4

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .restart local v31    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 734
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 735
    ushr-long v0, v0, v23

    .line 736
    mul-long v3, v29, v12

    add-int/lit8 v2, v16, 0x5

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .restart local v31    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 737
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 738
    ushr-long v0, v0, v23

    .line 739
    mul-long v3, v29, v14

    add-int/lit8 v2, v16, 0x6

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .restart local v31    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 740
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 741
    ushr-long v0, v0, v23

    .line 742
    mul-long v3, v29, v19

    add-int/lit8 v2, v16, 0x7

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .restart local v31    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 743
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 744
    ushr-long v0, v0, v23

    .line 746
    add-int/lit8 v2, v16, 0x8

    aget v2, p2, v2

    int-to-long v2, v2

    and-long v2, v2, v17

    add-long/2addr v2, v0

    add-long v2, v27, v2

    .line 747
    .end local v27    # "zc":J
    .local v2, "zc":J
    add-int/lit8 v4, v16, 0x8

    long-to-int v5, v2

    aput v5, p2, v4

    .line 748
    ushr-long v1, v2, v23

    .line 718
    .end local v0    # "c":J
    .end local v2    # "zc":J
    .end local v29    # "x_i":J
    .restart local v1    # "zc":J
    add-int/lit8 v0, v16, 0x1

    move-wide/from16 v4, v25

    .end local v16    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .end local v25    # "y_1":J
    .restart local v4    # "y_1":J
    :cond_0
    move/from16 v16, v0

    .line 750
    .end local v0    # "i":I
    long-to-int v0, v1

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

    .line 844
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 845
    .local v2, "xVal":J
    const/4 v6, 0x0

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-long/2addr v0, v7

    .line 846
    long-to-int v7, v0

    aput v7, p1, v6

    .line 847
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 848
    const/4 v7, 0x1

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 849
    long-to-int v8, v0

    aput v8, p1, v7

    .line 850
    ushr-long/2addr v0, v6

    .line 851
    const/4 v7, 0x2

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 852
    long-to-int v8, v0

    aput v8, p1, v7

    .line 853
    ushr-long/2addr v0, v6

    .line 854
    const/4 v7, 0x3

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 855
    long-to-int v8, v0

    aput v8, p1, v7

    .line 856
    ushr-long/2addr v0, v6

    .line 857
    const/4 v7, 0x4

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 858
    long-to-int v8, v0

    aput v8, p1, v7

    .line 859
    ushr-long/2addr v0, v6

    .line 860
    const/4 v7, 0x5

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 861
    long-to-int v8, v0

    aput v8, p1, v7

    .line 862
    ushr-long/2addr v0, v6

    .line 863
    const/4 v7, 0x6

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    add-long/2addr v0, v8

    .line 864
    long-to-int v8, v0

    aput v8, p1, v7

    .line 865
    ushr-long/2addr v0, v6

    .line 866
    const/4 v7, 0x7

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v4, v8

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    .line 867
    long-to-int v4, v0

    aput v4, p1, v7

    .line 868
    ushr-long/2addr v0, v6

    .line 869
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

    .line 874
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 875
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

    .line 876
    long-to-int v7, v0

    aput v7, p2, v6

    .line 877
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 878
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

    .line 879
    long-to-int v8, v0

    aput v8, p2, v7

    .line 880
    ushr-long/2addr v0, v6

    .line 881
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

    .line 882
    long-to-int v8, v0

    aput v8, p2, v7

    .line 883
    ushr-long/2addr v0, v6

    .line 884
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

    .line 885
    long-to-int v8, v0

    aput v8, p2, v7

    .line 886
    ushr-long/2addr v0, v6

    .line 887
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

    .line 888
    long-to-int v8, v0

    aput v8, p2, v7

    .line 889
    ushr-long/2addr v0, v6

    .line 890
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

    .line 891
    long-to-int v8, v0

    aput v8, p2, v7

    .line 892
    ushr-long/2addr v0, v6

    .line 893
    const/4 v7, 0x6

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 894
    long-to-int v8, v0

    aput v8, p2, v7

    .line 895
    ushr-long/2addr v0, v6

    .line 896
    const/4 v7, 0x7

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long v8, v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long/2addr v0, v8

    .line 897
    long-to-int v4, v0

    aput v4, p2, v7

    .line 898
    ushr-long/2addr v0, v6

    .line 899
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

    .line 991
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 992
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 995
    .local v6, "i":I
    :cond_0
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-long/2addr v0, v7

    .line 996
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 997
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 999
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8

    if-lt v6, v7, :cond_0

    .line 1000
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

    .line 904
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 905
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

    .line 906
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 907
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 908
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

    .line 909
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 910
    ushr-long/2addr v0, v6

    .line 911
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

    .line 912
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 913
    ushr-long/2addr v0, v6

    .line 914
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

    .line 915
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 916
    ushr-long/2addr v0, v6

    .line 917
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

    .line 918
    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 919
    ushr-long/2addr v0, v6

    .line 920
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

    .line 921
    add-int/lit8 v7, p4, 0x5

    long-to-int v8, v0

    aput v8, p3, v7

    .line 922
    ushr-long/2addr v0, v6

    .line 923
    add-int/lit8 v7, p2, 0x6

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x6

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 924
    add-int/lit8 v7, p4, 0x6

    long-to-int v8, v0

    aput v8, p3, v7

    .line 925
    ushr-long/2addr v0, v6

    .line 926
    add-int/lit8 v7, p2, 0x7

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x7

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 927
    add-int/lit8 v4, p4, 0x7

    long-to-int v5, v0

    aput v5, p3, v4

    .line 928
    ushr-long/2addr v0, v6

    .line 929
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

    .line 976
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 977
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long v6, v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 978
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 979
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 980
    ushr-long v7, p1, v6

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 981
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 982
    ushr-long/2addr v0, v6

    .line 983
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 984
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 985
    ushr-long/2addr v0, v6

    .line 986
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static square([II[II)V
    .locals 53
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

    .line 1169
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1172
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 1174
    .local v4, "c":I
    const/4 v5, 0x7

    .local v5, "i":I
    const/16 v6, 0x10

    .line 1177
    .local v6, "j":I
    :goto_0
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 1178
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 1179
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v15, v14

    or-int/2addr v12, v15

    aput v12, p2, v5

    .line 1180
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v15, v14

    aput v15, p2, v5

    .line 1181
    long-to-int v4, v10

    .line 1183
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_0

    .line 1186
    mul-long v8, v0, v0

    .line 1187
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 1188
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 1189
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v14, v13

    and-int/lit8 v4, v14, 0x1

    .line 1193
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 1194
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 1197
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 1198
    long-to-int v12, v10

    .line 1199
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 1200
    ushr-int/lit8 v4, v12, 0x1f

    .line 1201
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 1204
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 1205
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v16, v2

    int-to-long v2, v15

    and-long v2, v2, v16

    .line 1206
    .local v2, "zz_3":J
    add-int/lit8 v15, p3, 0x4

    aget v15, p2, v15

    move-wide/from16 v19, v6

    const/16 v18, 0x20

    .end local v6    # "x_1":J
    .local v19, "x_1":J
    int-to-long v5, v15

    and-long v5, v5, v16

    .line 1208
    .local v5, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 1209
    long-to-int v7, v8

    .line 1210
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1211
    ushr-int/lit8 v4, v7, 0x1f

    .line 1212
    ushr-long v21, v8, v18

    mul-long v23, v13, v19

    add-long v21, v21, v23

    add-long v2, v2, v21

    .line 1213
    ushr-long v21, v2, v18

    add-long v5, v5, v21

    .line 1214
    and-long v2, v2, v16

    .line 1217
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v0

    .end local v0    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1218
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

    .line 1219
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

    .line 1221
    mul-long v27, v23, v21

    add-long v2, v2, v27

    .line 1222
    long-to-int v7, v2

    .line 1223
    add-int/lit8 v12, p3, 0x3

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1224
    ushr-int/lit8 v4, v7, 0x1f

    .line 1225
    ushr-long v27, v2, v18

    mul-long v29, v23, v19

    add-long v27, v27, v29

    add-long v5, v5, v27

    .line 1226
    ushr-long v27, v5, v18

    mul-long v29, v23, v13

    add-long v27, v27, v29

    add-long v25, v25, v27

    .line 1227
    and-long v5, v5, v16

    .line 1228
    ushr-long v27, v25, v18

    add-long v0, v0, v27

    .line 1229
    and-long v25, v25, v16

    .line 1232
    add-int/lit8 v12, p1, 0x4

    aget v12, p0, v12

    move-wide/from16 v27, v0

    .end local v0    # "zz_6":J
    .local v27, "zz_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1233
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

    .line 1234
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

    .line 1236
    mul-long v33, v29, v21

    add-long v5, v5, v33

    .line 1237
    long-to-int v7, v5

    .line 1238
    add-int/lit8 v12, p3, 0x4

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1239
    ushr-int/lit8 v4, v7, 0x1f

    .line 1240
    ushr-long v33, v5, v18

    mul-long v35, v29, v19

    add-long v33, v33, v35

    add-long v25, v25, v33

    .line 1241
    ushr-long v33, v25, v18

    mul-long v35, v29, v13

    add-long v33, v33, v35

    add-long v27, v27, v33

    .line 1242
    and-long v25, v25, v16

    .line 1243
    ushr-long v33, v27, v18

    mul-long v35, v29, v23

    add-long v33, v33, v35

    add-long v31, v31, v33

    .line 1244
    and-long v27, v27, v16

    .line 1245
    ushr-long v33, v31, v18

    add-long v0, v0, v33

    .line 1246
    and-long v31, v31, v16

    .line 1249
    add-int/lit8 v12, p1, 0x5

    aget v12, p0, v12

    move-wide/from16 v33, v0

    .end local v0    # "zz_8":J
    .local v33, "zz_8":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1250
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

    .line 1251
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

    .line 1253
    mul-long v39, v35, v21

    move-wide/from16 v41, v0

    .end local v0    # "zz_10":J
    .local v41, "zz_10":J
    add-long v0, v25, v39

    .line 1254
    .end local v25    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v7, v0

    .line 1255
    add-int/lit8 v12, p3, 0x5

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1256
    ushr-int/lit8 v4, v7, 0x1f

    .line 1257
    ushr-long v25, v0, v18

    mul-long v39, v35, v19

    add-long v25, v25, v39

    add-long v27, v27, v25

    .line 1258
    ushr-long v25, v27, v18

    mul-long v39, v35, v13

    add-long v25, v25, v39

    add-long v31, v31, v25

    .line 1259
    and-long v25, v27, v16

    .line 1260
    .end local v27    # "zz_6":J
    .local v25, "zz_6":J
    ushr-long v27, v31, v18

    mul-long v39, v35, v23

    add-long v27, v27, v39

    add-long v33, v33, v27

    .line 1261
    and-long v27, v31, v16

    .line 1262
    .end local v31    # "zz_7":J
    .local v27, "zz_7":J
    ushr-long v31, v33, v18

    mul-long v39, v35, v29

    add-long v31, v31, v39

    add-long v37, v37, v31

    .line 1263
    and-long v31, v33, v16

    .line 1264
    .end local v33    # "zz_8":J
    .local v31, "zz_8":J
    ushr-long v33, v37, v18

    add-long v33, v41, v33

    .line 1265
    .end local v41    # "zz_10":J
    .local v33, "zz_10":J
    and-long v37, v37, v16

    .line 1268
    add-int/lit8 v12, p1, 0x6

    aget v12, p0, v12

    move-wide/from16 v39, v0

    .end local v0    # "zz_5":J
    .local v39, "zz_5":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1269
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

    .line 1270
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
    and-long v43, v43, v16

    .line 1272
    mul-long v45, v41, v21

    move-wide/from16 v47, v0

    .end local v0    # "zz_12":J
    .local v47, "zz_12":J
    add-long v0, v25, v45

    .line 1273
    .end local v25    # "zz_6":J
    .local v0, "zz_6":J
    long-to-int v7, v0

    .line 1274
    add-int/lit8 v12, p3, 0x6

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1275
    ushr-int/lit8 v4, v7, 0x1f

    .line 1276
    ushr-long v25, v0, v18

    mul-long v45, v41, v19

    add-long v25, v25, v45

    add-long v27, v27, v25

    .line 1277
    ushr-long v25, v27, v18

    mul-long v45, v41, v13

    add-long v25, v25, v45

    add-long v31, v31, v25

    .line 1278
    and-long v25, v27, v16

    .line 1279
    .end local v27    # "zz_7":J
    .local v25, "zz_7":J
    ushr-long v27, v31, v18

    mul-long v45, v41, v23

    add-long v27, v27, v45

    add-long v37, v37, v27

    .line 1280
    and-long v27, v31, v16

    .line 1281
    .end local v31    # "zz_8":J
    .local v27, "zz_8":J
    ushr-long v31, v37, v18

    mul-long v45, v41, v29

    add-long v31, v31, v45

    add-long v33, v33, v31

    .line 1282
    and-long v31, v37, v16

    .line 1283
    .end local v37    # "zz_9":J
    .local v31, "zz_9":J
    ushr-long v37, v33, v18

    mul-long v45, v41, v35

    add-long v37, v37, v45

    add-long v43, v43, v37

    .line 1284
    and-long v33, v33, v16

    .line 1285
    ushr-long v37, v43, v18

    add-long v37, v47, v37

    .line 1286
    .end local v47    # "zz_12":J
    .local v37, "zz_12":J
    and-long v43, v43, v16

    .line 1289
    add-int/lit8 v12, p1, 0x7

    aget v12, p0, v12

    move-wide/from16 v45, v0

    .end local v0    # "zz_6":J
    .local v45, "zz_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1290
    .local v0, "x_7":J
    add-int/lit8 v12, p3, 0xd

    aget v12, p2, v12

    move-wide/from16 v47, v0

    .end local v0    # "x_7":J
    .local v47, "x_7":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v49, v37, v18

    add-long v0, v0, v49

    .local v0, "zz_13":J
    and-long v37, v37, v16

    .line 1291
    add-int/lit8 v12, p3, 0xe

    aget v12, p2, v12

    move-wide/from16 v49, v0

    .end local v0    # "zz_13":J
    .local v49, "zz_13":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v51, v49, v18

    add-long v0, v0, v51

    .local v0, "zz_14":J
    and-long v16, v49, v16

    .line 1293
    .end local v49    # "zz_13":J
    .local v16, "zz_13":J
    mul-long v49, v47, v21

    move-wide/from16 v51, v0

    .end local v0    # "zz_14":J
    .local v51, "zz_14":J
    add-long v0, v25, v49

    .line 1294
    .end local v25    # "zz_7":J
    .local v0, "zz_7":J
    long-to-int v7, v0

    .line 1295
    add-int/lit8 v12, p3, 0x7

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1296
    ushr-int/lit8 v4, v7, 0x1f

    .line 1297
    ushr-long v25, v0, v18

    mul-long v49, v47, v19

    add-long v25, v25, v49

    move-wide/from16 v49, v0

    .end local v0    # "zz_7":J
    .local v49, "zz_7":J
    add-long v0, v27, v25

    .line 1298
    .end local v27    # "zz_8":J
    .local v0, "zz_8":J
    ushr-long v25, v0, v18

    mul-long v27, v47, v13

    add-long v25, v25, v27

    move-wide/from16 v27, v2

    .end local v2    # "zz_3":J
    .local v27, "zz_3":J
    add-long v2, v31, v25

    .line 1299
    .end local v31    # "zz_9":J
    .local v2, "zz_9":J
    ushr-long v25, v2, v18

    mul-long v31, v47, v23

    add-long v25, v25, v31

    move-wide/from16 v31, v5

    move v6, v4

    .end local v4    # "c":I
    .end local v5    # "zz_4":J
    .local v6, "c":I
    .local v31, "zz_4":J
    add-long v4, v33, v25

    .line 1300
    .end local v33    # "zz_10":J
    .local v4, "zz_10":J
    ushr-long v25, v4, v18

    mul-long v33, v47, v29

    add-long v25, v25, v33

    move v15, v6

    move v12, v7

    .end local v6    # "c":I
    .end local v7    # "w":I
    .restart local v12    # "w":I
    .local v15, "c":I
    add-long v6, v43, v25

    .line 1301
    .end local v43    # "zz_11":J
    .local v6, "zz_11":J
    ushr-long v25, v6, v18

    mul-long v33, v47, v35

    add-long v25, v25, v33

    move-wide/from16 v33, v8

    .end local v8    # "zz_2":J
    .local v33, "zz_2":J
    add-long v8, v37, v25

    .line 1302
    .end local v37    # "zz_12":J
    .local v8, "zz_12":J
    ushr-long v25, v8, v18

    mul-long v37, v47, v41

    add-long v25, v25, v37

    move-wide/from16 v37, v10

    .end local v10    # "zz_1":J
    .local v37, "zz_1":J
    add-long v10, v16, v25

    .line 1303
    .end local v16    # "zz_13":J
    .local v10, "zz_13":J
    ushr-long v16, v10, v18

    move-wide/from16 v25, v13

    move v14, v12

    .end local v12    # "w":I
    .end local v13    # "x_2":J
    .local v14, "w":I
    .local v25, "x_2":J
    add-long v12, v51, v16

    .line 1306
    .end local v51    # "zz_14":J
    .local v12, "zz_14":J
    long-to-int v14, v0

    .line 1307
    add-int/lit8 v16, p3, 0x8

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1308
    ushr-int/lit8 v15, v14, 0x1f

    .line 1309
    long-to-int v14, v2

    .line 1310
    add-int/lit8 v16, p3, 0x9

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1311
    ushr-int/lit8 v15, v14, 0x1f

    .line 1312
    long-to-int v14, v4

    .line 1313
    add-int/lit8 v16, p3, 0xa

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1314
    ushr-int/lit8 v15, v14, 0x1f

    .line 1315
    long-to-int v14, v6

    .line 1316
    add-int/lit8 v16, p3, 0xb

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1317
    ushr-int/lit8 v15, v14, 0x1f

    .line 1318
    long-to-int v14, v8

    .line 1319
    add-int/lit8 v16, p3, 0xc

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1320
    ushr-int/lit8 v15, v14, 0x1f

    .line 1321
    long-to-int v14, v10

    .line 1322
    add-int/lit8 v16, p3, 0xd

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1323
    ushr-int/lit8 v15, v14, 0x1f

    .line 1324
    long-to-int v14, v12

    .line 1325
    add-int/lit8 v16, p3, 0xe

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1326
    ushr-int/lit8 v15, v14, 0x1f

    .line 1327
    add-int/lit8 v16, p3, 0xf

    aget v16, p2, v16

    move-wide/from16 v43, v0

    .end local v0    # "zz_8":J
    .local v43, "zz_8":J
    ushr-long v0, v12, v18

    long-to-int v1, v0

    add-int v16, v16, v1

    .line 1328
    .end local v14    # "w":I
    .local v16, "w":I
    add-int/lit8 v0, p3, 0xf

    shl-int/lit8 v1, v16, 0x1

    or-int/2addr v1, v15

    aput v1, p2, v0

    .line 1329
    return-void

    .line 1183
    .end local v2    # "zz_9":J
    .end local v8    # "zz_12":J
    .end local v10    # "zz_13":J
    .end local v12    # "zz_14":J
    .end local v15    # "c":I
    .end local v16    # "w":I
    .end local v19    # "x_1":J
    .end local v21    # "x_0":J
    .end local v23    # "x_3":J
    .end local v25    # "x_2":J
    .end local v27    # "zz_3":J
    .end local v29    # "x_4":J
    .end local v31    # "zz_4":J
    .end local v33    # "zz_2":J
    .end local v35    # "x_5":J
    .end local v37    # "zz_1":J
    .end local v39    # "zz_5":J
    .end local v41    # "x_6":J
    .end local v43    # "zz_8":J
    .end local v45    # "zz_6":J
    .end local v47    # "x_7":J
    .end local v49    # "zz_7":J
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
    .locals 60
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

    .line 1005
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1008
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 1010
    .local v5, "c":I
    const/4 v6, 0x7

    .local v6, "i":I
    const/16 v7, 0x10

    .line 1013
    .local v7, "j":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 1014
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 1015
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v15, v14

    or-int/2addr v6, v15

    aput v6, p1, v7

    .line 1016
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v15, v14

    aput v15, p1, v7

    .line 1017
    long-to-int v5, v11

    .line 1019
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_0

    .line 1022
    mul-long v9, v1, v1

    .line 1023
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 1024
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 1025
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v14, v13

    and-int/lit8 v5, v14, 0x1

    .line 1029
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 1030
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 1033
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 1034
    long-to-int v10, v11

    .line 1035
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 1036
    ushr-int/lit8 v5, v10, 0x1f

    .line 1037
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 1040
    aget v6, p0, v9

    move-wide v15, v1

    const/16 v2, 0x20

    .end local v1    # "x_0":J
    .local v15, "x_0":J
    int-to-long v0, v6

    and-long/2addr v0, v3

    .line 1041
    .local v0, "x_2":J
    const/4 v6, 0x3

    const/16 v17, 0x20

    aget v2, p1, v6

    move-wide/from16 v18, v3

    int-to-long v3, v2

    and-long v3, v3, v18

    .line 1042
    .local v3, "zz_3":J
    const/16 v20, 0x4

    aget v2, p1, v20

    move-wide/from16 v21, v7

    const/4 v8, 0x3

    .end local v7    # "x_1":J
    .local v21, "x_1":J
    int-to-long v6, v2

    and-long v6, v6, v18

    .line 1044
    .local v6, "zz_4":J
    mul-long v23, v0, v15

    add-long v13, v13, v23

    .line 1045
    long-to-int v2, v13

    .line 1046
    .end local v10    # "w":I
    .local v2, "w":I
    shl-int/lit8 v10, v2, 0x1

    or-int/2addr v10, v5

    aput v10, p1, v9

    .line 1047
    ushr-int/lit8 v5, v2, 0x1f

    .line 1048
    ushr-long v9, v13, v17

    mul-long v23, v0, v21

    add-long v9, v9, v23

    add-long/2addr v3, v9

    .line 1049
    ushr-long v9, v3, v17

    add-long/2addr v6, v9

    .line 1050
    and-long v3, v3, v18

    .line 1053
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v9, v9, v18

    .line 1054
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

    .line 1055
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

    .line 1057
    mul-long v30, v9, v15

    add-long v3, v3, v30

    .line 1058
    long-to-int v2, v3

    .line 1059
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 1060
    ushr-int/lit8 v5, v2, 0x1f

    .line 1061
    ushr-long v30, v3, v17

    mul-long v32, v9, v21

    add-long v30, v30, v32

    add-long v6, v6, v30

    .line 1062
    ushr-long v30, v6, v17

    mul-long v32, v9, v25

    add-long v30, v30, v32

    add-long v28, v28, v30

    .line 1063
    and-long v6, v6, v18

    .line 1064
    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .line 1065
    and-long v28, v28, v18

    .line 1068
    aget v8, p0, v20

    move-wide/from16 v30, v0

    .end local v0    # "zz_6":J
    .local v30, "zz_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 1069
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

    .line 1070
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

    .line 1072
    mul-long v37, v32, v15

    add-long v6, v6, v37

    .line 1073
    long-to-int v2, v6

    .line 1074
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v20

    .line 1075
    ushr-int/lit8 v5, v2, 0x1f

    .line 1076
    ushr-long v37, v6, v17

    mul-long v39, v32, v21

    add-long v37, v37, v39

    add-long v28, v28, v37

    .line 1077
    ushr-long v37, v28, v17

    mul-long v39, v32, v25

    add-long v37, v37, v39

    add-long v30, v30, v37

    .line 1078
    and-long v28, v28, v18

    .line 1079
    ushr-long v37, v30, v17

    mul-long v39, v32, v9

    add-long v37, v37, v39

    add-long v35, v35, v37

    .line 1080
    and-long v30, v30, v18

    .line 1081
    ushr-long v37, v35, v17

    add-long v0, v0, v37

    .line 1082
    and-long v35, v35, v18

    .line 1085
    aget v8, p0, v23

    move-wide/from16 v37, v0

    .end local v0    # "zz_8":J
    .local v37, "zz_8":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 1086
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

    .line 1087
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

    .line 1089
    mul-long v44, v39, v15

    move-wide/from16 v46, v0

    .end local v0    # "zz_10":J
    .local v46, "zz_10":J
    add-long v0, v28, v44

    .line 1090
    .end local v28    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v2, v0

    .line 1091
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v23

    .line 1092
    ushr-int/lit8 v5, v2, 0x1f

    .line 1093
    ushr-long v28, v0, v17

    mul-long v44, v39, v21

    add-long v28, v28, v44

    add-long v30, v30, v28

    .line 1094
    ushr-long v28, v30, v17

    mul-long v44, v39, v25

    add-long v28, v28, v44

    add-long v35, v35, v28

    .line 1095
    and-long v28, v30, v18

    .line 1096
    .end local v30    # "zz_6":J
    .local v28, "zz_6":J
    ushr-long v30, v35, v17

    mul-long v44, v39, v9

    add-long v30, v30, v44

    add-long v37, v37, v30

    .line 1097
    and-long v30, v35, v18

    .line 1098
    .end local v35    # "zz_7":J
    .local v30, "zz_7":J
    ushr-long v35, v37, v17

    mul-long v44, v39, v32

    add-long v35, v35, v44

    add-long v42, v42, v35

    .line 1099
    and-long v35, v37, v18

    .line 1100
    .end local v37    # "zz_8":J
    .local v35, "zz_8":J
    ushr-long v37, v42, v17

    add-long v37, v46, v37

    .line 1101
    .end local v46    # "zz_10":J
    .local v37, "zz_10":J
    and-long v42, v42, v18

    .line 1104
    aget v8, p0, v27

    move-wide/from16 v44, v0

    .end local v0    # "zz_5":J
    .local v44, "zz_5":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 1105
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

    .line 1106
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
    and-long v49, v49, v18

    .line 1108
    mul-long v51, v46, v15

    move-wide/from16 v53, v0

    .end local v0    # "zz_12":J
    .local v53, "zz_12":J
    add-long v0, v28, v51

    .line 1109
    .end local v28    # "zz_6":J
    .local v0, "zz_6":J
    long-to-int v2, v0

    .line 1110
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v27

    .line 1111
    ushr-int/lit8 v5, v2, 0x1f

    .line 1112
    ushr-long v27, v0, v17

    mul-long v51, v46, v21

    add-long v27, v27, v51

    add-long v30, v30, v27

    .line 1113
    ushr-long v27, v30, v17

    mul-long v51, v46, v25

    add-long v27, v27, v51

    add-long v35, v35, v27

    .line 1114
    and-long v27, v30, v18

    .line 1115
    .end local v30    # "zz_7":J
    .local v27, "zz_7":J
    ushr-long v29, v35, v17

    mul-long v51, v46, v9

    add-long v29, v29, v51

    add-long v42, v42, v29

    .line 1116
    and-long v29, v35, v18

    .line 1117
    .end local v35    # "zz_8":J
    .local v29, "zz_8":J
    ushr-long v35, v42, v17

    mul-long v51, v46, v32

    add-long v35, v35, v51

    add-long v37, v37, v35

    .line 1118
    and-long v35, v42, v18

    .line 1119
    .end local v42    # "zz_9":J
    .local v35, "zz_9":J
    ushr-long v42, v37, v17

    mul-long v51, v46, v39

    add-long v42, v42, v51

    add-long v49, v49, v42

    .line 1120
    and-long v37, v37, v18

    .line 1121
    ushr-long v42, v49, v17

    add-long v42, v53, v42

    .line 1122
    .end local v53    # "zz_12":J
    .local v42, "zz_12":J
    and-long v49, v49, v18

    .line 1125
    aget v8, p0, v24

    move-wide/from16 v51, v0

    .end local v0    # "zz_6":J
    .local v51, "zz_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 1126
    .local v0, "x_7":J
    const/16 v31, 0xd

    aget v8, p1, v31

    move-wide/from16 v53, v0

    .end local v0    # "x_7":J
    .local v53, "x_7":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v55, v42, v17

    add-long v0, v0, v55

    .local v0, "zz_13":J
    and-long v42, v42, v18

    .line 1127
    const/16 v55, 0xe

    aget v8, p1, v55

    move-wide/from16 v56, v0

    .end local v0    # "zz_13":J
    .local v56, "zz_13":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v58, v56, v17

    add-long v0, v0, v58

    .local v0, "zz_14":J
    and-long v18, v56, v18

    .line 1129
    .end local v56    # "zz_13":J
    .local v18, "zz_13":J
    mul-long v56, v53, v15

    move-wide/from16 v58, v0

    .end local v0    # "zz_14":J
    .local v58, "zz_14":J
    add-long v0, v27, v56

    .line 1130
    .end local v27    # "zz_7":J
    .local v0, "zz_7":J
    long-to-int v2, v0

    .line 1131
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 1132
    ushr-int/lit8 v5, v2, 0x1f

    .line 1133
    ushr-long v27, v0, v17

    mul-long v56, v53, v21

    add-long v27, v27, v56

    move-wide/from16 v56, v0

    .end local v0    # "zz_7":J
    .local v56, "zz_7":J
    add-long v0, v29, v27

    .line 1134
    .end local v29    # "zz_8":J
    .local v0, "zz_8":J
    ushr-long v27, v0, v17

    mul-long v29, v53, v25

    add-long v27, v27, v29

    move-wide/from16 v29, v3

    move v4, v2

    .end local v2    # "w":I
    .end local v3    # "zz_3":J
    .local v4, "w":I
    .local v29, "zz_3":J
    add-long v2, v35, v27

    .line 1135
    .end local v35    # "zz_9":J
    .local v2, "zz_9":J
    ushr-long v27, v2, v17

    mul-long v35, v53, v9

    add-long v27, v27, v35

    move/from16 v24, v4

    move v8, v5

    .end local v4    # "w":I
    .end local v5    # "c":I
    .local v8, "c":I
    .local v24, "w":I
    add-long v4, v37, v27

    .line 1136
    .end local v37    # "zz_10":J
    .local v4, "zz_10":J
    ushr-long v27, v4, v17

    mul-long v35, v53, v32

    add-long v27, v27, v35

    move-wide/from16 v35, v6

    .end local v6    # "zz_4":J
    .local v35, "zz_4":J
    add-long v6, v49, v27

    .line 1137
    .end local v49    # "zz_11":J
    .local v6, "zz_11":J
    ushr-long v27, v6, v17

    mul-long v37, v53, v39

    add-long v27, v27, v37

    move-wide/from16 v37, v9

    move v10, v8

    .end local v8    # "c":I
    .end local v9    # "x_3":J
    .local v10, "c":I
    .local v37, "x_3":J
    add-long v8, v42, v27

    .line 1138
    .end local v42    # "zz_12":J
    .local v8, "zz_12":J
    ushr-long v27, v8, v17

    mul-long v42, v53, v46

    add-long v27, v27, v42

    move-wide/from16 v42, v11

    move v12, v10

    .end local v10    # "c":I
    .end local v11    # "zz_1":J
    .local v12, "c":I
    .local v42, "zz_1":J
    add-long v10, v18, v27

    .line 1139
    .end local v18    # "zz_13":J
    .local v10, "zz_13":J
    ushr-long v18, v10, v17

    move-wide/from16 v27, v13

    move v14, v12

    .end local v12    # "c":I
    .end local v13    # "zz_2":J
    .local v14, "c":I
    .local v27, "zz_2":J
    add-long v12, v58, v18

    .line 1142
    .end local v58    # "zz_14":J
    .local v12, "zz_14":J
    move/from16 v18, v14

    .end local v14    # "c":I
    .local v18, "c":I
    long-to-int v14, v0

    .line 1143
    .end local v24    # "w":I
    .local v14, "w":I
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v34

    .line 1144
    ushr-int/lit8 v18, v14, 0x1f

    .line 1145
    long-to-int v14, v2

    .line 1146
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v20

    .line 1147
    ushr-int/lit8 v18, v14, 0x1f

    .line 1148
    long-to-int v14, v4

    .line 1149
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v41

    .line 1150
    ushr-int/lit8 v18, v14, 0x1f

    .line 1151
    long-to-int v14, v6

    .line 1152
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v23

    .line 1153
    ushr-int/lit8 v18, v14, 0x1f

    .line 1154
    long-to-int v14, v8

    .line 1155
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v48

    .line 1156
    ushr-int/lit8 v18, v14, 0x1f

    .line 1157
    long-to-int v14, v10

    .line 1158
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v31

    .line 1159
    ushr-int/lit8 v18, v14, 0x1f

    .line 1160
    long-to-int v14, v12

    .line 1161
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v55

    .line 1162
    ushr-int/lit8 v18, v14, 0x1f

    .line 1163
    const/16 v19, 0xf

    aget v20, p1, v19

    move-wide/from16 v23, v0

    .end local v0    # "zz_8":J
    .local v23, "zz_8":J
    ushr-long v0, v12, v17

    long-to-int v1, v0

    add-int v20, v20, v1

    .line 1164
    .end local v14    # "w":I
    .local v20, "w":I
    shl-int/lit8 v0, v20, 0x1

    or-int v0, v0, v18

    aput v0, p1, v19

    .line 1165
    return-void

    .line 1019
    .end local v2    # "zz_9":J
    .end local v4    # "zz_10":J
    .end local v6    # "zz_11":J
    .end local v10    # "zz_13":J
    .end local v12    # "zz_14":J
    .end local v15    # "x_0":J
    .end local v18    # "c":I
    .end local v20    # "w":I
    .end local v21    # "x_1":J
    .end local v23    # "zz_8":J
    .end local v25    # "x_2":J
    .end local v27    # "zz_2":J
    .end local v29    # "zz_3":J
    .end local v32    # "x_4":J
    .end local v35    # "zz_4":J
    .end local v37    # "x_3":J
    .end local v39    # "x_5":J
    .end local v42    # "zz_1":J
    .end local v44    # "zz_5":J
    .end local v46    # "x_6":J
    .end local v51    # "zz_6":J
    .end local v53    # "x_7":J
    .end local v56    # "zz_7":J
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

    .line 1363
    const-wide/16 v0, 0x0

    .line 1364
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

    .line 1365
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1366
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1367
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

    .line 1368
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1369
    shr-long/2addr v0, v2

    .line 1370
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

    .line 1371
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1372
    shr-long/2addr v0, v2

    .line 1373
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

    .line 1374
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1375
    shr-long/2addr v0, v2

    .line 1376
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

    .line 1377
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1378
    shr-long/2addr v0, v2

    .line 1379
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

    .line 1380
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1381
    shr-long/2addr v0, v2

    .line 1382
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1383
    add-int/lit8 v3, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1384
    shr-long/2addr v0, v2

    .line 1385
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 1386
    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v0

    aput v4, p4, v3

    .line 1387
    shr-long/2addr v0, v2

    .line 1388
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

    .line 1333
    const-wide/16 v0, 0x0

    .line 1334
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

    .line 1335
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1336
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1337
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1338
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1339
    shr-long/2addr v0, v2

    .line 1340
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1341
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1342
    shr-long/2addr v0, v2

    .line 1343
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1344
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1345
    shr-long/2addr v0, v2

    .line 1346
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1347
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1348
    shr-long/2addr v0, v2

    .line 1349
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1350
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1351
    shr-long/2addr v0, v2

    .line 1352
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1353
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1354
    shr-long/2addr v0, v2

    .line 1355
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 1356
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1357
    shr-long/2addr v0, v2

    .line 1358
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

    .line 1393
    const-wide/16 v0, 0x0

    .line 1394
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

    .line 1395
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1396
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1397
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

    .line 1398
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1399
    shr-long/2addr v0, v2

    .line 1400
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

    .line 1401
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1402
    shr-long/2addr v0, v2

    .line 1403
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

    .line 1404
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1405
    shr-long/2addr v0, v2

    .line 1406
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

    .line 1407
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1408
    shr-long/2addr v0, v2

    .line 1409
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

    .line 1410
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1411
    shr-long/2addr v0, v2

    .line 1412
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

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1413
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1414
    shr-long/2addr v0, v2

    .line 1415
    const/4 v3, 0x7

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

    .line 1416
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1417
    shr-long/2addr v0, v2

    .line 1418
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

    .line 1483
    const-wide/16 v0, 0x0

    .line 1484
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

    .line 1485
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1486
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1487
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

    .line 1488
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1489
    shr-long/2addr v0, v2

    .line 1490
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

    .line 1491
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1492
    shr-long/2addr v0, v2

    .line 1493
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

    .line 1494
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1495
    shr-long/2addr v0, v2

    .line 1496
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

    .line 1497
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1498
    shr-long/2addr v0, v2

    .line 1499
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

    .line 1500
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1501
    shr-long/2addr v0, v2

    .line 1502
    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1503
    add-int/lit8 v3, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1504
    shr-long/2addr v0, v2

    .line 1505
    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 1506
    add-int/lit8 v3, p3, 0x7

    long-to-int v4, v0

    aput v4, p2, v3

    .line 1507
    shr-long/2addr v0, v2

    .line 1508
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([II[III)I
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

    .line 1513
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1514
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x0

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1515
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1516
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1517
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x1

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1518
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1519
    shr-long/2addr v0, v4

    .line 1520
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x2

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1521
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1522
    shr-long/2addr v0, v4

    .line 1523
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x3

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1524
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1525
    shr-long/2addr v0, v4

    .line 1526
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x4

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1527
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1528
    shr-long/2addr v0, v4

    .line 1529
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x5

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1530
    add-int/lit8 v5, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1531
    shr-long/2addr v0, v4

    .line 1532
    add-int/lit8 v5, p3, 0x6

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1533
    add-int/lit8 v5, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1534
    shr-long/2addr v0, v4

    .line 1535
    add-int/lit8 v5, p3, 0x7

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x7

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    sub-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 1536
    add-int/lit8 v2, p3, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1537
    shr-long/2addr v0, v4

    .line 1538
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

    .line 1423
    const-wide/16 v0, 0x0

    .line 1424
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

    .line 1425
    long-to-int v3, v0

    aput v3, p1, v2

    .line 1426
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1427
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1428
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1429
    shr-long/2addr v0, v2

    .line 1430
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1431
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1432
    shr-long/2addr v0, v2

    .line 1433
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1434
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1435
    shr-long/2addr v0, v2

    .line 1436
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1437
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1438
    shr-long/2addr v0, v2

    .line 1439
    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1440
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1441
    shr-long/2addr v0, v2

    .line 1442
    const/4 v3, 0x6

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1443
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1444
    shr-long/2addr v0, v2

    .line 1445
    const/4 v3, 0x7

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 1446
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1447
    shr-long/2addr v0, v2

    .line 1448
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([I[II)I
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

    .line 1453
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1454
    .local v0, "c":J
    const/4 v4, 0x0

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1455
    long-to-int v5, v0

    aput v5, p1, v4

    .line 1456
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1457
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1458
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1459
    shr-long/2addr v0, v4

    .line 1460
    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1461
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1462
    shr-long/2addr v0, v4

    .line 1463
    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1464
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1465
    shr-long/2addr v0, v4

    .line 1466
    const/4 v5, 0x4

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1467
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1468
    shr-long/2addr v0, v4

    .line 1469
    const/4 v5, 0x5

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1470
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1471
    shr-long/2addr v0, v4

    .line 1472
    const/4 v5, 0x6

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1473
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1474
    shr-long/2addr v0, v4

    .line 1475
    const/4 v5, 0x7

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v2, v8

    sub-long/2addr v6, v2

    add-long/2addr v0, v6

    .line 1476
    long-to-int v2, v0

    aput v2, p1, v5

    .line 1477
    shr-long/2addr v0, v4

    .line 1478
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

    .line 1543
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1544
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 1546
    aget v2, p0, v1

    .line 1547
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1549
    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1544
    .end local v2    # "x_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1552
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

    .line 1557
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1558
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1560
    aget-wide v2, p0, v1

    .line 1561
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 1563
    rsub-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 1558
    .end local v2    # "x_i":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1566
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

    .line 1571
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1572
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1573
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1574
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1575
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1576
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1577
    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1578
    const/4 v1, 0x7

    aput v0, p0, v1

    .line 1579
    return-void
.end method
