.class public abstract Lorg/bouncycastle/math/raw/Nat448;
.super Ljava/lang/Object;
.source "Nat448.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 22
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 23
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 24
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 25
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 26
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 27
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 28
    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 29
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

    .line 11
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 12
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 13
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 14
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 15
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 16
    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 17
    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 18
    return-void
.end method

.method public static create64()[J
    .locals 1

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    .line 38
    const/16 v0, 0xe

    new-array v0, v0, [J

    return-object v0
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

    .line 43
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 45
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 47
    const/4 v1, 0x0

    return v1

    .line 43
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 50
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
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

    .line 55
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1c0

    if-gt v0, v1, :cond_1

    .line 60
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v0

    .line 63
    .local v0, "z":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 66
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 57
    .end local v0    # "z":[J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
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

    .line 73
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 75
    return v0

    .line 77
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    .line 79
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 81
    return v0

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_2
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

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 91
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 93
    const/4 v1, 0x0

    return v1

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static mul([I[I[I)V
    .locals 17
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

    .line 101
    invoke-static/range {p0 .. p2}, Lorg/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 102
    const/4 v3, 0x7

    const/16 v5, 0xe

    const/4 v1, 0x7

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat224;->mul([II[II[II)V

    .line 104
    move-object v12, v4

    const/4 v13, 0x7

    const/16 v14, 0xe

    invoke-static {v12, v13, v12, v14}, Lorg/bouncycastle/math/raw/Nat224;->addToEachOther([II[II)I

    move-result v0

    .line 105
    .local v0, "c21":I
    const/4 v15, 0x0

    invoke-static {v12, v15, v12, v13, v15}, Lorg/bouncycastle/math/raw/Nat224;->addTo([II[III)I

    move-result v1

    add-int/2addr v1, v0

    .line 106
    .local v1, "c14":I
    const/16 v2, 0x15

    invoke-static {v12, v2, v12, v14, v1}, Lorg/bouncycastle/math/raw/Nat224;->addTo([II[III)I

    move-result v3

    add-int v16, v0, v3

    .line 108
    .end local v0    # "c21":I
    .local v16, "c21":I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v10

    .local v10, "dx":[I
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    .line 109
    .local v4, "dy":[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x7

    move-object/from16 v8, p0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/math/raw/Nat224;->diff([II[II[II)Z

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v0, v1

    .end local v1    # "c14":I
    .local v0, "c14":I
    const/4 v1, 0x7

    const/16 v6, 0x15

    move-object/from16 v2, p1

    move v6, v0

    const/16 v8, 0x15

    move-object/from16 v0, p1

    .end local v0    # "c14":I
    .local v6, "c14":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat224;->diff([II[II[II)Z

    move-result v1

    if-eq v7, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "neg":Z
    :goto_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v1

    .line 112
    .local v1, "tt":[I
    invoke-static {v10, v4, v1}, Lorg/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 114
    if-eqz v0, :cond_1

    invoke-static {v14, v1, v15, v12, v13}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v14, v1, v15, v12, v13}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v2

    :goto_1
    add-int v2, v16, v2

    .line 115
    .end local v16    # "c21":I
    .local v2, "c21":I
    const/16 v3, 0x1c

    invoke-static {v3, v2, v12, v8}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 116
    return-void
.end method

.method public static square([I[I)V
    .locals 12
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

    .line 120
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 121
    const/4 v0, 0x7

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/raw/Nat224;->square([II[II)V

    .line 123
    invoke-static {p1, v0, p1, v1}, Lorg/bouncycastle/math/raw/Nat224;->addToEachOther([II[II)I

    move-result v2

    .line 124
    .local v2, "c21":I
    const/4 v3, 0x0

    invoke-static {p1, v3, p1, v0, v3}, Lorg/bouncycastle/math/raw/Nat224;->addTo([II[III)I

    move-result v4

    add-int/2addr v4, v2

    .line 125
    .local v4, "c14":I
    const/16 v5, 0x15

    invoke-static {p1, v5, p1, v1, v4}, Lorg/bouncycastle/math/raw/Nat224;->addTo([II[III)I

    move-result v6

    add-int/2addr v2, v6

    .line 127
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v10

    .line 128
    .local v10, "dx":[I
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x7

    move-object v8, p0

    move-object v6, p0

    .end local p0    # "x":[I
    .local v6, "x":[I
    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/math/raw/Nat224;->diff([II[II[II)Z

    .line 130
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object p0

    .line 131
    .local p0, "tt":[I
    invoke-static {v10, p0}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 133
    invoke-static {v1, p0, v3, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    add-int/2addr v2, v0

    .line 134
    const/16 v0, 0x1c

    invoke-static {v0, v2, p1, v5}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 135
    return-void
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

    .line 139
    const/16 v0, 0x38

    new-array v0, v0, [B

    .line 140
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 142
    aget-wide v2, p0, v1

    .line 143
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 145
    rsub-int/lit8 v4, v1, 0x6

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 140
    .end local v2    # "x_i":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method
