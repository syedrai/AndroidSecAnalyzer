.class Lorg/bouncycastle/pqc/crypto/picnic/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static ceil_log2(I)I
    .locals 1
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 14
    if-nez p0, :cond_0

    .line 16
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_0
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->nlz(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method protected static getBit([BI)B
    .locals 3
    .param p0, "array"    # [B
    .param p1, "bitNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "bitNumber"
        }
    .end annotation

    .line 92
    ushr-int/lit8 v0, p1, 0x3

    .local v0, "arrayPos":I
    and-int/lit8 v1, p1, 0x7

    xor-int/lit8 v1, v1, 0x7

    .line 93
    .local v1, "bitPos":I
    aget-byte v2, p0, v0

    ushr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    return v2
.end method

.method protected static getBit(II)I
    .locals 2
    .param p0, "word"    # I
    .param p1, "bitNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "word",
            "bitNumber"
        }
    .end annotation

    .line 106
    xor-int/lit8 v0, p1, 0x7

    .line 107
    .local v0, "bitPos":I
    ushr-int v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method protected static getBit([II)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "bitNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "bitNumber"
        }
    .end annotation

    .line 113
    ushr-int/lit8 v0, p1, 0x5

    .local v0, "arrayPos":I
    and-int/lit8 v1, p1, 0x1f

    xor-int/lit8 v1, v1, 0x7

    .line 114
    .local v1, "bitPos":I
    aget v2, p0, v0

    ushr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x1

    return v2
.end method

.method protected static getBitFromWordArray([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "bitNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "bitNumber"
        }
    .end annotation

    .line 86
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([II)I

    move-result v0

    return v0
.end method

.method protected static getCrumbAligned([BI)B
    .locals 5
    .param p0, "array"    # [B
    .param p1, "crumbNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "crumbNumber"
        }
    .end annotation

    .line 99
    ushr-int/lit8 v0, p1, 0x2

    .local v0, "arrayPos":I
    shl-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x6

    xor-int/lit8 v1, v1, 0x6

    .line 100
    .local v1, "bitPos":I
    aget-byte v2, p0, v0

    ushr-int/2addr v2, v1

    .line 101
    .local v2, "b":I
    and-int/lit8 v3, v2, 0x1

    shl-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v2, 0x2

    shr-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    return v3
.end method

.method protected static getTrailingBitsMask(I)I
    .locals 4
    .param p0, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitLength"
        }
    .end annotation

    .line 155
    and-int/lit8 v0, p0, -0x8

    .line 156
    .local v0, "partialShift":I
    const/4 v1, -0x1

    shl-int/2addr v1, v0

    not-int v1, v1

    .line 158
    .local v1, "mask":I
    and-int/lit8 v2, p0, 0x7

    .line 159
    .local v2, "partialByte":I
    if-eqz v2, :cond_0

    .line 161
    const v3, 0xff00

    ushr-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v0

    xor-int/2addr v1, v3

    .line 164
    :cond_0
    return v1
.end method

.method private static nlz(I)I
    .locals 2
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 25
    if-nez p0, :cond_0

    .line 27
    const/16 v0, 0x20

    return v0

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    .local v0, "n":I
    ushr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_1

    .line 32
    add-int/lit8 v0, v0, 0x10

    shl-int/lit8 p0, p0, 0x10

    .line 34
    :cond_1
    ushr-int/lit8 v1, p0, 0x18

    if-nez v1, :cond_2

    .line 36
    add-int/lit8 v0, v0, 0x8

    .line 37
    shl-int/lit8 p0, p0, 0x8

    .line 39
    :cond_2
    ushr-int/lit8 v1, p0, 0x1c

    if-nez v1, :cond_3

    .line 41
    add-int/lit8 v0, v0, 0x4

    .line 42
    shl-int/lit8 p0, p0, 0x4

    .line 44
    :cond_3
    ushr-int/lit8 v1, p0, 0x1e

    if-nez v1, :cond_4

    .line 46
    add-int/lit8 v0, v0, 0x2

    .line 47
    shl-int/lit8 p0, p0, 0x2

    .line 49
    :cond_4
    ushr-int/lit8 v1, p0, 0x1f

    sub-int/2addr v0, v1

    .line 51
    return v0
.end method

.method protected static numBytes(I)I
    .locals 1
    .param p0, "numBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numBits"
        }
    .end annotation

    .line 9
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method protected static parity([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "len"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 59
    .local v0, "x":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 61
    aget-byte v2, p0, v1

    xor-int/2addr v2, v0

    int-to-byte v0, v2

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "i":I
    :cond_0
    and-int/lit16 v1, v0, 0xff

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method protected static parity16(I)I
    .locals 1
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 69
    const v0, 0xffff

    and-int/2addr v0, p0

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static parity32(I)I
    .locals 1
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static setBit(III)I
    .locals 2
    .param p0, "word"    # I
    .param p1, "bitNumber"    # I
    .param p2, "bit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "word",
            "bitNumber",
            "bit"
        }
    .end annotation

    .line 128
    xor-int/lit8 v0, p1, 0x7

    .line 129
    .local v0, "bitPos":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    not-int v1, v1

    and-int/2addr p0, v1

    .line 130
    shl-int v1, p2, v0

    or-int/2addr p0, v1

    .line 131
    return p0
.end method

.method protected static setBit([BIB)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "bitNumber"    # I
    .param p2, "val"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "bitNumber",
            "val"
        }
    .end annotation

    .line 119
    ushr-int/lit8 v0, p1, 0x3

    .local v0, "arrayPos":I
    and-int/lit8 v1, p1, 0x7

    xor-int/lit8 v1, v1, 0x7

    .line 120
    .local v1, "bitPos":I
    aget-byte v2, p0, v0

    .line 121
    .local v2, "t":I
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    not-int v3, v3

    and-int/2addr v2, v3

    .line 122
    shl-int v3, p2, v1

    or-int/2addr v2, v3

    .line 123
    int-to-byte v3, v2

    aput-byte v3, p0, v0

    .line 124
    return-void
.end method

.method protected static setBit([III)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "bitNumber"    # I
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "bitNumber",
            "val"
        }
    .end annotation

    .line 137
    ushr-int/lit8 v0, p1, 0x5

    .local v0, "arrayPos":I
    and-int/lit8 v1, p1, 0x1f

    xor-int/lit8 v1, v1, 0x7

    .line 138
    .local v1, "bitPos":I
    aget v2, p0, v0

    .line 139
    .local v2, "t":I
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    not-int v3, v3

    and-int/2addr v2, v3

    .line 140
    shl-int v3, p2, v1

    or-int/2addr v2, v3

    .line 141
    aput v2, p0, v0

    .line 142
    return-void
.end method

.method protected static setBitInWordArray([III)V
    .locals 0
    .param p0, "array"    # [I
    .param p1, "bitNumber"    # I
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "bitNumber",
            "val"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([III)V

    .line 81
    return-void
.end method

.method protected static zeroTrailingBits([II)V
    .locals 4
    .param p0, "data"    # [I
    .param p1, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "bitLength"
        }
    .end annotation

    .line 146
    and-int/lit8 v0, p1, 0x1f

    .line 147
    .local v0, "partialWord":I
    if-eqz v0, :cond_0

    .line 149
    ushr-int/lit8 v1, p1, 0x5

    aget v2, p0, v1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result v3

    and-int/2addr v2, v3

    aput v2, p0, v1

    .line 151
    :cond_0
    return-void
.end method
