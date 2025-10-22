.class public Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;
.super Ljava/lang/Object;
.source "RFC5649WrapEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# static fields
.field private static final DEFAULT_IV:[B


# instance fields
.field private final engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private final preIV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->DEFAULT_IV:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        0x59t
        0x59t
        -0x5at
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "engine"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    .line 36
    return-void
.end method

.method private padPlaintext([B)[B
    .locals 5
    .param p1, "plaintext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plaintext"
        }
    .end annotation

    .line 85
    array-length v0, p1

    .line 86
    .local v0, "plaintextLength":I
    rem-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x8

    rem-int/lit8 v1, v1, 0x8

    .line 87
    .local v1, "numOfZerosToAppend":I
    add-int v2, v0, v1

    new-array v2, v2, [B

    .line 88
    .local v2, "paddedPlaintext":[B
    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    if-eqz v1, :cond_0

    .line 93
    new-array v4, v1, [B

    .line 94
    .local v4, "zeros":[B
    invoke-static {v4, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .end local v4    # "zeros":[B
    :cond_0
    return-object v2
.end method

.method private rfc3394UnwrapNoIvCheck([BII[B)[B
    .locals 16
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "extractedAIV"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen",
            "extractedAIV"
        }
    .end annotation

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, p3, -0x8

    new-array v3, v3, [B

    .line 262
    .local v3, "block":[B
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 264
    .local v4, "buf":[B
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    add-int/lit8 v7, v2, 0x8

    add-int/lit8 v8, p3, -0x8

    invoke-static {v1, v7, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v7, v5, v8}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 269
    div-int/lit8 v7, p3, 0x8

    .line 270
    .local v7, "n":I
    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 272
    const/4 v9, 0x5

    .local v9, "j":I
    :goto_0
    if-ltz v9, :cond_2

    .line 274
    move v10, v7

    .local v10, "i":I
    :goto_1
    if-lt v10, v8, :cond_1

    .line 276
    add-int/lit8 v11, v10, -0x1

    mul-int/lit8 v11, v11, 0x8

    invoke-static {v3, v11, v4, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    mul-int v11, v7, v9

    add-int/2addr v11, v10

    .line 279
    .local v11, "t":I
    const/4 v12, 0x1

    .local v12, "k":I
    :goto_2
    if-eqz v11, :cond_0

    .line 281
    rsub-int/lit8 v13, v12, 0x8

    aget-byte v14, v4, v13

    int-to-byte v15, v11

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v4, v13

    .line 282
    ushr-int/lit8 v11, v11, 0x8

    .line 279
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 285
    .end local v12    # "k":I
    :cond_0
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12, v4, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 287
    add-int/lit8 v12, v10, -0x1

    mul-int/lit8 v12, v12, 0x8

    invoke-static {v4, v6, v3, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    .end local v11    # "t":I
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 272
    .end local v10    # "i":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 291
    .end local v9    # "j":I
    :cond_2
    move-object/from16 v8, p4

    invoke-static {v4, v5, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    return-object v3
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forWrapping",
            "param"
        }
    .end annotation

    .line 40
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    .line 42
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 47
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 49
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 50
    sget-object v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->DEFAULT_IV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 52
    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 56
    .local v0, "withIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 57
    .local v3, "iv":[B
    array-length v4, v3

    if-ne v4, v1, :cond_2

    .line 62
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 63
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 59
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV length not equal to 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    .end local v0    # "withIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_3
    :goto_0
    return-void
.end method

.method public unwrap([BII)[B
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

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    if-nez v4, :cond_a

    .line 156
    div-int/lit8 v4, v3, 0x8

    .line 158
    .local v4, "n":I
    mul-int/lit8 v5, v4, 0x8

    if-ne v5, v3, :cond_9

    .line 163
    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 168
    new-array v5, v3, [B

    .line 169
    .local v5, "relevantCiphertext":[B
    const/4 v6, 0x0

    invoke-static {v1, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    new-array v7, v3, [B

    .line 173
    .local v7, "decrypted":[B
    const/16 v8, 0x8

    new-array v9, v8, [B

    .line 175
    .local v9, "extractedAIV":[B
    const/4 v10, 0x2

    if-ne v4, v10, :cond_1

    .line 179
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v10, v6, v11}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 180
    const/4 v10, 0x0

    .local v10, "i":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v11}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v11

    .local v11, "blockSize":I
    :goto_0
    array-length v12, v5

    if-ge v10, v12, :cond_0

    .line 182
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12, v5, v10, v7, v10}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 180
    add-int/2addr v10, v11

    goto :goto_0

    .line 186
    .end local v10    # "i":I
    .end local v11    # "blockSize":I
    :cond_0
    array-length v10, v9

    invoke-static {v7, v6, v9, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    array-length v10, v7

    array-length v11, v9

    sub-int/2addr v10, v11

    new-array v10, v10, [B

    .line 188
    .local v10, "paddedPlaintext":[B
    array-length v11, v9

    array-length v12, v10

    invoke-static {v7, v11, v10, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 193
    .end local v10    # "paddedPlaintext":[B
    :cond_1
    invoke-direct {v0, v1, v2, v3, v9}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->rfc3394UnwrapNoIvCheck([BII[B)[B

    move-result-object v7

    .line 194
    move-object v10, v7

    .line 198
    .restart local v10    # "paddedPlaintext":[B
    :goto_1
    const/4 v11, 0x4

    new-array v12, v11, [B

    .line 199
    .local v12, "extractedHighOrderAIV":[B
    invoke-static {v9, v6, v12, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    invoke-static {v9, v11}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v11

    .line 206
    .local v11, "mli":I
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    invoke-static {v12, v13}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v13

    .line 209
    .local v13, "isValid":Z
    array-length v14, v10

    .line 210
    .local v14, "upperBound":I
    add-int/lit8 v15, v14, -0x8

    .line 211
    .local v15, "lowerBound":I
    if-gt v11, v15, :cond_2

    .line 213
    const/4 v13, 0x0

    .line 215
    :cond_2
    if-le v11, v14, :cond_3

    .line 217
    const/4 v13, 0x0

    .line 221
    :cond_3
    sub-int v6, v14, v11

    .line 222
    .local v6, "expectedZeros":I
    if-ge v6, v8, :cond_4

    if-gez v6, :cond_5

    .line 225
    :cond_4
    const/4 v13, 0x0

    .line 226
    const/4 v6, 0x4

    .line 229
    :cond_5
    new-array v8, v6, [B

    .line 230
    .local v8, "zeros":[B
    new-array v0, v6, [B

    .line 231
    .local v0, "pad":[B
    array-length v1, v10

    sub-int/2addr v1, v6

    const/4 v2, 0x0

    invoke-static {v10, v1, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    invoke-static {v0, v8}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    .line 234
    const/4 v13, 0x0

    .line 237
    :cond_6
    if-eqz v13, :cond_7

    .line 243
    new-array v1, v11, [B

    .line 244
    .local v1, "plaintext":[B
    array-length v2, v1

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "pad":[B
    .local v16, "pad":[B
    invoke-static {v10, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    return-object v1

    .line 239
    .end local v1    # "plaintext":[B
    .end local v16    # "pad":[B
    .restart local v0    # "pad":[B
    :cond_7
    move-object/from16 v16, v0

    .end local v0    # "pad":[B
    .restart local v16    # "pad":[B
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "checksum failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    .end local v5    # "relevantCiphertext":[B
    .end local v6    # "expectedZeros":I
    .end local v7    # "decrypted":[B
    .end local v8    # "zeros":[B
    .end local v9    # "extractedAIV":[B
    .end local v10    # "paddedPlaintext":[B
    .end local v11    # "mli":I
    .end local v12    # "extractedHighOrderAIV":[B
    .end local v13    # "isValid":Z
    .end local v14    # "upperBound":I
    .end local v15    # "lowerBound":I
    .end local v16    # "pad":[B
    :cond_8
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "unwrap data must be at least 16 bytes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_9
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    .end local v4    # "n":I
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap([BII)[B
    .locals 8
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

    .line 101
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_2

    .line 106
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 109
    .local v1, "iv":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-static {p3, v1, v4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 114
    new-array v2, p3, [B

    .line 115
    .local v2, "relevantPlaintext":[B
    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->padPlaintext([B)[B

    move-result-object v4

    .line 118
    .local v4, "paddedPlaintext":[B
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v0, :cond_1

    .line 124
    array-length v0, v4

    array-length v5, v1

    add-int/2addr v0, v5

    new-array v0, v0, [B

    .line 125
    .local v0, "paddedPlainTextWithIV":[B
    array-length v5, v1

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v5, v1

    array-length v7, v4

    invoke-static {v4, v3, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v3, v6, v5}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 129
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .local v5, "blockSize":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 131
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v0, v3, v0, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 129
    add-int/2addr v3, v5

    goto :goto_0

    .line 134
    .end local v3    # "i":I
    .end local v5    # "blockSize":I
    :cond_0
    return-object v0

    .line 140
    .end local v0    # "paddedPlainTextWithIV":[B
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 141
    .local v0, "wrapper":Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;
    new-instance v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v7, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 142
    .local v5, "paramsWithIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0, v6, v5}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 143
    array-length v6, v4

    invoke-virtual {v0, v4, v3, v6}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrap([BII)[B

    move-result-object v3

    return-object v3

    .line 103
    .end local v0    # "wrapper":Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;
    .end local v1    # "iv":[B
    .end local v2    # "relevantPlaintext":[B
    .end local v4    # "paddedPlaintext":[B
    .end local v5    # "paramsWithIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
