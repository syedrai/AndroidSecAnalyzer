.class public Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;
.super Ljava/lang/Object;
.source "ArrayEncoder.java"


# static fields
.field private static final BIT1_TABLE:[I

.field private static final BIT2_TABLE:[I

.field private static final BIT3_TABLE:[I

.field private static final COEFF1_TABLE:[I

.field private static final COEFF2_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    .line 34
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    .line 55
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    .line 56
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    .line 57
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        -0x1
        0x0
        0x1
        -0x1
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMod3Sves([BI)[I
    .locals 9
    .param p0, "data"    # [B
    .param p1, "N"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "N"
        }
    .end annotation

    .line 155
    new-array v0, p1, [I

    .line 156
    .local v0, "coeffs":[I
    const/4 v1, 0x0

    .line 157
    .local v1, "coeffIndex":I
    const/4 v2, 0x0

    .local v2, "bitIndex":I
    :goto_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x8

    if-ge v2, v3, :cond_1

    .line 159
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bitIndex":I
    .local v3, "bitIndex":I
    invoke-static {p0, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v2

    .line 160
    .local v2, "bit1":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "bitIndex":I
    .local v4, "bitIndex":I
    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v3

    .line 161
    .local v3, "bit2":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bitIndex":I
    .local v5, "bitIndex":I
    invoke-static {p0, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v4

    .line 162
    .local v4, "bit3":I
    mul-int/lit8 v6, v2, 0x4

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    .line 163
    .local v6, "coeffTableIndex":I
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "coeffIndex":I
    .local v7, "coeffIndex":I
    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    aget v8, v8, v6

    aput v8, v0, v1

    .line 164
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "coeffIndex":I
    .restart local v1    # "coeffIndex":I
    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    aget v8, v8, v6

    aput v8, v0, v7

    .line 166
    add-int/lit8 v7, p1, -0x2

    if-le v1, v7, :cond_0

    .line 168
    goto :goto_1

    .line 170
    .end local v2    # "bit1":I
    .end local v3    # "bit2":I
    .end local v4    # "bit3":I
    .end local v6    # "coeffTableIndex":I
    :cond_0
    move v2, v5

    goto :goto_0

    .line 171
    .end local v5    # "bitIndex":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static decodeMod3Tight(Ljava/io/InputStream;I)[I
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "N"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "N"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    int-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 284
    .local v0, "size":I
    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 285
    .local v1, "arr":[B
    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeMod3Tight([BI)[I

    move-result-object v2

    return-object v2
.end method

.method public static decodeMod3Tight([BI)[I
    .locals 7
    .param p0, "b"    # [B
    .param p1, "N"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "N"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 260
    .local v0, "sum":Ljava/math/BigInteger;
    new-array v2, p1, [I

    .line 261
    .local v2, "coeffs":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_1

    .line 263
    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    sub-int/2addr v6, v1

    aput v6, v2, v3

    .line 264
    aget v6, v2, v3

    if-le v6, v1, :cond_0

    .line 266
    aget v6, v2, v3

    add-int/lit8 v6, v6, -0x3

    aput v6, v2, v3

    .line 268
    :cond_0
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static decodeModQ(Ljava/io/InputStream;II)[I
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "N"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "is",
            "N",
            "q"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    .line 138
    .local v0, "qBits":I
    mul-int v1, p1, v0

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 139
    .local v1, "size":I
    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 140
    .local v2, "arr":[B
    invoke-static {v2, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object v3

    return-object v3
.end method

.method public static decodeModQ([BII)[I
    .locals 8
    .param p0, "data"    # [B
    .param p1, "N"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "N",
            "q"
        }
    .end annotation

    .line 108
    new-array v0, p1, [I

    .line 109
    .local v0, "coeffs":[I
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    .line 110
    .local v1, "bitsPerCoeff":I
    mul-int v2, p1, v1

    .line 111
    .local v2, "numBits":I
    const/4 v3, 0x0

    .line 112
    .local v3, "coeffIndex":I
    const/4 v4, 0x0

    .local v4, "bitIndex":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 114
    if-lez v4, :cond_0

    rem-int v5, v4, v1

    if-nez v5, :cond_0

    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 118
    :cond_0
    invoke-static {p0, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v5

    .line 119
    .local v5, "bit":I
    aget v6, v0, v3

    rem-int v7, v4, v1

    shl-int v7, v5, v7

    add-int/2addr v6, v7

    aput v6, v0, v3

    .line 112
    .end local v5    # "bit":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    .end local v4    # "bitIndex":I
    :cond_1
    return-object v0
.end method

.method public static encodeMod3Sves([I)[B
    .locals 14
    .param p0, "arr"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arr"
        }
    .end annotation

    .line 185
    array-length v0, p0

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 186
    .local v0, "numBits":I
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 187
    .local v2, "numBytes":I
    new-array v3, v2, [B

    .line 188
    .local v3, "data":[B
    const/4 v4, 0x0

    .line 189
    .local v4, "bitIndex":I
    const/4 v5, 0x0

    .line 190
    .local v5, "byteIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p0

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_4

    .line 192
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, p0, v6

    add-int/lit8 v6, v6, 0x1

    .line 193
    .local v6, "coeff1":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget v7, p0, v7

    add-int/lit8 v7, v7, 0x1

    .line 194
    .local v7, "coeff2":I
    if-nez v6, :cond_1

    if-eqz v7, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v9, "Illegal encoding!"

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_1
    :goto_1
    mul-int/lit8 v9, v6, 0x3

    add-int/2addr v9, v7

    .line 199
    .local v9, "bitTableIndex":I
    sget-object v10, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    aget v10, v10, v9

    sget-object v11, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    aget v11, v11, v9

    sget-object v12, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    aget v12, v12, v9

    filled-new-array {v10, v11, v12}, [I

    move-result-object v10

    .line 200
    .local v10, "bits":[I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v1, :cond_3

    .line 202
    aget-byte v12, v3, v5

    aget v13, v10, v11

    shl-int/2addr v13, v4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v3, v5

    .line 203
    const/4 v12, 0x7

    if-ne v4, v12, :cond_2

    .line 205
    const/4 v4, 0x0

    .line 206
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 210
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 200
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 213
    .end local v6    # "coeff1":I
    .end local v7    # "coeff2":I
    .end local v9    # "bitTableIndex":I
    .end local v10    # "bits":[I
    .end local v11    # "j":I
    :cond_3
    move v6, v8

    goto :goto_0

    .line 214
    .end local v8    # "i":I
    :cond_4
    return-object v3
.end method

.method public static encodeMod3Tight([I)[B
    .locals 7
    .param p0, "intArray"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intArray"
        }
    .end annotation

    .line 224
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 225
    .local v0, "sum":Ljava/math/BigInteger;
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const-wide/16 v3, 0x3

    if-ltz v1, :cond_0

    .line 227
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 228
    aget v3, p0, v1

    add-int/2addr v3, v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 225
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 231
    .end local v1    # "i":I
    :cond_0
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    array-length v3, p0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 232
    .local v1, "size":I
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 234
    .local v3, "arr":[B
    array-length v4, v3

    if-ge v4, v1, :cond_1

    .line 237
    new-array v2, v1, [B

    .line 238
    .local v2, "arr2":[B
    array-length v4, v3

    sub-int v4, v1, v4

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    return-object v2

    .line 242
    .end local v2    # "arr2":[B
    :cond_1
    array-length v4, v3

    if-le v4, v1, :cond_2

    .line 245
    array-length v4, v3

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 247
    :cond_2
    return-object v3
.end method

.method public static encodeModQ([II)[B
    .locals 11
    .param p0, "a"    # [I
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "q"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    .line 71
    .local v0, "bitsPerCoeff":I
    array-length v1, p0

    mul-int v1, v1, v0

    .line 72
    .local v1, "numBits":I
    add-int/lit8 v2, v1, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 73
    .local v2, "numBytes":I
    new-array v3, v2, [B

    .line 74
    .local v3, "data":[B
    const/4 v4, 0x0

    .line 75
    .local v4, "bitIndex":I
    const/4 v5, 0x0

    .line 76
    .local v5, "byteIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p0

    if-ge v6, v7, :cond_2

    .line 78
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v0, :cond_1

    .line 80
    aget v8, p0, v6

    shr-int/2addr v8, v7

    and-int/lit8 v8, v8, 0x1

    .line 81
    .local v8, "currentBit":I
    aget-byte v9, v3, v5

    shl-int v10, v8, v4

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v3, v5

    .line 82
    const/4 v9, 0x7

    if-ne v4, v9, :cond_0

    .line 84
    const/4 v4, 0x0

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 89
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 78
    .end local v8    # "currentBit":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 76
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 93
    .end local v6    # "i":I
    :cond_2
    return-object v3
.end method

.method private static getBit([BI)I
    .locals 3
    .param p0, "arr"    # [B
    .param p1, "bitIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arr",
            "bitIndex"
        }
    .end annotation

    .line 290
    div-int/lit8 v0, p1, 0x8

    .line 291
    .local v0, "byteIndex":I
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 292
    .local v1, "arrElem":I
    rem-int/lit8 v2, p1, 0x8

    shr-int v2, v1, v2

    and-int/lit8 v2, v2, 0x1

    return v2
.end method
