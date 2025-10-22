.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish256Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0xe

.field private static final ROTATION_0_1:I = 0x10

.field private static final ROTATION_1_0:I = 0x34

.field private static final ROTATION_1_1:I = 0x39

.field private static final ROTATION_2_0:I = 0x17

.field private static final ROTATION_2_1:I = 0x28

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x25

.field private static final ROTATION_4_0:I = 0x19

.field private static final ROTATION_4_1:I = 0x21

.field private static final ROTATION_5_0:I = 0x2e

.field private static final ROTATION_5_1:I = 0xc

.field private static final ROTATION_6_0:I = 0x3a

.field private static final ROTATION_6_1:I = 0x16

.field private static final ROTATION_7_0:I = 0x20

.field private static final ROTATION_7_1:I = 0x20


# direct methods
.method public constructor <init>([J[J)V
    .locals 0
    .param p1, "kw"    # [J
    .param p2, "t"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kw",
            "t"
        }
    .end annotation

    .line 427
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    .line 428
    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 27
    .param p1, "block"    # [J
    .param p2, "state"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "block",
            "state"
        }
    .end annotation

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    .line 541
    .local v1, "kw":[J
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    .line 542
    .local v2, "t":[J
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD5()[I

    move-result-object v3

    .line 543
    .local v3, "mod5":[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD3()[I

    move-result-object v4

    .line 546
    .local v4, "mod3":[I
    array-length v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    .line 550
    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 555
    const/4 v5, 0x0

    aget-wide v7, p1, v5

    .line 556
    .local v7, "b0":J
    const/4 v9, 0x1

    aget-wide v10, p1, v9

    .line 557
    .local v10, "b1":J
    const/4 v12, 0x2

    aget-wide v13, p1, v12

    .line 558
    .local v13, "b2":J
    const/4 v15, 0x3

    aget-wide v16, p1, v15

    .line 560
    .local v16, "b3":J
    const/16 v18, 0x11

    move/from16 v5, v18

    const/16 v18, 0x0

    .local v5, "d":I
    :goto_0
    if-lt v5, v9, :cond_0

    .line 562
    aget v19, v3, v5

    .line 563
    .local v19, "dm5":I
    aget v20, v4, v5

    .line 566
    .local v20, "dm3":I
    add-int/lit8 v21, v19, 0x1

    aget-wide v21, v1, v21

    sub-long v7, v7, v21

    .line 567
    add-int/lit8 v21, v19, 0x2

    aget-wide v21, v1, v21

    add-int/lit8 v23, v20, 0x1

    aget-wide v23, v2, v23

    add-long v21, v21, v23

    sub-long v10, v10, v21

    .line 568
    add-int/lit8 v21, v19, 0x3

    aget-wide v21, v1, v21

    add-int/lit8 v23, v20, 0x2

    aget-wide v23, v2, v23

    add-long v21, v21, v23

    sub-long v13, v13, v21

    .line 569
    add-int/lit8 v21, v19, 0x4

    aget-wide v21, v1, v21

    move-wide/from16 v24, v10

    const/16 v23, 0x1

    .end local v10    # "b1":J
    .local v24, "b1":J
    int-to-long v9, v5

    add-long v21, v21, v9

    const-wide/16 v9, 0x1

    add-long v21, v21, v9

    sub-long v9, v16, v21

    .line 573
    .end local v16    # "b3":J
    .local v9, "b3":J
    const/16 v11, 0x20

    invoke-static {v9, v10, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 574
    sub-long/2addr v7, v9

    .line 575
    move-wide/from16 v16, v7

    move-wide/from16 v6, v24

    .end local v7    # "b0":J
    .end local v24    # "b1":J
    .local v6, "b1":J
    .local v16, "b0":J
    invoke-static {v6, v7, v11, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 576
    sub-long/2addr v13, v6

    .line 578
    const/16 v8, 0x3a

    move-wide/from16 v24, v13

    move-wide/from16 v12, v16

    const/16 v22, 0x2

    .end local v13    # "b2":J
    .end local v16    # "b0":J
    .local v12, "b0":J
    .local v24, "b2":J
    invoke-static {v6, v7, v8, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 579
    sub-long/2addr v12, v6

    .line 580
    const/16 v8, 0x16

    move-object/from16 v26, v1

    move-wide/from16 v0, v24

    .end local v1    # "kw":[J
    .end local v24    # "b2":J
    .local v0, "b2":J
    .local v26, "kw":[J
    invoke-static {v9, v10, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 581
    .end local v9    # "b3":J
    .local v8, "b3":J
    sub-long/2addr v0, v8

    .line 583
    const/16 v10, 0x2e

    invoke-static {v8, v9, v10, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 584
    sub-long/2addr v12, v8

    .line 585
    const/16 v10, 0xc

    invoke-static {v6, v7, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 586
    sub-long/2addr v0, v6

    .line 588
    const/16 v10, 0x19

    invoke-static {v6, v7, v10, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 589
    sub-long/2addr v12, v6

    .line 590
    const/16 v10, 0x21

    invoke-static {v8, v9, v10, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 591
    sub-long/2addr v0, v8

    .line 594
    aget-wide v10, v26, v19

    sub-long/2addr v12, v10

    .line 595
    add-int/lit8 v10, v19, 0x1

    aget-wide v10, v26, v10

    aget-wide v16, v2, v20

    add-long v10, v10, v16

    sub-long/2addr v6, v10

    .line 596
    add-int/lit8 v10, v19, 0x2

    aget-wide v10, v26, v10

    add-int/lit8 v14, v20, 0x1

    aget-wide v16, v2, v14

    add-long v10, v10, v16

    sub-long/2addr v0, v10

    .line 597
    add-int/lit8 v10, v19, 0x3

    aget-wide v10, v26, v10

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .end local v2    # "t":[J
    .end local v3    # "mod5":[I
    .local v24, "t":[J
    .local v25, "mod5":[I
    int-to-long v2, v5

    add-long/2addr v10, v2

    sub-long/2addr v8, v10

    .line 600
    const/4 v2, 0x5

    invoke-static {v8, v9, v2, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 601
    sub-long/2addr v12, v8

    .line 602
    const/16 v3, 0x25

    invoke-static {v6, v7, v3, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 603
    sub-long/2addr v0, v6

    .line 605
    const/16 v3, 0x17

    invoke-static {v6, v7, v3, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 606
    sub-long/2addr v12, v6

    .line 607
    const/16 v3, 0x28

    invoke-static {v8, v9, v3, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 608
    sub-long/2addr v0, v8

    .line 610
    const/16 v3, 0x34

    invoke-static {v8, v9, v3, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 611
    sub-long/2addr v12, v8

    .line 612
    const/16 v3, 0x39

    invoke-static {v6, v7, v3, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    .line 613
    sub-long/2addr v0, v6

    .line 615
    const/16 v3, 0xe

    invoke-static {v6, v7, v3, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v10

    .line 616
    .end local v6    # "b1":J
    .restart local v10    # "b1":J
    sub-long v6, v12, v10

    .line 617
    .end local v12    # "b0":J
    .local v6, "b0":J
    const/16 v3, 0x10

    invoke-static {v8, v9, v3, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    .line 618
    .end local v8    # "b3":J
    .local v16, "b3":J
    sub-long v13, v0, v16

    .line 560
    .end local v0    # "b2":J
    .end local v19    # "dm5":I
    .end local v20    # "dm3":I
    .restart local v13    # "b2":J
    add-int/lit8 v5, v5, -0x2

    move-object/from16 v0, p0

    move-wide v7, v6

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v1, v26

    const/4 v6, 0x5

    const/4 v9, 0x1

    const/4 v12, 0x2

    goto/16 :goto_0

    .end local v6    # "b0":J
    .end local v24    # "t":[J
    .end local v25    # "mod5":[I
    .end local v26    # "kw":[J
    .restart local v1    # "kw":[J
    .restart local v2    # "t":[J
    .restart local v3    # "mod5":[I
    .restart local v7    # "b0":J
    :cond_0
    move-object/from16 v26, v1

    move-object/from16 v24, v2

    const/16 v22, 0x2

    const/16 v23, 0x1

    .line 624
    .end local v1    # "kw":[J
    .end local v2    # "t":[J
    .end local v5    # "d":I
    .restart local v24    # "t":[J
    .restart local v26    # "kw":[J
    aget-wide v0, v26, v18

    sub-long/2addr v7, v0

    .line 625
    aget-wide v0, v26, v23

    aget-wide v2, v24, v18

    add-long/2addr v0, v2

    sub-long/2addr v10, v0

    .line 626
    aget-wide v0, v26, v22

    aget-wide v2, v24, v23

    add-long/2addr v0, v2

    sub-long/2addr v13, v0

    .line 627
    aget-wide v0, v26, v15

    sub-long v16, v16, v0

    .line 632
    aput-wide v7, p2, v18

    .line 633
    aput-wide v10, p2, v23

    .line 634
    aput-wide v13, p2, v22

    .line 635
    aput-wide v16, p2, v15

    .line 636
    return-void

    .line 552
    .end local v7    # "b0":J
    .end local v10    # "b1":J
    .end local v13    # "b2":J
    .end local v16    # "b3":J
    .end local v24    # "t":[J
    .end local v26    # "kw":[J
    .restart local v1    # "kw":[J
    .restart local v2    # "t":[J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 548
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method encryptBlock([J[J)V
    .locals 28
    .param p1, "block"    # [J
    .param p2, "out"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "block",
            "out"
        }
    .end annotation

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    .line 433
    .local v1, "kw":[J
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    .line 434
    .local v2, "t":[J
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD5()[I

    move-result-object v3

    .line 435
    .local v3, "mod5":[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD3()[I

    move-result-object v4

    .line 438
    .local v4, "mod3":[I
    array-length v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    .line 442
    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 450
    const/4 v5, 0x0

    aget-wide v7, p1, v5

    .line 451
    .local v7, "b0":J
    const/4 v9, 0x1

    aget-wide v10, p1, v9

    .line 452
    .local v10, "b1":J
    const/4 v12, 0x2

    aget-wide v13, p1, v12

    .line 453
    .local v13, "b2":J
    const/4 v15, 0x3

    aget-wide v16, p1, v15

    .line 458
    .local v16, "b3":J
    aget-wide v18, v1, v5

    add-long v7, v7, v18

    .line 459
    aget-wide v18, v1, v9

    aget-wide v20, v2, v5

    add-long v18, v18, v20

    add-long v10, v10, v18

    .line 460
    aget-wide v18, v1, v12

    aget-wide v20, v2, v9

    add-long v18, v18, v20

    add-long v13, v13, v18

    .line 461
    aget-wide v18, v1, v15

    add-long v16, v16, v18

    .line 474
    const/16 v18, 0x1

    move-wide/from16 v26, v13

    move/from16 v14, v18

    move-wide/from16 v12, v16

    const/16 v16, 0x2

    move-wide/from16 v17, v26

    .end local v13    # "b2":J
    .end local v16    # "b3":J
    .local v12, "b3":J
    .local v14, "d":I
    .local v17, "b2":J
    :goto_0
    const/16 v19, 0x0

    const/16 v5, 0x12

    if-ge v14, v5, :cond_0

    .line 476
    aget v5, v3, v14

    .line 477
    .local v5, "dm5":I
    aget v20, v4, v14

    .line 485
    .local v20, "dm3":I
    move-object/from16 v21, v1

    .end local v1    # "kw":[J
    .local v21, "kw":[J
    add-long v0, v7, v10

    move-wide v7, v0

    const/16 v22, 0x1

    const/16 v9, 0xe

    invoke-static {v10, v11, v9, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 486
    .end local v10    # "b1":J
    .local v0, "b1":J
    add-long v9, v17, v12

    move-wide/from16 v17, v9

    const/16 v11, 0x10

    invoke-static {v12, v13, v11, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    .line 488
    .end local v12    # "b3":J
    .local v9, "b3":J
    add-long v11, v7, v9

    move-wide v7, v11

    const/16 v13, 0x34

    invoke-static {v9, v10, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    .line 489
    add-long v11, v17, v0

    move-wide/from16 v17, v11

    const/16 v13, 0x39

    invoke-static {v0, v1, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 491
    add-long v11, v7, v0

    move-wide v7, v11

    const/16 v13, 0x17

    invoke-static {v0, v1, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 492
    add-long v11, v17, v9

    move-wide/from16 v17, v11

    const/16 v13, 0x28

    invoke-static {v9, v10, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    .line 494
    add-long v11, v7, v9

    move-wide v7, v11

    invoke-static {v9, v10, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    .line 495
    add-long v11, v17, v0

    move-wide/from16 v17, v11

    const/16 v13, 0x25

    invoke-static {v0, v1, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 500
    aget-wide v11, v21, v5

    add-long/2addr v7, v11

    .line 501
    add-int/lit8 v11, v5, 0x1

    aget-wide v11, v21, v11

    aget-wide v23, v2, v20

    add-long v11, v11, v23

    add-long/2addr v0, v11

    .line 502
    add-int/lit8 v11, v5, 0x2

    aget-wide v11, v21, v11

    add-int/lit8 v13, v20, 0x1

    aget-wide v23, v2, v13

    add-long v11, v11, v23

    add-long v17, v17, v11

    .line 503
    add-int/lit8 v11, v5, 0x3

    aget-wide v11, v21, v11

    move-wide/from16 v24, v7

    .end local v7    # "b0":J
    .local v24, "b0":J
    int-to-long v6, v14

    add-long/2addr v11, v6

    add-long/2addr v9, v11

    .line 508
    add-long v7, v24, v0

    move-wide v11, v7

    .end local v24    # "b0":J
    .local v11, "b0":J
    const/16 v6, 0x19

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 509
    add-long v6, v17, v9

    move-wide/from16 v17, v6

    const/16 v8, 0x21

    invoke-static {v9, v10, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 511
    .end local v9    # "b3":J
    .local v6, "b3":J
    add-long v8, v11, v6

    move-wide v10, v8

    .end local v11    # "b0":J
    .local v10, "b0":J
    const/16 v12, 0x2e

    invoke-static {v6, v7, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 512
    add-long v8, v17, v0

    move-wide v12, v8

    const/16 v24, 0x3

    .end local v17    # "b2":J
    .local v12, "b2":J
    const/16 v15, 0xc

    invoke-static {v0, v1, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 514
    add-long v8, v10, v0

    move-wide v10, v8

    const/16 v15, 0x3a

    invoke-static {v0, v1, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 515
    add-long v8, v12, v6

    move-wide v12, v8

    const/16 v15, 0x16

    invoke-static {v6, v7, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 517
    add-long v8, v10, v6

    move-wide v10, v8

    const/16 v15, 0x20

    invoke-static {v6, v7, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 518
    add-long v8, v12, v0

    move-wide v12, v8

    invoke-static {v0, v1, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 523
    add-int/lit8 v8, v5, 0x1

    aget-wide v8, v21, v8

    add-long/2addr v8, v10

    .line 524
    .end local v10    # "b0":J
    .local v8, "b0":J
    add-int/lit8 v10, v5, 0x2

    aget-wide v10, v21, v10

    add-int/lit8 v15, v20, 0x1

    aget-wide v17, v2, v15

    add-long v10, v10, v17

    add-long/2addr v10, v0

    .line 525
    .end local v0    # "b1":J
    .local v10, "b1":J
    add-int/lit8 v0, v5, 0x3

    aget-wide v0, v21, v0

    add-int/lit8 v15, v20, 0x2

    aget-wide v17, v2, v15

    add-long v0, v0, v17

    add-long v17, v12, v0

    .line 526
    .end local v12    # "b2":J
    .restart local v17    # "b2":J
    add-int/lit8 v0, v5, 0x4

    aget-wide v0, v21, v0

    int-to-long v12, v14

    add-long/2addr v0, v12

    const-wide/16 v12, 0x1

    add-long/2addr v0, v12

    add-long v12, v6, v0

    .line 474
    .end local v5    # "dm5":I
    .end local v6    # "b3":J
    .end local v20    # "dm3":I
    .local v12, "b3":J
    add-int/lit8 v14, v14, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v15, 0x3

    move-object/from16 v0, p0

    move-wide v7, v8

    move-object/from16 v1, v21

    const/4 v9, 0x1

    goto/16 :goto_0

    .end local v8    # "b0":J
    .end local v21    # "kw":[J
    .restart local v1    # "kw":[J
    .restart local v7    # "b0":J
    :cond_0
    const/16 v22, 0x1

    const/16 v24, 0x3

    .line 532
    .end local v14    # "d":I
    aput-wide v7, p2, v19

    .line 533
    aput-wide v10, p2, v22

    .line 534
    aput-wide v17, p2, v16

    .line 535
    aput-wide v12, p2, v24

    .line 536
    return-void

    .line 444
    .end local v7    # "b0":J
    .end local v10    # "b1":J
    .end local v12    # "b3":J
    .end local v17    # "b2":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 440
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
