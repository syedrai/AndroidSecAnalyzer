.class Lorg/bouncycastle/pqc/crypto/hqc/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitMask(JJ)J
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 80
    rem-long v0, p0, p2

    long-to-int v1, v0

    const-wide/16 v2, 0x1

    shl-long v0, v2, v1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static copyBytes([II[III)V
    .locals 1
    .param p0, "src"    # [I
    .param p1, "offsetSrc"    # I
    .param p2, "dst"    # [I
    .param p3, "offsetDst"    # I
    .param p4, "lengthBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "offsetSrc",
            "dst",
            "offsetDst",
            "lengthBytes"
        }
    .end annotation

    .line 120
    div-int/lit8 v0, p4, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    return-void
.end method

.method static fromByte16ArrayToLongArray([J[I)V
    .locals 7
    .param p0, "output"    # [J
    .param p1, "input"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "input"
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 35
    div-int/lit8 v1, v0, 0x4

    aget v2, p1, v0

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 36
    div-int/lit8 v1, v0, 0x4

    aget-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 37
    div-int/lit8 v1, v0, 0x4

    aget-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 38
    div-int/lit8 v1, v0, 0x4

    aget-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 33
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 40
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static fromByte32ArrayToLongArray([J[I)V
    .locals 7
    .param p0, "out"    # [J
    .param p1, "in"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 104
    div-int/lit8 v1, v0, 0x2

    aget v2, p1, v0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 105
    div-int/lit8 v1, v0, 0x2

    aget-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 102
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static fromByteArrayToByte16Array([I[B)V
    .locals 5
    .param p0, "output"    # [I
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "input"
        }
    .end annotation

    .line 44
    move-object v0, p1

    .line 45
    .local v0, "tmp":[B
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 47
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 48
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    .local v1, "off":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 54
    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    aput v3, p0, v2

    .line 55
    add-int/lit8 v1, v1, 0x2

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method static fromByteArrayToLongArray([J[B)V
    .locals 5
    .param p0, "out"    # [J
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 85
    move-object v0, p1

    .line 86
    .local v0, "tmp":[B
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 88
    array-length v1, p1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 89
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, "off":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 95
    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v3

    aput-wide v3, p0, v2

    .line 96
    add-int/lit8 v1, v1, 0x8

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method static fromLongArrayToByte32Array([I[J)V
    .locals 5
    .param p0, "out"    # [I
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 113
    mul-int/lit8 v1, v0, 0x2

    aget-wide v2, p1, v0

    long-to-int v3, v2

    aput v3, p0, v1

    .line 114
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, p1, v0

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v3, v2

    aput v3, p0, v1

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static fromLongArrayToByteArray([B[J)V
    .locals 7
    .param p0, "out"    # [B
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 61
    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    .line 62
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 64
    aget-wide v2, p1, v1

    mul-int/lit8 v4, v1, 0x8

    invoke-static {v2, v3, p0, v4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 69
    mul-int/lit8 v1, v0, 0x8

    .line 70
    .local v1, "off":I
    const/4 v2, 0x0

    .line 71
    .local v2, "count":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 73
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "off":I
    .local v3, "off":I
    aget-wide v4, p1, v0

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "count":I
    .local v6, "count":I
    mul-int/lit8 v2, v2, 0x8

    ushr-long/2addr v4, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    move v1, v3

    move v2, v6

    goto :goto_1

    .line 76
    .end local v3    # "off":I
    .end local v6    # "count":I
    :cond_1
    return-void
.end method

.method static getByte64SizeFromBitSize(I)I
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 130
    add-int/lit8 v0, p0, 0x3f

    div-int/lit8 v0, v0, 0x40

    return v0
.end method

.method static getByteSizeFromBitSize(I)I
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 125
    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static resizeArray([JI[JIII)V
    .locals 9
    .param p0, "out"    # [J
    .param p1, "sizeOutBits"    # I
    .param p2, "in"    # [J
    .param p3, "sizeInBits"    # I
    .param p4, "n1n2ByteSize"    # I
    .param p5, "n1n2Byte64Size"    # I
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
            "out",
            "sizeOutBits",
            "in",
            "sizeInBits",
            "n1n2ByteSize",
            "n1n2Byte64Size"
        }
    .end annotation

    .line 9
    const-wide v0, 0x7fffffffffffffffL

    .line 10
    .local v0, "mask":J
    const/4 v2, 0x0

    .line 11
    .local v2, "val":I
    const/4 v3, 0x0

    if-ge p1, p3, :cond_2

    .line 13
    rem-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_0

    .line 15
    rem-int/lit8 v4, p1, 0x40

    rsub-int/lit8 v2, v4, 0x40

    .line 18
    :cond_0
    invoke-static {p2, v3, p0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 22
    add-int/lit8 v4, p5, -0x1

    aget-wide v5, p0, v4

    shr-long v7, v0, v3

    and-long/2addr v5, v7

    aput-wide v5, p0, v4

    .line 20
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 27
    :cond_2
    add-int/lit8 v4, p3, 0x7

    div-int/lit8 v4, v4, 0x8

    invoke-static {p2, v3, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    :goto_1
    return-void
.end method

.method static toUnsigned16Bits(I)I
    .locals 1
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 140
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method static toUnsigned8bits(I)I
    .locals 1
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 135
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method static xorLongToByte16Array([IJI)V
    .locals 6
    .param p0, "output"    # [I
    .param p1, "input"    # J
    .param p3, "startIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "input",
            "startIndex"
        }
    .end annotation

    .line 145
    add-int/lit8 v0, p3, 0x0

    aget v1, p0, v0

    long-to-int v2, p1

    const v3, 0xffff

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 146
    add-int/lit8 v0, p3, 0x1

    aget v1, p0, v0

    const/16 v2, 0x10

    ushr-long v4, p1, v2

    long-to-int v2, v4

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 147
    add-int/lit8 v0, p3, 0x2

    aget v1, p0, v0

    const/16 v2, 0x20

    ushr-long v4, p1, v2

    long-to-int v2, v4

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 148
    add-int/lit8 v0, p3, 0x3

    aget v1, p0, v0

    const/16 v2, 0x30

    ushr-long v4, p1, v2

    long-to-int v2, v4

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 149
    return-void
.end method
