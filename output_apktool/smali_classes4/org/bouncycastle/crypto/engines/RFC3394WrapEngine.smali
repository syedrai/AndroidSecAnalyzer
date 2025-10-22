.class public Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# static fields
.field private static final DEFAULT_IV:[B


# instance fields
.field private final engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private final iv:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private final wrapCipherMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
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

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Z)V
    .locals 1
    .param p1, "engine"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "useReverseDirection"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engine",
            "useReverseDirection"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    .line 52
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

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

    .line 59
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 61
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 66
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 68
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 69
    sget-object v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 71
    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 73
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 75
    .local v0, "withIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 76
    .local v3, "iv":[B
    array-length v4, v3

    if-ne v4, v1, :cond_2

    .line 81
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 82
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 78
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV not equal to 8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v0    # "withIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_3
    :goto_0
    return-void
.end method

.method public unwrap([BII)[B
    .locals 18
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

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v4, :cond_c

    .line 167
    const/16 v4, 0x10

    if-lt v3, v4, :cond_b

    .line 172
    div-int/lit8 v4, v3, 0x8

    .line 174
    .local v4, "n":I
    mul-int/lit8 v5, v4, 0x8

    if-ne v5, v3, :cond_a

    .line 179
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-boolean v6, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v5, v6, v8}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 181
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v5, v5

    sub-int v5, v3, v5

    new-array v5, v5, [B

    .line 182
    .local v5, "block":[B
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v6

    new-array v6, v6, [B

    .line 183
    .local v6, "a":[B
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    const/16 v9, 0x8

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 185
    .local v8, "buf":[B
    sub-int/2addr v4, v7

    .line 187
    const/4 v10, 0x0

    if-ne v4, v7, :cond_0

    .line 189
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v11, v1, v2, v8, v10}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 190
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v8, v10, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v8, v11, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 195
    :cond_0
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v1, v2, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    add-int/2addr v11, v2

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    sub-int v12, v3, v12

    invoke-static {v1, v11, v5, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    const/4 v11, 0x5

    .local v11, "j":I
    :goto_0
    if-ltz v11, :cond_3

    .line 200
    move v12, v4

    .local v12, "i":I
    :goto_1
    if-lt v12, v7, :cond_2

    .line 202
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v13, v13

    invoke-static {v6, v10, v8, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    add-int/lit8 v13, v12, -0x1

    mul-int/lit8 v13, v13, 0x8

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    invoke-static {v5, v13, v8, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    mul-int v13, v4, v11

    add-int/2addr v13, v12

    .line 206
    .local v13, "t":I
    const/4 v14, 0x1

    .local v14, "k":I
    :goto_2
    if-eqz v13, :cond_1

    .line 208
    int-to-byte v15, v13

    .line 210
    .local v15, "v":B
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    sub-int/2addr v7, v14

    aget-byte v17, v8, v7

    xor-int v9, v17, v15

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    .line 212
    ushr-int/lit8 v13, v13, 0x8

    .line 206
    .end local v15    # "v":B
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    const/16 v9, 0x8

    goto :goto_2

    .line 215
    .end local v14    # "k":I
    :cond_1
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v8, v10, v8, v10}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 216
    const/16 v7, 0x8

    invoke-static {v8, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    add-int/lit8 v9, v12, -0x1

    mul-int/lit8 v9, v9, 0x8

    invoke-static {v8, v7, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    .end local v13    # "t":I
    add-int/lit8 v12, v12, -0x1

    const/4 v7, 0x1

    const/16 v9, 0x8

    goto :goto_1

    .line 198
    .end local v12    # "i":I
    :cond_2
    add-int/lit8 v11, v11, -0x1

    const/4 v7, 0x1

    const/16 v9, 0x8

    goto :goto_0

    .line 222
    .end local v11    # "j":I
    :cond_3
    :goto_3
    const-string v7, "checksum failed"

    const/4 v9, 0x1

    if-eq v4, v9, :cond_5

    .line 224
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v9}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_6

    .line 226
    :cond_4
    new-instance v9, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v9, v7}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 232
    :cond_5
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v9}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-nez v9, :cond_9

    .line 234
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    invoke-static {v1, v2, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    add-int/2addr v9, v2

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    sub-int v11, v3, v11

    invoke-static {v1, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    const/4 v9, 0x5

    .local v9, "j":I
    :goto_4
    if-ltz v9, :cond_7

    .line 239
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v6, v10, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    const/16 v12, 0x8

    invoke-static {v5, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    mul-int v11, v4, v9

    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 243
    .local v11, "t":I
    const/4 v12, 0x1

    .local v12, "k":I
    :goto_5
    if-eqz v11, :cond_6

    .line 245
    int-to-byte v13, v11

    .line 247
    .local v13, "v":B
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    sub-int/2addr v14, v12

    aget-byte v15, v8, v14

    xor-int/2addr v15, v13

    int-to-byte v15, v15

    aput-byte v15, v8, v14

    .line 249
    ushr-int/lit8 v11, v11, 0x8

    .line 243
    .end local v13    # "v":B
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 252
    .end local v12    # "k":I
    :cond_6
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12, v8, v10, v8, v10}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 253
    const/16 v12, 0x8

    invoke-static {v8, v10, v6, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    invoke-static {v8, v12, v5, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    .end local v11    # "t":I
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 257
    .end local v9    # "j":I
    :cond_7
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v9}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_6

    .line 259
    :cond_8
    new-instance v9, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v9, v7}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 264
    :cond_9
    :goto_6
    return-object v5

    .line 176
    .end local v5    # "block":[B
    .end local v6    # "a":[B
    .end local v8    # "buf":[B
    :cond_a
    new-instance v5, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v6, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    .end local v4    # "n":I
    :cond_b
    new-instance v4, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v5, "unwrap data too short"

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "not set for unwrapping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public wrap([BII)[B
    .locals 12
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

    .line 100
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_6

    .line 104
    const/16 v0, 0x8

    if-lt p3, v0, :cond_5

    .line 109
    div-int/lit8 v1, p3, 0x8

    .line 111
    .local v1, "n":I
    mul-int/lit8 v2, v1, 0x8

    if-ne v2, p3, :cond_4

    .line 116
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 118
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v2, v2

    add-int/2addr v2, p3

    new-array v2, v2, [B

    .line 119
    .local v2, "block":[B
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v3, v3

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v2, v5, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_3

    .line 128
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v3, v3

    add-int/2addr v3, v0

    new-array v3, v3, [B

    .line 130
    .local v3, "buf":[B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    const/4 v6, 0x6

    if-eq v4, v6, :cond_3

    .line 132
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-gt v6, v1, :cond_2

    .line 134
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    invoke-static {v2, v5, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    mul-int/lit8 v7, v6, 0x8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    invoke-static {v2, v7, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v3, v5, v3, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 138
    mul-int v7, v1, v4

    add-int/2addr v7, v6

    .line 139
    .local v7, "t":I
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_2
    if-eqz v7, :cond_1

    .line 141
    int-to-byte v9, v7

    .line 143
    .local v9, "v":B
    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    sub-int/2addr v10, v8

    aget-byte v11, v3, v10

    xor-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 145
    ushr-int/lit8 v7, v7, 0x8

    .line 139
    .end local v9    # "v":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 148
    .end local v8    # "k":I
    :cond_1
    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    mul-int/lit8 v8, v6, 0x8

    invoke-static {v3, v0, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .end local v7    # "t":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    .end local v6    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "buf":[B
    .end local v4    # "j":I
    :cond_3
    :goto_3
    return-object v2

    .line 113
    .end local v2    # "block":[B
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v2, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    .end local v1    # "n":I
    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "wrap data must be at least 8 bytes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
