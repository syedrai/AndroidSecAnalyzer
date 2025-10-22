.class public Lorg/bouncycastle/crypto/digests/SM3Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "SM3Digest.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final DIGEST_LENGTH:I = 0x20

.field private static final T:[I


# instance fields
.field private V:[I

.field private W:[I

.field private inwords:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    const/16 v0, 0x40

    new-array v1, v0, [I

    sput-object v1, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 41
    const v2, 0x79cc4519

    .line 42
    .local v2, "t":I
    sget-object v3, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v4, v2, v1

    rsub-int/lit8 v5, v1, 0x20

    ushr-int v5, v2, v5

    or-int/2addr v4, v5

    aput v4, v3, v1

    .line 39
    .end local v2    # "t":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x10

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 46
    rem-int/lit8 v2, v1, 0x20

    .line 47
    .local v2, "n":I
    const v3, 0x7a879d8a

    .line 48
    .local v3, "t":I
    sget-object v4, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v5, v3, v2

    rsub-int/lit8 v6, v2, 0x20

    ushr-int v6, v3, v6

    or-int/2addr v5, v6

    aput v5, v4, v1

    .line 44
    .end local v2    # "n":I
    .end local v3    # "t":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    .line 32
    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    .line 67
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 69
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->reset()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SM3Digest;)V
    .locals 1
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/SM3Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    .line 32
    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    .line 80
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 82
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SM3Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    .line 83
    return-void
.end method

.method private FF0(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 232
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private FF1(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 237
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private GG0(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 242
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private GG1(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 247
    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private P0(I)I
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    .line 218
    shl-int/lit8 v0, p1, 0x9

    ushr-int/lit8 v1, p1, 0x17

    or-int/2addr v0, v1

    .line 219
    .local v0, "r9":I
    shl-int/lit8 v1, p1, 0x11

    ushr-int/lit8 v2, p1, 0xf

    or-int/2addr v1, v2

    .line 220
    .local v1, "r17":I
    xor-int v2, p1, v0

    xor-int/2addr v2, v1

    return v2
.end method

.method private P1(I)I
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    .line 225
    shl-int/lit8 v0, p1, 0xf

    ushr-int/lit8 v1, p1, 0x11

    or-int/2addr v0, v1

    .line 226
    .local v0, "r15":I
    shl-int/lit8 v1, p1, 0x17

    ushr-int/lit8 v2, p1, 0x9

    or-int/2addr v1, v2

    .line 227
    .local v1, "r23":I
    xor-int v2, p1, v0

    xor-int/2addr v2, v1

    return v2
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/SM3Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 87
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    .line 90
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 104
    new-instance v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    .line 331
    const/16 v0, 0x100

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->finish()V

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 141
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->reset()V

    .line 143
    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "SM3"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 99
    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .locals 29

    .line 253
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 255
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    aget v3, v3, v1

    aput v3, v2, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "j":I
    :cond_0
    const/16 v1, 0x10

    .restart local v1    # "j":I
    :goto_1
    const/16 v3, 0x44

    if-ge v1, v3, :cond_1

    .line 259
    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v4, v1, -0x3

    aget v3, v3, v4

    .line 260
    .local v3, "wj3":I
    shl-int/lit8 v4, v3, 0xf

    ushr-int/lit8 v5, v3, 0x11

    or-int/2addr v4, v5

    .line 261
    .local v4, "r15":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v6, v1, -0xd

    aget v5, v5, v6

    .line 262
    .local v5, "wj13":I
    shl-int/lit8 v6, v5, 0x7

    ushr-int/lit8 v7, v5, 0x19

    or-int/2addr v6, v7

    .line 263
    .local v6, "r7":I
    iget-object v7, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v9, v1, -0x10

    aget v8, v8, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v10, v1, -0x9

    aget v9, v9, v10

    xor-int/2addr v8, v9

    xor-int/2addr v8, v4

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P1(I)I

    move-result v8

    xor-int/2addr v8, v6

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v10, v1, -0x6

    aget v9, v9, v10

    xor-int/2addr v8, v9

    aput v8, v7, v1

    .line 257
    .end local v3    # "wj3":I
    .end local v4    # "r15":I
    .end local v5    # "wj13":I
    .end local v6    # "r7":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v1    # "j":I
    :cond_1
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 267
    .local v1, "A":I
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 268
    .local v4, "B":I
    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    .line 269
    .local v6, "C":I
    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    .line 270
    .local v8, "D":I
    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    .line 271
    .local v10, "E":I
    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    .line 272
    .local v12, "F":I
    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    .line 273
    .local v14, "G":I
    const/16 v16, 0x1

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/16 v17, 0x7

    aget v5, v5, v17

    .line 276
    .local v5, "H":I
    const/16 v18, 0x0

    move/from16 v7, v18

    const/16 v18, 0x2

    .local v7, "j":I
    :goto_2
    if-ge v7, v2, :cond_2

    .line 278
    shl-int/lit8 v19, v1, 0xc

    ushr-int/lit8 v20, v1, 0x14

    or-int v19, v19, v20

    .line 279
    .local v19, "a12":I
    add-int v20, v19, v10

    sget-object v21, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    aget v21, v21, v7

    add-int v20, v20, v21

    .line 280
    .local v20, "s1_":I
    shl-int/lit8 v21, v20, 0x7

    ushr-int/lit8 v22, v20, 0x19

    or-int v21, v21, v22

    .line 281
    .local v21, "SS1":I
    xor-int v22, v21, v19

    .line 282
    .local v22, "SS2":I
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    aget v2, v2, v7

    .line 283
    .local v2, "Wj":I
    const/16 v24, 0x3

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v25, v7, 0x4

    aget v9, v9, v25

    xor-int/2addr v9, v2

    .line 284
    .local v9, "W1j":I
    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/crypto/digests/SM3Digest;->FF0(III)I

    move-result v25

    add-int v25, v25, v8

    add-int v25, v25, v22

    add-int v25, v25, v9

    .line 285
    .local v25, "TT1":I
    invoke-direct {v0, v10, v12, v14}, Lorg/bouncycastle/crypto/digests/SM3Digest;->GG0(III)I

    move-result v26

    add-int v26, v26, v5

    add-int v26, v26, v21

    const/16 v27, 0x4

    add-int v11, v26, v2

    .line 286
    .local v11, "TT2":I
    move v8, v6

    .line 287
    shl-int/lit8 v26, v4, 0x9

    ushr-int/lit8 v28, v4, 0x17

    or-int v6, v26, v28

    .line 288
    move v4, v1

    .line 289
    move/from16 v1, v25

    .line 290
    move v5, v14

    .line 291
    shl-int/lit8 v26, v12, 0x13

    ushr-int/lit8 v28, v12, 0xd

    or-int v14, v26, v28

    .line 292
    move v12, v10

    .line 293
    invoke-direct {v0, v11}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v10

    .line 276
    .end local v2    # "Wj":I
    .end local v9    # "W1j":I
    .end local v11    # "TT2":I
    .end local v19    # "a12":I
    .end local v20    # "s1_":I
    .end local v21    # "SS1":I
    .end local v22    # "SS2":I
    .end local v25    # "TT1":I
    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x10

    const/4 v9, 0x3

    const/4 v11, 0x4

    goto :goto_2

    :cond_2
    const/16 v24, 0x3

    const/16 v27, 0x4

    .line 297
    .end local v7    # "j":I
    const/16 v2, 0x10

    .local v2, "j":I
    :goto_3
    const/16 v7, 0x40

    if-ge v2, v7, :cond_3

    .line 299
    shl-int/lit8 v7, v1, 0xc

    ushr-int/lit8 v9, v1, 0x14

    or-int/2addr v7, v9

    .line 300
    .local v7, "a12":I
    add-int v9, v7, v10

    sget-object v11, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    aget v11, v11, v2

    add-int/2addr v9, v11

    .line 301
    .local v9, "s1_":I
    shl-int/lit8 v11, v9, 0x7

    ushr-int/lit8 v19, v9, 0x19

    or-int v11, v11, v19

    .line 302
    .local v11, "SS1":I
    xor-int v19, v11, v7

    .line 303
    .local v19, "SS2":I
    const/16 v20, 0x5

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    aget v13, v13, v2

    .line 304
    .local v13, "Wj":I
    const/16 v21, 0x6

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v22, v2, 0x4

    aget v15, v15, v22

    xor-int/2addr v15, v13

    .line 305
    .local v15, "W1j":I
    invoke-direct {v0, v1, v4, v6}, Lorg/bouncycastle/crypto/digests/SM3Digest;->FF1(III)I

    move-result v22

    add-int v22, v22, v8

    add-int v22, v22, v19

    add-int v22, v22, v15

    .line 306
    .local v22, "TT1":I
    invoke-direct {v0, v10, v12, v14}, Lorg/bouncycastle/crypto/digests/SM3Digest;->GG1(III)I

    move-result v23

    add-int v23, v23, v5

    add-int v23, v23, v11

    const/16 v25, 0x0

    add-int v3, v23, v13

    .line 307
    .local v3, "TT2":I
    move v8, v6

    .line 308
    shl-int/lit8 v23, v4, 0x9

    ushr-int/lit8 v26, v4, 0x17

    or-int v6, v23, v26

    .line 309
    move v4, v1

    .line 310
    move/from16 v1, v22

    .line 311
    move v5, v14

    .line 312
    shl-int/lit8 v23, v12, 0x13

    ushr-int/lit8 v26, v12, 0xd

    or-int v14, v23, v26

    .line 313
    move v12, v10

    .line 314
    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v10

    .line 297
    .end local v3    # "TT2":I
    .end local v7    # "a12":I
    .end local v9    # "s1_":I
    .end local v11    # "SS1":I
    .end local v13    # "Wj":I
    .end local v15    # "W1j":I
    .end local v19    # "SS2":I
    .end local v22    # "TT1":I
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x5

    const/4 v15, 0x6

    goto :goto_3

    :cond_3
    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v25, 0x0

    .line 317
    .end local v2    # "j":I
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v3, v2, v25

    xor-int/2addr v3, v1

    aput v3, v2, v25

    .line 318
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v3, v2, v16

    xor-int/2addr v3, v4

    aput v3, v2, v16

    .line 319
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v3, v2, v18

    xor-int/2addr v3, v6

    aput v3, v2, v18

    .line 320
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v3, v2, v24

    xor-int/2addr v3, v8

    aput v3, v2, v24

    .line 321
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v3, v2, v27

    xor-int/2addr v3, v10

    aput v3, v2, v27

    .line 322
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v3, v2, v20

    xor-int/2addr v3, v12

    aput v3, v2, v20

    .line 323
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v3, v2, v21

    xor-int/2addr v3, v14

    aput v3, v2, v21

    .line 324
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    aget v3, v2, v17

    xor-int/2addr v3, v5

    aput v3, v2, v17

    .line 326
    const/4 v2, 0x0

    iput v2, v0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    .line 327
    return-void
.end method

.method protected processLength(J)V
    .locals 4
    .param p1, "bitLength"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitLength"
        }
    .end annotation

    .line 158
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-le v0, v2, :cond_0

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    aput v1, v0, v3

    .line 162
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    .line 164
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->processBlock()V

    .line 167
    :cond_0
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    if-ge v0, v2, :cond_1

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    aput v1, v0, v3

    .line 170
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    aput v3, v0, v1

    .line 175
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    long-to-int v2, p1

    aput v2, v0, v1

    .line 176
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 150
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->processBlock()V

    .line 154
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 121
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const v1, 0x7380166f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x1

    const v3, 0x4914b2b9

    aput v3, v0, v1

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x2

    const v3, 0x172442d7

    aput v3, v0, v1

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x3

    const v3, -0x2575fa00

    aput v3, v0, v1

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x4

    const v3, -0x5690cf44

    aput v3, v0, v1

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x5

    const v3, 0x163138aa

    aput v3, v0, v1

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x6

    const v3, -0x1c7211b3

    aput v3, v0, v1

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x7

    const v3, -0x4f04f1b2

    aput v3, v0, v1

    .line 132
    iput v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    .line 133
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 109
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    .line 111
    .local v0, "d":Lorg/bouncycastle/crypto/digests/SM3Digest;
    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 112
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    .line 113
    return-void
.end method
