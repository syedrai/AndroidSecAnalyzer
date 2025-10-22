.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.source "Rem_GF2n.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM384_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final k364ki:I

.field private final k3_ki:I


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

    .line 260
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    .line 261
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    .line 262
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    .line 263
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    .line 264
    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    .line 265
    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    .line 266
    add-int v0, p4, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    .line 267
    sub-int v0, p1, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    .line 268
    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 20
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

    .line 272
    move-object/from16 v0, p0

    const/4 v1, 0x7

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0x8

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 273
    .local v2, "Q2":J
    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0x9

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    .line 274
    .local v4, "Q3":J
    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xa

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    .line 275
    .local v6, "Q4":J
    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0xb

    aget-wide v10, p3, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v10, v12

    xor-long/2addr v8, v10

    .line 276
    .local v8, "Q5":J
    const/4 v10, 0x5

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v11, v13

    const/4 v13, 0x6

    aget-wide v14, p3, v13

    const/16 v16, 0x7

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long/2addr v11, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v14, v4, v1

    xor-long/2addr v11, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v14, v6, v1

    xor-long/2addr v11, v14

    .line 277
    .local v11, "Q0":J
    aget-wide v13, p3, v13

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v13, v1

    aget-wide v15, p3, v16

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v15, v1

    xor-long/2addr v13, v15

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v15, v6, v1

    xor-long/2addr v13, v15

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v15, v8, v1

    xor-long/2addr v13, v15

    .line 278
    .local v13, "Q1":J
    const/4 v1, 0x0

    aget-wide v15, p3, v1

    xor-long/2addr v15, v11

    aput-wide v15, p1, p2

    .line 279
    add-int/lit8 v1, p2, 0x1

    const/4 v15, 0x1

    aget-wide v15, p3, v15

    xor-long/2addr v15, v13

    const/16 v17, 0x5

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v18, v11, v10

    xor-long v15, v15, v18

    aput-wide v15, p1, v1

    .line 280
    add-int/lit8 v1, p2, 0x2

    const/4 v10, 0x2

    aget-wide v15, p3, v10

    xor-long/2addr v15, v2

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v18, v11, v10

    xor-long v15, v15, v18

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v18, v13, v10

    xor-long v15, v15, v18

    aput-wide v15, p1, v1

    .line 281
    add-int/lit8 v1, p2, 0x3

    const/4 v10, 0x3

    aget-wide v15, p3, v10

    xor-long/2addr v15, v4

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v18, v13, v10

    xor-long v15, v15, v18

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v18, v2, v10

    xor-long v15, v15, v18

    aput-wide v15, p1, v1

    .line 282
    add-int/lit8 v1, p2, 0x4

    const/4 v10, 0x4

    aget-wide v15, p3, v10

    xor-long/2addr v15, v6

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v18, v2, v10

    xor-long v15, v15, v18

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v18, v4, v10

    xor-long v15, v15, v18

    aput-wide v15, p1, v1

    .line 283
    add-int/lit8 v1, p2, 0x5

    aget-wide v15, p3, v17

    xor-long/2addr v15, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v17, v4, v10

    xor-long v15, v15, v17

    move-wide/from16 v17, v2

    move v3, v1

    .end local v2    # "Q2":J
    .local v17, "Q2":J
    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v1, v15

    aput-wide v1, p1, v3

    .line 284
    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
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

    .line 288
    move-object/from16 v0, p0

    const/4 v1, 0x7

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0x8

    aget-wide v5, p3, v4

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 289
    .local v2, "Q2":J
    aget-wide v4, p3, v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0x9

    aget-wide v7, p3, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v7, v9

    xor-long/2addr v4, v7

    .line 290
    .local v4, "Q3":J
    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xa

    aget-wide v9, p3, v8

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v9, v11

    xor-long/2addr v6, v9

    .line 291
    .local v6, "Q4":J
    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0xb

    aget-wide v10, p3, v10

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v10, v12

    xor-long/2addr v8, v10

    .line 292
    .local v8, "Q5":J
    const/4 v10, 0x5

    aget-wide v11, p3, v10

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v11, v13

    const/4 v13, 0x6

    aget-wide v14, p3, v13

    const/16 v16, 0x7

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v14, v1

    xor-long/2addr v11, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v14, v4, v1

    xor-long/2addr v11, v14

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v14, v6, v1

    xor-long/2addr v11, v14

    .line 293
    .local v11, "Q0":J
    aget-wide v13, p3, v13

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v13, v1

    aget-wide v15, p3, v16

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v15, v1

    xor-long/2addr v13, v15

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v15, v6, v1

    xor-long/2addr v13, v15

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v15, v8, v1

    xor-long/2addr v13, v15

    .line 294
    .local v13, "Q1":J
    aget-wide v15, p1, p2

    const/4 v1, 0x0

    aget-wide v17, p3, v1

    xor-long v17, v17, v11

    xor-long v15, v15, v17

    aput-wide v15, p1, p2

    .line 295
    add-int/lit8 v1, p2, 0x1

    aget-wide v15, p1, v1

    const/16 v17, 0x1

    aget-wide v17, p3, v17

    xor-long v17, v17, v13

    const/16 v19, 0x5

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v20, v11, v10

    xor-long v17, v17, v20

    xor-long v15, v15, v17

    aput-wide v15, p1, v1

    .line 296
    add-int/lit8 v1, p2, 0x2

    aget-wide v15, p1, v1

    const/4 v10, 0x2

    aget-wide v17, p3, v10

    xor-long v17, v17, v2

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v20, v11, v10

    xor-long v17, v17, v20

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v20, v13, v10

    xor-long v17, v17, v20

    xor-long v15, v15, v17

    aput-wide v15, p1, v1

    .line 297
    add-int/lit8 v1, p2, 0x3

    aget-wide v15, p1, v1

    const/4 v10, 0x3

    aget-wide v17, p3, v10

    xor-long v17, v17, v4

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v20, v13, v10

    xor-long v17, v17, v20

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v20, v2, v10

    xor-long v17, v17, v20

    xor-long v15, v15, v17

    aput-wide v15, p1, v1

    .line 298
    add-int/lit8 v1, p2, 0x4

    aget-wide v15, p1, v1

    const/4 v10, 0x4

    aget-wide v17, p3, v10

    xor-long v17, v17, v6

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v20, v2, v10

    xor-long v17, v17, v20

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v20, v4, v10

    xor-long v17, v17, v20

    xor-long v15, v15, v17

    aput-wide v15, p1, v1

    .line 299
    add-int/lit8 v1, p2, 0x5

    aget-wide v15, p1, v1

    aget-wide v17, p3, v19

    xor-long v17, v17, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v19, v4, v10

    xor-long v17, v17, v19

    move-wide/from16 v19, v2

    move v3, v1

    .end local v2    # "Q2":J
    .local v19, "Q2":J
    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long v1, v17, v1

    xor-long/2addr v1, v15

    aput-wide v1, p1, v3

    .line 300
    return-void
.end method
