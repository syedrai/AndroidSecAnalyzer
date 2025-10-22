.class public abstract Lorg/bouncycastle/crypto/engines/SerpentEngineBase;
.super Ljava/lang/Object;
.source "SerpentEngineBase.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field static final PHI:I = -0x61c88647

.field static final ROUNDS:I = 0x20


# instance fields
.field protected encrypting:Z

.field protected keyBits:I

.field protected wKey:[I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 27
    return-void
.end method

.method private getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    if-nez v0, :cond_0

    .line 497
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0

    .line 500
    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    :goto_0
    return-object v0
.end method

.method protected static rotateLeft(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "bits"
        }
    .end annotation

    .line 118
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method protected static rotateRight(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "bits"
        }
    .end annotation

    .line 125
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected final LT([I)V
    .locals 11
    .param p1, "X"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "X"
        }
    .end annotation

    .line 460
    const/4 v0, 0x0

    aget v1, p1, v0

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v1

    .line 461
    .local v1, "x0":I
    const/4 v2, 0x2

    aget v3, p1, v2

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v3

    .line 462
    .local v3, "x2":I
    const/4 v5, 0x1

    aget v6, p1, v5

    xor-int/2addr v6, v1

    xor-int/2addr v6, v3

    .line 463
    .local v6, "x1":I
    aget v7, p1, v4

    xor-int/2addr v7, v3

    shl-int/lit8 v8, v1, 0x3

    xor-int/2addr v7, v8

    .line 465
    .local v7, "x3":I
    invoke-static {v6, v5}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v8

    aput v8, p1, v5

    .line 466
    const/4 v8, 0x7

    invoke-static {v7, v8}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v9

    aput v9, p1, v4

    .line 467
    aget v9, p1, v5

    xor-int/2addr v9, v1

    aget v10, p1, v4

    xor-int/2addr v9, v10

    const/4 v10, 0x5

    invoke-static {v9, v10}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v9

    aput v9, p1, v0

    .line 468
    aget v0, p1, v4

    xor-int/2addr v0, v3

    aget v4, p1, v5

    shl-int/2addr v4, v8

    xor-int/2addr v0, v4

    const/16 v4, 0x16

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v0

    aput v0, p1, v2

    .line 469
    return-void
.end method

.method protected abstract decryptBlock([BI[BI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "output",
            "outOff"
        }
    .end annotation
.end method

.method protected abstract encryptBlock([BI[BI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "output",
            "outOff"
        }
    .end annotation
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "Serpent"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 61
    const/16 v0, 0x10

    return v0
.end method

.method protected final ib0([IIIII)V
    .locals 7
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 172
    not-int v0, p2

    .line 173
    .local v0, "t1":I
    xor-int v1, p2, p3

    .line 174
    .local v1, "t2":I
    or-int v2, v0, v1

    xor-int/2addr v2, p5

    .line 175
    .local v2, "t4":I
    xor-int v3, p4, v2

    .line 176
    .local v3, "t5":I
    xor-int v4, v1, v3

    const/4 v5, 0x2

    aput v4, p1, v5

    .line 177
    and-int v4, p5, v1

    xor-int/2addr v4, v0

    .line 178
    .local v4, "t8":I
    aget v5, p1, v5

    and-int/2addr v5, v4

    xor-int/2addr v5, v2

    const/4 v6, 0x1

    aput v5, p1, v6

    .line 179
    and-int v5, p2, v2

    aget v6, p1, v6

    or-int/2addr v6, v3

    xor-int/2addr v5, v6

    const/4 v6, 0x3

    aput v5, p1, v6

    .line 180
    aget v5, p1, v6

    xor-int v6, v3, v4

    xor-int/2addr v5, v6

    const/4 v6, 0x0

    aput v5, p1, v6

    .line 181
    return-void
.end method

.method protected final ib1([IIIII)V
    .locals 9
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 204
    xor-int v0, p3, p5

    .line 205
    .local v0, "t1":I
    and-int v1, p3, v0

    xor-int/2addr v1, p2

    .line 206
    .local v1, "t3":I
    xor-int v2, v0, v1

    .line 207
    .local v2, "t4":I
    xor-int v3, p4, v2

    const/4 v4, 0x3

    aput v3, p1, v4

    .line 208
    and-int v3, v0, v1

    xor-int/2addr v3, p3

    .line 209
    .local v3, "t7":I
    aget v5, p1, v4

    or-int/2addr v5, v3

    .line 210
    .local v5, "t8":I
    xor-int v6, v1, v5

    const/4 v7, 0x1

    aput v6, p1, v7

    .line 211
    aget v6, p1, v7

    not-int v6, v6

    .line 212
    .local v6, "t10":I
    aget v4, p1, v4

    xor-int/2addr v4, v3

    .line 213
    .local v4, "t11":I
    const/4 v7, 0x0

    xor-int v8, v6, v4

    aput v8, p1, v7

    .line 214
    or-int v7, v6, v4

    xor-int/2addr v7, v2

    const/4 v8, 0x2

    aput v7, p1, v8

    .line 215
    return-void
.end method

.method protected final ib2([IIIII)V
    .locals 12
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 239
    xor-int v0, p3, p5

    .line 240
    .local v0, "t1":I
    not-int v1, v0

    .line 241
    .local v1, "t2":I
    xor-int v2, p2, p4

    .line 242
    .local v2, "t3":I
    xor-int v3, p4, v0

    .line 243
    .local v3, "t4":I
    and-int v4, p3, v3

    .line 244
    .local v4, "t5":I
    xor-int v5, v2, v4

    const/4 v6, 0x0

    aput v5, p1, v6

    .line 245
    or-int v5, p2, v1

    .line 246
    .local v5, "t7":I
    xor-int v7, p5, v5

    .line 247
    .local v7, "t8":I
    or-int v8, v2, v7

    .line 248
    .local v8, "t9":I
    xor-int v9, v0, v8

    const/4 v10, 0x3

    aput v9, p1, v10

    .line 249
    not-int v9, v3

    .line 250
    .local v9, "t11":I
    aget v6, p1, v6

    aget v10, p1, v10

    or-int/2addr v6, v10

    .line 251
    .local v6, "t12":I
    const/4 v10, 0x1

    xor-int v11, v9, v6

    aput v11, p1, v10

    .line 252
    and-int v10, p5, v9

    xor-int v11, v2, v6

    xor-int/2addr v10, v11

    const/4 v11, 0x2

    aput v10, p1, v11

    .line 253
    return-void
.end method

.method protected final ib3([IIIII)V
    .locals 13
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 281
    or-int v0, p2, p3

    .line 282
    .local v0, "t1":I
    xor-int v1, p3, p4

    .line 283
    .local v1, "t2":I
    and-int v2, p3, v1

    .line 284
    .local v2, "t3":I
    xor-int v3, p2, v2

    .line 285
    .local v3, "t4":I
    xor-int v4, p4, v3

    .line 286
    .local v4, "t5":I
    or-int v5, p5, v3

    .line 287
    .local v5, "t6":I
    xor-int v6, v1, v5

    const/4 v7, 0x0

    aput v6, p1, v7

    .line 288
    or-int v6, v1, v5

    .line 289
    .local v6, "t8":I
    xor-int v8, p5, v6

    .line 290
    .local v8, "t9":I
    const/4 v9, 0x2

    xor-int v10, v4, v8

    aput v10, p1, v9

    .line 291
    xor-int v9, v0, v8

    .line 292
    .local v9, "t11":I
    aget v10, p1, v7

    and-int/2addr v10, v9

    .line 293
    .local v10, "t12":I
    xor-int v11, v3, v10

    const/4 v12, 0x3

    aput v11, p1, v12

    .line 294
    aget v11, p1, v12

    aget v7, p1, v7

    xor-int/2addr v7, v9

    xor-int/2addr v7, v11

    const/4 v11, 0x1

    aput v7, p1, v11

    .line 295
    return-void
.end method

.method protected final ib4([IIIII)V
    .locals 12
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 322
    or-int v0, p4, p5

    .line 323
    .local v0, "t1":I
    and-int v1, p2, v0

    .line 324
    .local v1, "t2":I
    xor-int v2, p3, v1

    .line 325
    .local v2, "t3":I
    and-int v3, p2, v2

    .line 326
    .local v3, "t4":I
    xor-int v4, p4, v3

    .line 327
    .local v4, "t5":I
    xor-int v5, p5, v4

    const/4 v6, 0x1

    aput v5, p1, v6

    .line 328
    not-int v5, p2

    .line 329
    .local v5, "t7":I
    aget v7, p1, v6

    and-int/2addr v7, v4

    .line 330
    .local v7, "t8":I
    xor-int v8, v2, v7

    const/4 v9, 0x3

    aput v8, p1, v9

    .line 331
    aget v8, p1, v6

    or-int/2addr v8, v5

    .line 332
    .local v8, "t10":I
    xor-int v10, p5, v8

    .line 333
    .local v10, "t11":I
    aget v9, p1, v9

    xor-int/2addr v9, v10

    const/4 v11, 0x0

    aput v9, p1, v11

    .line 334
    and-int v9, v2, v10

    aget v6, p1, v6

    xor-int/2addr v6, v5

    xor-int/2addr v6, v9

    const/4 v9, 0x2

    aput v6, p1, v9

    .line 335
    return-void
.end method

.method protected final ib5([IIIII)V
    .locals 12
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 363
    move/from16 v0, p4

    not-int v1, v0

    .line 364
    .local v1, "t1":I
    and-int v2, p3, v1

    .line 365
    .local v2, "t2":I
    xor-int v3, p5, v2

    .line 366
    .local v3, "t3":I
    and-int v4, p2, v3

    .line 367
    .local v4, "t4":I
    xor-int v5, p3, v1

    .line 368
    .local v5, "t5":I
    xor-int v6, v4, v5

    const/4 v7, 0x3

    aput v6, p1, v7

    .line 369
    aget v6, p1, v7

    or-int/2addr v6, p3

    .line 370
    .local v6, "t7":I
    and-int v7, p2, v6

    .line 371
    .local v7, "t8":I
    const/4 v8, 0x1

    xor-int v9, v3, v7

    aput v9, p1, v8

    .line 372
    or-int v8, p2, p5

    .line 373
    .local v8, "t10":I
    xor-int v9, v1, v6

    .line 374
    .local v9, "t11":I
    const/4 v10, 0x0

    xor-int v11, v8, v9

    aput v11, p1, v10

    .line 375
    and-int v10, p3, v8

    xor-int v11, p2, v0

    or-int/2addr v11, v4

    xor-int/2addr v10, v11

    const/4 v11, 0x2

    aput v10, p1, v11

    .line 376
    return-void
.end method

.method protected final ib6([IIIII)V
    .locals 11
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 403
    not-int v0, p2

    .line 404
    .local v0, "t1":I
    xor-int v1, p2, p3

    .line 405
    .local v1, "t2":I
    xor-int v2, p4, v1

    .line 406
    .local v2, "t3":I
    or-int v3, p4, v0

    .line 407
    .local v3, "t4":I
    xor-int v4, p5, v3

    .line 408
    .local v4, "t5":I
    const/4 v5, 0x1

    xor-int v6, v2, v4

    aput v6, p1, v5

    .line 409
    and-int v5, v2, v4

    .line 410
    .local v5, "t7":I
    xor-int v6, v1, v5

    .line 411
    .local v6, "t8":I
    or-int v7, p3, v6

    .line 412
    .local v7, "t9":I
    xor-int v8, v4, v7

    const/4 v9, 0x3

    aput v8, p1, v9

    .line 413
    aget v8, p1, v9

    or-int/2addr v8, p3

    .line 414
    .local v8, "t11":I
    const/4 v9, 0x0

    xor-int v10, v6, v8

    aput v10, p1, v9

    .line 415
    and-int v9, p5, v0

    xor-int v10, v2, v8

    xor-int/2addr v9, v10

    const/4 v10, 0x2

    aput v9, p1, v10

    .line 416
    return-void
.end method

.method protected final ib7([IIIII)V
    .locals 9
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 444
    and-int v0, p2, p3

    or-int/2addr v0, p4

    .line 445
    .local v0, "t3":I
    or-int v1, p2, p3

    and-int/2addr v1, p5

    .line 446
    .local v1, "t4":I
    xor-int v2, v0, v1

    const/4 v3, 0x3

    aput v2, p1, v3

    .line 447
    not-int v2, p5

    .line 448
    .local v2, "t6":I
    xor-int v4, p3, v1

    .line 449
    .local v4, "t7":I
    aget v5, p1, v3

    xor-int/2addr v5, v2

    or-int/2addr v5, v4

    .line 450
    .local v5, "t9":I
    xor-int v6, p2, v5

    const/4 v7, 0x1

    aput v6, p1, v7

    .line 451
    xor-int v6, p4, v4

    aget v8, p1, v7

    or-int/2addr v8, p5

    xor-int/2addr v6, v8

    const/4 v8, 0x0

    aput v6, p1, v8

    .line 452
    aget v6, p1, v7

    xor-int/2addr v6, v0

    aget v7, p1, v8

    aget v3, p1, v3

    and-int/2addr v3, p2

    xor-int/2addr v3, v7

    xor-int/2addr v3, v6

    const/4 v6, 0x2

    aput v3, p1, v6

    .line 453
    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encrypting",
            "params"
        }
    .end annotation

    .line 41
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 43
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    .line 44
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 45
    .local v0, "keyBytes":[B
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->makeWorkingKey([B)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    .line 47
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v1, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 48
    return-void

    .line 51
    .end local v0    # "keyBytes":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid parameter passed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " init - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final inverseLT([I)V
    .locals 10
    .param p1, "X"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "X"
        }
    .end annotation

    .line 476
    const/4 v0, 0x2

    aget v1, p1, v0

    const/16 v2, 0x16

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v1

    const/4 v2, 0x3

    aget v3, p1, v2

    xor-int/2addr v1, v3

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x7

    shl-int/2addr v4, v5

    xor-int/2addr v1, v4

    .line 477
    .local v1, "x2":I
    const/4 v4, 0x0

    aget v6, p1, v4

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v6

    aget v7, p1, v3

    xor-int/2addr v6, v7

    aget v7, p1, v2

    xor-int/2addr v6, v7

    .line 478
    .local v6, "x0":I
    aget v7, p1, v2

    invoke-static {v7, v5}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v5

    .line 479
    .local v5, "x3":I
    aget v7, p1, v3

    invoke-static {v7, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v7

    .line 480
    .local v7, "x1":I
    xor-int v8, v5, v1

    shl-int/lit8 v9, v6, 0x3

    xor-int/2addr v8, v9

    aput v8, p1, v2

    .line 481
    xor-int v8, v7, v6

    xor-int/2addr v8, v1

    aput v8, p1, v3

    .line 482
    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v2

    aput v2, p1, v0

    .line 483
    const/16 v0, 0xd

    invoke-static {v6, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v0

    aput v0, p1, v4

    .line 484
    return-void
.end method

.method protected abstract makeWorkingKey([B)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public final processBlock([BI[BI)I
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

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    if-eqz v0, :cond_3

    .line 88
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 93
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 98
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encryptBlock([BI[BI)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->decryptBlock([BI[BI)V

    .line 107
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 95
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

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

    .line 112
    return-void
.end method

.method protected final sb0([IIIII)V
    .locals 7
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 156
    xor-int v0, p2, p5

    .line 157
    .local v0, "t1":I
    xor-int v1, p4, v0

    .line 158
    .local v1, "t3":I
    xor-int v2, p3, v1

    .line 159
    .local v2, "t4":I
    and-int v3, p2, p5

    xor-int/2addr v3, v2

    const/4 v4, 0x3

    aput v3, p1, v4

    .line 160
    and-int v3, p3, v0

    xor-int/2addr v3, p2

    .line 161
    .local v3, "t7":I
    or-int v5, p4, v3

    xor-int/2addr v5, v2

    const/4 v6, 0x2

    aput v5, p1, v6

    .line 162
    aget v4, p1, v4

    xor-int v5, v1, v3

    and-int/2addr v4, v5

    .line 163
    .local v4, "t12":I
    not-int v5, v1

    xor-int/2addr v5, v4

    const/4 v6, 0x1

    aput v5, p1, v6

    .line 164
    not-int v5, v3

    xor-int/2addr v5, v4

    const/4 v6, 0x0

    aput v5, p1, v6

    .line 165
    return-void
.end method

.method protected final sb1([IIIII)V
    .locals 7
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 188
    not-int v0, p2

    xor-int/2addr v0, p3

    .line 189
    .local v0, "t2":I
    or-int v1, p2, v0

    xor-int/2addr v1, p4

    .line 190
    .local v1, "t5":I
    xor-int v2, p5, v1

    const/4 v3, 0x2

    aput v2, p1, v3

    .line 191
    or-int v2, p5, v0

    xor-int/2addr v2, p3

    .line 192
    .local v2, "t7":I
    aget v3, p1, v3

    xor-int/2addr v3, v0

    .line 193
    .local v3, "t8":I
    and-int v4, v1, v2

    xor-int/2addr v4, v3

    const/4 v5, 0x3

    aput v4, p1, v5

    .line 194
    xor-int v4, v1, v2

    .line 195
    .local v4, "t11":I
    aget v5, p1, v5

    xor-int/2addr v5, v4

    const/4 v6, 0x1

    aput v5, p1, v6

    .line 196
    and-int v5, v3, v4

    xor-int/2addr v5, v1

    const/4 v6, 0x0

    aput v5, p1, v6

    .line 197
    return-void
.end method

.method protected final sb2([IIIII)V
    .locals 9
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 222
    not-int v0, p2

    .line 223
    .local v0, "t1":I
    xor-int v1, p3, p5

    .line 224
    .local v1, "t2":I
    and-int v2, p4, v0

    .line 225
    .local v2, "t3":I
    xor-int v3, v1, v2

    const/4 v4, 0x0

    aput v3, p1, v4

    .line 226
    xor-int v3, p4, v0

    .line 227
    .local v3, "t5":I
    aget v5, p1, v4

    xor-int/2addr v5, p4

    .line 228
    .local v5, "t6":I
    and-int v6, p3, v5

    .line 229
    .local v6, "t7":I
    xor-int v7, v3, v6

    const/4 v8, 0x3

    aput v7, p1, v8

    .line 230
    or-int v7, p5, v6

    aget v4, p1, v4

    or-int/2addr v4, v3

    and-int/2addr v4, v7

    xor-int/2addr v4, p2

    const/4 v7, 0x2

    aput v4, p1, v7

    .line 231
    aget v4, p1, v8

    xor-int/2addr v4, v1

    aget v7, p1, v7

    or-int v8, p5, v0

    xor-int/2addr v7, v8

    xor-int/2addr v4, v7

    const/4 v7, 0x1

    aput v4, p1, v7

    .line 232
    return-void
.end method

.method protected final sb3([IIIII)V
    .locals 12
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 260
    xor-int v0, p2, p3

    .line 261
    .local v0, "t1":I
    and-int v1, p2, p4

    .line 262
    .local v1, "t2":I
    or-int v2, p2, p5

    .line 263
    .local v2, "t3":I
    xor-int v3, p4, p5

    .line 264
    .local v3, "t4":I
    and-int v4, v0, v2

    .line 265
    .local v4, "t5":I
    or-int v5, v1, v4

    .line 266
    .local v5, "t6":I
    xor-int v6, v3, v5

    const/4 v7, 0x2

    aput v6, p1, v7

    .line 267
    xor-int v6, p3, v2

    .line 268
    .local v6, "t8":I
    xor-int v8, v5, v6

    .line 269
    .local v8, "t9":I
    and-int v9, v3, v8

    .line 270
    .local v9, "t10":I
    xor-int v10, v0, v9

    const/4 v11, 0x0

    aput v10, p1, v11

    .line 271
    aget v7, p1, v7

    aget v10, p1, v11

    and-int/2addr v7, v10

    .line 272
    .local v7, "t12":I
    const/4 v10, 0x1

    xor-int v11, v8, v7

    aput v11, p1, v10

    .line 273
    or-int v10, p3, p5

    xor-int v11, v3, v7

    xor-int/2addr v10, v11

    const/4 v11, 0x3

    aput v10, p1, v11

    .line 274
    return-void
.end method

.method protected final sb4([IIIII)V
    .locals 11
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 302
    xor-int v0, p2, p5

    .line 303
    .local v0, "t1":I
    and-int v1, p5, v0

    .line 304
    .local v1, "t2":I
    xor-int v2, p4, v1

    .line 305
    .local v2, "t3":I
    or-int v3, p3, v2

    .line 306
    .local v3, "t4":I
    const/4 v4, 0x3

    xor-int v5, v0, v3

    aput v5, p1, v4

    .line 307
    not-int v4, p3

    .line 308
    .local v4, "t6":I
    or-int v5, v0, v4

    .line 309
    .local v5, "t7":I
    xor-int v6, v2, v5

    const/4 v7, 0x0

    aput v6, p1, v7

    .line 310
    aget v6, p1, v7

    and-int/2addr v6, p2

    .line 311
    .local v6, "t9":I
    xor-int v7, v0, v4

    .line 312
    .local v7, "t10":I
    and-int v8, v3, v7

    .line 313
    .local v8, "t11":I
    xor-int v9, v6, v8

    const/4 v10, 0x2

    aput v9, p1, v10

    .line 314
    xor-int v9, p2, v2

    aget v10, p1, v10

    and-int/2addr v10, v7

    xor-int/2addr v9, v10

    const/4 v10, 0x1

    aput v9, p1, v10

    .line 315
    return-void
.end method

.method protected final sb5([IIIII)V
    .locals 14
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 342
    move/from16 v0, p2

    not-int v1, v0

    .line 343
    .local v1, "t1":I
    xor-int v2, v0, p3

    .line 344
    .local v2, "t2":I
    xor-int v3, v0, p5

    .line 345
    .local v3, "t3":I
    xor-int v4, p4, v1

    .line 346
    .local v4, "t4":I
    or-int v5, v2, v3

    .line 347
    .local v5, "t5":I
    xor-int v6, v4, v5

    const/4 v7, 0x0

    aput v6, p1, v7

    .line 348
    aget v6, p1, v7

    and-int v6, p5, v6

    .line 349
    .local v6, "t7":I
    aget v8, p1, v7

    xor-int/2addr v8, v2

    .line 350
    .local v8, "t8":I
    xor-int v9, v6, v8

    const/4 v10, 0x1

    aput v9, p1, v10

    .line 351
    aget v7, p1, v7

    or-int/2addr v7, v1

    .line 352
    .local v7, "t10":I
    or-int v9, v2, v6

    .line 353
    .local v9, "t11":I
    xor-int v11, v3, v7

    .line 354
    .local v11, "t12":I
    const/4 v12, 0x2

    xor-int v13, v9, v11

    aput v13, p1, v12

    .line 355
    xor-int v12, p3, v6

    aget v10, p1, v10

    and-int/2addr v10, v11

    xor-int/2addr v10, v12

    const/4 v12, 0x3

    aput v10, p1, v12

    .line 356
    return-void
.end method

.method protected final sb6([IIIII)V
    .locals 11
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 383
    not-int v0, p2

    .line 384
    .local v0, "t1":I
    xor-int v1, p2, p5

    .line 385
    .local v1, "t2":I
    xor-int v2, p3, v1

    .line 386
    .local v2, "t3":I
    or-int v3, v0, v1

    .line 387
    .local v3, "t4":I
    xor-int v4, p4, v3

    .line 388
    .local v4, "t5":I
    xor-int v5, p3, v4

    const/4 v6, 0x1

    aput v5, p1, v6

    .line 389
    aget v5, p1, v6

    or-int/2addr v5, v1

    .line 390
    .local v5, "t7":I
    xor-int v6, p5, v5

    .line 391
    .local v6, "t8":I
    and-int v7, v4, v6

    .line 392
    .local v7, "t9":I
    xor-int v8, v2, v7

    const/4 v9, 0x2

    aput v8, p1, v9

    .line 393
    xor-int v8, v4, v6

    .line 394
    .local v8, "t11":I
    aget v9, p1, v9

    xor-int/2addr v9, v8

    const/4 v10, 0x0

    aput v9, p1, v10

    .line 395
    not-int v9, v4

    and-int v10, v2, v8

    xor-int/2addr v9, v10

    const/4 v10, 0x3

    aput v9, p1, v10

    .line 396
    return-void
.end method

.method protected final sb7([IIIII)V
    .locals 13
    .param p1, "X"    # [I
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I
    .param p5, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 423
    xor-int v0, p3, p4

    .line 424
    .local v0, "t1":I
    and-int v1, p4, v0

    .line 425
    .local v1, "t2":I
    xor-int v2, p5, v1

    .line 426
    .local v2, "t3":I
    xor-int v3, p2, v2

    .line 427
    .local v3, "t4":I
    or-int v4, p5, v0

    .line 428
    .local v4, "t5":I
    and-int v5, v3, v4

    .line 429
    .local v5, "t6":I
    xor-int v6, p3, v5

    const/4 v7, 0x1

    aput v6, p1, v7

    .line 430
    aget v6, p1, v7

    or-int/2addr v6, v2

    .line 431
    .local v6, "t8":I
    and-int v7, p2, v3

    .line 432
    .local v7, "t9":I
    xor-int v8, v0, v7

    const/4 v9, 0x3

    aput v8, p1, v9

    .line 433
    xor-int v8, v3, v6

    .line 434
    .local v8, "t11":I
    aget v10, p1, v9

    and-int/2addr v10, v8

    .line 435
    .local v10, "t12":I
    xor-int v11, v2, v10

    const/4 v12, 0x2

    aput v11, p1, v12

    .line 436
    not-int v11, v8

    aget v9, p1, v9

    aget v12, p1, v12

    and-int/2addr v9, v12

    xor-int/2addr v9, v11

    const/4 v11, 0x0

    aput v9, p1, v11

    .line 437
    return-void
.end method
