.class public abstract Lorg/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(I[I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 17
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 18
    long-to-int v3, v0

    aput v3, p3, v2

    .line 19
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 15
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static add33At(II[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zPos"
        }
    .end annotation

    .line 27
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 28
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 29
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 30
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 31
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 32
    ushr-long/2addr v0, v4

    .line 33
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static add33At(II[III)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zOff",
            "zPos"
        }
    .end annotation

    .line 39
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 40
    .local v0, "c":J
    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 41
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 42
    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 43
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 44
    ushr-long/2addr v0, v4

    .line 45
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static add33To(II[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 51
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p2, v0

    .line 52
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 53
    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 54
    long-to-int v3, v1

    aput v3, p2, v6

    .line 55
    ushr-long/2addr v1, v5

    .line 56
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static add33To(II[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
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
            "len",
            "x",
            "z",
            "zOff"
        }
    .end annotation

    .line 61
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 62
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 63
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 64
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 65
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 66
    ushr-long/2addr v0, v4

    .line 67
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static addBothTo(I[II[II[II)I
    .locals 9
    .param p0, "len"    # I
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
            "len",
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 84
    const-wide/16 v0, 0x0

    .line 85
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 87
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-int v7, p6, v2

    aget v7, p5, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 88
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 89
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo(I[I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 72
    const-wide/16 v0, 0x0

    .line 73
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 75
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p3, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 76
    long-to-int v3, v0

    aput v3, p3, v2

    .line 77
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static addDWordAt(IJ[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zPos"
        }
    .end annotation

    .line 97
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 98
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 99
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 100
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 101
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 102
    ushr-long/2addr v0, v4

    .line 103
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static addDWordAt(IJ[III)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zOff",
            "zPos"
        }
    .end annotation

    .line 109
    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 110
    .local v0, "c":J
    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 111
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 112
    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 113
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 114
    ushr-long/2addr v0, v4

    .line 115
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static addDWordTo(IJ[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    .line 121
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p3, v0

    .line 122
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 123
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 124
    long-to-int v3, v1

    aput v3, p3, v6

    .line 125
    ushr-long/2addr v1, v5

    .line 126
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static addDWordTo(IJ[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
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
            "len",
            "x",
            "z",
            "zOff"
        }
    .end annotation

    .line 131
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 132
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 133
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 134
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 135
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 136
    ushr-long/2addr v0, v4

    .line 137
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static addTo(I[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
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
            "len",
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 154
    const-wide/16 v0, 0x0

    .line 155
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 157
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 158
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 159
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static addTo(I[II[III)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "cIn"    # I
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
            "len",
            "x",
            "xOff",
            "z",
            "zOff",
            "cIn"
        }
    .end annotation

    .line 166
    int-to-long v0, p5

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 167
    .local v0, "c":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p0, :cond_0

    .line 169
    add-int v5, p2, v4

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int v7, p4, v4

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 170
    add-int v5, p4, v4

    long-to-int v6, v0

    aput v6, p3, v5

    .line 171
    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    .end local v4    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static addTo(I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 142
    const-wide/16 v0, 0x0

    .line 143
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 145
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 146
    long-to-int v3, v0

    aput v3, p2, v2

    .line 147
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static addToEachOther(I[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "u"    # [I
    .param p2, "uOff"    # I
    .param p3, "v"    # [I
    .param p4, "vOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "u",
            "uOff",
            "v",
            "vOff"
        }
    .end annotation

    .line 178
    const-wide/16 v0, 0x0

    .line 179
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 181
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 182
    add-int v3, p2, v2

    long-to-int v4, v0

    aput v4, p1, v3

    .line 183
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 184
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static addWordAt(II[II)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zPos"
        }
    .end annotation

    .line 192
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 193
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 194
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 195
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static addWordAt(II[III)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zOff",
            "zPos"
        }
    .end annotation

    .line 201
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v4, p3, p4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 202
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 203
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 204
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static addWordTo(II[I)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 209
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 210
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, v4

    .line 211
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 212
    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static addWordTo(II[II)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
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
            "len",
            "x",
            "z",
            "zOff"
        }
    .end annotation

    .line 217
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 218
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 219
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 220
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static cadd(II[I[I[I)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "y"    # [I
    .param p4, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "mask",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 225
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 226
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 227
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    .line 229
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 230
    long-to-int v7, v4

    aput v7, p4, v6

    .line 231
    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 233
    .end local v6    # "i":I
    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static caddTo(II[I[I)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "mask",
            "x",
            "z"
        }
    .end annotation

    .line 238
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 239
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 240
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    .line 242
    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p2, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 243
    long-to-int v7, v4

    aput v7, p3, v6

    .line 244
    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    .line 240
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 246
    .end local v6    # "i":I
    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static cmov(II[II[II)V
    .locals 4
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "xOff"    # I
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
            "len",
            "mask",
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 251
    and-int/lit8 v0, p1, 0x1

    neg-int p1, v0

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 255
    add-int v1, p5, v0

    aget v1, p4, v1

    .local v1, "z_i":I
    add-int v2, p3, v0

    aget v2, p2, v2

    xor-int/2addr v2, v1

    .line 256
    .local v2, "diff":I
    and-int v3, v2, p1

    xor-int/2addr v1, v3

    .line 257
    add-int v3, p5, v0

    aput v1, p4, v3

    .line 253
    .end local v1    # "z_i":I
    .end local v2    # "diff":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static compare(I[II[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "xOff",
            "y",
            "yOff"
        }
    .end annotation

    .line 287
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 289
    add-int v1, p2, v0

    aget v1, p1, v1

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 290
    .local v1, "x_i":I
    add-int v3, p4, v0

    aget v3, p3, v3

    xor-int/2addr v2, v3

    .line 291
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    .line 292
    const/4 v3, -0x1

    return v3

    .line 293
    :cond_0
    if-le v1, v2, :cond_1

    .line 294
    const/4 v3, 0x1

    return v3

    .line 287
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 296
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static compare(I[I[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y"
        }
    .end annotation

    .line 273
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 275
    aget v1, p1, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 276
    .local v1, "x_i":I
    aget v3, p2, v0

    xor-int/2addr v2, v3

    .line 277
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    .line 278
    const/4 v3, -0x1

    return v3

    .line 279
    :cond_0
    if-le v1, v2, :cond_1

    .line 280
    const/4 v3, 0x1

    return v3

    .line 273
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static copy(I[II[II)V
    .locals 0
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
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
            "len",
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 313
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    return-void
.end method

.method public static copy(I[I[I)V
    .locals 1
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    return-void
.end method

.method public static copy(I[I)[I
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "x"
        }
    .end annotation

    .line 301
    new-array v0, p0, [I

    .line 302
    .local v0, "z":[I
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    return-object v0
.end method

.method public static copy64(I[JI[JI)V
    .locals 0
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "z"    # [J
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
            "len",
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 330
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    return-void
.end method

.method public static copy64(I[J[J)V
    .locals 1
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    return-void
.end method

.method public static copy64(I[J)[J
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "x"
        }
    .end annotation

    .line 318
    new-array v0, p0, [J

    .line 319
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    return-object v0
.end method

.method public static create(I)[I
    .locals 1
    .param p0, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 335
    new-array v0, p0, [I

    return-object v0
.end method

.method public static create64(I)[J
    .locals 1
    .param p0, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 340
    new-array v0, p0, [J

    return-object v0
.end method

.method public static csub(II[II[II[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "xOff"    # I
    .param p4, "y"    # [I
    .param p5, "yOff"    # I
    .param p6, "z"    # [I
    .param p7, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "mask",
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 358
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 359
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 360
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    .line 362
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-int v9, p5, v6

    aget v9, p4, v9

    int-to-long v9, v9

    and-long/2addr v9, v0

    sub-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 363
    add-int v7, p7, v6

    long-to-int v8, v4

    aput v8, p6, v7

    .line 364
    const/16 v7, 0x20

    shr-long/2addr v4, v7

    .line 360
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 366
    .end local v6    # "i":I
    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static csub(II[I[I[I)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "y"    # [I
    .param p4, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "mask",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 345
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 346
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 347
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    .line 349
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    sub-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 350
    long-to-int v7, v4

    aput v7, p4, v6

    .line 351
    const/16 v7, 0x20

    shr-long/2addr v4, v7

    .line 347
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 353
    .end local v6    # "i":I
    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static dec(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "z"
        }
    .end annotation

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    .line 373
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_0

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
    return v1
.end method

.method public static dec(I[I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_2

    .line 386
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    .line 387
    .local v2, "c":I
    aput v2, p2, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    .line 389
    if-eq v2, v1, :cond_1

    .line 391
    :goto_1
    if-ge v0, p0, :cond_0

    .line 393
    aget v1, p1, v0

    aput v1, p2, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 398
    .end local v2    # "c":I
    :cond_1
    goto :goto_0

    .line 399
    :cond_2
    return v1
.end method

.method public static decAt(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zPos"
        }
    .end annotation

    .line 405
    move v0, p2

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    .line 407
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_0

    .line 409
    const/4 v1, 0x0

    return v1

    .line 405
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static decAt(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zOff",
            "zPos"
        }
    .end annotation

    .line 418
    move v0, p3

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    .line 420
    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v2

    if-eq v3, v1, :cond_0

    .line 422
    const/4 v1, 0x0

    return v1

    .line 418
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static diff(I[II[II[II)Z
    .locals 2
    .param p0, "len"    # I
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
            "len",
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 430
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/raw/Nat;->gte(I[II[II)Z

    move-result v0

    .line 431
    .local v0, "pos":Z
    if-eqz v0, :cond_0

    .line 433
    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    goto :goto_0

    .line 437
    :cond_0
    move-object v1, p3

    move-object p3, p1

    move-object p1, v1

    move v1, p4

    move p4, p2

    move p2, v1

    .local p1, "y":[I
    .local p2, "yOff":I
    .local p3, "x":[I
    .local p4, "xOff":I
    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    move-object v1, p3

    move-object p3, p1

    move-object p1, v1

    move v1, p4

    move p4, p2

    move p2, v1

    .line 439
    .local p1, "x":[I
    .local p2, "xOff":I
    .local p3, "y":[I
    .local p4, "yOff":I
    :goto_0
    return v0
.end method

.method public static eq(I[I[I)Z
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y"
        }
    .end annotation

    .line 444
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 446
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 448
    const/4 v1, 0x0

    return v1

    .line 444
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 451
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static equalTo(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y"
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int/2addr v0, p2

    .line 457
    .local v0, "d":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 459
    aget v2, p1, v1

    or-int/2addr v0, v2

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 462
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalTo(I[III)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "xOff",
            "y"
        }
    .end annotation

    .line 467
    aget v0, p1, p2

    xor-int/2addr v0, p3

    .line 468
    .local v0, "d":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 470
    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 473
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalTo(I[II[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "xOff",
            "y",
            "yOff"
        }
    .end annotation

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 492
    add-int v2, p2, v1

    aget v2, p1, v2

    add-int v3, p4, v1

    aget v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 495
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalTo(I[I[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y"
        }
    .end annotation

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 481
    aget v2, p1, v1

    aget v3, p2, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 484
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalToZero(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "x"
        }
    .end annotation

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 503
    aget v2, p1, v1

    or-int/2addr v0, v2

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 506
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static equalToZero(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "xOff"
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 514
    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 517
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static fromBigInteger(ILjava/math/BigInteger;)[I
    .locals 4
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bits",
            "x"
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    .line 527
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    .line 528
    .local v0, "len":I
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .line 531
    .local v1, "z":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 533
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 534
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 531
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 524
    .end local v0    # "len":I
    .end local v1    # "z":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static fromBigInteger64(ILjava/math/BigInteger;)[J
    .locals 5
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bits",
            "x"
        }
    .end annotation

    .line 541
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    .line 546
    add-int/lit8 v0, p0, 0x3f

    shr-int/lit8 v0, v0, 0x6

    .line 547
    .local v0, "len":I
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 550
    .local v1, "z":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 552
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 553
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 543
    .end local v0    # "len":I
    .end local v1    # "z":[J
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

    .line 560
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 562
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 564
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    .line 565
    .local v1, "w":I
    if-ltz v1, :cond_2

    array-length v2, p0

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 569
    :cond_1
    and-int/lit8 v0, p1, 0x1f

    .line 570
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 567
    .end local v0    # "b":I
    :cond_2
    :goto_0
    return v0
.end method

.method public static getBitLength(I[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "x"
        }
    .end annotation

    .line 575
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 577
    aget v1, p1, v0

    .line 578
    .local v1, "x_i":I
    if-eqz v1, :cond_0

    .line 579
    mul-int/lit8 v2, v0, 0x20

    add-int/lit8 v2, v2, 0x20

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    return v2

    .line 575
    .end local v1    # "x_i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 581
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getBitLength(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "xOff"
        }
    .end annotation

    .line 586
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 588
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 589
    .local v1, "x_i":I
    if-eqz v1, :cond_0

    .line 590
    mul-int/lit8 v2, v0, 0x20

    add-int/lit8 v2, v2, 0x20

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    return v2

    .line 586
    .end local v1    # "x_i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 592
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static gte(I[II[II)Z
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "xOff",
            "y",
            "yOff"
        }
    .end annotation

    .line 611
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 613
    add-int v2, p2, v0

    aget v2, p1, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 614
    .local v2, "x_i":I
    add-int v4, p4, v0

    aget v4, p3, v4

    xor-int/2addr v3, v4

    .line 615
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 616
    const/4 v1, 0x0

    return v1

    .line 617
    :cond_0
    if-le v2, v3, :cond_1

    .line 618
    return v1

    .line 611
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 620
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static gte(I[I[I)Z
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y"
        }
    .end annotation

    .line 597
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 599
    aget v2, p1, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 600
    .local v2, "x_i":I
    aget v4, p2, v0

    xor-int/2addr v3, v4

    .line 601
    .local v3, "y_i":I
    if-ge v2, v3, :cond_0

    .line 602
    const/4 v1, 0x0

    return v1

    .line 603
    :cond_0
    if-le v2, v3, :cond_1

    .line 604
    return v1

    .line 597
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 606
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static inc(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "z"
        }
    .end annotation

    .line 625
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    .line 627
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_0

    .line 629
    const/4 v1, 0x0

    return v1

    .line 625
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static inc(I[I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_2

    .line 640
    aget v2, p1, v0

    add-int/2addr v2, v1

    .line 641
    .local v2, "c":I
    aput v2, p2, v0

    .line 642
    add-int/lit8 v0, v0, 0x1

    .line 643
    if-eqz v2, :cond_1

    .line 645
    :goto_1
    if-ge v0, p0, :cond_0

    .line 647
    aget v1, p1, v0

    aput v1, p2, v0

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 652
    .end local v2    # "c":I
    :cond_1
    goto :goto_0

    .line 653
    :cond_2
    return v1
.end method

.method public static incAt(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zPos"
        }
    .end annotation

    .line 659
    move v0, p2

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    .line 661
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_0

    .line 663
    const/4 v1, 0x0

    return v1

    .line 659
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static incAt(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zOff",
            "zPos"
        }
    .end annotation

    .line 672
    move v0, p3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    .line 674
    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/2addr v3, v1

    aput v3, p1, v2

    if-eqz v3, :cond_0

    .line 676
    const/4 v1, 0x0

    return v1

    .line 672
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static isOne(I[I)Z
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "x"
        }
    .end annotation

    .line 684
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 686
    return v0

    .line 688
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_2

    .line 690
    aget v3, p1, v1

    if-eqz v3, :cond_1

    .line 692
    return v0

    .line 688
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public static isZero(I[I)Z
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "x"
        }
    .end annotation

    .line 700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 702
    aget v1, p1, v0

    if-eqz v1, :cond_0

    .line 704
    const/4 v1, 0x0

    return v1

    .line 700
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static lessThan(I[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "xOff",
            "y",
            "yOff"
        }
    .end annotation

    .line 724
    const-wide/16 v0, 0x0

    .line 725
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 727
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 728
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static lessThan(I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y"
        }
    .end annotation

    .line 712
    const-wide/16 v0, 0x0

    .line 713
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 715
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 716
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static mul(I[II[II[II)V
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I
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
            "len",
            "x",
            "xOff",
            "y",
            "yOff",
            "zz",
            "zzOff"
        }
    .end annotation

    .line 746
    add-int v0, p6, p0

    aget v2, p1, p2

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .end local p0    # "len":I
    .end local p3    # "y":[I
    .end local p4    # "yOff":I
    .end local p5    # "zz":[I
    .end local p6    # "zzOff":I
    .local v1, "len":I
    .local v3, "y":[I
    .local v4, "yOff":I
    .local v5, "zz":[I
    .local v6, "zzOff":I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result p0

    move p3, v6

    .end local v6    # "zzOff":I
    .local p3, "zzOff":I
    aput p0, v5, v0

    .line 748
    const/4 p0, 0x1

    .local p0, "i":I
    :goto_0
    if-ge p0, v1, :cond_0

    .line 750
    add-int p6, p3, p0

    add-int/2addr p6, v1

    add-int p4, p2, p0

    aget v2, p1, p4

    add-int v6, p3, p0

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p4

    aput p4, v5, p6

    .line 748
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 752
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public static mul(I[I[I[I)V
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y",
            "zz"
        }
    .end annotation

    .line 736
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0, p2, p3}, Lorg/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    .line 738
    const/4 v0, 0x1

    move v6, v0

    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    .line 740
    add-int v0, v6, p0

    aget v2, p1, v6

    const/4 v4, 0x0

    move v1, p0

    move-object v3, p2

    move-object v5, p3

    .end local p0    # "len":I
    .end local p2    # "y":[I
    .end local p3    # "zz":[I
    .local v1, "len":I
    .local v3, "y":[I
    .local v5, "zz":[I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    aput p0, v5, v0

    .line 738
    add-int/lit8 v6, v6, 0x1

    move p0, v1

    goto :goto_0

    .line 742
    .end local v1    # "len":I
    .end local v3    # "y":[I
    .end local v5    # "zz":[I
    .end local v6    # "i":I
    .restart local p0    # "len":I
    .restart local p2    # "y":[I
    .restart local p3    # "zz":[I
    :cond_0
    return-void
.end method

.method public static mul([III[III[II)V
    .locals 7
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xLen"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "yLen"    # I
    .param p6, "zz"    # [I
    .param p7, "zzOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "xLen",
            "y",
            "yOff",
            "yLen",
            "zz",
            "zzOff"
        }
    .end annotation

    .line 756
    add-int v0, p7, p5

    aget v2, p0, p1

    move-object v3, p3

    move v4, p4

    move v1, p5

    move-object v5, p6

    move v6, p7

    .end local p3    # "y":[I
    .end local p4    # "yOff":I
    .end local p5    # "yLen":I
    .end local p6    # "zz":[I
    .end local p7    # "zzOff":I
    .local v1, "yLen":I
    .local v3, "y":[I
    .local v4, "yOff":I
    .local v5, "zz":[I
    .local v6, "zzOff":I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result p3

    move p4, v6

    .end local v6    # "zzOff":I
    .local p4, "zzOff":I
    aput p3, v5, v0

    .line 758
    const/4 p3, 0x1

    .local p3, "i":I
    :goto_0
    if-ge p3, p2, :cond_0

    .line 760
    add-int p7, p4, p3

    add-int/2addr p7, v1

    add-int p5, p1, p3

    aget v2, p0, p5

    add-int v6, p4, p3

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p5

    aput p5, v5, p7

    .line 758
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 762
    .end local p3    # "i":I
    :cond_0
    return-void
.end method

.method public static mul31BothAdd(II[II[I[II)I
    .locals 15
    .param p0, "len"    # I
    .param p1, "a"    # I
    .param p2, "x"    # [I
    .param p3, "b"    # I
    .param p4, "y"    # [I
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
            "len",
            "a",
            "x",
            "b",
            "y",
            "z",
            "zOff"
        }
    .end annotation

    .line 793
    const-wide/16 v0, 0x0

    move/from16 v2, p1

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    move/from16 v7, p3

    .local v3, "aVal":J
    int-to-long v8, v7

    and-long/2addr v8, v5

    .line 794
    .local v8, "bVal":J
    const/4 v10, 0x0

    .line 797
    .local v10, "i":I
    :cond_0
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v5

    mul-long v11, v11, v3

    aget v13, p4, v10

    int-to-long v13, v13

    and-long/2addr v13, v5

    mul-long v13, v13, v8

    add-long/2addr v11, v13

    add-int v13, p6, v10

    aget v13, p5, v13

    int-to-long v13, v13

    and-long/2addr v13, v5

    add-long/2addr v11, v13

    add-long/2addr v0, v11

    .line 798
    add-int v11, p6, v10

    long-to-int v12, v0

    aput v12, p5, v11

    .line 799
    const/16 v11, 0x20

    ushr-long/2addr v0, v11

    .line 801
    add-int/lit8 v10, v10, 0x1

    if-lt v10, p0, :cond_0

    .line 802
    long-to-int v5, v0

    return v5
.end method

.method public static mulAddTo(I[II[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I
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
            "len",
            "x",
            "xOff",
            "y",
            "yOff",
            "zz",
            "zzOff"
        }
    .end annotation

    .line 779
    const-wide/16 v0, 0x0

    .line 780
    .local v0, "zc":J
    const/4 v2, 0x0

    move v8, p6

    .end local p6    # "zzOff":I
    .local v2, "i":I
    .local v8, "zzOff":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 782
    add-int p6, p2, v2

    aget v4, p1, p6

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .end local p0    # "len":I
    .end local p3    # "y":[I
    .end local p4    # "yOff":I
    .end local p5    # "zz":[I
    .local v3, "len":I
    .local v5, "y":[I
    .local v6, "yOff":I
    .local v7, "zz":[I
    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    int-to-long p3, p0

    const-wide p5, 0xffffffffL

    and-long/2addr p3, p5

    add-long/2addr v0, p3

    .line 783
    add-int p0, v8, v3

    aget p0, v7, p0

    int-to-long p3, p0

    and-long/2addr p3, p5

    add-long/2addr v0, p3

    .line 784
    add-int p0, v8, v3

    long-to-int p3, v0

    aput p3, v7, p0

    .line 785
    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    .line 786
    add-int/lit8 v8, v8, 0x1

    .line 780
    add-int/lit8 v2, v2, 0x1

    move p0, v3

    move-object p3, v5

    move p4, v6

    move-object p5, v7

    goto :goto_0

    .end local v3    # "len":I
    .end local v5    # "y":[I
    .end local v6    # "yOff":I
    .end local v7    # "zz":[I
    .restart local p0    # "len":I
    .restart local p3    # "y":[I
    .restart local p4    # "yOff":I
    .restart local p5    # "zz":[I
    :cond_0
    move v3, p0

    .line 788
    .end local v2    # "i":I
    .end local p0    # "len":I
    .restart local v3    # "len":I
    long-to-int p0, v0

    return p0
.end method

.method public static mulAddTo(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y",
            "zz"
        }
    .end annotation

    .line 766
    const-wide/16 v0, 0x0

    .line 767
    .local v0, "zc":J
    const/4 v2, 0x0

    move v7, v2

    .local v7, "i":I
    :goto_0
    if-ge v7, p0, :cond_0

    .line 769
    aget v3, p1, v7

    const/4 v5, 0x0

    move v2, p0

    move-object v4, p2

    move-object v6, p3

    .end local p0    # "len":I
    .end local p2    # "y":[I
    .end local p3    # "zz":[I
    .local v2, "len":I
    .local v4, "y":[I
    .local v6, "zz":[I
    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    int-to-long p2, p0

    const-wide v8, 0xffffffffL

    and-long/2addr p2, v8

    add-long/2addr v0, p2

    .line 770
    add-int p0, v7, v2

    aget p0, v6, p0

    int-to-long p2, p0

    and-long/2addr p2, v8

    add-long/2addr v0, p2

    .line 771
    add-int p0, v7, v2

    long-to-int p2, v0

    aput p2, v6, p0

    .line 772
    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    .line 767
    add-int/lit8 v7, v7, 0x1

    move p0, v2

    move-object p2, v4

    move-object p3, v6

    goto :goto_0

    .end local v2    # "len":I
    .end local v4    # "y":[I
    .end local v6    # "zz":[I
    .restart local p0    # "len":I
    .restart local p2    # "y":[I
    .restart local p3    # "zz":[I
    :cond_0
    move v2, p0

    .line 774
    .end local v7    # "i":I
    .end local p0    # "len":I
    .restart local v2    # "len":I
    long-to-int p0, v0

    return p0
.end method

.method public static mulWord(II[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
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
            "len",
            "x",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 821
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 822
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 825
    .local v6, "i":I
    :cond_0
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-long/2addr v0, v7

    .line 826
    add-int v7, p5, v6

    long-to-int v8, v0

    aput v8, p4, v7

    .line 827
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 829
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_0

    .line 830
    long-to-int v4, v0

    return v4
.end method

.method public static mulWord(II[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 807
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 808
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 811
    .local v6, "i":I
    :cond_0
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-long/2addr v0, v7

    .line 812
    long-to-int v7, v0

    aput v7, p3, v6

    .line 813
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 815
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_0

    .line 816
    long-to-int v4, v0

    return v4
.end method

.method public static mulWordAddTo(II[II[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # I
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
            "len",
            "x",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 835
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 836
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 839
    .local v6, "i":I
    :cond_0
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int v9, p5, v6

    aget v9, p4, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 840
    add-int v7, p5, v6

    long-to-int v8, v0

    aput v8, p4, v7

    .line 841
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 843
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_0

    .line 844
    long-to-int v4, v0

    return v4
.end method

.method public static mulWordDwordAddAt(IIJ[II)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # J
    .param p4, "z"    # [I
    .param p5, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y",
            "z",
            "zPos"
        }
    .end annotation

    .line 850
    move-object/from16 v0, p4

    const-wide/16 v1, 0x0

    .local v1, "c":J
    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 851
    .local v3, "xVal":J
    and-long v7, p2, v5

    mul-long v7, v7, v3

    add-int/lit8 v9, p5, 0x0

    aget v9, v0, v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v1, v7

    .line 852
    add-int/lit8 v7, p5, 0x0

    long-to-int v8, v1

    aput v8, v0, v7

    .line 853
    const/16 v7, 0x20

    ushr-long/2addr v1, v7

    .line 854
    ushr-long v8, p2, v7

    mul-long v8, v8, v3

    add-int/lit8 v10, p5, 0x1

    aget v10, v0, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v8, v10

    add-long/2addr v1, v8

    .line 855
    add-int/lit8 v8, p5, 0x1

    long-to-int v9, v1

    aput v9, v0, v8

    .line 856
    ushr-long/2addr v1, v7

    .line 857
    add-int/lit8 v8, p5, 0x2

    aget v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v1, v5

    .line 858
    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v1

    aput v6, v0, v5

    .line 859
    ushr-long/2addr v1, v7

    .line 860
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p5, 0x3

    invoke-static {p0, v0, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v5

    :goto_0
    return v5
.end method

.method public static shiftDownBit(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "c"
        }
    .end annotation

    .line 865
    move v0, p0

    .line 866
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 868
    aget v1, p1, v0

    .line 869
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 870
    move p2, v1

    .line 871
    .end local v1    # "next":I
    goto :goto_0

    .line 872
    :cond_0
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static shiftDownBit(I[III)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zOff",
            "c"
        }
    .end annotation

    .line 877
    move v0, p0

    .line 878
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 880
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 881
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 882
    move p3, v1

    .line 883
    .end local v1    # "next":I
    goto :goto_0

    .line 884
    :cond_0
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static shiftDownBit(I[III[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
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
            "len",
            "x",
            "xOff",
            "c",
            "z",
            "zOff"
        }
    .end annotation

    .line 901
    move v0, p0

    .line 902
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 904
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 905
    .local v1, "next":I
    add-int v2, p5, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 906
    move p3, v1

    .line 907
    .end local v1    # "next":I
    goto :goto_0

    .line 908
    :cond_0
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static shiftDownBit(I[II[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "c",
            "z"
        }
    .end annotation

    .line 889
    move v0, p0

    .line 890
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 892
    aget v1, p1, v0

    .line 893
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 894
    move p2, v1

    .line 895
    .end local v1    # "next":I
    goto :goto_0

    .line 896
    :cond_0
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static shiftDownBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "bits",
            "c"
        }
    .end annotation

    .line 914
    move v0, p0

    .line 915
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 917
    aget v1, p1, v0

    .line 918
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 919
    move p3, v1

    .line 920
    .end local v1    # "next":I
    goto :goto_0

    .line 921
    :cond_0
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static shiftDownBits(I[IIII)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zOff",
            "bits",
            "c"
        }
    .end annotation

    .line 927
    move v0, p0

    .line 928
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 930
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 931
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 932
    move p4, v1

    .line 933
    .end local v1    # "next":I
    goto :goto_0

    .line 934
    :cond_0
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static shiftDownBits(I[IIII[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
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
            "len",
            "x",
            "xOff",
            "bits",
            "c",
            "z",
            "zOff"
        }
    .end annotation

    .line 953
    move v0, p0

    .line 954
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 956
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 957
    .local v1, "next":I
    add-int v2, p6, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 958
    move p4, v1

    .line 959
    .end local v1    # "next":I
    goto :goto_0

    .line 960
    :cond_0
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static shiftDownBits(I[III[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "bits",
            "c",
            "z"
        }
    .end annotation

    .line 940
    move v0, p0

    .line 941
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 943
    aget v1, p1, v0

    .line 944
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 945
    move p3, v1

    .line 946
    .end local v1    # "next":I
    goto :goto_0

    .line 947
    :cond_0
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static shiftDownWord(I[II)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "c"
        }
    .end annotation

    .line 965
    move v0, p0

    .line 966
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 968
    aget v1, p1, v0

    .line 969
    .local v1, "next":I
    aput p2, p1, v0

    .line 970
    move p2, v1

    .line 971
    .end local v1    # "next":I
    goto :goto_0

    .line 972
    :cond_0
    return p2
.end method

.method public static shiftUpBit(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "c"
        }
    .end annotation

    .line 977
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 979
    aget v1, p1, v0

    .line 980
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 981
    move p2, v1

    .line 977
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 983
    .end local v0    # "i":I
    :cond_0
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static shiftUpBit(I[III)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zOff",
            "c"
        }
    .end annotation

    .line 988
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 990
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 991
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 992
    move p3, v1

    .line 988
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    .end local v0    # "i":I
    :cond_0
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static shiftUpBit(I[III[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
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
            "len",
            "x",
            "xOff",
            "c",
            "z",
            "zOff"
        }
    .end annotation

    .line 1010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1012
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 1013
    .local v1, "next":I
    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 1014
    move p3, v1

    .line 1010
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1016
    .end local v0    # "i":I
    :cond_0
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static shiftUpBit(I[II[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "c",
            "z"
        }
    .end annotation

    .line 999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1001
    aget v1, p1, v0

    .line 1002
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 1003
    move p2, v1

    .line 999
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    .end local v0    # "i":I
    :cond_0
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static shiftUpBit64(I[JIJ[JI)J
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "c"    # J
    .param p5, "z"    # [J
    .param p6, "zOff"    # I
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
            "len",
            "x",
            "xOff",
            "c",
            "z",
            "zOff"
        }
    .end annotation

    .line 1021
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3f

    if-ge v0, p0, :cond_0

    .line 1023
    add-int v2, p2, v0

    aget-wide v2, p1, v2

    .line 1024
    .local v2, "next":J
    add-int v4, p6, v0

    const/4 v5, 0x1

    shl-long v5, v2, v5

    ushr-long v7, p3, v1

    or-long/2addr v5, v7

    aput-wide v5, p5, v4

    .line 1025
    move-wide p3, v2

    .line 1021
    .end local v2    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1027
    .end local v0    # "i":I
    :cond_0
    ushr-long v0, p3, v1

    return-wide v0
.end method

.method public static shiftUpBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "bits",
            "c"
        }
    .end annotation

    .line 1033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1035
    aget v1, p1, v0

    .line 1036
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 1037
    move p3, v1

    .line 1033
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static shiftUpBits(I[IIII)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zOff",
            "bits",
            "c"
        }
    .end annotation

    .line 1045
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1047
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 1048
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 1049
    move p4, v1

    .line 1045
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1051
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static shiftUpBits(I[IIII[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
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
            "len",
            "x",
            "xOff",
            "bits",
            "c",
            "z",
            "zOff"
        }
    .end annotation

    .line 1081
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1083
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 1084
    .local v1, "next":I
    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 1085
    move p4, v1

    .line 1081
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1087
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static shiftUpBits(I[III[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "bits",
            "c",
            "z"
        }
    .end annotation

    .line 1069
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1071
    aget v1, p1, v0

    .line 1072
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 1073
    move p3, v1

    .line 1069
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static shiftUpBits64(I[JIIJ)J
    .locals 8
    .param p0, "len"    # I
    .param p1, "z"    # [J
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zOff",
            "bits",
            "c"
        }
    .end annotation

    .line 1057
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1059
    add-int v1, p2, v0

    aget-wide v1, p1, v1

    .line 1060
    .local v1, "next":J
    add-int v3, p2, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    .line 1061
    move-wide p4, v1

    .line 1057
    .end local v1    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static shiftUpBits64(I[JIIJ[JI)J
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J
    .param p6, "z"    # [J
    .param p7, "zOff"    # I
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
            "len",
            "x",
            "xOff",
            "bits",
            "c",
            "z",
            "zOff"
        }
    .end annotation

    .line 1093
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1095
    add-int v1, p2, v0

    aget-wide v1, p1, v1

    .line 1096
    .local v1, "next":J
    add-int v3, p7, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p6, v3

    .line 1097
    move-wide p4, v1

    .line 1093
    .end local v1    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1099
    .end local v0    # "i":I
    :cond_0
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static square(I[II[II)V
    .locals 20
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
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
            "len",
            "x",
            "xOff",
            "zz",
            "zzOff"
        }
    .end annotation

    .line 1135
    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    shl-int/lit8 v5, v0, 0x1

    .line 1136
    .local v5, "extLen":I
    const/4 v6, 0x0

    .line 1137
    .local v6, "c":I
    move/from16 v7, p0

    .local v7, "j":I
    move v8, v5

    .line 1140
    .local v8, "k":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    add-int v9, v2, v7

    aget v9, v1, v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    .line 1141
    .local v9, "xVal":J
    mul-long v13, v9, v9

    .line 1142
    .local v13, "p":J
    add-int/lit8 v8, v8, -0x1

    add-int v15, v4, v8

    shl-int/lit8 v16, v6, 0x1f

    const/16 v17, 0x21

    move-wide/from16 v18, v11

    ushr-long v11, v13, v17

    long-to-int v12, v11

    or-int v11, v16, v12

    aput v11, v3, v15

    .line 1143
    add-int/lit8 v8, v8, -0x1

    add-int v11, v4, v8

    const/4 v12, 0x1

    move v15, v6

    move/from16 v16, v7

    .end local v6    # "c":I
    .end local v7    # "j":I
    .local v15, "c":I
    .local v16, "j":I
    ushr-long v6, v13, v12

    long-to-int v7, v6

    aput v7, v3, v11

    .line 1144
    long-to-int v6, v13

    .line 1146
    .end local v9    # "xVal":J
    .end local v13    # "p":J
    .end local v15    # "c":I
    .restart local v6    # "c":I
    if-gtz v16, :cond_1

    .line 1148
    const-wide/16 v9, 0x0

    .line 1149
    .local v9, "d":J
    add-int/lit8 v7, v4, 0x2

    .line 1151
    .local v7, "zzPos":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_1
    if-ge v11, v0, :cond_0

    .line 1153
    invoke-static {v1, v2, v11, v3, v4}, Lorg/bouncycastle/math/raw/Nat;->squareWordAddTo([III[II)I

    move-result v12

    int-to-long v12, v12

    and-long v12, v12, v18

    add-long/2addr v9, v12

    .line 1154
    aget v12, v3, v7

    int-to-long v12, v12

    and-long v12, v12, v18

    add-long/2addr v9, v12

    .line 1155
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "zzPos":I
    .local v12, "zzPos":I
    long-to-int v13, v9

    aput v13, v3, v7

    const/16 v7, 0x20

    ushr-long/2addr v9, v7

    .line 1156
    aget v13, v3, v12

    int-to-long v13, v13

    and-long v13, v13, v18

    add-long/2addr v9, v13

    .line 1157
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "zzPos":I
    .local v13, "zzPos":I
    long-to-int v14, v9

    aput v14, v3, v12

    ushr-long/2addr v9, v7

    .line 1151
    add-int/lit8 v11, v11, 0x1

    move v7, v13

    goto :goto_1

    .line 1161
    .end local v11    # "i":I
    .end local v13    # "zzPos":I
    .restart local v7    # "zzPos":I
    :cond_0
    aget v11, v1, v2

    shl-int/lit8 v11, v11, 0x1f

    invoke-static {v5, v3, v4, v11}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    .line 1162
    return-void

    .line 1146
    .end local v7    # "zzPos":I
    .end local v9    # "d":J
    :cond_1
    move/from16 v7, v16

    goto :goto_0
.end method

.method public static square(I[I[I)V
    .locals 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "zz"
        }
    .end annotation

    .line 1104
    shl-int/lit8 v0, p0, 0x1

    .line 1105
    .local v0, "extLen":I
    const/4 v1, 0x0

    .line 1106
    .local v1, "c":I
    move v2, p0

    .local v2, "j":I
    move v3, v0

    .line 1109
    .local v3, "k":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    aget v4, p1, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 1110
    .local v4, "xVal":J
    mul-long v8, v4, v4

    .line 1111
    .local v8, "p":J
    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v10, v1, 0x1f

    const/16 v11, 0x21

    ushr-long v11, v8, v11

    long-to-int v12, v11

    or-int/2addr v10, v12

    aput v10, p2, v3

    .line 1112
    add-int/lit8 v3, v3, -0x1

    const/4 v10, 0x1

    ushr-long v10, v8, v10

    long-to-int v11, v10

    aput v11, p2, v3

    .line 1113
    long-to-int v1, v8

    .line 1115
    .end local v4    # "xVal":J
    .end local v8    # "p":J
    if-gtz v2, :cond_0

    .line 1117
    const-wide/16 v4, 0x0

    .line 1118
    .local v4, "d":J
    const/4 v8, 0x2

    .line 1120
    .local v8, "zzPos":I
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-ge v9, p0, :cond_1

    .line 1122
    invoke-static {p1, v9, p2}, Lorg/bouncycastle/math/raw/Nat;->squareWordAddTo([II[I)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 1123
    aget v10, p2, v8

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 1124
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "zzPos":I
    .local v10, "zzPos":I
    long-to-int v11, v4

    aput v11, p2, v8

    const/16 v8, 0x20

    ushr-long/2addr v4, v8

    .line 1125
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v6

    add-long/2addr v4, v11

    .line 1126
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "zzPos":I
    .local v11, "zzPos":I
    long-to-int v12, v4

    aput v12, p2, v10

    ushr-long/2addr v4, v8

    .line 1120
    add-int/lit8 v9, v9, 0x1

    move v8, v11

    goto :goto_0

    .line 1130
    .end local v9    # "i":I
    .end local v11    # "zzPos":I
    .restart local v8    # "zzPos":I
    :cond_1
    const/4 v6, 0x0

    aget v6, p1, v6

    shl-int/lit8 v6, v6, 0x1f

    invoke-static {v0, p2, v6}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    .line 1131
    return-void
.end method

.method public static squareWordAddTo([III[II)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xPos"    # I
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
            "xOff",
            "xPos",
            "z",
            "zOff"
        }
    .end annotation

    .line 1180
    const-wide/16 v0, 0x0

    .local v0, "c":J
    add-int v2, p1, p2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1181
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 1184
    .local v6, "i":I
    :cond_0
    add-int v7, p1, v6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int v9, p2, p4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1185
    add-int v7, p2, p4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 1186
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 1187
    add-int/lit8 p4, p4, 0x1

    .line 1189
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p2, :cond_0

    .line 1190
    long-to-int v4, v0

    return v4
.end method

.method public static squareWordAddTo([II[I)I
    .locals 11
    .param p0, "x"    # [I
    .param p1, "xPos"    # I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xPos",
            "z"
        }
    .end annotation

    .line 1166
    const-wide/16 v0, 0x0

    .local v0, "c":J
    aget v2, p0, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1167
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 1170
    .local v6, "i":I
    :cond_0
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long v7, v7, v2

    add-int v9, p1, v6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1171
    add-int v7, p1, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 1172
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 1174
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_0

    .line 1175
    long-to-int v4, v0

    return v4
.end method

.method public static sub(I[II[II[II)I
    .locals 9
    .param p0, "len"    # I
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
            "len",
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 1207
    const-wide/16 v0, 0x0

    .line 1208
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1210
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1211
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 1212
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1214
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static sub(I[I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 1195
    const-wide/16 v0, 0x0

    .line 1196
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1198
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1199
    long-to-int v3, v0

    aput v3, p3, v2

    .line 1200
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1202
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static sub33At(II[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zPos"
        }
    .end annotation

    .line 1220
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1221
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1222
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1223
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1224
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1225
    shr-long/2addr v0, v4

    .line 1226
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static sub33At(II[III)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zOff",
            "zPos"
        }
    .end annotation

    .line 1232
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1233
    .local v0, "c":J
    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1234
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1235
    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1236
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1237
    shr-long/2addr v0, v4

    .line 1238
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static sub33From(II[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 1243
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 1244
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p2, v0

    .line 1245
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 1246
    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 1247
    long-to-int v3, v1

    aput v3, p2, v6

    .line 1248
    shr-long/2addr v1, v5

    .line 1249
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static sub33From(II[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
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
            "len",
            "x",
            "z",
            "zOff"
        }
    .end annotation

    .line 1254
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1255
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1256
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1257
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1258
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1259
    shr-long/2addr v0, v4

    .line 1260
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static subBothFrom(I[II[II[II)I
    .locals 9
    .param p0, "len"    # I
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
            "len",
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 1277
    const-wide/16 v0, 0x0

    .line 1278
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1280
    add-int v3, p6, v2

    aget v3, p5, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1281
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 1282
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1284
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static subBothFrom(I[I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 1265
    const-wide/16 v0, 0x0

    .line 1266
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1268
    aget v3, p3, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1269
    long-to-int v3, v0

    aput v3, p3, v2

    .line 1270
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1272
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static subDWordAt(IJ[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zPos"
        }
    .end annotation

    .line 1290
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1291
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1292
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1293
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1294
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1295
    shr-long/2addr v0, v4

    .line 1296
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static subDWordAt(IJ[III)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zOff",
            "zPos"
        }
    .end annotation

    .line 1302
    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1303
    .local v0, "c":J
    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1304
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1305
    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1306
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1307
    shr-long/2addr v0, v4

    .line 1308
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static subDWordFrom(IJ[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 1313
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    .line 1314
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p3, v0

    .line 1315
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 1316
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 1317
    long-to-int v3, v1

    aput v3, p3, v6

    .line 1318
    shr-long/2addr v1, v5

    .line 1319
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static subDWordFrom(IJ[II)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # J
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
            "len",
            "x",
            "z",
            "zOff"
        }
    .end annotation

    .line 1324
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1325
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1326
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1327
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1328
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1329
    shr-long/2addr v0, v4

    .line 1330
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static subFrom(I[II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
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
            "len",
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 1347
    const-wide/16 v0, 0x0

    .line 1348
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1350
    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1351
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 1352
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1354
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom(I[I[I)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 1335
    const-wide/16 v0, 0x0

    .line 1336
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1338
    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1339
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1340
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1342
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static subWordAt(II[II)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zPos"
        }
    .end annotation

    .line 1360
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1361
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 1362
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1363
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static subWordAt(II[III)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z",
            "zOff",
            "zPos"
        }
    .end annotation

    .line 1369
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1370
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1371
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1372
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static subWordFrom(II[I)I
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "z"
        }
    .end annotation

    .line 1377
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 1378
    .local v1, "c":J
    long-to-int v3, v1

    aput v3, p2, v0

    .line 1379
    const/16 v3, 0x20

    shr-long/2addr v1, v3

    .line 1380
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static subWordFrom(II[II)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # I
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
            "len",
            "x",
            "z",
            "zOff"
        }
    .end annotation

    .line 1385
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1386
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1387
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1388
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static toBigInteger(I[I)Ljava/math/BigInteger;
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "x"
        }
    .end annotation

    .line 1393
    shl-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    .line 1394
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 1396
    aget v2, p1, v1

    .line 1397
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1399
    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1394
    .end local v2    # "x_i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static zero(I[I)V
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "z"
        }
    .end annotation

    .line 1407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1409
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1411
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static zero(I[II)V
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "z",
            "zOff"
        }
    .end annotation

    .line 1415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1417
    add-int v1, p2, v0

    const/4 v2, 0x0

    aput v2, p1, v1

    .line 1415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1419
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static zero64(I[J)V
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len",
            "z"
        }
    .end annotation

    .line 1423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1425
    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    .line 1423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1427
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
