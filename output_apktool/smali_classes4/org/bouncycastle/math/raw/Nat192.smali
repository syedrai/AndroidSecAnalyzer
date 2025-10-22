.class public abstract Lorg/bouncycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Nat192.java"


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

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 30
    long-to-int v4, v0

    aput v4, p2, v3

    .line 31
    ushr-long/2addr v0, v2

    .line 32
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

    .line 37
    const-wide/16 v0, 0x0

    .line 38
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

    .line 39
    long-to-int v3, v0

    aput v3, p2, v2

    .line 40
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 41
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

    .line 42
    long-to-int v4, v0

    aput v4, p2, v3

    .line 43
    ushr-long/2addr v0, v2

    .line 44
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

    .line 45
    long-to-int v4, v0

    aput v4, p2, v3

    .line 46
    ushr-long/2addr v0, v2

    .line 47
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

    .line 48
    long-to-int v4, v0

    aput v4, p2, v3

    .line 49
    ushr-long/2addr v0, v2

    .line 50
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

    .line 51
    long-to-int v4, v0

    aput v4, p2, v3

    .line 52
    ushr-long/2addr v0, v2

    .line 53
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

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 54
    long-to-int v4, v0

    aput v4, p2, v3

    .line 55
    ushr-long/2addr v0, v2

    .line 56
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

    .line 85
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 86
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

    .line 87
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 88
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 89
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

    .line 90
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 91
    ushr-long/2addr v0, v4

    .line 92
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

    .line 93
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 94
    ushr-long/2addr v0, v4

    .line 95
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

    .line 96
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 97
    ushr-long/2addr v0, v4

    .line 98
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

    .line 99
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 100
    ushr-long/2addr v0, v4

    .line 101
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 102
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 103
    ushr-long/2addr v0, v4

    .line 104
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

    .line 61
    const-wide/16 v0, 0x0

    .line 62
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

    .line 63
    long-to-int v3, v0

    aput v3, p1, v2

    .line 64
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 65
    const/4 v3, 0x1

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
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 69
    long-to-int v4, v0

    aput v4, p1, v3

    .line 70
    ushr-long/2addr v0, v2

    .line 71
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 72
    long-to-int v4, v0

    aput v4, p1, v3

    .line 73
    ushr-long/2addr v0, v2

    .line 74
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 75
    long-to-int v4, v0

    aput v4, p1, v3

    .line 76
    ushr-long/2addr v0, v2

    .line 77
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 78
    long-to-int v4, v0

    aput v4, p1, v3

    .line 79
    ushr-long/2addr v0, v2

    .line 80
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

    .line 109
    const-wide/16 v0, 0x0

    .line 110
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

    .line 111
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 112
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 113
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 114
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

    .line 115
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 116
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 117
    ushr-long/2addr v0, v2

    .line 118
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

    .line 119
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 120
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 121
    ushr-long/2addr v0, v2

    .line 122
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

    .line 123
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 124
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 125
    ushr-long/2addr v0, v2

    .line 126
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

    .line 127
    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    .line 128
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 129
    ushr-long/2addr v0, v2

    .line 130
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 131
    add-int/lit8 v3, p1, 0x5

    long-to-int v4, v0

    aput v4, p0, v3

    .line 132
    add-int/lit8 v3, p3, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    .line 133
    ushr-long/2addr v0, v2

    .line 134
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

    .line 149
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 150
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 151
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 152
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 153
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 154
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 155
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

    .line 139
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 140
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 141
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 142
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 143
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 144
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 145
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

    .line 166
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 167
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 168
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 169
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

    .line 159
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 160
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 161
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 162
    return-void
.end method

.method public static create()[I
    .locals 1

    .line 173
    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    .line 178
    const/4 v0, 0x3

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .line 183
    const/16 v0, 0xc

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    .line 188
    const/4 v0, 0x6

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

    .line 193
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat192;->gte([II[II)Z

    move-result v0

    .line 194
    .local v0, "pos":Z
    if-eqz v0, :cond_0

    .line 196
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    goto :goto_0

    .line 200
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
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 202
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

    .line 207
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 209
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 211
    const/4 v1, 0x0

    return v1

    .line 207
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 214
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

    .line 219
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 221
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 223
    const/4 v1, 0x0

    return v1

    .line 219
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 226
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

    .line 231
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_1

    .line 236
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 239
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 241
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 242
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 233
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

    .line 249
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_1

    .line 254
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    .line 257
    .local v0, "z":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 259
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 260
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 251
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

    .line 267
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 269
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 271
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    .line 272
    .local v1, "w":I
    if-ltz v1, :cond_2

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    and-int/lit8 v0, p1, 0x1f

    .line 277
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 274
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

    .line 296
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 298
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 299
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 300
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 301
    const/4 v1, 0x0

    return v1

    .line 302
    :cond_0
    if-le v2, v3, :cond_1

    .line 303
    return v1

    .line 296
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 305
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

    .line 282
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 284
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 285
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 286
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 287
    const/4 v1, 0x0

    return v1

    .line 288
    :cond_0
    if-le v2, v3, :cond_1

    .line 289
    return v1

    .line 282
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 291
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

    .line 310
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 312
    return v0

    .line 314
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 316
    aget v3, p0, v1

    if-eqz v3, :cond_1

    .line 318
    return v0

    .line 314
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
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

    .line 326
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 328
    return v0

    .line 330
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 332
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 334
    return v0

    .line 330
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
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

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 344
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 346
    const/4 v1, 0x0

    return v1

    .line 342
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
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

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 356
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 358
    const/4 v1, 0x0

    return v1

    .line 354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static mul([II[II[II)V
    .locals 26
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

    .line 423
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 424
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 425
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 426
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 427
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 428
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 431
    .local v12, "y_5":J
    const-wide/16 v14, 0x0

    .local v14, "c":J
    add-int/lit8 v16, p1, 0x0

    move-wide/from16 v17, v2

    aget v2, p0, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 432
    .local v2, "x_0":J
    mul-long v19, v2, v0

    add-long v14, v14, v19

    .line 433
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v19, v0

    .end local v0    # "y_0":J
    .local v19, "y_0":J
    long-to-int v0, v14

    aput v0, p4, v16

    .line 434
    const/16 v0, 0x20

    ushr-long/2addr v14, v0

    .line 435
    mul-long v21, v2, v4

    add-long v14, v14, v21

    .line 436
    add-int/lit8 v1, p5, 0x1

    const/16 v16, 0x20

    long-to-int v0, v14

    aput v0, p4, v1

    .line 437
    ushr-long v0, v14, v16

    .line 438
    .end local v14    # "c":J
    .local v0, "c":J
    mul-long v14, v2, v6

    add-long/2addr v0, v14

    .line 439
    add-int/lit8 v14, p5, 0x2

    long-to-int v15, v0

    aput v15, p4, v14

    .line 440
    ushr-long v0, v0, v16

    .line 441
    mul-long v14, v2, v8

    add-long/2addr v0, v14

    .line 442
    add-int/lit8 v14, p5, 0x3

    long-to-int v15, v0

    aput v15, p4, v14

    .line 443
    ushr-long v0, v0, v16

    .line 444
    mul-long v14, v2, v10

    add-long/2addr v0, v14

    .line 445
    add-int/lit8 v14, p5, 0x4

    long-to-int v15, v0

    aput v15, p4, v14

    .line 446
    ushr-long v0, v0, v16

    .line 447
    mul-long v14, v2, v12

    add-long/2addr v0, v14

    .line 448
    add-int/lit8 v14, p5, 0x5

    long-to-int v15, v0

    aput v15, p4, v14

    .line 449
    ushr-long v0, v0, v16

    .line 450
    add-int/lit8 v14, p5, 0x6

    long-to-int v15, v0

    aput v15, p4, v14

    .line 453
    .end local v0    # "c":J
    .end local v2    # "x_0":J
    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 455
    add-int/lit8 v0, v0, 0x1

    .line 456
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v14, p1, v1

    aget v14, p0, v14

    int-to-long v14, v14

    and-long v14, v14, v17

    .line 457
    .local v14, "x_i":J
    mul-long v21, v14, v19

    add-int/lit8 v23, v0, 0x0

    move/from16 p5, v0

    .end local v0    # "zzOff":I
    .restart local p5    # "zzOff":I
    aget v0, p4, v23

    move/from16 v23, v1

    .end local v1    # "i":I
    .local v23, "i":I
    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v21, v21, v0

    add-long v2, v2, v21

    .line 458
    add-int/lit8 v0, p5, 0x0

    long-to-int v1, v2

    aput v1, p4, v0

    .line 459
    ushr-long v0, v2, v16

    .line 460
    .end local v2    # "c":J
    .local v0, "c":J
    mul-long v2, v14, v4

    add-int/lit8 v21, p5, 0x1

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .local v24, "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 461
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 462
    ushr-long v0, v0, v16

    .line 463
    mul-long v2, v14, v6

    add-int/lit8 v21, p5, 0x2

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 464
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 465
    ushr-long v0, v0, v16

    .line 466
    mul-long v2, v14, v8

    add-int/lit8 v21, p5, 0x3

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 467
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 468
    ushr-long v0, v0, v16

    .line 469
    mul-long v2, v14, v10

    add-int/lit8 v21, p5, 0x4

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 470
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 471
    ushr-long v0, v0, v16

    .line 472
    mul-long v2, v14, v12

    add-int/lit8 v21, p5, 0x5

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 473
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 474
    ushr-long v0, v0, v16

    .line 475
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 453
    .end local v0    # "c":J
    .end local v14    # "x_i":J
    add-int/lit8 v1, v23, 0x1

    move/from16 v0, p5

    .end local v23    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    .line 477
    .end local v1    # "i":I
    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 29
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

    .line 366
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 367
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 368
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 369
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 370
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    move-wide/from16 v17, v1

    const/16 v16, 0x0

    .end local v1    # "y_0":J
    .local v17, "y_0":J
    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 371
    .local v0, "y_4":J
    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    const/4 v4, 0x5

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 374
    .local v2, "y_5":J
    const-wide/16 v21, 0x0

    .local v21, "c":J
    aget v15, p0, v16

    const/16 v23, 0x1

    const/16 v24, 0x5

    int-to-long v4, v15

    and-long v4, v4, v19

    .line 375
    .local v4, "x_0":J
    mul-long v25, v4, v17

    move-wide/from16 v27, v9

    const/4 v15, 0x2

    .end local v9    # "y_2":J
    .local v27, "y_2":J
    add-long v8, v21, v25

    .line 376
    .end local v21    # "c":J
    .local v8, "c":J
    long-to-int v10, v8

    aput v10, p2, v16

    .line 377
    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    .line 378
    mul-long v21, v4, v6

    add-long v8, v8, v21

    .line 379
    const/16 v16, 0x20

    long-to-int v10, v8

    aput v10, p2, v23

    .line 380
    ushr-long v8, v8, v16

    .line 381
    mul-long v21, v4, v27

    add-long v8, v8, v21

    .line 382
    long-to-int v10, v8

    aput v10, p2, v15

    .line 383
    ushr-long v8, v8, v16

    .line 384
    mul-long v21, v4, v12

    add-long v8, v8, v21

    .line 385
    long-to-int v10, v8

    aput v10, p2, v11

    .line 386
    ushr-long v8, v8, v16

    .line 387
    mul-long v10, v4, v0

    add-long/2addr v8, v10

    .line 388
    long-to-int v10, v8

    aput v10, p2, v14

    .line 389
    ushr-long v8, v8, v16

    .line 390
    mul-long v10, v4, v2

    add-long/2addr v8, v10

    .line 391
    long-to-int v10, v8

    aput v10, p2, v24

    .line 392
    ushr-long v8, v8, v16

    .line 393
    long-to-int v10, v8

    const/4 v11, 0x6

    aput v10, p2, v11

    .line 396
    .end local v4    # "x_0":J
    .end local v8    # "c":J
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_0

    .line 398
    const-wide/16 v8, 0x0

    .restart local v8    # "c":J
    aget v5, p0, v4

    int-to-long v14, v5

    and-long v14, v14, v19

    .line 399
    .local v14, "x_i":J
    mul-long v21, v14, v17

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    move-wide/from16 v23, v12

    .end local v12    # "y_3":J
    .local v23, "y_3":J
    int-to-long v11, v5

    and-long v11, v11, v19

    add-long v21, v21, v11

    add-long v8, v8, v21

    .line 400
    add-int/lit8 v5, v4, 0x0

    long-to-int v11, v8

    aput v11, p2, v5

    .line 401
    ushr-long v8, v8, v16

    .line 402
    mul-long v11, v14, v6

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    move-wide/from16 v21, v11

    int-to-long v10, v5

    and-long v10, v10, v19

    add-long v10, v21, v10

    add-long/2addr v8, v10

    .line 403
    add-int/lit8 v5, v4, 0x1

    long-to-int v10, v8

    aput v10, p2, v5

    .line 404
    ushr-long v8, v8, v16

    .line 405
    mul-long v10, v14, v27

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    move-wide/from16 v21, v14

    .end local v14    # "x_i":J
    .local v21, "x_i":J
    int-to-long v13, v5

    and-long v13, v13, v19

    add-long/2addr v10, v13

    add-long/2addr v8, v10

    .line 406
    add-int/lit8 v5, v4, 0x2

    long-to-int v10, v8

    aput v10, p2, v5

    .line 407
    ushr-long v8, v8, v16

    .line 408
    mul-long v14, v21, v23

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v10, v10, v19

    add-long/2addr v14, v10

    add-long/2addr v8, v14

    .line 409
    add-int/lit8 v5, v4, 0x3

    long-to-int v10, v8

    aput v10, p2, v5

    .line 410
    ushr-long v8, v8, v16

    .line 411
    mul-long v14, v21, v0

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v10, v10, v19

    add-long/2addr v14, v10

    add-long/2addr v8, v14

    .line 412
    add-int/lit8 v5, v4, 0x4

    long-to-int v10, v8

    aput v10, p2, v5

    .line 413
    ushr-long v8, v8, v16

    .line 414
    mul-long v14, v21, v2

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v10, v10, v19

    add-long/2addr v14, v10

    add-long/2addr v8, v14

    .line 415
    add-int/lit8 v5, v4, 0x5

    long-to-int v10, v8

    aput v10, p2, v5

    .line 416
    ushr-long v8, v8, v16

    .line 417
    add-int/lit8 v5, v4, 0x6

    long-to-int v10, v8

    aput v10, p2, v5

    .line 396
    .end local v8    # "c":J
    .end local v21    # "x_i":J
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v12, v23

    const/4 v11, 0x6

    goto/16 :goto_0

    .line 419
    .end local v4    # "i":I
    .end local v23    # "y_3":J
    .restart local v12    # "y_3":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 26
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

    .line 562
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 563
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 564
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 565
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 566
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 567
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 568
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 569
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 570
    ushr-long/2addr v0, v9

    .line 571
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 572
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

    .line 573
    add-int/lit8 v5, p6, 0x2

    long-to-int v6, v0

    aput v6, p5, v5

    .line 574
    ushr-long/2addr v0, v9

    .line 575
    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    int-to-long v5, v5

    and-long v5, v5, v17

    .line 576
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

    .line 577
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x3

    long-to-int v14, v0

    aput v14, p5, v9

    .line 578
    ushr-long v0, v0, v19

    .line 579
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v14, v9

    and-long v14, v14, v17

    .line 580
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

    .line 581
    .end local v22    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x4

    long-to-int v2, v0

    aput v2, p5, v9

    .line 582
    ushr-long v0, v0, v19

    .line 583
    add-int/lit8 v2, p2, 0x5

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 584
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

    .line 585
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x5

    long-to-int v9, v0

    aput v9, p5, v2

    .line 586
    ushr-long v0, v0, v19

    .line 587
    add-long v0, v0, v24

    .line 588
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

    .line 622
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 623
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 624
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 625
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 626
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 627
    ushr-long v12, p1, v11

    .line 628
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

    .line 629
    add-int/lit8 v7, v1, 0x1

    long-to-int v8, v2

    aput v8, v0, v7

    .line 630
    ushr-long/2addr v2, v11

    .line 631
    add-int/lit8 v7, v1, 0x2

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v7, v12

    add-long/2addr v2, v7

    .line 632
    add-int/lit8 v7, v1, 0x2

    long-to-int v8, v2

    aput v8, v0, v7

    .line 633
    ushr-long/2addr v2, v11

    .line 634
    add-int/lit8 v7, v1, 0x3

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v2, v7

    .line 635
    add-int/lit8 v7, v1, 0x3

    long-to-int v8, v2

    aput v8, v0, v7

    .line 636
    ushr-long/2addr v2, v11

    .line 637
    const-wide/16 v7, 0x0

    cmp-long v11, v2, v7

    if-nez v11, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 v7, 0x6

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

    .line 645
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 646
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 647
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 648
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 649
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 650
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 651
    ushr-long/2addr v0, v8

    .line 652
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 653
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 654
    ushr-long/2addr v0, v8

    .line 655
    const-wide/16 v4, 0x0

    cmp-long v8, v0, v4

    if-nez v8, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

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

    .line 520
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 521
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 522
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 523
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 524
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 525
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 527
    .local v12, "y_5":J
    const-wide/16 v14, 0x0

    .line 528
    .local v14, "zc":J
    const/16 v16, 0x0

    move-wide/from16 v17, v2

    move-wide v2, v14

    move/from16 v15, v16

    move/from16 v14, p5

    .end local p5    # "zzOff":I
    .local v2, "zc":J
    .local v14, "zzOff":I
    .local v15, "i":I
    :goto_0
    move-wide/from16 v19, v0

    .end local v0    # "y_0":J
    .local v19, "y_0":J
    const/4 v0, 0x6

    if-ge v15, v0, :cond_0

    .line 530
    const-wide/16 v0, 0x0

    .local v0, "c":J
    add-int v16, p1, v15

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .local v21, "c":J
    aget v0, p0, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    .line 531
    .local v0, "x_i":J
    mul-long v23, v0, v19

    add-int/lit8 v16, v14, 0x0

    move-wide/from16 v25, v0

    .end local v0    # "x_i":J
    .local v25, "x_i":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v0, v21, v23

    .line 532
    .end local v21    # "c":J
    .local v0, "c":J
    add-int/lit8 v16, v14, 0x0

    move-wide/from16 v21, v4

    .end local v4    # "y_1":J
    .local v21, "y_1":J
    long-to-int v4, v0

    aput v4, p4, v16

    .line 533
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 534
    mul-long v23, v25, v21

    add-int/lit8 v5, v14, 0x1

    aget v5, p4, v5

    const/16 p5, 0x20

    int-to-long v4, v5

    and-long v4, v4, v17

    add-long v23, v23, v4

    add-long v0, v0, v23

    .line 535
    add-int/lit8 v4, v14, 0x1

    long-to-int v5, v0

    aput v5, p4, v4

    .line 536
    ushr-long v0, v0, p5

    .line 537
    mul-long v4, v25, v6

    add-int/lit8 v16, v14, 0x2

    move-wide/from16 v23, v0

    .end local v0    # "c":J
    .local v23, "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v23, v4

    .line 538
    .end local v23    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v14, 0x2

    long-to-int v5, v0

    aput v5, p4, v4

    .line 539
    ushr-long v0, v0, p5

    .line 540
    mul-long v4, v25, v8

    add-int/lit8 v16, v14, 0x3

    move-wide/from16 v23, v0

    .end local v0    # "c":J
    .restart local v23    # "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v23, v4

    .line 541
    .end local v23    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v14, 0x3

    long-to-int v5, v0

    aput v5, p4, v4

    .line 542
    ushr-long v0, v0, p5

    .line 543
    mul-long v4, v25, v10

    add-int/lit8 v16, v14, 0x4

    move-wide/from16 v23, v0

    .end local v0    # "c":J
    .restart local v23    # "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v23, v4

    .line 544
    .end local v23    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v14, 0x4

    long-to-int v5, v0

    aput v5, p4, v4

    .line 545
    ushr-long v0, v0, p5

    .line 546
    mul-long v4, v25, v12

    add-int/lit8 v16, v14, 0x5

    move-wide/from16 v23, v0

    .end local v0    # "c":J
    .restart local v23    # "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v23, v4

    .line 547
    .end local v23    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v14, 0x5

    long-to-int v5, v0

    aput v5, p4, v4

    .line 548
    ushr-long v0, v0, p5

    .line 550
    add-int/lit8 v4, v14, 0x6

    aget v4, p4, v4

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 551
    add-int/lit8 v4, v14, 0x6

    long-to-int v5, v2

    aput v5, p4, v4

    .line 552
    ushr-long v2, v2, p5

    .line 553
    nop

    .end local v0    # "c":J
    .end local v25    # "x_i":J
    add-int/lit8 v14, v14, 0x1

    .line 528
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, v19

    move-wide/from16 v4, v21

    goto/16 :goto_0

    .line 555
    .end local v15    # "i":I
    .end local v21    # "y_1":J
    .restart local v4    # "y_1":J
    :cond_0
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

    .line 481
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 482
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 483
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 484
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 485
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 486
    .local v10, "y_4":J
    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 488
    .local v12, "y_5":J
    const-wide/16 v14, 0x0

    .line 489
    .local v14, "zc":J
    const/16 v16, 0x0

    move-wide/from16 v28, v2

    move/from16 v2, v16

    move-wide/from16 v16, v28

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 491
    const-wide/16 v18, 0x0

    .local v18, "c":J
    aget v3, p0, v2

    move-wide/from16 v20, v0

    .end local v0    # "y_0":J
    .local v20, "y_0":J
    int-to-long v0, v3

    and-long v0, v0, v16

    .line 492
    .local v0, "x_i":J
    mul-long v22, v0, v20

    add-int/lit8 v3, v2, 0x0

    aget v3, p2, v3

    move-wide/from16 v24, v0

    .end local v0    # "x_i":J
    .local v24, "x_i":J
    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v22, v22, v0

    add-long v0, v18, v22

    .line 493
    .end local v18    # "c":J
    .local v0, "c":J
    add-int/lit8 v3, v2, 0x0

    move/from16 v18, v2

    .end local v2    # "i":I
    .local v18, "i":I
    long-to-int v2, v0

    aput v2, p2, v3

    .line 494
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 495
    mul-long v22, v24, v4

    add-int/lit8 v3, v18, 0x1

    aget v3, p2, v3

    const/16 v19, 0x20

    int-to-long v2, v3

    and-long v2, v2, v16

    add-long v22, v22, v2

    add-long v0, v0, v22

    .line 496
    add-int/lit8 v2, v18, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 497
    ushr-long v0, v0, v19

    .line 498
    mul-long v2, v24, v6

    add-int/lit8 v22, v18, 0x2

    move-wide/from16 v26, v0

    .end local v0    # "c":J
    .local v26, "c":J
    aget v0, p2, v22

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v26, v2

    .line 499
    .end local v26    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v18, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 500
    ushr-long v0, v0, v19

    .line 501
    mul-long v2, v24, v8

    add-int/lit8 v22, v18, 0x3

    move-wide/from16 v26, v0

    .end local v0    # "c":J
    .restart local v26    # "c":J
    aget v0, p2, v22

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v26, v2

    .line 502
    .end local v26    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v18, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 503
    ushr-long v0, v0, v19

    .line 504
    mul-long v2, v24, v10

    add-int/lit8 v22, v18, 0x4

    move-wide/from16 v26, v0

    .end local v0    # "c":J
    .restart local v26    # "c":J
    aget v0, p2, v22

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v26, v2

    .line 505
    .end local v26    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v18, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 506
    ushr-long v0, v0, v19

    .line 507
    mul-long v2, v24, v12

    add-int/lit8 v22, v18, 0x5

    move-wide/from16 v26, v0

    .end local v0    # "c":J
    .restart local v26    # "c":J
    aget v0, p2, v22

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v26, v2

    .line 508
    .end local v26    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v18, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 509
    ushr-long v0, v0, v19

    .line 511
    add-int/lit8 v2, v18, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    and-long v2, v2, v16

    add-long/2addr v2, v0

    add-long/2addr v14, v2

    .line 512
    add-int/lit8 v2, v18, 0x6

    long-to-int v3, v14

    aput v3, p2, v2

    .line 513
    ushr-long v14, v14, v19

    .line 489
    .end local v0    # "c":J
    .end local v24    # "x_i":J
    add-int/lit8 v2, v18, 0x1

    move-wide/from16 v0, v20

    .end local v18    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .end local v20    # "y_0":J
    .local v0, "y_0":J
    :cond_0
    move-wide/from16 v20, v0

    .line 515
    .end local v0    # "y_0":J
    .end local v2    # "i":I
    .restart local v20    # "y_0":J
    long-to-int v0, v14

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

    .line 676
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 677
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 680
    .local v6, "i":I
    :cond_0
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-long/2addr v0, v7

    .line 681
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 682
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 684
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x6

    if-lt v6, v7, :cond_0

    .line 685
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

    .line 595
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 596
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

    .line 597
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 598
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 599
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

    .line 600
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 601
    ushr-long/2addr v0, v6

    .line 602
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

    .line 603
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 604
    ushr-long/2addr v0, v6

    .line 605
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

    .line 606
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 607
    ushr-long/2addr v0, v6

    .line 608
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

    .line 609
    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 610
    ushr-long/2addr v0, v6

    .line 611
    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x5

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 612
    add-int/lit8 v4, p4, 0x5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 613
    ushr-long/2addr v0, v6

    .line 614
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

    .line 661
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 662
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long v6, v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 663
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 664
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 665
    ushr-long v7, p1, v6

    mul-long v7, v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 666
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 667
    ushr-long/2addr v0, v6

    .line 668
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 669
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 670
    ushr-long/2addr v0, v6

    .line 671
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static square([II[II)V
    .locals 41
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

    .line 806
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 809
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 811
    .local v4, "c":I
    const/4 v5, 0x5

    .local v5, "i":I
    const/16 v6, 0xc

    .line 814
    .local v6, "j":I
    :goto_0
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 815
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 816
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v15, v14

    or-int/2addr v12, v15

    aput v12, p2, v5

    .line 817
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v15, v14

    aput v15, p2, v5

    .line 818
    long-to-int v4, v10

    .line 820
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_0

    .line 823
    mul-long v8, v0, v0

    .line 824
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 825
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 826
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v14, v13

    and-int/lit8 v4, v14, 0x1

    .line 830
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 831
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 834
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 835
    long-to-int v12, v10

    .line 836
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 837
    ushr-int/lit8 v4, v12, 0x1f

    .line 838
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 841
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 842
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v16, v2

    int-to-long v2, v15

    and-long v2, v2, v16

    .line 843
    .local v2, "zz_3":J
    add-int/lit8 v15, p3, 0x4

    aget v15, p2, v15

    move-wide/from16 v19, v6

    const/16 v18, 0x20

    .end local v6    # "x_1":J
    .local v19, "x_1":J
    int-to-long v5, v15

    and-long v5, v5, v16

    .line 845
    .local v5, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 846
    long-to-int v7, v8

    .line 847
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 848
    ushr-int/lit8 v4, v7, 0x1f

    .line 849
    ushr-long v21, v8, v18

    mul-long v23, v13, v19

    add-long v21, v21, v23

    add-long v2, v2, v21

    .line 850
    ushr-long v21, v2, v18

    add-long v5, v5, v21

    .line 851
    and-long v2, v2, v16

    .line 854
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v0

    .end local v0    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 855
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

    .line 856
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

    .line 858
    mul-long v27, v23, v21

    add-long v2, v2, v27

    .line 859
    long-to-int v7, v2

    .line 860
    add-int/lit8 v12, p3, 0x3

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 861
    ushr-int/lit8 v4, v7, 0x1f

    .line 862
    ushr-long v27, v2, v18

    mul-long v29, v23, v19

    add-long v27, v27, v29

    add-long v5, v5, v27

    .line 863
    ushr-long v27, v5, v18

    mul-long v29, v23, v13

    add-long v27, v27, v29

    add-long v25, v25, v27

    .line 864
    and-long v5, v5, v16

    .line 865
    ushr-long v27, v25, v18

    add-long v0, v0, v27

    .line 866
    and-long v25, v25, v16

    .line 869
    add-int/lit8 v12, p1, 0x4

    aget v12, p0, v12

    move-wide/from16 v27, v0

    .end local v0    # "zz_6":J
    .local v27, "zz_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 870
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

    .line 871
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

    .line 873
    mul-long v33, v29, v21

    add-long v5, v5, v33

    .line 874
    long-to-int v7, v5

    .line 875
    add-int/lit8 v12, p3, 0x4

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 876
    ushr-int/lit8 v4, v7, 0x1f

    .line 877
    ushr-long v33, v5, v18

    mul-long v35, v29, v19

    add-long v33, v33, v35

    add-long v25, v25, v33

    .line 878
    ushr-long v33, v25, v18

    mul-long v35, v29, v13

    add-long v33, v33, v35

    add-long v27, v27, v33

    .line 879
    and-long v25, v25, v16

    .line 880
    ushr-long v33, v27, v18

    mul-long v35, v29, v23

    add-long v33, v33, v35

    add-long v31, v31, v33

    .line 881
    and-long v27, v27, v16

    .line 882
    ushr-long v33, v31, v18

    add-long v0, v0, v33

    .line 883
    and-long v31, v31, v16

    .line 886
    add-int/lit8 v12, p1, 0x5

    aget v12, p0, v12

    move-wide/from16 v33, v0

    .end local v0    # "zz_8":J
    .local v33, "zz_8":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 887
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

    .line 888
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
    and-long v16, v37, v16

    .line 890
    .end local v37    # "zz_9":J
    .local v16, "zz_9":J
    mul-long v37, v35, v21

    move-wide/from16 v39, v0

    .end local v0    # "zz_10":J
    .local v39, "zz_10":J
    add-long v0, v25, v37

    .line 891
    .end local v25    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v7, v0

    .line 892
    add-int/lit8 v12, p3, 0x5

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 893
    ushr-int/lit8 v4, v7, 0x1f

    .line 894
    ushr-long v25, v0, v18

    mul-long v37, v35, v19

    add-long v25, v25, v37

    move-wide/from16 v37, v0

    .end local v0    # "zz_5":J
    .local v37, "zz_5":J
    add-long v0, v27, v25

    .line 895
    .end local v27    # "zz_6":J
    .local v0, "zz_6":J
    ushr-long v25, v0, v18

    mul-long v27, v35, v13

    add-long v25, v25, v27

    move-wide/from16 v27, v2

    .end local v2    # "zz_3":J
    .local v27, "zz_3":J
    add-long v2, v31, v25

    .line 896
    .end local v31    # "zz_7":J
    .local v2, "zz_7":J
    ushr-long v25, v2, v18

    mul-long v31, v35, v23

    add-long v25, v25, v31

    move-wide/from16 v31, v5

    move v6, v4

    .end local v4    # "c":I
    .end local v5    # "zz_4":J
    .local v6, "c":I
    .local v31, "zz_4":J
    add-long v4, v33, v25

    .line 897
    .end local v33    # "zz_8":J
    .local v4, "zz_8":J
    ushr-long v25, v4, v18

    mul-long v33, v35, v29

    add-long v25, v25, v33

    move v15, v6

    move v12, v7

    .end local v6    # "c":I
    .end local v7    # "w":I
    .restart local v12    # "w":I
    .local v15, "c":I
    add-long v6, v16, v25

    .line 898
    .end local v16    # "zz_9":J
    .local v6, "zz_9":J
    ushr-long v16, v6, v18

    move-wide/from16 v25, v8

    .end local v8    # "zz_2":J
    .local v25, "zz_2":J
    add-long v8, v39, v16

    .line 901
    .end local v39    # "zz_10":J
    .local v8, "zz_10":J
    long-to-int v12, v0

    .line 902
    add-int/lit8 v16, p3, 0x6

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 903
    ushr-int/lit8 v15, v12, 0x1f

    .line 904
    long-to-int v12, v2

    .line 905
    add-int/lit8 v16, p3, 0x7

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 906
    ushr-int/lit8 v15, v12, 0x1f

    .line 907
    long-to-int v12, v4

    .line 908
    add-int/lit8 v16, p3, 0x8

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 909
    ushr-int/lit8 v15, v12, 0x1f

    .line 910
    long-to-int v12, v6

    .line 911
    add-int/lit8 v16, p3, 0x9

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 912
    ushr-int/lit8 v15, v12, 0x1f

    .line 913
    long-to-int v12, v8

    .line 914
    add-int/lit8 v16, p3, 0xa

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 915
    ushr-int/lit8 v15, v12, 0x1f

    .line 916
    add-int/lit8 v16, p3, 0xb

    aget v16, p2, v16

    move-wide/from16 v33, v0

    .end local v0    # "zz_6":J
    .local v33, "zz_6":J
    ushr-long v0, v8, v18

    long-to-int v1, v0

    add-int v16, v16, v1

    .line 917
    .end local v12    # "w":I
    .local v16, "w":I
    add-int/lit8 v0, p3, 0xb

    shl-int/lit8 v1, v16, 0x1

    or-int/2addr v1, v15

    aput v1, p2, v0

    .line 918
    return-void

    .line 820
    .end local v2    # "zz_7":J
    .end local v8    # "zz_10":J
    .end local v10    # "zz_1":J
    .end local v13    # "x_2":J
    .end local v15    # "c":I
    .end local v16    # "w":I
    .end local v19    # "x_1":J
    .end local v21    # "x_0":J
    .end local v23    # "x_3":J
    .end local v25    # "zz_2":J
    .end local v27    # "zz_3":J
    .end local v29    # "x_4":J
    .end local v31    # "zz_4":J
    .end local v33    # "zz_6":J
    .end local v35    # "x_5":J
    .end local v37    # "zz_5":J
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
    .locals 46
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

    .line 690
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 693
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 695
    .local v5, "c":I
    const/4 v6, 0x5

    .local v6, "i":I
    const/16 v7, 0xc

    .line 698
    .local v7, "j":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 699
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 700
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v15, v14

    or-int/2addr v6, v15

    aput v6, p1, v7

    .line 701
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v15, v14

    aput v15, p1, v7

    .line 702
    long-to-int v5, v11

    .line 704
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_0

    .line 707
    mul-long v9, v1, v1

    .line 708
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 709
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 710
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v14, v13

    and-int/lit8 v5, v14, 0x1

    .line 714
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 715
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 718
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 719
    long-to-int v10, v11

    .line 720
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 721
    ushr-int/lit8 v5, v10, 0x1f

    .line 722
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 725
    aget v6, p0, v9

    move-wide v15, v1

    const/16 v2, 0x20

    .end local v1    # "x_0":J
    .local v15, "x_0":J
    int-to-long v0, v6

    and-long/2addr v0, v3

    .line 726
    .local v0, "x_2":J
    const/4 v6, 0x3

    const/16 v17, 0x20

    aget v2, p1, v6

    move-wide/from16 v18, v3

    int-to-long v3, v2

    and-long v3, v3, v18

    .line 727
    .local v3, "zz_3":J
    const/16 v20, 0x4

    aget v2, p1, v20

    move-wide/from16 v21, v7

    const/4 v8, 0x3

    .end local v7    # "x_1":J
    .local v21, "x_1":J
    int-to-long v6, v2

    and-long v6, v6, v18

    .line 729
    .local v6, "zz_4":J
    mul-long v23, v0, v15

    add-long v13, v13, v23

    .line 730
    long-to-int v2, v13

    .line 731
    .end local v10    # "w":I
    .local v2, "w":I
    shl-int/lit8 v10, v2, 0x1

    or-int/2addr v10, v5

    aput v10, p1, v9

    .line 732
    ushr-int/lit8 v5, v2, 0x1f

    .line 733
    ushr-long v9, v13, v17

    mul-long v23, v0, v21

    add-long v9, v9, v23

    add-long/2addr v3, v9

    .line 734
    ushr-long v9, v3, v17

    add-long/2addr v6, v9

    .line 735
    and-long v3, v3, v18

    .line 738
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v9, v9, v18

    .line 739
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

    .line 740
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

    .line 742
    mul-long v30, v9, v15

    add-long v3, v3, v30

    .line 743
    long-to-int v2, v3

    .line 744
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 745
    ushr-int/lit8 v5, v2, 0x1f

    .line 746
    ushr-long v30, v3, v17

    mul-long v32, v9, v21

    add-long v30, v30, v32

    add-long v6, v6, v30

    .line 747
    ushr-long v30, v6, v17

    mul-long v32, v9, v25

    add-long v30, v30, v32

    add-long v28, v28, v30

    .line 748
    and-long v6, v6, v18

    .line 749
    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .line 750
    and-long v28, v28, v18

    .line 753
    aget v8, p0, v20

    move-wide/from16 v30, v0

    .end local v0    # "zz_6":J
    .local v30, "zz_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 754
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

    .line 755
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

    .line 757
    mul-long v37, v32, v15

    add-long v6, v6, v37

    .line 758
    long-to-int v2, v6

    .line 759
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v20

    .line 760
    ushr-int/lit8 v5, v2, 0x1f

    .line 761
    ushr-long v37, v6, v17

    mul-long v39, v32, v21

    add-long v37, v37, v39

    add-long v28, v28, v37

    .line 762
    ushr-long v37, v28, v17

    mul-long v39, v32, v25

    add-long v37, v37, v39

    add-long v30, v30, v37

    .line 763
    and-long v28, v28, v18

    .line 764
    ushr-long v37, v30, v17

    mul-long v39, v32, v9

    add-long v37, v37, v39

    add-long v35, v35, v37

    .line 765
    and-long v30, v30, v18

    .line 766
    ushr-long v37, v35, v17

    add-long v0, v0, v37

    .line 767
    and-long v35, v35, v18

    .line 770
    aget v8, p0, v23

    move-wide/from16 v37, v0

    .end local v0    # "zz_8":J
    .local v37, "zz_8":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 771
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

    .line 772
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
    and-long v18, v42, v18

    .line 774
    .end local v42    # "zz_9":J
    .local v18, "zz_9":J
    mul-long v42, v39, v15

    move-wide/from16 v44, v0

    .end local v0    # "zz_10":J
    .local v44, "zz_10":J
    add-long v0, v28, v42

    .line 775
    .end local v28    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v2, v0

    .line 776
    shl-int/lit8 v8, v2, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v23

    .line 777
    ushr-int/lit8 v5, v2, 0x1f

    .line 778
    ushr-long v28, v0, v17

    mul-long v42, v39, v21

    add-long v28, v28, v42

    move-wide/from16 v42, v0

    .end local v0    # "zz_5":J
    .local v42, "zz_5":J
    add-long v0, v30, v28

    .line 779
    .end local v30    # "zz_6":J
    .local v0, "zz_6":J
    ushr-long v28, v0, v17

    mul-long v30, v39, v25

    add-long v28, v28, v30

    move-wide/from16 v30, v3

    move v4, v2

    .end local v2    # "w":I
    .end local v3    # "zz_3":J
    .local v4, "w":I
    .local v30, "zz_3":J
    add-long v2, v35, v28

    .line 780
    .end local v35    # "zz_7":J
    .local v2, "zz_7":J
    ushr-long v28, v2, v17

    mul-long v35, v39, v9

    add-long v28, v28, v35

    move/from16 v23, v4

    move v8, v5

    .end local v4    # "w":I
    .end local v5    # "c":I
    .local v8, "c":I
    .local v23, "w":I
    add-long v4, v37, v28

    .line 781
    .end local v37    # "zz_8":J
    .local v4, "zz_8":J
    ushr-long v28, v4, v17

    mul-long v35, v39, v32

    add-long v28, v28, v35

    move-wide/from16 v35, v6

    .end local v6    # "zz_4":J
    .local v35, "zz_4":J
    add-long v6, v18, v28

    .line 782
    .end local v18    # "zz_9":J
    .local v6, "zz_9":J
    ushr-long v18, v6, v17

    move-wide/from16 v28, v9

    move v10, v8

    .end local v8    # "c":I
    .end local v9    # "x_3":J
    .local v10, "c":I
    .local v28, "x_3":J
    add-long v8, v44, v18

    .line 785
    .end local v44    # "zz_10":J
    .local v8, "zz_10":J
    move/from16 v18, v10

    .end local v10    # "c":I
    .local v18, "c":I
    long-to-int v10, v0

    .line 786
    .end local v23    # "w":I
    .local v10, "w":I
    shl-int/lit8 v19, v10, 0x1

    or-int v19, v19, v18

    aput v19, p1, v27

    .line 787
    ushr-int/lit8 v18, v10, 0x1f

    .line 788
    long-to-int v10, v2

    .line 789
    shl-int/lit8 v19, v10, 0x1

    or-int v19, v19, v18

    aput v19, p1, v24

    .line 790
    ushr-int/lit8 v18, v10, 0x1f

    .line 791
    long-to-int v10, v4

    .line 792
    shl-int/lit8 v19, v10, 0x1

    or-int v19, v19, v18

    aput v19, p1, v34

    .line 793
    ushr-int/lit8 v18, v10, 0x1f

    .line 794
    long-to-int v10, v6

    .line 795
    shl-int/lit8 v19, v10, 0x1

    or-int v19, v19, v18

    aput v19, p1, v20

    .line 796
    ushr-int/lit8 v18, v10, 0x1f

    .line 797
    long-to-int v10, v8

    .line 798
    shl-int/lit8 v19, v10, 0x1

    or-int v19, v19, v18

    aput v19, p1, v41

    .line 799
    ushr-int/lit8 v18, v10, 0x1f

    .line 800
    const/16 v19, 0xb

    aget v20, p1, v19

    move-wide/from16 v23, v0

    .end local v0    # "zz_6":J
    .local v23, "zz_6":J
    ushr-long v0, v8, v17

    long-to-int v1, v0

    add-int v20, v20, v1

    .line 801
    .end local v10    # "w":I
    .local v20, "w":I
    shl-int/lit8 v0, v20, 0x1

    or-int v0, v0, v18

    aput v0, p1, v19

    .line 802
    return-void

    .line 704
    .end local v2    # "zz_7":J
    .end local v4    # "zz_8":J
    .end local v6    # "zz_9":J
    .end local v11    # "zz_1":J
    .end local v13    # "zz_2":J
    .end local v15    # "x_0":J
    .end local v18    # "c":I
    .end local v20    # "w":I
    .end local v21    # "x_1":J
    .end local v23    # "zz_6":J
    .end local v25    # "x_2":J
    .end local v28    # "x_3":J
    .end local v30    # "zz_3":J
    .end local v32    # "x_4":J
    .end local v35    # "zz_4":J
    .end local v39    # "x_5":J
    .end local v42    # "zz_5":J
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

    .line 946
    const-wide/16 v0, 0x0

    .line 947
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

    .line 948
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 949
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 950
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

    .line 951
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 952
    shr-long/2addr v0, v2

    .line 953
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

    .line 954
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 955
    shr-long/2addr v0, v2

    .line 956
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

    .line 957
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 958
    shr-long/2addr v0, v2

    .line 959
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

    .line 960
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 961
    shr-long/2addr v0, v2

    .line 962
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 963
    add-int/lit8 v3, p5, 0x5

    long-to-int v4, v0

    aput v4, p4, v3

    .line 964
    shr-long/2addr v0, v2

    .line 965
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

    .line 922
    const-wide/16 v0, 0x0

    .line 923
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

    .line 924
    long-to-int v3, v0

    aput v3, p2, v2

    .line 925
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 926
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 927
    long-to-int v4, v0

    aput v4, p2, v3

    .line 928
    shr-long/2addr v0, v2

    .line 929
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 930
    long-to-int v4, v0

    aput v4, p2, v3

    .line 931
    shr-long/2addr v0, v2

    .line 932
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 933
    long-to-int v4, v0

    aput v4, p2, v3

    .line 934
    shr-long/2addr v0, v2

    .line 935
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 936
    long-to-int v4, v0

    aput v4, p2, v3

    .line 937
    shr-long/2addr v0, v2

    .line 938
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 939
    long-to-int v4, v0

    aput v4, p2, v3

    .line 940
    shr-long/2addr v0, v2

    .line 941
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

    .line 970
    const-wide/16 v0, 0x0

    .line 971
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

    .line 972
    long-to-int v3, v0

    aput v3, p2, v2

    .line 973
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 974
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

    .line 975
    long-to-int v4, v0

    aput v4, p2, v3

    .line 976
    shr-long/2addr v0, v2

    .line 977
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

    .line 978
    long-to-int v4, v0

    aput v4, p2, v3

    .line 979
    shr-long/2addr v0, v2

    .line 980
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

    .line 981
    long-to-int v4, v0

    aput v4, p2, v3

    .line 982
    shr-long/2addr v0, v2

    .line 983
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

    .line 984
    long-to-int v4, v0

    aput v4, p2, v3

    .line 985
    shr-long/2addr v0, v2

    .line 986
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

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 987
    long-to-int v4, v0

    aput v4, p2, v3

    .line 988
    shr-long/2addr v0, v2

    .line 989
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

    .line 1018
    const-wide/16 v0, 0x0

    .line 1019
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

    .line 1020
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1021
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1022
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

    .line 1023
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1024
    shr-long/2addr v0, v2

    .line 1025
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

    .line 1026
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1027
    shr-long/2addr v0, v2

    .line 1028
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

    .line 1029
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1030
    shr-long/2addr v0, v2

    .line 1031
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

    .line 1032
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1033
    shr-long/2addr v0, v2

    .line 1034
    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v4, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 1035
    add-int/lit8 v3, p3, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    .line 1036
    shr-long/2addr v0, v2

    .line 1037
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

    .line 994
    const-wide/16 v0, 0x0

    .line 995
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

    .line 996
    long-to-int v3, v0

    aput v3, p1, v2

    .line 997
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 998
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 999
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1000
    shr-long/2addr v0, v2

    .line 1001
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1002
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1003
    shr-long/2addr v0, v2

    .line 1004
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1005
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1006
    shr-long/2addr v0, v2

    .line 1007
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1008
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1009
    shr-long/2addr v0, v2

    .line 1010
    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v5, v9

    sub-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 1011
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1012
    shr-long/2addr v0, v2

    .line 1013
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

    .line 1042
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 1043
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 1045
    aget v2, p0, v1

    .line 1046
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1048
    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1043
    .end local v2    # "x_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 8
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1056
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 1057
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 1059
    aget-wide v3, p0, v1

    .line 1060
    .local v3, "x_i":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 1062
    rsub-int/lit8 v5, v1, 0x2

    shl-int/lit8 v2, v5, 0x3

    invoke-static {v3, v4, v0, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 1057
    .end local v3    # "x_i":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1065
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

    .line 1070
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1071
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1072
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1073
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1074
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1075
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1076
    return-void
.end method
