.class Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bToUnsignedInt(B)I
    .locals 1
    .param p0, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 652
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method protected static checkForSmallPolynomial([B[BII)V
    .locals 5
    .param p0, "r"    # [B
    .param p1, "ev"    # [B
    .param p2, "p"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "ev",
            "p",
            "w"
        }
    .end annotation

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "weight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 565
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    .end local v1    # "i":I
    :cond_0
    sub-int v1, v0, p3

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkNotEqualToZero(I)I

    move-result v1

    .line 569
    .local v1, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_1

    .line 570
    aget-byte v3, p1, v2

    xor-int/lit8 v3, v3, 0x1

    not-int v4, v1

    and-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 571
    .end local v2    # "i":I
    :cond_1
    move v2, p3

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, p2, :cond_2

    .line 572
    aget-byte v3, p1, v2

    not-int v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 573
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private static checkLessThanZero(I)I
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

    .line 640
    ushr-int/lit8 v0, p0, 0x1f

    neg-int v0, v0

    return v0
.end method

.method private static checkNotEqualToZero(I)I
    .locals 4
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 645
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v0

    .line 646
    .local v0, "l":J
    neg-long v0, v0

    .line 647
    const/16 v2, 0x3f

    ushr-long v2, v0, v2

    long-to-int v3, v2

    neg-int v2, v3

    return v2
.end method

.method protected static cryptoSort([II)V
    .locals 6
    .param p0, "L"    # [I
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "L",
            "p"
        }
    .end annotation

    .line 108
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x1

    .line 112
    .local v0, "top":I
    :goto_0
    sub-int v1, p1, v0

    if-ge v0, v1, :cond_1

    .line 113
    add-int/2addr v0, v0

    goto :goto_0

    .line 115
    :cond_1
    move v1, v0

    .local v1, "a":I
    :goto_1
    if-lez v1, :cond_7

    .line 117
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sub-int v3, p1, v1

    if-ge v2, v3, :cond_3

    .line 118
    and-int v3, v2, v1

    if-nez v3, :cond_2

    .line 119
    add-int v3, v2, v1

    invoke-static {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->minmax([III)V

    .line 117
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 120
    :cond_3
    move v3, v0

    .local v3, "b":I
    :goto_3
    if-le v3, v1, :cond_6

    .line 121
    const/4 v2, 0x0

    :goto_4
    sub-int v4, p1, v3

    if-ge v2, v4, :cond_5

    .line 122
    and-int v4, v2, v1

    if-nez v4, :cond_4

    .line 123
    add-int v4, v2, v1

    add-int v5, v2, v3

    invoke-static {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->minmax([III)V

    .line 121
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 120
    :cond_5
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 115
    :cond_6
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    .end local v2    # "i":I
    .end local v3    # "b":I
    :cond_7
    return-void
.end method

.method private static decode([S[B[SIII)V
    .locals 15
    .param p0, "out"    # [S
    .param p1, "S"    # [B
    .param p2, "M"    # [S
    .param p3, "len"    # I
    .param p4, "start"    # I
    .param p5, "sIndex"    # I
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
            "S",
            "M",
            "len",
            "start",
            "sIndex"
        }
    .end annotation

    .line 382
    move/from16 v0, p3

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 384
    aget-short v4, p2, v2

    if-ne v4, v3, :cond_0

    .line 385
    aput-short v2, p0, p4

    goto :goto_0

    .line 386
    :cond_0
    aget-short v4, p2, v2

    if-gt v4, v1, :cond_1

    .line 387
    aget-byte v4, p1, p5

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v4

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, p4

    goto :goto_0

    .line 389
    :cond_1
    aget-byte v4, p1, p5

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v4

    add-int/lit8 v5, p5, 0x1

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, p0, p4

    .line 392
    :cond_2
    :goto_0
    if-le v0, v3, :cond_8

    .line 394
    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v5, v4, [S

    .line 395
    .local v5, "R2":[S
    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v7, v4, [S

    .line 396
    .local v7, "M2":[S
    div-int/lit8 v4, v0, 0x2

    new-array v4, v4, [S

    .line 397
    .local v4, "bottomr":[S
    div-int/lit8 v6, v0, 0x2

    new-array v11, v6, [I

    .line 400
    .local v11, "bottomt":[I
    const/4 v6, 0x0

    move/from16 v10, p5

    move v12, v6

    .end local p5    # "sIndex":I
    .local v10, "sIndex":I
    .local v12, "i":I
    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v12, v6, :cond_5

    .line 402
    aget-short v6, p2, v12

    add-int/lit8 v8, v12, 0x1

    aget-short v8, p2, v8

    mul-int v6, v6, v8

    .line 403
    .local v6, "m":I
    const v8, 0x3fff00

    if-le v6, v8, :cond_3

    .line 405
    div-int/lit8 v8, v12, 0x2

    const/high16 v9, 0x10000

    aput v9, v11, v8

    .line 406
    div-int/lit8 v8, v12, 0x2

    aget-byte v9, p1, v10

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v9

    add-int/lit8 v13, v10, 0x1

    aget-byte v13, p1, v13

    invoke-static {v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v13

    mul-int/lit16 v13, v13, 0x100

    add-int/2addr v9, v13

    int-to-short v9, v9

    aput-short v9, v4, v8

    .line 407
    add-int/lit8 v10, v10, 0x2

    .line 408
    div-int/lit8 v8, v12, 0x2

    add-int/lit16 v9, v6, 0xff

    ushr-int/lit8 v9, v9, 0x8

    add-int/lit16 v9, v9, 0xff

    ushr-int/lit8 v9, v9, 0x8

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_2

    .line 410
    :cond_3
    const/16 v8, 0x4000

    if-lt v6, v8, :cond_4

    .line 412
    div-int/lit8 v8, v12, 0x2

    aput v1, v11, v8

    .line 413
    div-int/lit8 v8, v12, 0x2

    aget-byte v9, p1, v10

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v4, v8

    .line 414
    add-int/lit8 v10, v10, 0x1

    .line 415
    div-int/lit8 v8, v12, 0x2

    add-int/lit16 v9, v6, 0xff

    ushr-int/lit8 v9, v9, 0x8

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_2

    .line 419
    :cond_4
    div-int/lit8 v8, v12, 0x2

    aput v3, v11, v8

    .line 420
    div-int/lit8 v8, v12, 0x2

    aput-short v2, v4, v8

    .line 421
    div-int/lit8 v8, v12, 0x2

    int-to-short v9, v6

    aput-short v9, v7, v8

    .line 400
    .end local v6    # "m":I
    :goto_2
    add-int/lit8 v12, v12, 0x2

    goto :goto_1

    .line 424
    :cond_5
    if-ge v12, v0, :cond_6

    .line 425
    div-int/lit8 v1, v12, 0x2

    aget-short v6, p2, v12

    aput-short v6, v7, v1

    .line 427
    :cond_6
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v8, v1, 0x2

    move-object/from16 v6, p1

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->decode([S[B[SIII)V

    .line 429
    const/4 v1, 0x0

    move v6, v1

    move/from16 v1, p4

    .end local v12    # "i":I
    .end local p4    # "start":I
    .local v1, "start":I
    .local v6, "i":I
    :goto_3
    add-int/lit8 v8, v0, -0x1

    if-ge v6, v8, :cond_7

    .line 431
    div-int/lit8 v8, v6, 0x2

    aget-short v8, v4, v8

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sToUnsignedInt(S)I

    move-result v8

    .line 432
    .local v8, "r":I
    div-int/lit8 v9, v6, 0x2

    aget v9, v11, v9

    div-int/lit8 v12, v6, 0x2

    aget-short v12, v5, v12

    invoke-static {v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sToUnsignedInt(S)I

    move-result v12

    mul-int v9, v9, v12

    add-int/2addr v8, v9

    .line 433
    aget-short v9, p2, v6

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v9

    .line 434
    .local v9, "r01":[I
    add-int/lit8 v12, v1, 0x1

    .end local v1    # "start":I
    .local v12, "start":I
    aget v13, v9, v3

    int-to-short v13, v13

    aput-short v13, p0, v1

    .line 435
    add-int/lit8 v1, v12, 0x1

    .end local v12    # "start":I
    .restart local v1    # "start":I
    aget v13, v9, v2

    add-int/lit8 v14, v6, 0x1

    aget-short v14, p2, v14

    invoke-static {v13, v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v13

    int-to-short v13, v13

    aput-short v13, p0, v12

    .line 429
    .end local v8    # "r":I
    .end local v9    # "r01":[I
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 437
    :cond_7
    if-ge v6, v0, :cond_9

    .line 438
    div-int/lit8 v2, v6, 0x2

    aget-short v2, v5, v2

    aput-short v2, p0, v1

    goto :goto_4

    .line 392
    .end local v1    # "start":I
    .end local v4    # "bottomr":[S
    .end local v5    # "R2":[S
    .end local v6    # "i":I
    .end local v7    # "M2":[S
    .end local v10    # "sIndex":I
    .end local v11    # "bottomt":[I
    .restart local p4    # "start":I
    .restart local p5    # "sIndex":I
    :cond_8
    move/from16 v1, p4

    move/from16 v10, p5

    .line 440
    .end local p4    # "start":I
    .end local p5    # "sIndex":I
    .restart local v1    # "start":I
    .restart local v10    # "sIndex":I
    :cond_9
    :goto_4
    return-void
.end method

.method private static encode([B[S[SII)V
    .locals 8
    .param p0, "out"    # [B
    .param p1, "R"    # [S
    .param p2, "M"    # [S
    .param p3, "len"    # I
    .param p4, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "R",
            "M",
            "len",
            "start"
        }
    .end annotation

    .line 242
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 244
    const/4 v1, 0x0

    aget-short v2, p1, v1

    .line 245
    .local v2, "r":S
    aget-short v1, p2, v1

    .line 246
    .local v1, "m":S
    :goto_0
    if-le v1, v0, :cond_0

    .line 248
    add-int/lit8 v3, p4, 0x1

    .end local p4    # "start":I
    .local v3, "start":I
    int-to-byte v4, v2

    aput-byte v4, p0, p4

    .line 249
    ushr-int/lit8 p4, v2, 0x8

    int-to-short v2, p4

    .line 250
    add-int/lit16 p4, v1, 0xff

    ushr-int/lit8 p4, p4, 0x8

    int-to-short v1, p4

    move p4, v3

    goto :goto_0

    .line 254
    .end local v1    # "m":S
    .end local v2    # "r":S
    .end local v3    # "start":I
    .restart local p4    # "start":I
    :cond_0
    if-le p3, v0, :cond_4

    .line 256
    add-int/lit8 v0, p3, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 257
    .local v0, "R2":[S
    add-int/lit8 v1, p3, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [S

    .line 260
    .local v1, "M2":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, p3, -0x1

    if-ge v2, v3, :cond_2

    .line 262
    aget-short v3, p2, v2

    .line 263
    .local v3, "m0":I
    aget-short v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget-short v5, p1, v5

    mul-int v5, v5, v3

    add-int/2addr v4, v5

    .line 264
    .local v4, "r":I
    add-int/lit8 v5, v2, 0x1

    aget-short v5, p2, v5

    mul-int v5, v5, v3

    .line 265
    .local v5, "m":I
    :goto_2
    const/16 v6, 0x4000

    if-lt v5, v6, :cond_1

    .line 267
    add-int/lit8 v6, p4, 0x1

    .end local p4    # "start":I
    .local v6, "start":I
    int-to-byte v7, v4

    aput-byte v7, p0, p4

    .line 268
    ushr-int/lit8 v4, v4, 0x8

    .line 269
    add-int/lit16 p4, v5, 0xff

    ushr-int/lit8 v5, p4, 0x8

    move p4, v6

    goto :goto_2

    .line 271
    .end local v6    # "start":I
    .restart local p4    # "start":I
    :cond_1
    div-int/lit8 v6, v2, 0x2

    int-to-short v7, v4

    aput-short v7, v0, v6

    .line 272
    div-int/lit8 v6, v2, 0x2

    int-to-short v7, v5

    aput-short v7, v1, v6

    .line 260
    .end local v3    # "m0":I
    .end local v4    # "r":I
    .end local v5    # "m":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 275
    :cond_2
    if-ge v2, p3, :cond_3

    .line 277
    div-int/lit8 v3, v2, 0x2

    aget-short v4, p1, v2

    aput-short v4, v0, v3

    .line 278
    div-int/lit8 v3, v2, 0x2

    aget-short v4, p2, v2

    aput-short v4, v1, v3

    .line 281
    :cond_3
    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v3, v3, 0x2

    invoke-static {p0, v0, v1, v3, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->encode([B[S[SII)V

    .line 283
    .end local v0    # "R2":[S
    .end local v1    # "M2":[S
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method protected static expand([I[B)V
    .locals 7
    .param p0, "L"    # [I
    .param p1, "k"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "L",
            "k"
        }
    .end annotation

    .line 323
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 324
    .local v0, "aesInput":[B
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 325
    .local v1, "aesOutput":[B
    const/16 v2, 0x10

    new-array v3, v2, [B

    .line 326
    .local v3, "nonce":[B
    invoke-static {v0, v1, v3, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->generateAES256CTRStream([B[B[B[B)V

    .line 327
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 328
    mul-int/lit8 v5, v4, 0x4

    aget-byte v5, v1, v5

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v5

    mul-int/lit8 v6, v4, 0x4

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v1, v6

    .line 329
    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, v1, v6

    .line 330
    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v6

    shl-int/2addr v6, v2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x4

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, v1, v6

    .line 331
    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    add-int/2addr v5, v6

    aput v5, p0, v4

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 332
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method private static generateAES256CTRStream([B[B[B[B)V
    .locals 7
    .param p0, "in"    # [B
    .param p1, "out"    # [B
    .param p2, "nonce"    # [B
    .param p3, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "nonce",
            "key"
        }
    .end annotation

    .line 316
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v1

    .line 317
    .local v1, "cipher":Lorg/bouncycastle/crypto/StreamCipher;
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v0, v2, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 318
    array-length v4, p1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p1

    .end local p0    # "in":[B
    .end local p1    # "out":[B
    .local v2, "in":[B
    .local v5, "out":[B
    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 319
    return-void
.end method

.method protected static generatePolynomialInRQFromSeed([S[BII)V
    .locals 4
    .param p0, "G"    # [S
    .param p1, "seed"    # [B
    .param p2, "p"    # I
    .param p3, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "G",
            "seed",
            "p",
            "q"
        }
    .end annotation

    .line 341
    new-array v0, p2, [I

    .line 342
    .local v0, "L":[I
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->expand([I[B)V

    .line 344
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 345
    aget v2, v0, v1

    invoke-static {v2, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v2

    add-int/lit8 v3, p3, -0x1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p0, v1

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static getDecodedPolynomial([S[BII)V
    .locals 6
    .param p0, "h"    # [S
    .param p1, "enc"    # [B
    .param p2, "p"    # I
    .param p3, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "h",
            "enc",
            "p",
            "q"
        }
    .end annotation

    .line 444
    new-array v0, p2, [S

    .line 445
    .local v0, "R":[S
    new-array v2, p2, [S

    .line 447
    .local v2, "M":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 448
    int-to-short v3, p3

    aput-short v3, v2, v1

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "i":I
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    .end local p1    # "enc":[B
    .end local p2    # "p":I
    .local v1, "enc":[B
    .local v3, "p":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->decode([S[B[SIII)V

    .line 452
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_1
    if-ge p1, v3, :cond_1

    .line 453
    aget-short p2, v0, p1

    add-int/lit8 v4, p3, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr p2, v4

    int-to-short p2, p2

    aput-short p2, p0, p1

    .line 452
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 454
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method protected static getDecodedSmallPolynomial([B[BI)V
    .locals 6
    .param p0, "sp"    # [B
    .param p1, "encSP"    # [B
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sp",
            "encSP",
            "p"
        }
    .end annotation

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "spIndex":I
    const/4 v1, 0x0

    .line 503
    .local v1, "encSPIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    div-int/lit8 v3, p2, 0x4

    if-ge v2, v3, :cond_0

    .line 505
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "encSPIndex":I
    .local v3, "encSPIndex":I
    aget-byte v1, p1, v1

    .line 506
    .local v1, "x":B
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "spIndex":I
    .local v4, "spIndex":I
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    ushr-int/lit8 v0, v1, 0x2

    int-to-byte v0, v0

    .line 507
    .end local v1    # "x":B
    .local v0, "x":B
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "spIndex":I
    .local v1, "spIndex":I
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    ushr-int/lit8 v4, v0, 0x2

    int-to-byte v0, v4

    .line 508
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "spIndex":I
    .restart local v4    # "spIndex":I
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, p0, v1

    ushr-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 509
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "spIndex":I
    .restart local v1    # "spIndex":I
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 503
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    move v1, v3

    goto :goto_0

    .line 512
    .end local v2    # "i":I
    .end local v3    # "encSPIndex":I
    .local v0, "spIndex":I
    .local v1, "encSPIndex":I
    :cond_0
    aget-byte v2, p1, v1

    .line 513
    .local v2, "x":B
    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 514
    return-void
.end method

.method protected static getEncodedInputs([B[B)V
    .locals 5
    .param p0, "out"    # [B
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

    .line 467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 468
    ushr-int/lit8 v1, v0, 0x3

    aget-byte v2, p0, v1

    aget-byte v3, p1, v0

    and-int/lit8 v4, v0, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static getEncodedPolynomial([B[SII)V
    .locals 5
    .param p0, "enc"    # [B
    .param p1, "h"    # [S
    .param p2, "p"    # I
    .param p3, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enc",
            "h",
            "p",
            "q"
        }
    .end annotation

    .line 287
    new-array v0, p2, [S

    .line 288
    .local v0, "R":[S
    new-array v1, p2, [S

    .line 290
    .local v1, "M":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 291
    aget-short v3, p1, v2

    add-int/lit8 v4, p3, -0x1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v0, v2

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p2, :cond_1

    .line 293
    int-to-short v3, p3

    aput-short v3, v1, v2

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->encode([B[S[SII)V

    .line 296
    return-void
.end method

.method protected static getEncodedSmallPolynomial([B[BI)V
    .locals 5
    .param p0, "encSP"    # [B
    .param p1, "sp"    # [B
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encSP",
            "sp",
            "p"
        }
    .end annotation

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "spIndex":I
    const/4 v1, 0x0

    .line 303
    .local v1, "encSPIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    div-int/lit8 v3, p2, 0x4

    if-ge v2, v3, :cond_0

    .line 305
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "spIndex":I
    .local v3, "spIndex":I
    aget-byte v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 306
    .local v0, "x":B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "spIndex":I
    .local v4, "spIndex":I
    aget-byte v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    int-to-byte v0, v3

    .line 307
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "spIndex":I
    .restart local v3    # "spIndex":I
    aget-byte v4, p1, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    int-to-byte v0, v4

    .line 308
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "spIndex":I
    .restart local v4    # "spIndex":I
    aget-byte v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v0

    int-to-byte v0, v3

    .line 309
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "encSPIndex":I
    .local v3, "encSPIndex":I
    aput-byte v0, p0, v1

    .line 303
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    move v0, v4

    goto :goto_0

    .line 311
    .end local v2    # "i":I
    .end local v3    # "encSPIndex":I
    .end local v4    # "spIndex":I
    .local v0, "spIndex":I
    .restart local v1    # "encSPIndex":I
    :cond_0
    aget-byte v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 312
    return-void
.end method

.method protected static getHashWithPrefix([B[B)[B
    .locals 5
    .param p0, "prefix"    # [B
    .param p1, "hashInput"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prefix",
            "hashInput"
        }
    .end annotation

    .line 370
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 371
    .local v0, "hash":[B
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 372
    .local v1, "input":[B
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    array-length v2, p0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    .line 375
    .local v2, "hashDigest":Lorg/bouncycastle/crypto/digests/SHA512Digest;
    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->update([BII)V

    .line 376
    invoke-virtual {v2, v0, v3}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->doFinal([BI)I

    .line 377
    return-object v0
.end method

.method protected static getInverseInRQ(II)I
    .locals 3
    .param p0, "x"    # I
    .param p1, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "q"
        }
    .end annotation

    .line 148
    move v0, p0

    .line 149
    .local v0, "ai":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p1, -0x2

    if-ge v1, v2, :cond_0

    .line 150
    mul-int v2, p0, v0

    invoke-static {v2, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v0

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method protected static getModFreeze(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "n"
        }
    .end annotation

    .line 32
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getSignedDivMod(II)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected static getOneThirdInverseInRQ([S[BII)V
    .locals 16
    .param p0, "finv3"    # [S
    .param p1, "f"    # [B
    .param p2, "p"    # I
    .param p3, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "finv3",
            "f",
            "p",
            "q"
        }
    .end annotation

    .line 156
    move/from16 v0, p2

    move/from16 v1, p3

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [S

    .line 157
    .local v2, "h":[S
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [S

    .line 158
    .local v3, "g":[S
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [S

    .line 159
    .local v4, "r":[S
    add-int/lit8 v5, v0, 0x1

    new-array v5, v5, [S

    .line 162
    .local v5, "v":[S
    const/4 v6, 0x3

    invoke-static {v6, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getInverseInRQ(II)I

    move-result v6

    int-to-short v6, v6

    const/4 v7, 0x0

    aput-short v6, v4, v7

    .line 163
    const/4 v6, 0x1

    aput-short v6, v2, v7

    .line 164
    add-int/lit8 v8, v0, -0x1

    const/4 v9, -0x1

    aput-short v9, v2, v8

    .line 165
    aput-short v9, v2, v0

    .line 166
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_0

    .line 167
    add-int/lit8 v9, v0, -0x1

    sub-int/2addr v9, v8

    aget-byte v10, p1, v8

    int-to-short v10, v10

    aput-short v10, v3, v9

    .line 166
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 169
    :cond_0
    aput-short v7, v3, v0

    .line 170
    const/4 v9, 0x1

    .line 172
    .local v9, "delta":I
    const/4 v10, 0x0

    .local v10, "loop":I
    :goto_1
    mul-int/lit8 v11, v0, 0x2

    sub-int/2addr v11, v6

    if-ge v10, v11, :cond_5

    .line 174
    invoke-static {v5, v7, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    aput-short v7, v5, v7

    .line 177
    neg-int v11, v9

    invoke-static {v11}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkLessThanZero(I)I

    move-result v11

    aget-short v12, v3, v7

    invoke-static {v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkNotEqualToZero(I)I

    move-result v12

    and-int/2addr v11, v12

    .line 178
    .local v11, "swap":I
    neg-int v12, v9

    xor-int/2addr v12, v9

    and-int/2addr v12, v11

    xor-int/2addr v9, v12

    .line 179
    add-int/2addr v9, v6

    .line 181
    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v12, v0, 0x1

    if-ge v8, v12, :cond_1

    .line 183
    aget-short v12, v2, v8

    aget-short v13, v3, v8

    xor-int/2addr v12, v13

    and-int/2addr v12, v11

    .line 184
    .local v12, "t":I
    aget-short v13, v2, v8

    xor-int/2addr v13, v12

    int-to-short v13, v13

    aput-short v13, v2, v8

    .line 185
    aget-short v13, v3, v8

    xor-int/2addr v13, v12

    int-to-short v13, v13

    aput-short v13, v3, v8

    .line 186
    aget-short v13, v5, v8

    aget-short v14, v4, v8

    xor-int/2addr v13, v14

    and-int v12, v11, v13

    .line 187
    aget-short v13, v5, v8

    xor-int/2addr v13, v12

    int-to-short v13, v13

    aput-short v13, v5, v8

    .line 188
    aget-short v13, v4, v8

    xor-int/2addr v13, v12

    int-to-short v13, v13

    aput-short v13, v4, v8

    .line 181
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 191
    .end local v12    # "t":I
    :cond_1
    aget-short v12, v2, v7

    .line 192
    .local v12, "h0":I
    aget-short v13, v3, v7

    .line 193
    .local v13, "g0":I
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v14, v0, 0x1

    if-ge v8, v14, :cond_2

    .line 194
    aget-short v14, v3, v8

    mul-int v14, v14, v12

    aget-short v15, v2, v8

    mul-int v15, v15, v13

    sub-int/2addr v14, v15

    invoke-static {v14, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v14

    int-to-short v14, v14

    aput-short v14, v3, v8

    .line 193
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 195
    :cond_2
    const/4 v8, 0x0

    :goto_4
    add-int/lit8 v14, v0, 0x1

    if-ge v8, v14, :cond_3

    .line 196
    aget-short v14, v4, v8

    mul-int v14, v14, v12

    aget-short v15, v5, v8

    mul-int v15, v15, v13

    sub-int/2addr v14, v15

    invoke-static {v14, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v14

    int-to-short v14, v14

    aput-short v14, v4, v8

    .line 195
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 198
    :cond_3
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v0, :cond_4

    .line 199
    add-int/lit8 v14, v8, 0x1

    aget-short v14, v3, v14

    aput-short v14, v3, v8

    .line 198
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 200
    :cond_4
    aput-short v7, v3, v0

    .line 172
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 203
    .end local v11    # "swap":I
    .end local v12    # "h0":I
    .end local v13    # "g0":I
    :cond_5
    aget-short v6, v2, v7

    invoke-static {v6, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getInverseInRQ(II)I

    move-result v6

    .line 204
    .local v6, "scale":I
    const/4 v7, 0x0

    .end local v8    # "i":I
    .local v7, "i":I
    :goto_6
    if-ge v7, v0, :cond_6

    .line 205
    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v7

    aget-short v8, v5, v8

    mul-int v8, v8, v6

    invoke-static {v8, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, p0, v7

    .line 204
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 206
    :cond_6
    return-void
.end method

.method protected static getRandomInputs(Ljava/security/SecureRandom;[B)V
    .locals 4
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "r"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "r"
        }
    .end annotation

    .line 458
    array-length v0, p1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 459
    .local v0, "seed":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 462
    ushr-int/lit8 v2, v1, 0x3

    aget-byte v2, v0, v2

    and-int/lit8 v3, v1, 0x7

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static getRandomShortPolynomial(Ljava/security/SecureRandom;[BII)V
    .locals 3
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "f"    # [B
    .param p2, "p"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "random",
            "f",
            "p",
            "w"
        }
    .end annotation

    .line 140
    new-array v0, p2, [I

    .line 141
    .local v0, "L":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 142
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomUnsignedInteger(Ljava/security/SecureRandom;)I

    move-result v2

    aput v2, v0, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sortGenerateShortPolynomial([B[III)V

    .line 144
    return-void
.end method

.method protected static getRandomSmallPolynomial(Ljava/security/SecureRandom;[B)V
    .locals 3
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "g"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "g"
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 27
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomUnsignedInteger(Ljava/security/SecureRandom;)I

    move-result v1

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    ushr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static getRandomUnsignedInteger(Ljava/security/SecureRandom;)I
    .locals 3
    .param p0, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 17
    .local v0, "c":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 18
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    .line 19
    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    .line 20
    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    .line 21
    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    .line 18
    return v1
.end method

.method protected static getRoundedDecodedPolynomial([S[BII)V
    .locals 6
    .param p0, "h"    # [S
    .param p1, "enc"    # [B
    .param p2, "p"    # I
    .param p3, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "h",
            "enc",
            "p",
            "q"
        }
    .end annotation

    .line 473
    new-array v0, p2, [S

    .line 474
    .local v0, "R":[S
    new-array v2, p2, [S

    .line 476
    .local v2, "M":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 477
    add-int/lit8 v3, p3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i":I
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    .end local p1    # "enc":[B
    .end local p2    # "p":I
    .local v1, "enc":[B
    .local v3, "p":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->decode([S[B[SIII)V

    .line 481
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_1
    if-ge p1, v3, :cond_1

    .line 482
    aget-short p2, v0, p1

    mul-int/lit8 p2, p2, 0x3

    add-int/lit8 v4, p3, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr p2, v4

    int-to-short p2, p2

    aput-short p2, p0, p1

    .line 481
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 483
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method protected static getRoundedEncodedPolynomial([B[SII)V
    .locals 5
    .param p0, "out"    # [B
    .param p1, "in"    # [S
    .param p2, "p"    # I
    .param p3, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "p",
            "q"
        }
    .end annotation

    .line 356
    new-array v0, p2, [S

    .line 357
    .local v0, "R":[S
    new-array v1, p2, [S

    .line 359
    .local v1, "M":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 361
    aget-short v3, p1, v2

    add-int/lit8 v4, p3, -0x1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x2aab

    ushr-int/lit8 v3, v3, 0xf

    int-to-short v3, v3

    aput-short v3, v0, v2

    .line 362
    add-int/lit8 v3, p3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->encode([B[S[SII)V

    .line 366
    return-void
.end method

.method private static getSignedDivMod(II)[I
    .locals 8
    .param p0, "x"    # I
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "n"
        }
    .end annotation

    .line 626
    const-wide/32 v0, -0x80000000

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v0

    .line 627
    .local v0, "div1":[I
    const/high16 v1, -0x80000000

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v1

    .line 629
    .local v1, "div2":[I
    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v3

    aget v2, v1, v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v2

    .line 630
    .local v2, "q":I
    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v4

    aget v3, v1, v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v3

    .line 631
    .local v3, "r":I
    ushr-int/lit8 v4, v3, 0x1f

    neg-int v4, v4

    .line 632
    .local v4, "mask":I
    and-int v5, v4, p1

    add-int/2addr v3, v5

    .line 633
    add-int/2addr v2, v4

    .line 635
    filled-new-array {v2, v3}, [I

    move-result-object v5

    return-object v5
.end method

.method protected static getTopDecodedPolynomial([B[B)V
    .locals 3
    .param p0, "out"    # [B
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

    .line 583
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 585
    mul-int/lit8 v1, v0, 0x2

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 586
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p1, v0

    ushr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static getTopEncodedPolynomial([B[B)V
    .locals 3
    .param p0, "out"    # [B
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

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 494
    mul-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static getUnsignedDivMod(II)[I
    .locals 12
    .param p0, "dividend"    # I
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dividend",
            "n"
        }
    .end annotation

    .line 598
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v0

    .line 599
    .local v0, "x":J
    const/high16 v2, -0x80000000

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v2

    .line 602
    .local v2, "v":J
    int-to-long v4, p1

    div-long/2addr v2, v4

    .line 603
    const-wide/16 v4, 0x0

    .line 605
    .local v4, "q":J
    mul-long v6, v0, v2

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    .line 606
    .local v6, "qpart":J
    int-to-long v9, p1

    mul-long v9, v9, v6

    sub-long/2addr v0, v9

    .line 607
    add-long/2addr v4, v6

    .line 609
    mul-long v9, v0, v2

    ushr-long v6, v9, v8

    .line 610
    int-to-long v8, p1

    mul-long v8, v8, v6

    sub-long/2addr v0, v8

    .line 611
    add-long/2addr v4, v6

    .line 613
    int-to-long v8, p1

    sub-long/2addr v0, v8

    .line 614
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 615
    const/16 v8, 0x3f

    ushr-long v8, v0, v8

    neg-long v8, v8

    .line 616
    .local v8, "mask":J
    int-to-long v10, p1

    and-long/2addr v10, v8

    add-long/2addr v0, v10

    .line 617
    add-long/2addr v4, v8

    .line 619
    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v10

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v11

    filled-new-array {v10, v11}, [I

    move-result-object v10

    return-object v10
.end method

.method private static getUnsignedMod(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "n"
        }
    .end annotation

    .line 336
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method static iToUnsignedLong(I)J
    .locals 4
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 662
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected static isInvertiblePolynomialInR3([B[BI)Z
    .locals 15
    .param p0, "g"    # [B
    .param p1, "ginv"    # [B
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "g",
            "ginv",
            "p"
        }
    .end annotation

    .line 37
    move/from16 v0, p2

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 38
    .local v1, "f":[B
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    .line 39
    .local v2, "h":[B
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    .line 40
    .local v3, "r":[B
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 43
    .local v4, "v":[B
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 44
    aput-byte v6, v1, v5

    .line 45
    add-int/lit8 v7, v0, -0x1

    const/4 v8, -0x1

    aput-byte v8, v1, v7

    .line 46
    aput-byte v8, v1, v0

    .line 47
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_0

    .line 48
    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v7

    aget-byte v9, p0, v7

    aput-byte v9, v2, v8

    .line 47
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 50
    :cond_0
    aput-byte v5, v2, v0

    .line 51
    const/4 v8, 0x1

    .line 53
    .local v8, "delta":I
    const/4 v9, 0x0

    .local v9, "loop":I
    :goto_1
    mul-int/lit8 v10, v0, 0x2

    sub-int/2addr v10, v6

    if-ge v9, v10, :cond_5

    .line 55
    invoke-static {v4, v5, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    aput-byte v5, v4, v5

    .line 58
    aget-byte v10, v2, v5

    neg-int v10, v10

    aget-byte v11, v1, v5

    mul-int v10, v10, v11

    .line 59
    .local v10, "sign":I
    neg-int v11, v8

    invoke-static {v11}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkLessThanZero(I)I

    move-result v11

    aget-byte v12, v2, v5

    invoke-static {v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkNotEqualToZero(I)I

    move-result v12

    and-int/2addr v11, v12

    .line 60
    .local v11, "swap":I
    neg-int v12, v8

    xor-int/2addr v12, v8

    and-int/2addr v12, v11

    xor-int/2addr v8, v12

    .line 61
    add-int/2addr v8, v6

    .line 63
    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v12, v0, 0x1

    if-ge v7, v12, :cond_1

    .line 65
    aget-byte v12, v1, v7

    aget-byte v13, v2, v7

    xor-int/2addr v12, v13

    and-int/2addr v12, v11

    .line 66
    .local v12, "t":I
    aget-byte v13, v1, v7

    xor-int/2addr v13, v12

    int-to-byte v13, v13

    aput-byte v13, v1, v7

    .line 67
    aget-byte v13, v2, v7

    xor-int/2addr v13, v12

    int-to-byte v13, v13

    aput-byte v13, v2, v7

    .line 68
    aget-byte v13, v4, v7

    aget-byte v14, v3, v7

    xor-int/2addr v13, v14

    and-int v12, v11, v13

    .line 69
    aget-byte v13, v4, v7

    xor-int/2addr v13, v12

    int-to-byte v13, v13

    aput-byte v13, v4, v7

    .line 70
    aget-byte v13, v3, v7

    xor-int/2addr v13, v12

    int-to-byte v13, v13

    aput-byte v13, v3, v7

    .line 63
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 73
    .end local v12    # "t":I
    :cond_1
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v12, v0, 0x1

    const/4 v13, 0x3

    if-ge v7, v12, :cond_2

    .line 74
    aget-byte v12, v2, v7

    aget-byte v14, v1, v7

    mul-int v14, v14, v10

    add-int/2addr v12, v14

    invoke-static {v12, v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v2, v7

    .line 73
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 75
    :cond_2
    const/4 v7, 0x0

    :goto_4
    add-int/lit8 v12, v0, 0x1

    if-ge v7, v12, :cond_3

    .line 76
    aget-byte v12, v3, v7

    aget-byte v14, v4, v7

    mul-int v14, v14, v10

    add-int/2addr v12, v14

    invoke-static {v12, v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v3, v7

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 78
    :cond_3
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v0, :cond_4

    .line 79
    add-int/lit8 v12, v7, 0x1

    aget-byte v12, v2, v12

    aput-byte v12, v2, v7

    .line 78
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 80
    :cond_4
    aput-byte v5, v2, v0

    .line 53
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 83
    .end local v10    # "sign":I
    .end local v11    # "swap":I
    :cond_5
    aget-byte v10, v1, v5

    .line 84
    .restart local v10    # "sign":I
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v0, :cond_6

    .line 85
    add-int/lit8 v11, v0, -0x1

    sub-int/2addr v11, v7

    aget-byte v11, v4, v11

    mul-int v11, v11, v10

    int-to-byte v11, v11

    aput-byte v11, p1, v7

    .line 84
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 87
    :cond_6
    if-nez v8, :cond_7

    const/4 v5, 0x1

    :cond_7
    return v5
.end method

.method protected static minmax([III)V
    .locals 6
    .param p0, "L"    # [I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "L",
            "x",
            "y"
        }
    .end annotation

    .line 92
    aget v0, p0, p1

    .line 93
    .local v0, "xi":I
    aget v1, p0, p2

    .line 94
    .local v1, "yi":I
    xor-int v2, v0, v1

    .line 95
    .local v2, "xy":I
    sub-int v3, v1, v0

    .line 96
    .local v3, "c":I
    xor-int v4, v3, v1

    const/high16 v5, -0x80000000

    xor-int/2addr v4, v5

    and-int/2addr v4, v2

    xor-int/2addr v3, v4

    .line 97
    ushr-int/lit8 v3, v3, 0x1f

    .line 98
    neg-int v3, v3

    .line 99
    and-int/2addr v3, v2

    .line 100
    xor-int v4, v0, v3

    aput v4, p0, p1

    .line 101
    xor-int v4, v1, v3

    aput v4, p0, p2

    .line 102
    return-void
.end method

.method protected static multiplicationInR3([B[B[BI)V
    .locals 7
    .param p0, "h"    # [B
    .param p1, "finv3"    # [B
    .param p2, "g"    # [B
    .param p3, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "h",
            "finv3",
            "g",
            "p"
        }
    .end annotation

    .line 530
    add-int v0, p3, p3

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    .line 534
    .local v0, "fg":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, p3, :cond_1

    .line 536
    const/4 v3, 0x0

    .line 537
    .local v3, "result":B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-gt v4, v1, :cond_0

    .line 538
    aget-byte v5, p1, v4

    sub-int v6, v1, v4

    aget-byte v6, p2, v6

    mul-int v5, v5, v6

    add-int/2addr v5, v3

    invoke-static {v5, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v5

    int-to-byte v3, v5

    .line 537
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 539
    :cond_0
    aput-byte v3, v0, v1

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v3    # "result":B
    .end local v4    # "j":I
    :cond_1
    move v1, p3

    :goto_2
    add-int v3, p3, p3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 544
    const/4 v3, 0x0

    .line 545
    .restart local v3    # "result":B
    sub-int v4, v1, p3

    add-int/lit8 v4, v4, 0x1

    .restart local v4    # "j":I
    :goto_3
    if-ge v4, p3, :cond_2

    .line 546
    aget-byte v5, p1, v4

    sub-int v6, v1, v4

    aget-byte v6, p2, v6

    mul-int v5, v5, v6

    add-int/2addr v5, v3

    invoke-static {v5, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v5

    int-to-byte v3, v5

    .line 545
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 547
    :cond_2
    aput-byte v3, v0, v1

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 550
    .end local v3    # "result":B
    .end local v4    # "j":I
    :cond_3
    add-int v3, p3, p3

    add-int/lit8 v3, v3, -0x2

    .end local v1    # "i":I
    .local v3, "i":I
    :goto_4
    if-lt v3, p3, :cond_4

    .line 552
    sub-int v1, v3, p3

    sub-int v4, v3, p3

    aget-byte v4, v0, v4

    aget-byte v5, v0, v3

    add-int/2addr v4, v5

    invoke-static {v4, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 553
    sub-int v1, v3, p3

    add-int/lit8 v1, v1, 0x1

    sub-int v4, v3, p3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    aget-byte v5, v0, v3

    add-int/2addr v4, v5

    invoke-static {v4, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 550
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 556
    :cond_4
    const/4 v1, 0x0

    .end local v3    # "i":I
    .restart local v1    # "i":I
    :goto_5
    if-ge v1, p3, :cond_5

    .line 557
    aget-byte v2, v0, v1

    aput-byte v2, p0, v1

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 558
    :cond_5
    return-void
.end method

.method protected static multiplicationInRQ([S[S[BII)V
    .locals 6
    .param p0, "h"    # [S
    .param p1, "finv3"    # [S
    .param p2, "g"    # [B
    .param p3, "p"    # I
    .param p4, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "h",
            "finv3",
            "g",
            "p",
            "q"
        }
    .end annotation

    .line 210
    add-int v0, p3, p3

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [S

    .line 214
    .local v0, "fg":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "result":S
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-gt v3, v1, :cond_0

    .line 218
    aget-short v4, p1, v3

    sub-int v5, v1, v3

    aget-byte v5, p2, v5

    mul-int v4, v4, v5

    add-int/2addr v4, v2

    invoke-static {v4, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v4

    int-to-short v2, v4

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 219
    :cond_0
    aput-short v2, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "result":S
    .end local v3    # "j":I
    :cond_1
    move v1, p3

    :goto_2
    add-int v2, p3, p3

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 224
    const/4 v2, 0x0

    .line 225
    .restart local v2    # "result":S
    sub-int v3, v1, p3

    add-int/lit8 v3, v3, 0x1

    .restart local v3    # "j":I
    :goto_3
    if-ge v3, p3, :cond_2

    .line 226
    aget-short v4, p1, v3

    sub-int v5, v1, v3

    aget-byte v5, p2, v5

    mul-int v4, v4, v5

    add-int/2addr v4, v2

    invoke-static {v4, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v4

    int-to-short v2, v4

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 227
    :cond_2
    aput-short v2, v0, v1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 230
    .end local v2    # "result":S
    .end local v3    # "j":I
    :cond_3
    add-int v2, p3, p3

    add-int/lit8 v2, v2, -0x2

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_4
    if-lt v2, p3, :cond_4

    .line 232
    sub-int v1, v2, p3

    sub-int v3, v2, p3

    aget-short v3, v0, v3

    aget-short v4, v0, v2

    add-int/2addr v3, v4

    invoke-static {v3, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v1

    .line 233
    sub-int v1, v2, p3

    add-int/lit8 v1, v1, 0x1

    sub-int v3, v2, p3

    add-int/lit8 v3, v3, 0x1

    aget-short v3, v0, v3

    aget-short v4, v0, v2

    add-int/2addr v3, v4

    invoke-static {v3, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v1

    .line 230
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 236
    :cond_4
    const/4 v1, 0x0

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_5
    if-ge v1, p3, :cond_5

    .line 237
    aget-short v2, v0, v1

    aput-short v2, p0, v1

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 238
    :cond_5
    return-void
.end method

.method protected static right([B[S[BIIII)V
    .locals 3
    .param p0, "out"    # [B
    .param p1, "aB"    # [S
    .param p2, "T"    # [B
    .param p3, "q"    # I
    .param p4, "w"    # I
    .param p5, "tau2"    # I
    .param p6, "tau3"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "aB",
            "T",
            "q",
            "w",
            "tau2",
            "tau3"
        }
    .end annotation

    .line 592
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 593
    aget-byte v1, p2, v0

    mul-int v1, v1, p6

    sub-int/2addr v1, p5

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    aget-short v2, p1, v0

    sub-int/2addr v1, v2

    mul-int/lit8 v2, p4, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkLessThanZero(I)I

    move-result v1

    neg-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static roundPolynomial([S[S)V
    .locals 4
    .param p0, "out"    # [S
    .param p1, "in"    # [S
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

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 351
    aget-short v1, p1, v0

    aget-short v2, p1, v0

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p0, v0

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static sToUnsignedInt(S)I
    .locals 1
    .param p0, "s"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 657
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static scalarMultiplicationInRQ([S[SII)V
    .locals 2
    .param p0, "out"    # [S
    .param p1, "in"    # [S
    .param p2, "scalar"    # I
    .param p3, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "scalar",
            "q"
        }
    .end annotation

    .line 518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 519
    aget-short v1, p1, v0

    mul-int v1, v1, p2

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p0, v0

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static sortGenerateShortPolynomial([B[III)V
    .locals 2
    .param p0, "f"    # [B
    .param p1, "L"    # [I
    .param p2, "p"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "f",
            "L",
            "p",
            "w"
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 130
    aget v1, p1, v0

    and-int/lit8 v1, v1, -0x2

    aput v1, p1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    :cond_0
    move v0, p3

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 132
    aget v1, p1, v0

    and-int/lit8 v1, v1, -0x3

    or-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->cryptoSort([II)V

    .line 134
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p2, :cond_2

    .line 135
    aget v1, p1, v0

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 136
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method static toIntExact(J)I
    .locals 4
    .param p0, "l"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 667
    long-to-int v0, p0

    .line 669
    .local v0, "i":I
    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    .line 673
    return v0

    .line 671
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "value out of integer range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static top([B[S[BIII)V
    .locals 4
    .param p0, "out"    # [B
    .param p1, "bA"    # [S
    .param p2, "r"    # [B
    .param p3, "q"    # I
    .param p4, "tau0"    # I
    .param p5, "tau1"    # I
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
            "bA",
            "r",
            "q",
            "tau0",
            "tau1"
        }
    .end annotation

    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 488
    aget-short v1, p1, v0

    aget-byte v2, p2, v0

    add-int/lit8 v3, p3, -0x1

    div-int/lit8 v3, v3, 0x2

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    add-int/2addr v1, p4

    mul-int v1, v1, p5

    add-int/lit16 v1, v1, 0x4000

    ushr-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static transformRQToR3([B[S)V
    .locals 3
    .param p0, "out"    # [B
    .param p1, "in"    # [S
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

    .line 524
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 525
    aget-short v1, p1, v0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected static updateDiffMask([B[BI)V
    .locals 4
    .param p0, "encR"    # [B
    .param p1, "rho"    # [B
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encR",
            "rho",
            "mask"
        }
    .end annotation

    .line 577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 578
    aget-byte v1, p0, v0

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    and-int/2addr v2, p2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
