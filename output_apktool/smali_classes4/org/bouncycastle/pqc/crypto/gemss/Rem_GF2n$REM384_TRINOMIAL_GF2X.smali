.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.source "Rem_GF2n.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM384_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final ki_k3:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 1
    .param p1, "k3"    # I
    .param p2, "ki"    # I
    .param p3, "ki64"    # I
    .param p4, "k364"    # I
    .param p5, "mask"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "k3",
            "ki",
            "ki64",
            "k364",
            "mask"
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    .line 368
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    .line 369
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    .line 370
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    .line 371
    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    .line 372
    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->mask:J

    .line 373
    sub-int v0, p2, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    .line 374
    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 22
    .param p1, "P"    # [J
    .param p2, "p_cp"    # I
    .param p3, "Pol"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "p_cp",
            "Pol"
        }
    .end annotation

    .line 378
    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 379
    .local v2, "Q0":J
    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    .line 380
    .local v4, "Q1":J
    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0x8

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    .line 381
    .local v6, "Q2":J
    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x9

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v11, v13

    xor-long/2addr v8, v11

    .line 382
    .local v8, "Q3":J
    aget-wide v10, p3, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xa

    aget-wide v13, p3, v12

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v13, v15

    xor-long/2addr v10, v13

    .line 383
    .local v10, "Q4":J
    aget-wide v12, p3, v12

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v12, v14

    const/16 v14, 0xb

    aget-wide v14, p3, v14

    const/16 v16, 0x5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long/2addr v12, v14

    .line 384
    .local v12, "Q5":J
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v14, v12, v1

    xor-long/2addr v14, v2

    .line 385
    .local v14, "R":J
    const/4 v1, 0x0

    aget-wide v17, p3, v1

    xor-long v17, v17, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v19, v14, v1

    xor-long v17, v17, v19

    aput-wide v17, p1, p2

    .line 386
    add-int/lit8 v1, p2, 0x1

    const/16 v17, 0x1

    aget-wide v17, p3, v17

    xor-long v17, v17, v4

    move/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v20, v2, v1

    xor-long v17, v17, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v20, v4, v1

    xor-long v17, v17, v20

    aput-wide v17, p1, v19

    .line 387
    add-int/lit8 v1, p2, 0x2

    const/16 v17, 0x2

    aget-wide v17, p3, v17

    xor-long v17, v17, v6

    move/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v20, v4, v1

    xor-long v17, v17, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v20, v6, v1

    xor-long v17, v17, v20

    aput-wide v17, p1, v19

    .line 388
    add-int/lit8 v1, p2, 0x3

    const/16 v17, 0x3

    aget-wide v17, p3, v17

    xor-long v17, v17, v8

    move/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v20, v6, v1

    xor-long v17, v17, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v20, v8, v1

    xor-long v17, v17, v20

    aput-wide v17, p1, v19

    .line 389
    add-int/lit8 v1, p2, 0x4

    const/16 v17, 0x4

    aget-wide v17, p3, v17

    xor-long v17, v17, v10

    move/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v20, v8, v1

    xor-long v17, v17, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v20, v10, v1

    xor-long v17, v17, v20

    aput-wide v17, p1, v19

    .line 390
    add-int/lit8 v1, p2, 0x5

    aget-wide v16, p3, v16

    xor-long v16, v16, v12

    move/from16 v18, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v19, v10, v1

    xor-long v16, v16, v19

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v19, v12, v1

    xor-long v16, v16, v19

    move-wide/from16 v19, v2

    .end local v2    # "Q0":J
    .local v19, "Q0":J
    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->mask:J

    and-long v1, v16, v1

    aput-wide v1, p1, v18

    .line 391
    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 24
    .param p1, "P"    # [J
    .param p2, "p_cp"    # I
    .param p3, "Pol"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "p_cp",
            "Pol"
        }
    .end annotation

    .line 395
    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 396
    .local v2, "Q0":J
    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    .line 397
    .local v4, "Q1":J
    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0x8

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    .line 398
    .local v6, "Q2":J
    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x9

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v11, v13

    xor-long/2addr v8, v11

    .line 399
    .local v8, "Q3":J
    aget-wide v10, p3, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xa

    aget-wide v13, p3, v12

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v13, v15

    xor-long/2addr v10, v13

    .line 400
    .local v10, "Q4":J
    aget-wide v12, p3, v12

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v12, v14

    const/16 v14, 0xb

    aget-wide v14, p3, v14

    const/16 v16, 0x5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long/2addr v12, v14

    .line 401
    .local v12, "Q5":J
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v14, v12, v1

    xor-long/2addr v14, v2

    .line 402
    .local v14, "R":J
    aget-wide v17, p1, p2

    const/4 v1, 0x0

    aget-wide v19, p3, v1

    xor-long v19, v19, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v21, v14, v1

    xor-long v19, v19, v21

    xor-long v17, v17, v19

    aput-wide v17, p1, p2

    .line 403
    add-int/lit8 v1, p2, 0x1

    aget-wide v17, p1, v1

    const/16 v19, 0x1

    aget-wide v19, p3, v19

    xor-long v19, v19, v4

    move/from16 v21, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v22, v2, v1

    xor-long v19, v19, v22

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v4, v1

    xor-long v19, v19, v22

    xor-long v17, v17, v19

    aput-wide v17, p1, v21

    .line 404
    add-int/lit8 v1, p2, 0x2

    aget-wide v17, p1, v1

    const/16 v19, 0x2

    aget-wide v19, p3, v19

    xor-long v19, v19, v6

    move/from16 v21, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v22, v4, v1

    xor-long v19, v19, v22

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v6, v1

    xor-long v19, v19, v22

    xor-long v17, v17, v19

    aput-wide v17, p1, v21

    .line 405
    add-int/lit8 v1, p2, 0x3

    aget-wide v17, p1, v1

    const/16 v19, 0x3

    aget-wide v19, p3, v19

    xor-long v19, v19, v8

    move/from16 v21, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v22, v6, v1

    xor-long v19, v19, v22

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v8, v1

    xor-long v19, v19, v22

    xor-long v17, v17, v19

    aput-wide v17, p1, v21

    .line 406
    add-int/lit8 v1, p2, 0x4

    aget-wide v17, p1, v1

    const/16 v19, 0x4

    aget-wide v19, p3, v19

    xor-long v19, v19, v10

    move/from16 v21, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v22, v8, v1

    xor-long v19, v19, v22

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v10, v1

    xor-long v19, v19, v22

    xor-long v17, v17, v19

    aput-wide v17, p1, v21

    .line 407
    add-int/lit8 v1, p2, 0x5

    aget-wide v17, p1, v1

    aget-wide v19, p3, v16

    xor-long v19, v19, v12

    move/from16 v16, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v21, v10, v1

    xor-long v19, v19, v21

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v21, v12, v1

    xor-long v19, v19, v21

    move-wide/from16 v21, v2

    .end local v2    # "Q0":J
    .local v21, "Q0":J
    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->mask:J

    and-long v1, v19, v1

    xor-long v1, v17, v1

    aput-wide v1, p1, v16

    .line 408
    return-void
.end method
