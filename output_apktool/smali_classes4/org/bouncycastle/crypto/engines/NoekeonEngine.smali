.class public Lorg/bouncycastle/crypto/engines/NoekeonEngine;
.super Ljava/lang/Object;
.source "NoekeonEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final SIZE:I = 0x10

.field private static final roundConstants:[B


# instance fields
.field private _forEncryption:Z

.field private _initialised:Z

.field private final k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x1bt
        0x36t
        0x6ct
        -0x28t
        -0x55t
        0x4dt
        -0x66t
        0x2ft
        0x5et
        -0x44t
        0x63t
        -0x3at
        -0x69t
        0x35t
        0x6at
        -0x2ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    .line 36
    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 18
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
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
            "out",
            "outOff"
        }
    .end annotation

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v4

    .line 201
    .local v4, "a0":I
    add-int/lit8 v5, p2, 0x4

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v5

    .line 202
    .local v5, "a1":I
    add-int/lit8 v6, p2, 0x8

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v6

    .line 203
    .local v6, "a2":I
    add-int/lit8 v7, p2, 0xc

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v7

    .line 205
    .local v7, "a3":I
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    .local v8, "k0":I
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    .local v9, "k1":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    .local v11, "k2":I
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    .line 207
    .local v13, "k3":I
    const/16 v14, 0x10

    .line 212
    .local v14, "round":I
    :goto_0
    xor-int v15, v4, v6

    .line 213
    .local v15, "t02":I
    const/16 v12, 0x8

    invoke-static {v15, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v16

    const/16 v10, 0x18

    invoke-static {v15, v10}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v17

    xor-int v16, v16, v17

    xor-int v15, v15, v16

    .line 215
    xor-int/2addr v4, v8

    .line 216
    xor-int/2addr v5, v9

    .line 217
    xor-int/2addr v6, v11

    .line 218
    xor-int/2addr v7, v13

    .line 220
    xor-int v10, v5, v7

    .line 221
    .local v10, "t13":I
    invoke-static {v10, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    const/16 v0, 0x18

    invoke-static {v10, v0}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v12

    xor-int/2addr v0, v10

    .line 223
    .end local v10    # "t13":I
    .local v0, "t13":I
    xor-int/2addr v4, v0

    .line 224
    xor-int/2addr v5, v15

    .line 225
    xor-int/2addr v6, v0

    .line 226
    xor-int v0, v7, v15

    .line 229
    .end local v7    # "a3":I
    .end local v15    # "t02":I
    .local v0, "a3":I
    sget-object v7, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[B

    aget-byte v7, v7, v14

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v4, v7

    .line 231
    add-int/lit8 v14, v14, -0x1

    if-gez v14, :cond_0

    .line 233
    nop

    .line 263
    invoke-static {v4, v2, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 264
    add-int/lit8 v7, v3, 0x4

    invoke-static {v5, v2, v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 265
    add-int/lit8 v7, v3, 0x8

    invoke-static {v6, v2, v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 266
    add-int/lit8 v7, v3, 0xc

    invoke-static {v0, v2, v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 268
    const/16 v7, 0x10

    return v7

    .line 238
    :cond_0
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    .line 239
    const/4 v10, 0x5

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    .line 240
    const/4 v10, 0x2

    invoke-static {v0, v10}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v0

    .line 245
    move v12, v0

    .line 246
    .local v12, "t":I
    or-int v15, v0, v6

    xor-int/2addr v5, v15

    .line 247
    not-int v15, v5

    and-int/2addr v15, v6

    xor-int v0, v4, v15

    .line 249
    not-int v15, v5

    xor-int/2addr v15, v12

    xor-int/2addr v15, v6

    xor-int v6, v15, v0

    .line 251
    or-int v15, v0, v6

    xor-int/2addr v5, v15

    .line 252
    and-int v15, v6, v5

    xor-int v4, v12, v15

    .line 257
    .end local v12    # "t":I
    const/16 v12, 0x1f

    invoke-static {v5, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    .line 258
    const/16 v12, 0x1b

    invoke-static {v6, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    .line 259
    const/16 v12, 0x1e

    invoke-static {v0, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v0

    move v7, v0

    const/4 v10, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_0
.end method

.method private encryptBlock([BI[BI)I
    .locals 19
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
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
            "out",
            "outOff"
        }
    .end annotation

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v4

    .line 128
    .local v4, "a0":I
    add-int/lit8 v5, p2, 0x4

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v5

    .line 129
    .local v5, "a1":I
    add-int/lit8 v6, p2, 0x8

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v6

    .line 130
    .local v6, "a2":I
    add-int/lit8 v7, p2, 0xc

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v7

    .line 132
    .local v7, "a3":I
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    .local v8, "k0":I
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    .local v9, "k1":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    .local v11, "k2":I
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    .line 134
    .local v13, "k3":I
    const/4 v14, 0x0

    .line 137
    .local v14, "round":I
    :goto_0
    sget-object v15, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[B

    aget-byte v15, v15, v14

    and-int/lit16 v15, v15, 0xff

    xor-int/2addr v4, v15

    .line 141
    xor-int v15, v4, v6

    .line 142
    .local v15, "t02":I
    const/16 v12, 0x8

    invoke-static {v15, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v16

    const/16 v17, 0x1

    const/16 v10, 0x18

    invoke-static {v15, v10}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v18

    xor-int v16, v16, v18

    xor-int v15, v15, v16

    .line 144
    xor-int/2addr v4, v8

    .line 145
    xor-int/2addr v5, v9

    .line 146
    xor-int/2addr v6, v11

    .line 147
    xor-int/2addr v7, v13

    .line 149
    xor-int v10, v5, v7

    .line 150
    .local v10, "t13":I
    invoke-static {v10, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    const/16 v0, 0x18

    invoke-static {v10, v0}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v12

    xor-int/2addr v0, v10

    .line 152
    .end local v10    # "t13":I
    .local v0, "t13":I
    xor-int/2addr v4, v0

    .line 153
    xor-int/2addr v5, v15

    .line 154
    xor-int/2addr v6, v0

    .line 155
    xor-int v0, v7, v15

    .line 158
    .end local v7    # "a3":I
    .end local v15    # "t02":I
    .local v0, "a3":I
    add-int/lit8 v14, v14, 0x1

    const/16 v7, 0x10

    if-le v14, v7, :cond_0

    .line 160
    nop

    .line 190
    invoke-static {v4, v2, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 191
    add-int/lit8 v10, v3, 0x4

    invoke-static {v5, v2, v10}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 192
    add-int/lit8 v10, v3, 0x8

    invoke-static {v6, v2, v10}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 193
    add-int/lit8 v10, v3, 0xc

    invoke-static {v0, v2, v10}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 195
    return v7

    .line 165
    :cond_0
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    .line 166
    const/4 v10, 0x5

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    .line 167
    const/4 v10, 0x2

    invoke-static {v0, v10}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v0

    .line 172
    move v12, v0

    .line 173
    .local v12, "t":I
    or-int v15, v0, v6

    xor-int/2addr v5, v15

    .line 174
    not-int v15, v5

    and-int/2addr v15, v6

    xor-int v0, v4, v15

    .line 176
    not-int v15, v5

    xor-int/2addr v15, v12

    xor-int/2addr v15, v6

    xor-int v6, v15, v0

    .line 178
    or-int v15, v0, v6

    xor-int/2addr v5, v15

    .line 179
    and-int v15, v6, v5

    xor-int v4, v12, v15

    .line 184
    .end local v12    # "t":I
    const/16 v12, 0x1f

    invoke-static {v5, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    .line 185
    const/16 v12, 0x1b

    invoke-static {v6, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    .line 186
    const/16 v12, 0x1e

    invoke-static {v0, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v0

    move v7, v0

    const/4 v10, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "Noekeon"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 45
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 18
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .line 60
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_2

    .line 66
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 67
    .local v3, "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v4

    .line 68
    .local v4, "key":[B
    array-length v5, v4

    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    .line 73
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI[III)V

    .line 75
    const/4 v5, 0x1

    if-nez v1, :cond_0

    .line 79
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aget v6, v6, v7

    .local v6, "a0":I
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aget v8, v8, v5

    .local v8, "a1":I
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    .local v9, "a2":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    .line 81
    .local v11, "a3":I
    xor-int v13, v6, v9

    .line 82
    .local v13, "t02":I
    const/16 v14, 0x8

    invoke-static {v13, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v15

    const/16 v16, 0x0

    const/16 v7, 0x18

    invoke-static {v13, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v17

    xor-int v15, v15, v17

    xor-int/2addr v13, v15

    .line 84
    xor-int v15, v8, v11

    .line 85
    .local v15, "t13":I
    invoke-static {v15, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v14

    invoke-static {v15, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v7, v14

    xor-int/2addr v7, v15

    .line 87
    .end local v15    # "t13":I
    .local v7, "t13":I
    xor-int/2addr v6, v7

    .line 88
    xor-int/2addr v8, v13

    .line 89
    xor-int/2addr v9, v7

    .line 90
    xor-int/2addr v11, v13

    .line 92
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aput v6, v14, v16

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aput v8, v14, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aput v9, v14, v10

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aput v11, v10, v12

    .line 96
    .end local v6    # "a0":I
    .end local v7    # "t13":I
    .end local v8    # "a1":I
    .end local v9    # "a2":I
    .end local v11    # "a3":I
    .end local v13    # "t02":I
    :cond_0
    iput-boolean v1, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    .line 97
    iput-boolean v5, v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    .line 99
    new-instance v5, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 100
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v8

    invoke-direct {v5, v6, v7, v2, v8}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 99
    invoke-static {v5}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 101
    return-void

    .line 70
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Key length not 128 bits."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 62
    .end local v3    # "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v4    # "key":[B
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid parameter passed to Noekeon init - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processBlock([BI[BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
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
            "out",
            "outOff"
        }
    .end annotation

    .line 105
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    if-eqz v0, :cond_3

    .line 109
    array-length v0, p1

    add-int/lit8 v0, v0, -0x10

    if-gt p2, v0, :cond_2

    .line 113
    array-length v0, p3

    add-int/lit8 v0, v0, -0x10

    if-gt p4, v0, :cond_1

    .line 118
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    .line 115
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 123
    return-void
.end method
