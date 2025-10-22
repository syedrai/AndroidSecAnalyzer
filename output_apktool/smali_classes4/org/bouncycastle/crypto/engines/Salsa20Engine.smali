.class public Lorg/bouncycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Salsa20Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/SkippingStreamCipher;


# static fields
.field public static final DEFAULT_ROUNDS:I = 0x14

.field private static final STATE_SIZE:I = 0x10

.field private static final TAU_SIGMA:[I

.field protected static final sigma:[B

.field protected static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field protected engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field protected rounds:I

.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    const-string v0, "expand 16-byte kexpand 32-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    .line 40
    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 41
    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "rounds"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rounds"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    .line 50
    const/16 v1, 0x10

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    .line 51
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    .line 52
    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    .line 53
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 74
    if-lez p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 79
    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    .line 80
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'rounds\' must be a positive, even number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private limitExceeded()Z
    .locals 3

    .line 509
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 511
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v0, :cond_1

    .line 513
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 517
    :cond_1
    return v2
.end method

.method private limitExceeded(I)Z
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 525
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 526
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    const/4 v1, 0x0

    if-ge v0, p1, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v0, :cond_1

    .line 528
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v0, :cond_1

    .line 530
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 534
    :cond_1
    return v1
.end method

.method private resetLimitCounter()V
    .locals 1

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 503
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 504
    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    .line 505
    return-void
.end method

.method public static salsaCore(I[I[I)V
    .locals 42
    .param p0, "rounds"    # I
    .param p1, "input"    # [I
    .param p2, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rounds",
            "input",
            "x"
        }
    .end annotation

    .line 415
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 419
    array-length v2, v1

    if-ne v2, v3, :cond_2

    .line 423
    rem-int/lit8 v2, p0, 0x2

    if-nez v2, :cond_1

    .line 428
    const/4 v2, 0x0

    aget v3, v0, v2

    .line 429
    .local v3, "x00":I
    const/4 v4, 0x1

    aget v5, v0, v4

    .line 430
    .local v5, "x01":I
    const/4 v6, 0x2

    aget v7, v0, v6

    .line 431
    .local v7, "x02":I
    const/4 v8, 0x3

    aget v9, v0, v8

    .line 432
    .local v9, "x03":I
    const/4 v10, 0x4

    aget v11, v0, v10

    .line 433
    .local v11, "x04":I
    const/4 v12, 0x5

    aget v13, v0, v12

    .line 434
    .local v13, "x05":I
    const/4 v14, 0x6

    aget v15, v0, v14

    .line 435
    .local v15, "x06":I
    const/16 v16, 0x0

    const/4 v2, 0x7

    aget v17, v0, v2

    .line 436
    .local v17, "x07":I
    const/16 v18, 0x8

    aget v19, v0, v18

    .line 437
    .local v19, "x08":I
    const/16 v20, 0x1

    const/16 v4, 0x9

    aget v21, v0, v4

    .line 438
    .local v21, "x09":I
    const/16 v22, 0xa

    aget v23, v0, v22

    .line 439
    .local v23, "x10":I
    const/16 v24, 0xb

    aget v25, v0, v24

    .line 440
    .local v25, "x11":I
    const/16 v26, 0xc

    aget v27, v0, v26

    .line 441
    .local v27, "x12":I
    const/16 v28, 0x2

    const/16 v6, 0xd

    aget v29, v0, v6

    .line 442
    .local v29, "x13":I
    const/16 v30, 0xe

    aget v31, v0, v30

    .line 443
    .local v31, "x14":I
    const/16 v32, 0xf

    aget v33, v0, v32

    .line 445
    .local v33, "x15":I
    move/from16 v34, p0

    .local v34, "i":I
    :goto_0
    if-lez v34, :cond_0

    .line 447
    const/16 v35, 0x3

    add-int v8, v3, v27

    invoke-static {v8, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v8, v11

    .line 448
    .end local v11    # "x04":I
    .local v8, "x04":I
    add-int v11, v8, v3

    invoke-static {v11, v4}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v11

    xor-int v11, v19, v11

    .line 449
    .end local v19    # "x08":I
    .local v11, "x08":I
    const/16 v36, 0x4

    add-int v10, v11, v8

    invoke-static {v10, v6}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v10

    xor-int v10, v27, v10

    .line 450
    .end local v27    # "x12":I
    .local v10, "x12":I
    const/16 v37, 0x5

    add-int v12, v10, v11

    const/16 v38, 0x6

    const/16 v14, 0x12

    invoke-static {v12, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    xor-int/2addr v3, v12

    .line 451
    add-int v12, v13, v5

    invoke-static {v12, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    xor-int v12, v21, v12

    .line 452
    .end local v21    # "x09":I
    .local v12, "x09":I
    add-int v2, v12, v13

    invoke-static {v2, v4}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    xor-int v2, v29, v2

    .line 453
    .end local v29    # "x13":I
    .local v2, "x13":I
    add-int v4, v2, v12

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v4

    xor-int/2addr v4, v5

    .line 454
    .end local v5    # "x01":I
    .local v4, "x01":I
    add-int v5, v4, v2

    invoke-static {v5, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    xor-int/2addr v5, v13

    .line 455
    .end local v13    # "x05":I
    .local v5, "x05":I
    add-int v13, v23, v15

    const/4 v14, 0x7

    invoke-static {v13, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v13

    xor-int v13, v31, v13

    .line 456
    .end local v31    # "x14":I
    .local v13, "x14":I
    add-int v14, v13, v23

    const/16 v6, 0x9

    invoke-static {v14, v6}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v14

    xor-int v6, v7, v14

    .line 457
    .end local v7    # "x02":I
    .local v6, "x02":I
    add-int v7, v6, v13

    const/16 v14, 0xd

    invoke-static {v7, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v7, v15

    .line 458
    .end local v15    # "x06":I
    .local v7, "x06":I
    add-int v14, v7, v6

    const/16 v15, 0x12

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v14

    xor-int v14, v23, v14

    .line 459
    .end local v23    # "x10":I
    .local v14, "x10":I
    add-int v15, v33, v25

    const/4 v0, 0x7

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v15

    xor-int v0, v9, v15

    .line 460
    .end local v9    # "x03":I
    .local v0, "x03":I
    add-int v9, v0, v33

    const/16 v15, 0x9

    invoke-static {v9, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v9

    xor-int v9, v17, v9

    .line 461
    .end local v17    # "x07":I
    .local v9, "x07":I
    add-int v15, v9, v0

    move/from16 v21, v0

    const/16 v0, 0xd

    .end local v0    # "x03":I
    .local v21, "x03":I
    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v15

    xor-int v0, v25, v15

    .line 462
    .end local v25    # "x11":I
    .local v0, "x11":I
    add-int v15, v0, v9

    move/from16 v17, v0

    const/16 v0, 0x12

    .end local v0    # "x11":I
    .local v17, "x11":I
    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v15

    xor-int v0, v33, v15

    .line 464
    .end local v33    # "x15":I
    .local v0, "x15":I
    add-int v15, v3, v21

    move/from16 v23, v0

    const/4 v0, 0x7

    .end local v0    # "x15":I
    .local v23, "x15":I
    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v15

    xor-int v0, v4, v15

    .line 465
    .end local v4    # "x01":I
    .local v0, "x01":I
    add-int v4, v0, v3

    const/16 v15, 0x9

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v4

    xor-int/2addr v4, v6

    .line 466
    .end local v6    # "x02":I
    .local v4, "x02":I
    add-int v6, v4, v0

    const/16 v15, 0xd

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    xor-int v6, v21, v6

    .line 467
    .end local v21    # "x03":I
    .local v6, "x03":I
    add-int v15, v6, v4

    move/from16 v21, v0

    const/16 v0, 0x12

    .end local v0    # "x01":I
    .local v21, "x01":I
    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v15

    xor-int/2addr v3, v15

    .line 468
    add-int v0, v5, v8

    const/4 v15, 0x7

    invoke-static {v0, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v0

    xor-int v15, v7, v0

    .line 469
    .end local v7    # "x06":I
    .restart local v15    # "x06":I
    add-int v0, v15, v5

    const/16 v7, 0x9

    invoke-static {v0, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v0

    xor-int/2addr v0, v9

    .line 470
    .end local v9    # "x07":I
    .local v0, "x07":I
    add-int v7, v0, v15

    const/16 v9, 0xd

    invoke-static {v7, v9}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v7, v8

    .line 471
    .end local v8    # "x04":I
    .local v7, "x04":I
    add-int v8, v7, v0

    const/16 v9, 0x12

    invoke-static {v8, v9}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v5, v8

    .line 472
    add-int v8, v14, v12

    const/4 v9, 0x7

    invoke-static {v8, v9}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v8

    xor-int v25, v17, v8

    .line 473
    .end local v17    # "x11":I
    .restart local v25    # "x11":I
    add-int v8, v25, v14

    const/16 v9, 0x9

    invoke-static {v8, v9}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v8

    xor-int/2addr v8, v11

    .line 474
    .end local v11    # "x08":I
    .local v8, "x08":I
    add-int v9, v8, v25

    const/16 v11, 0xd

    invoke-static {v9, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v9

    xor-int/2addr v9, v12

    .line 475
    .end local v12    # "x09":I
    .local v9, "x09":I
    add-int v11, v9, v8

    const/16 v12, 0x12

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v11

    xor-int/2addr v11, v14

    .line 476
    .end local v14    # "x10":I
    .local v11, "x10":I
    add-int v12, v23, v13

    const/4 v14, 0x7

    invoke-static {v12, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    xor-int v27, v10, v12

    .line 477
    .end local v10    # "x12":I
    .restart local v27    # "x12":I
    add-int v10, v27, v23

    const/16 v12, 0x9

    invoke-static {v10, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v10

    xor-int v29, v2, v10

    .line 478
    .end local v2    # "x13":I
    .restart local v29    # "x13":I
    add-int v2, v29, v27

    const/16 v14, 0xd

    invoke-static {v2, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    xor-int v31, v13, v2

    .line 479
    .end local v13    # "x14":I
    .restart local v31    # "x14":I
    add-int v2, v31, v29

    const/16 v12, 0x12

    invoke-static {v2, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    xor-int v33, v23, v2

    .line 445
    .end local v23    # "x15":I
    .restart local v33    # "x15":I
    add-int/lit8 v34, v34, -0x2

    move/from16 v17, v0

    move v13, v5

    move/from16 v19, v8

    move/from16 v23, v11

    move/from16 v5, v21

    const/4 v2, 0x7

    const/4 v8, 0x3

    const/4 v10, 0x4

    const/4 v12, 0x5

    const/4 v14, 0x6

    move-object/from16 v0, p1

    move v11, v7

    move/from16 v21, v9

    move v7, v4

    move v9, v6

    const/16 v4, 0x9

    const/16 v6, 0xd

    goto/16 :goto_0

    .end local v0    # "x07":I
    .end local v4    # "x02":I
    .end local v6    # "x03":I
    .end local v8    # "x08":I
    .local v5, "x01":I
    .local v7, "x02":I
    .local v9, "x03":I
    .local v11, "x04":I
    .local v13, "x05":I
    .local v17, "x07":I
    .restart local v19    # "x08":I
    .local v21, "x09":I
    .local v23, "x10":I
    :cond_0
    const/16 v35, 0x3

    const/16 v36, 0x4

    const/16 v37, 0x5

    const/16 v38, 0x6

    .line 482
    .end local v34    # "i":I
    aget v0, p1, v16

    add-int/2addr v0, v3

    aput v0, v1, v16

    .line 483
    aget v0, p1, v20

    add-int/2addr v0, v5

    aput v0, v1, v20

    .line 484
    aget v0, p1, v28

    add-int/2addr v0, v7

    aput v0, v1, v28

    .line 485
    aget v0, p1, v35

    add-int/2addr v0, v9

    aput v0, v1, v35

    .line 486
    aget v0, p1, v36

    add-int/2addr v0, v11

    aput v0, v1, v36

    .line 487
    aget v0, p1, v37

    add-int/2addr v0, v13

    aput v0, v1, v37

    .line 488
    aget v0, p1, v38

    add-int/2addr v0, v15

    aput v0, v1, v38

    .line 489
    const/16 v39, 0x7

    aget v0, p1, v39

    add-int v0, v17, v0

    aput v0, v1, v39

    .line 490
    aget v0, p1, v18

    add-int v0, v19, v0

    aput v0, v1, v18

    .line 491
    const/16 v40, 0x9

    aget v0, p1, v40

    add-int v0, v21, v0

    aput v0, v1, v40

    .line 492
    aget v0, p1, v22

    add-int v0, v23, v0

    aput v0, v1, v22

    .line 493
    aget v0, p1, v24

    add-int v0, v25, v0

    aput v0, v1, v24

    .line 494
    aget v0, p1, v26

    add-int v0, v27, v0

    aput v0, v1, v26

    .line 495
    const/16 v41, 0xd

    aget v0, p1, v41

    add-int v0, v29, v0

    aput v0, v1, v41

    .line 496
    aget v0, p1, v30

    add-int v0, v31, v0

    aput v0, v1, v30

    .line 497
    aget v0, p1, v32

    add-int v0, v33, v0

    aput v0, v1, v32

    .line 498
    return-void

    .line 425
    .end local v3    # "x00":I
    .end local v5    # "x01":I
    .end local v7    # "x02":I
    .end local v9    # "x03":I
    .end local v11    # "x04":I
    .end local v13    # "x05":I
    .end local v15    # "x06":I
    .end local v17    # "x07":I
    .end local v19    # "x08":I
    .end local v21    # "x09":I
    .end local v23    # "x10":I
    .end local v25    # "x11":I
    .end local v27    # "x12":I
    .end local v29    # "x13":I
    .end local v31    # "x14":I
    .end local v33    # "x15":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of rounds must be even"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 417
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .line 198
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    .line 200
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 202
    :cond_0
    return-void
.end method

.method protected advanceCounter(J)V
    .locals 7
    .param p1, "diff"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diff"
        }
    .end annotation

    .line 178
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    .line 179
    .local v1, "hi":I
    long-to-int v0, p1

    .line 181
    .local v0, "lo":I
    const/16 v2, 0x9

    if-lez v1, :cond_0

    .line 183
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v4, v3, v2

    add-int/2addr v4, v1

    aput v4, v3, v2

    .line 186
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    .line 188
    .local v3, "oldState":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v6, v5, v4

    add-int/2addr v6, v0

    aput v6, v5, v4

    .line 190
    if-eqz v3, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v4, v5, v4

    if-ge v4, v3, :cond_1

    .line 192
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v5, v4, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v2

    .line 194
    :cond_1
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 404
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 405
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 406
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 4

    .line 149
    const-string v0, "Salsa20"

    .line 150
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 152
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    return-object v0
.end method

.method protected getCounter()J
    .locals 6

    .line 370
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getNonceSize()I
    .locals 1

    .line 144
    const/16 v0, 0x8

    return v0
.end method

.method public getPosition()J
    .locals 4

    .line 356
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getCounter()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    mul-long v0, v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
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

    .line 99
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_4

    .line 104
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 106
    .local v0, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 107
    .local v1, "iv":[B
    if-eqz v1, :cond_3

    array-length v2, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 113
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 114
    .local v2, "keyParam":Lorg/bouncycastle/crypto/CipherParameters;
    if-nez v2, :cond_1

    .line 116
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-eqz v3, :cond_0

    .line 121
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KeyParameter can not be null for first initialisation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_1
    instance-of v3, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_2

    .line 125
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 127
    .local v3, "key":[B
    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 129
    new-instance v4, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 130
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    array-length v6, v3

    mul-int/lit8 v6, v6, 0x8

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v7

    invoke-direct {v4, v5, v6, p2, v7}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 129
    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 131
    .end local v3    # "key":[B
    nop

    .line 137
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->reset()V

    .line 139
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 140
    return-void

    .line 134
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Init parameters must contain a KeyParameter (or null for re-init)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    .end local v2    # "keyParam":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requires exactly "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes of IV"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    .end local v0    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "iv":[B
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Init parameters must include an IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected packTauOrSigma(I[II)V
    .locals 4
    .param p1, "keyLength"    # I
    .param p2, "state"    # [I
    .param p3, "stateOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyLength",
            "state",
            "stateOffset"
        }
    .end annotation

    .line 31
    add-int/lit8 v0, p1, -0x10

    div-int/lit8 v0, v0, 0x4

    .line 32
    .local v0, "tsOff":I
    sget-object v1, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    aget v1, v1, v0

    aput v1, p2, p3

    .line 33
    add-int/lit8 v1, p3, 0x1

    sget-object v2, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, p2, v1

    .line 34
    add-int/lit8 v1, p3, 0x2

    sget-object v2, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, p2, v1

    .line 35
    add-int/lit8 v1, p3, 0x3

    sget-object v2, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v3, v0, 0x3

    aget v2, v2, v3

    aput v2, p2, v1

    .line 36
    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len",
            "out",
            "outOff"
        }
    .end annotation

    .line 259
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-eqz v0, :cond_5

    .line 264
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 269
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_3

    .line 274
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 281
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 282
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    .line 284
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 287
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "i":I
    :cond_1
    return p3

    .line 276
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string v1, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

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
    .locals 1

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    .line 362
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetLimitCounter()V

    .line 363
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    .line 365
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 366
    return-void
.end method

.method protected resetCounter()V
    .locals 4

    .line 375
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v3, v1, v2

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 376
    return-void
.end method

.method protected retreatCounter()V
    .locals 4

    .line 241
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/16 v2, 0x9

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v0, v1

    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    .line 248
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 250
    :cond_2
    return-void
.end method

.method protected retreatCounter(J)V
    .locals 12
    .param p1, "diff"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diff"
        }
    .end annotation

    .line 206
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    .line 207
    .local v1, "hi":I
    long-to-int v0, p1

    .line 209
    .local v0, "lo":I
    const-string v2, "attempt to reduce counter past zero."

    const/16 v3, 0x9

    const-wide v4, 0xffffffffL

    if-eqz v1, :cond_1

    .line 211
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v6, v6, v3

    int-to-long v6, v6

    and-long/2addr v6, v4

    int-to-long v8, v1

    and-long/2addr v8, v4

    cmp-long v10, v6, v8

    if-ltz v10, :cond_0

    .line 213
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v7, v6, v3

    sub-int/2addr v7, v1

    aput v7, v6, v3

    goto :goto_0

    .line 217
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    int-to-long v8, v6

    and-long/2addr v8, v4

    int-to-long v10, v0

    and-long/2addr v4, v10

    cmp-long v6, v8, v4

    if-ltz v6, :cond_2

    .line 223
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v2, v7

    sub-int/2addr v3, v0

    aput v3, v2, v7

    goto :goto_1

    .line 227
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v4, v4, v3

    if-eqz v4, :cond_3

    .line 229
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    .line 230
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v2, v7

    sub-int/2addr v3, v0

    aput v3, v2, v7

    .line 237
    :goto_1
    return-void

    .line 234
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public returnByte(B)B
    .locals 2
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 165
    .local v0, "out":B
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    .line 167
    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 170
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 173
    :cond_0
    return v0

    .line 161
    .end local v0    # "out":B
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string v1, "2^70 byte limit per IV; Change IV"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekTo(J)J
    .locals 2
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->reset()V

    .line 351
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected setKey([B[B)V
    .locals 7
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyBytes",
            "ivBytes"
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 382
    array-length v1, p1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    array-length v1, p1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires 128 bit or 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v2

    const/4 v3, 0x4

    div-int/2addr v1, v3

    .line 388
    .local v1, "tsOff":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    sget-object v5, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 389
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    sget-object v5, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    const/4 v6, 0x5

    aput v5, v4, v6

    .line 390
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    sget-object v5, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    const/16 v6, 0xa

    aput v5, v4, v6

    .line 391
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    sget-object v5, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v6, v1, 0x3

    aget v5, v5, v6

    const/16 v6, 0xf

    aput v5, v4, v6

    .line 394
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v5, 0x1

    invoke-static {p1, v0, v4, v5, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 395
    array-length v4, p1

    sub-int/2addr v4, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v5, 0xb

    invoke-static {p1, v4, v2, v5, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 399
    .end local v1    # "tsOff":I
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-static {p2, v0, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 400
    return-void
.end method

.method public skip(J)J
    .locals 6
    .param p1, "numberOfBytes"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numberOfBytes"
        }
    .end annotation

    .line 296
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x40

    cmp-long v4, p1, v0

    if-ltz v4, :cond_2

    .line 298
    move-wide v0, p1

    .line 300
    .local v0, "remaining":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 302
    div-long v4, v0, v2

    .line 304
    .local v4, "count":J
    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter(J)V

    .line 306
    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    .line 309
    .end local v4    # "count":J
    :cond_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    .line 311
    .local v2, "oldIndex":I
    iget v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    long-to-int v4, v0

    add-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x3f

    iput v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    .line 313
    iget v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-ge v3, v2, :cond_1

    .line 315
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 317
    .end local v0    # "remaining":J
    .end local v2    # "oldIndex":I
    :cond_1
    goto :goto_1

    .line 320
    :cond_2
    neg-long v0, p1

    .line 322
    .restart local v0    # "remaining":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 324
    div-long v4, v0, v2

    .line 326
    .restart local v4    # "count":J
    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->retreatCounter(J)V

    .line 328
    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    .line 331
    .end local v4    # "count":J
    :cond_3
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_5

    .line 333
    iget v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v4, :cond_4

    .line 335
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->retreatCounter()V

    .line 338
    :cond_4
    iget v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, 0x3f

    iput v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    .line 331
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 342
    .end local v0    # "remaining":J
    .end local v2    # "i":J
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 344
    return-wide p1
.end method
