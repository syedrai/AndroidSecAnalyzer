.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.source "Rem_GF2n.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM402_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 0
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

    .line 419
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    .line 420
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    .line 421
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    .line 422
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    .line 423
    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    .line 424
    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    .line 425
    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
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

    .line 429
    move-object/from16 v0, p0

    const/16 v1, 0x9

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xa

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 430
    .local v2, "Q3":J
    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    .line 431
    .local v4, "Q4":J
    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xc

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    .line 432
    .local v6, "Q5":J
    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    .line 433
    .local v8, "Q6":J
    const/16 v10, 0x27

    ushr-long v11, v2, v10

    const/16 v13, 0x19

    shl-long v14, v4, v13

    xor-long/2addr v11, v14

    const/4 v14, 0x6

    aget-wide v15, p3, v14

    const/16 v17, 0x9

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v15, v1

    xor-long/2addr v11, v15

    const/4 v1, 0x7

    aget-wide v15, p3, v1

    const/16 v18, 0x7

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v15, v1

    xor-long/2addr v11, v15

    .line 434
    .local v11, "Q0":J
    ushr-long v15, v4, v10

    shl-long v19, v6, v13

    xor-long v15, v15, v19

    aget-wide v18, p3, v18

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long v18, v18, v1

    xor-long v15, v15, v18

    const/16 v1, 0x8

    aget-wide v18, p3, v1

    const/16 v20, 0x8

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long v18, v18, v1

    xor-long v15, v15, v18

    .line 435
    .local v15, "Q1":J
    ushr-long v18, v6, v10

    shl-long v21, v8, v13

    xor-long v18, v18, v21

    aget-wide v20, p3, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long v20, v20, v1

    xor-long v18, v18, v20

    aget-wide v20, p3, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long v20, v20, v1

    xor-long v18, v18, v20

    .line 436
    .local v18, "Q2":J
    const/4 v1, 0x0

    aget-wide v20, p3, v1

    xor-long v20, v20, v11

    aput-wide v20, p1, p2

    .line 437
    add-int/lit8 v1, p2, 0x1

    const/4 v10, 0x1

    aget-wide v20, p3, v10

    xor-long v20, v20, v15

    aput-wide v20, p1, v1

    .line 438
    add-int/lit8 v1, p2, 0x2

    const/4 v10, 0x2

    aget-wide v20, p3, v10

    xor-long v20, v20, v18

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v11, v10

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    .line 439
    add-int/lit8 v1, p2, 0x3

    const/4 v10, 0x3

    aget-wide v20, p3, v10

    xor-long v20, v20, v2

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v22, v11, v10

    xor-long v20, v20, v22

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v15, v10

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    .line 440
    add-int/lit8 v1, p2, 0x4

    const/4 v10, 0x4

    aget-wide v20, p3, v10

    xor-long v20, v20, v4

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v22, v15, v10

    xor-long v20, v20, v22

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v18, v10

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    .line 441
    add-int/lit8 v1, p2, 0x5

    const/4 v10, 0x5

    aget-wide v20, p3, v10

    xor-long v20, v20, v6

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v22, v18, v10

    xor-long v20, v20, v22

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v2, v10

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    .line 442
    add-int/lit8 v1, p2, 0x6

    aget-wide v13, p3, v14

    xor-long/2addr v13, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v20, v2, v10

    xor-long v13, v13, v20

    move-wide/from16 v20, v2

    move v3, v1

    .end local v2    # "Q3":J
    .local v20, "Q3":J
    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v1, v13

    aput-wide v1, p1, v3

    .line 443
    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 26
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

    .line 447
    move-object/from16 v0, p0

    const/16 v1, 0x9

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xa

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 448
    .local v2, "Q3":J
    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    .line 449
    .local v4, "Q4":J
    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xc

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    .line 450
    .local v6, "Q5":J
    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    .line 451
    .local v8, "Q6":J
    const/16 v10, 0x27

    ushr-long v11, v2, v10

    const/16 v13, 0x19

    shl-long v14, v4, v13

    xor-long/2addr v11, v14

    const/4 v14, 0x6

    aget-wide v15, p3, v14

    const/16 v17, 0x9

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v15, v1

    xor-long/2addr v11, v15

    const/4 v1, 0x7

    aget-wide v15, p3, v1

    const/16 v18, 0x7

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v15, v1

    xor-long/2addr v11, v15

    .line 452
    .local v11, "Q0":J
    ushr-long v15, v4, v10

    shl-long v19, v6, v13

    xor-long v15, v15, v19

    aget-wide v18, p3, v18

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long v18, v18, v1

    xor-long v15, v15, v18

    const/16 v1, 0x8

    aget-wide v18, p3, v1

    const/16 v20, 0x8

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long v18, v18, v1

    xor-long v15, v15, v18

    .line 453
    .local v15, "Q1":J
    ushr-long v18, v6, v10

    shl-long v21, v8, v13

    xor-long v18, v18, v21

    aget-wide v20, p3, v20

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long v20, v20, v1

    xor-long v18, v18, v20

    aget-wide v20, p3, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long v20, v20, v1

    xor-long v18, v18, v20

    .line 454
    .local v18, "Q2":J
    aget-wide v20, p1, p2

    const/4 v1, 0x0

    aget-wide v22, p3, v1

    xor-long v22, v22, v11

    xor-long v20, v20, v22

    aput-wide v20, p1, p2

    .line 455
    add-int/lit8 v1, p2, 0x1

    aget-wide v20, p1, v1

    const/4 v10, 0x1

    aget-wide v22, p3, v10

    xor-long v22, v22, v15

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    .line 456
    add-int/lit8 v1, p2, 0x2

    aget-wide v20, p1, v1

    const/4 v10, 0x2

    aget-wide v22, p3, v10

    xor-long v22, v22, v18

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v24, v11, v10

    xor-long v22, v22, v24

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    .line 457
    add-int/lit8 v1, p2, 0x3

    aget-wide v20, p1, v1

    const/4 v10, 0x3

    aget-wide v22, p3, v10

    xor-long v22, v22, v2

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v24, v11, v10

    xor-long v22, v22, v24

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v24, v15, v10

    xor-long v22, v22, v24

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    .line 458
    add-int/lit8 v1, p2, 0x4

    aget-wide v20, p1, v1

    const/4 v10, 0x4

    aget-wide v22, p3, v10

    xor-long v22, v22, v4

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v24, v15, v10

    xor-long v22, v22, v24

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v24, v18, v10

    xor-long v22, v22, v24

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    .line 459
    add-int/lit8 v1, p2, 0x5

    aget-wide v20, p1, v1

    const/4 v10, 0x5

    aget-wide v22, p3, v10

    xor-long v22, v22, v6

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v24, v18, v10

    xor-long v22, v22, v24

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v24, v2, v10

    xor-long v22, v22, v24

    xor-long v20, v20, v22

    aput-wide v20, p1, v1

    .line 460
    add-int/lit8 v1, p2, 0x6

    aget-wide v20, p1, v1

    aget-wide v13, p3, v14

    xor-long/2addr v13, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v22, v2, v10

    xor-long v13, v13, v22

    move-wide/from16 v22, v2

    move v3, v1

    .end local v2    # "Q3":J
    .local v22, "Q3":J
    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v1, v13

    xor-long v1, v20, v1

    aput-wide v1, p1, v3

    .line 461
    return-void
.end method
