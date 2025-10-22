.class public Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;
.super Ljava/lang/Object;
.source "ISO9796d1Encoding.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final SIX:Ljava/math/BigInteger;

.field private static final SIXTEEN:Ljava/math/BigInteger;

.field private static inverse:[B

.field private static shadows:[B


# instance fields
.field private bitSize:I

.field private engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private modulus:Ljava/math/BigInteger;

.field private padBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIXTEEN:Ljava/math/BigInteger;

    .line 22
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIX:Ljava/math/BigInteger;

    .line 24
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    .line 26
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xet
        0x3t
        0x5t
        0x8t
        0x9t
        0x4t
        0x2t
        0xft
        0x0t
        0xdt
        0xbt
        0x6t
        0x7t
        0xat
        0xct
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x8t
        0xft
        0x6t
        0x1t
        0x5t
        0x2t
        0xbt
        0xct
        0x3t
        0x4t
        0xdt
        0xat
        0xet
        0x9t
        0x0t
        0x7t
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 39
    return-void
.end method

.method private static convertOutputDecryptOnly(Ljava/math/BigInteger;)[B
    .locals 5
    .param p0, "result"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 279
    .local v0, "output":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    .line 281
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 282
    .local v2, "tmp":[B
    array-length v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return-object v2

    .line 285
    .end local v2    # "tmp":[B
    :cond_0
    return-object v0
.end method

.method private decodeBlock([BII)[B
    .locals 17
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 210
    .local v1, "block":[B
    const/4 v5, 0x1

    .line 211
    .local v5, "r":I
    iget v6, v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v6, v6, 0xd

    div-int/lit8 v6, v6, 0x10

    .line 213
    .local v6, "t":I
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 215
    .local v7, "iS":Ljava/math/BigInteger;
    sget-object v9, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIXTEEN:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIX:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 217
    move-object v9, v7

    .local v9, "iR":Ljava/math/BigInteger;
    goto :goto_0

    .line 219
    .end local v9    # "iR":Ljava/math/BigInteger;
    :cond_0
    iget-object v9, v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIXTEEN:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIX:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 221
    iget-object v9, v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 228
    .restart local v9    # "iR":Ljava/math/BigInteger;
    :goto_0
    invoke-static {v9}, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->convertOutputDecryptOnly(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 230
    array-length v10, v1

    sub-int/2addr v10, v8

    aget-byte v10, v1, v10

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x6

    if-ne v10, v11, :cond_5

    .line 235
    array-length v10, v1

    sub-int/2addr v10, v8

    array-length v11, v1

    sub-int/2addr v11, v8

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    ushr-int/lit8 v11, v11, 0x4

    sget-object v12, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    array-length v13, v1

    add-int/lit8 v13, v13, -0x2

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 236
    sget-object v10, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v11, v1, v8

    and-int/lit16 v11, v11, 0xff

    ushr-int/lit8 v11, v11, 0x4

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x4

    sget-object v11, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v12, v1, v8

    and-int/lit8 v12, v12, 0xf

    aget-byte v11, v11, v12

    or-int/2addr v10, v11

    int-to-byte v10, v10

    const/4 v11, 0x0

    aput-byte v10, v1, v11

    .line 239
    const/4 v10, 0x0

    .line 240
    .local v10, "boundaryFound":Z
    const/4 v12, 0x0

    .line 242
    .local v12, "boundary":I
    array-length v13, v1

    sub-int/2addr v13, v8

    .local v13, "i":I
    :goto_1
    array-length v14, v1

    mul-int/lit8 v15, v6, 0x2

    sub-int/2addr v14, v15

    if-lt v13, v14, :cond_3

    .line 244
    sget-object v14, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v15, v1, v13

    and-int/lit16 v15, v15, 0xff

    ushr-int/lit8 v15, v15, 0x4

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x4

    sget-object v15, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v16, v1, v13

    and-int/lit8 v16, v16, 0xf

    aget-byte v15, v15, v16

    or-int/2addr v14, v15

    .line 247
    .local v14, "val":I
    add-int/lit8 v15, v13, -0x1

    aget-byte v15, v1, v15

    xor-int/2addr v15, v14

    and-int/lit16 v15, v15, 0xff

    if-eqz v15, :cond_2

    .line 249
    if-nez v10, :cond_1

    .line 251
    const/4 v10, 0x1

    .line 252
    add-int/lit8 v15, v13, -0x1

    aget-byte v15, v1, v15

    xor-int/2addr v15, v14

    and-int/lit16 v5, v15, 0xff

    .line 253
    add-int/lit8 v12, v13, -0x1

    goto :goto_2

    .line 257
    :cond_1
    new-instance v8, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v11, "invalid tsums in block"

    invoke-direct {v8, v11}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 242
    .end local v14    # "val":I
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, -0x2

    goto :goto_1

    .line 262
    .end local v13    # "i":I
    :cond_3
    aput-byte v11, v1, v12

    .line 264
    array-length v11, v1

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    new-array v11, v11, [B

    .line 266
    .local v11, "nblock":[B
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    array-length v14, v11

    if-ge v13, v14, :cond_4

    .line 268
    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v12

    add-int/2addr v14, v8

    aget-byte v14, v1, v14

    aput-byte v14, v11, v13

    .line 266
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 271
    .end local v13    # "i":I
    :cond_4
    add-int/lit8 v8, v5, -0x1

    iput v8, v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 273
    return-object v11

    .line 232
    .end local v10    # "boundaryFound":Z
    .end local v11    # "nblock":[B
    .end local v12    # "boundary":I
    :cond_5
    new-instance v8, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v10, "invalid forcing byte in block"

    invoke-direct {v8, v10}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 225
    .end local v9    # "iR":Ljava/math/BigInteger;
    :cond_6
    new-instance v8, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "resulting integer iS or (modulus - iS) is not congruent to 6 mod 16"

    invoke-direct {v8, v9}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private encodeBlock([BII)[B
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    div-int/2addr v0, v1

    new-array v0, v0, [B

    .line 153
    .local v0, "block":[B
    iget v2, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 154
    .local v2, "r":I
    move v4, p3

    .line 155
    .local v4, "z":I
    iget v5, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v5, v5, 0xd

    div-int/lit8 v5, v5, 0x10

    .line 157
    .local v5, "t":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 159
    sub-int v7, v5, v4

    if-le v6, v7, :cond_0

    .line 161
    add-int v7, p2, p3

    sub-int v8, v5, v6

    sub-int/2addr v7, v8

    array-length v8, v0

    sub-int/2addr v8, v5

    sub-int v9, v5, v6

    invoke-static {p1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 166
    :cond_0
    array-length v7, v0

    add-int v8, v6, v4

    sub-int/2addr v7, v8

    invoke-static {p1, p2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :goto_1
    add-int/2addr v6, v4

    goto :goto_0

    .line 170
    .end local v6    # "i":I
    :cond_1
    array-length v6, v0

    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .restart local v6    # "i":I
    :goto_2
    array-length v7, v0

    if-eq v6, v7, :cond_2

    .line 172
    array-length v7, v0

    sub-int/2addr v7, v5

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    aget-byte v7, v0, v7

    .line 174
    .local v7, "val":B
    sget-object v8, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit16 v9, v7, 0xff

    ushr-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x4

    sget-object v9, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit8 v10, v7, 0xf

    aget-byte v9, v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 176
    add-int/lit8 v8, v6, 0x1

    aput-byte v7, v0, v8

    .line 170
    .end local v7    # "val":B
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 179
    .end local v6    # "i":I
    :cond_2
    array-length v6, v0

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    aget-byte v7, v0, v6

    xor-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 180
    array-length v6, v0

    sub-int/2addr v6, v3

    array-length v7, v0

    sub-int/2addr v7, v3

    aget-byte v7, v0, v7

    shl-int/lit8 v7, v7, 0x4

    or-int/lit8 v7, v7, 0x6

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 182
    iget v6, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    sub-int/2addr v6, v3

    rem-int/2addr v6, v1

    rsub-int/lit8 v6, v6, 0x8

    .line 183
    .local v6, "maxBit":I
    const/4 v7, 0x0

    .line 185
    .local v7, "offSet":I
    const/16 v8, 0x80

    const/4 v9, 0x0

    if-eq v6, v1, :cond_3

    .line 187
    aget-byte v1, v0, v9

    const/16 v3, 0xff

    ushr-int/2addr v3, v6

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    .line 188
    aget-byte v1, v0, v9

    ushr-int v3, v8, v6

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    goto :goto_3

    .line 192
    :cond_3
    aput-byte v9, v0, v9

    .line 193
    aget-byte v1, v0, v3

    or-int/2addr v1, v8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 194
    const/4 v7, 0x1

    .line 197
    :goto_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    sub-int/2addr v3, v7

    invoke-interface {v1, v0, v7, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 80
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 82
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    return v1

    .line 86
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 97
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 99
    return v0

    .line 103
    :cond_0
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public getPadBits()I
    .locals 1

    .line 127
    iget v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "param"
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    .line 54
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 56
    .local v1, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 57
    .end local v1    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 60
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 63
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 65
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    .line 66
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    .line 68
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    .line 69
    return-void
.end method

.method public processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public setPadBits(I)V
    .locals 2
    .param p1, "padBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padBits"
        }
    .end annotation

    .line 114
    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 119
    iput p1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 120
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBits > 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
