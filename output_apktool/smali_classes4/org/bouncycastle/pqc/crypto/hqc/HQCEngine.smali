.class Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;
.super Ljava/lang/Object;
.source "HQCEngine.java"


# instance fields
.field private GF_POLY_M2:I

.field private GF_POLY_WT:I

.field private G_FCT_DOMAIN:B

.field private H_FCT_DOMAIN:B

.field private K_BYTE:I

.field private K_BYTE_64:I

.field private K_FCT_DOMAIN:B

.field private N1N2_BYTE:I

.field private N1N2_BYTE_64:I

.field private N1_BYTE:I

.field private N1_BYTE_64:I

.field private N_BYTE:I

.field private N_BYTE_64:I

.field private RED_MASK:J

.field private SALT_SIZE_64:I

.field private SALT_SIZE_BYTES:I

.field private SEED_SIZE:I

.field private SHA512_BYTES:I

.field private delta:I

.field private fft:I

.field private g:I

.field private generatorPoly:[I

.field private gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

.field private k:I

.field private mulParam:I

.field private n:I

.field private n1:I

.field private n1n2:I

.field private n2:I

.field private rejectionThreshold:I

.field private w:I

.field private we:I

.field private wr:I


# direct methods
.method public constructor <init>(IIIIIIIIIII[I)V
    .locals 17
    .param p1, "n"    # I
    .param p2, "n1"    # I
    .param p3, "n2"    # I
    .param p4, "k"    # I
    .param p5, "g"    # I
    .param p6, "delta"    # I
    .param p7, "w"    # I
    .param p8, "wr"    # I
    .param p9, "we"    # I
    .param p10, "rejectionThreshold"    # I
    .param p11, "fft"    # I
    .param p12, "generatorPoly"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "n1",
            "n2",
            "k",
            "g",
            "delta",
            "w",
            "wr",
            "we",
            "rejectionThreshold",
            "fft",
            "generatorPoly"
        }
    .end annotation

    .line 49
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v5, 0x28

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    .line 22
    const/4 v5, 0x3

    iput-byte v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->G_FCT_DOMAIN:B

    .line 23
    const/4 v5, 0x4

    iput-byte v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->H_FCT_DOMAIN:B

    .line 24
    const/4 v6, 0x5

    iput-byte v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_FCT_DOMAIN:B

    .line 36
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->GF_POLY_WT:I

    .line 37
    iput v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->GF_POLY_M2:I

    .line 38
    const/16 v5, 0x10

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    .line 39
    const/4 v5, 0x2

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_64:I

    .line 42
    const/16 v5, 0x40

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    .line 50
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    .line 51
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    .line 52
    move/from16 v5, p6

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->delta:I

    .line 53
    move/from16 v6, p7

    iput v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    .line 54
    move/from16 v7, p8

    iput v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    .line 55
    move/from16 v8, p9

    iput v8, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->we:I

    .line 56
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    .line 57
    iput v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n2:I

    .line 58
    mul-int v9, v2, v3

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    .line 59
    move-object/from16 v9, p12

    iput-object v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatorPoly:[I

    .line 60
    move/from16 v10, p5

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    .line 61
    move/from16 v11, p10

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->rejectionThreshold:I

    .line 62
    move/from16 v12, p11

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->fft:I

    .line 64
    div-int/lit16 v13, v3, 0x80

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    .line 65
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v13

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    .line 66
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    .line 67
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByte64SizeFromBitSize(I)I

    move-result v13

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    .line 68
    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v13

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE_64:I

    .line 69
    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v13

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1_BYTE_64:I

    .line 70
    mul-int v13, v2, v3

    invoke-static {v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByte64SizeFromBitSize(I)I

    move-result v13

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    .line 71
    mul-int v13, v2, v3

    invoke-static {v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v13

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    .line 72
    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v13

    iput v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1_BYTE:I

    .line 74
    int-to-long v13, v1

    const-wide/16 v15, 0x40

    rem-long/2addr v13, v15

    long-to-int v14, v13

    const-wide/16 v15, 0x1

    shl-long v13, v15, v14

    sub-long/2addr v13, v15

    iput-wide v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->RED_MASK:J

    .line 76
    new-instance v13, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    iget-wide v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->RED_MASK:J

    invoke-direct {v13, v14, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;-><init>(IIJ)V

    iput-object v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    .line 77
    return-void
.end method

.method private decrypt([B[B[B[B[J)V
    .locals 18
    .param p1, "output"    # [B
    .param p2, "m"    # [B
    .param p3, "u"    # [B
    .param p4, "v"    # [B
    .param p5, "y"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "m",
            "u",
            "v",
            "y"
        }
    .end annotation

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v2, v2, [J

    .line 333
    .local v2, "uLongs":[J
    move-object/from16 v3, p3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    .line 335
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v4, v4, [J

    .line 336
    .local v4, "vLongs":[J
    move-object/from16 v5, p4

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    .line 338
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v6, v6, [J

    .line 339
    .local v6, "tmpV":[J
    array-length v7, v4

    const/4 v8, 0x0

    invoke-static {v4, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v7, v7, [J

    .line 342
    .local v7, "tmpLong":[J
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    move-object/from16 v10, p5

    invoke-virtual {v9, v7, v10, v2}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->multLongs([J[J[J)V

    .line 343
    invoke-static {v7, v7, v6}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    .line 346
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    new-array v12, v9, [B

    .line 347
    .local v12, "tmp":[B
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {v12, v7, v9, v11}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->decode([B[JII)V

    .line 348
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->fft:I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->delta:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    move/from16 v16, v9

    move/from16 v17, v11

    move-object/from16 v11, p2

    invoke-static/range {v11 .. v17}, Lorg/bouncycastle/pqc/crypto/hqc/ReedSolomon;->decode([B[BIIIII)V

    .line 350
    array-length v9, v1

    invoke-static {v11, v8, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    return-void
.end method

.method private encrypt([B[J[J[B[B[B)V
    .locals 24
    .param p1, "u"    # [B
    .param p2, "v"    # [J
    .param p3, "h"    # [J
    .param p4, "s"    # [B
    .param p5, "m"    # [B
    .param p6, "theta"    # [B
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
            "u",
            "v",
            "h",
            "s",
            "m",
            "theta"
        }
    .end annotation

    .line 294
    move-object/from16 v0, p0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    .line 295
    .local v1, "randomGenerator":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    move-object/from16 v3, p6

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    .line 296
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v2, v2, [J

    .line 297
    .local v2, "e":[J
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v4, v4, [J

    .line 298
    .local v4, "r1":[J
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v5, v5, [J

    .line 299
    .local v5, "r2":[J
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    invoke-direct {v0, v4, v1, v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    .line 300
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    invoke-direct {v0, v5, v1, v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    .line 301
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->we:I

    invoke-direct {v0, v2, v1, v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    .line 304
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v6, v6, [J

    .line 305
    .local v6, "uLong":[J
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    move-object/from16 v8, p3

    invoke-virtual {v7, v6, v5, v8}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->multLongs([J[J[J)V

    .line 306
    invoke-static {v6, v6, v4}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    .line 307
    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    .line 311
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    new-array v10, v9, [B

    .line 312
    .local v10, "res":[B
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v9, v9, [J

    .line 313
    .local v9, "vLong":[J
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v11, v11, [J

    .line 314
    .local v11, "tmpVLong":[J
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    mul-int/lit8 v12, v12, 0x8

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    move-object/from16 v17, v1

    .end local v1    # "randomGenerator":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    .local v17, "randomGenerator":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatorPoly:[I

    move-object/from16 v16, v1

    move-object v1, v11

    move-object/from16 v11, p5

    .end local v11    # "tmpVLong":[J
    .local v1, "tmpVLong":[J
    invoke-static/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/hqc/ReedSolomon;->encode([B[BIIII[I)V

    .line 315
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {v9, v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->encode([J[BII)V

    .line 316
    const/4 v11, 0x0

    array-length v12, v9

    invoke-static {v9, v11, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v11, v11, [J

    .line 320
    .local v11, "sLong":[J
    move-object/from16 v12, p4

    invoke-static {v11, v12}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    .line 322
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v13, v13, [J

    .line 323
    .local v13, "tmpLong":[J
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {v14, v13, v5, v11}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->multLongs([J[J[J)V

    .line 324
    invoke-static {v13, v13, v1}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    .line 325
    invoke-static {v13, v13, v2}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    .line 327
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    move-object/from16 v16, v1

    .end local v1    # "tmpVLong":[J
    .local v16, "tmpVLong":[J
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    move/from16 v22, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    move-object/from16 v18, p2

    move/from16 v23, v1

    move-object/from16 v20, v13

    move/from16 v19, v14

    move/from16 v21, v15

    .end local v13    # "tmpLong":[J
    .local v20, "tmpLong":[J
    invoke-static/range {v18 .. v23}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->resizeArray([JI[JIII)V

    .line 328
    return-void
.end method

.method private extractCiphertexts([B[B[B[B[B)V
    .locals 3
    .param p1, "u"    # [B
    .param p2, "v"    # [B
    .param p3, "d"    # [B
    .param p4, "salt"    # [B
    .param p5, "ct"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "d",
            "salt",
            "ct"
        }
    .end annotation

    .line 447
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p5, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    array-length v0, p1

    array-length v2, p2

    invoke-static {p5, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    array-length v2, p3

    invoke-static {p5, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    array-length v2, p3

    add-int/2addr v0, v2

    array-length v2, p4

    invoke-static {p5, v0, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    return-void
.end method

.method private extractKeysFromSecretKeys([J[J[B[B)V
    .locals 5
    .param p1, "x"    # [J
    .param p2, "y"    # [J
    .param p3, "pk"    # [B
    .param p4, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "pk",
            "sk"
        }
    .end annotation

    .line 432
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v0, v0, [B

    .line 433
    .local v0, "secretKeySeed":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    .line 437
    .local v1, "secretKeySeedExpander":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    array-length v3, v0

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    .line 439
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {p0, p1, v1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    .line 440
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {p0, p2, v1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    .line 442
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    array-length v4, p3

    invoke-static {p4, v3, p3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    return-void
.end method

.method private extractPublicKeys([J[B[B)V
    .locals 6
    .param p1, "h"    # [J
    .param p2, "s"    # [B
    .param p3, "pk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "h",
            "s",
            "pk"
        }
    .end annotation

    .line 417
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v0, v0, [B

    .line 418
    .local v0, "publicKeySeed":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    .line 421
    .local v1, "randomPublic":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    array-length v3, v0

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    .line 423
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v3, v3, [J

    .line 424
    .local v3, "hLongBytes":[J
    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatePublicKeyH([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;)V

    .line 426
    array-length v4, p1

    invoke-static {v3, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    const/16 v4, 0x28

    array-length v5, p2

    invoke-static {p3, v4, p2, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    return-void
.end method

.method private generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V
    .locals 18
    .param p1, "output"    # [J
    .param p2, "random"    # Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    .param p3, "weight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "random",
            "weight"
        }
    .end annotation

    .line 355
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v2, v2, [I

    .line 356
    .local v2, "rand_u32":[I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    .line 357
    .local v3, "rand_bytes":[B
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v4, v4, [I

    .line 358
    .local v4, "support":[I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v5, v5, [I

    .line 359
    .local v5, "index_tab":[I
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v6, v6, [J

    .line 361
    .local v6, "bit_tab":[J
    mul-int/lit8 v7, v1, 0x4

    move-object/from16 v8, p2

    invoke-virtual {v8, v3, v7}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->expandSeed([BI)V

    .line 362
    const/4 v7, 0x0

    array-length v9, v2

    invoke-static {v3, v7, v2, v7, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 364
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 366
    int-to-long v9, v7

    aget v11, v2, v7

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    sub-int/2addr v13, v7

    int-to-long v13, v13

    rem-long/2addr v11, v13

    add-long/2addr v9, v11

    long-to-int v10, v9

    aput v10, v4, v7

    .line 364
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 369
    .end local v7    # "i":I
    :cond_0
    add-int/lit8 v7, v1, -0x1

    .restart local v7    # "i":I
    :goto_1
    if-ltz v7, :cond_3

    .line 371
    const/4 v9, 0x0

    .line 372
    .local v9, "found":I
    add-int/lit8 v10, v7, 0x1

    .local v10, "j":I
    :goto_2
    if-ge v10, v1, :cond_2

    .line 374
    aget v11, v4, v10

    aget v12, v4, v7

    if-ne v11, v12, :cond_1

    .line 376
    or-int/lit8 v9, v9, 0x1

    .line 372
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 380
    .end local v10    # "j":I
    :cond_2
    neg-int v10, v9

    .line 381
    .local v10, "mask":I
    and-int v11, v10, v7

    not-int v12, v10

    aget v13, v4, v7

    and-int/2addr v12, v13

    xor-int/2addr v11, v12

    aput v11, v4, v7

    .line 369
    .end local v9    # "found":I
    .end local v10    # "mask":I
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 384
    .end local v7    # "i":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v1, :cond_4

    .line 386
    aget v9, v4, v7

    ushr-int/lit8 v9, v9, 0x6

    aput v9, v5, v7

    .line 387
    aget v9, v4, v7

    and-int/lit8 v9, v9, 0x3f

    .line 388
    .local v9, "pos":I
    const-wide/16 v10, 0x1

    shl-long/2addr v10, v9

    aput-wide v10, v6, v7

    .line 384
    .end local v9    # "pos":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 390
    .end local v7    # "i":I
    :cond_4
    const-wide/16 v9, 0x0

    .line 391
    .local v9, "val":J
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    if-ge v7, v11, :cond_6

    .line 393
    const-wide/16 v9, 0x0

    .line 394
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5
    if-ge v11, v1, :cond_5

    .line 396
    aget v12, v5, v11

    sub-int v12, v7, v12

    .line 397
    .local v12, "tmp":I
    neg-int v13, v12

    or-int/2addr v13, v12

    ushr-int/lit8 v13, v13, 0x1f

    xor-int/lit8 v13, v13, 0x1

    .line 398
    .local v13, "val1":I
    neg-int v14, v13

    int-to-long v14, v14

    .line 399
    .local v14, "mask":J
    aget-wide v16, v6, v11

    and-long v16, v16, v14

    or-long v9, v9, v16

    .line 394
    .end local v12    # "tmp":I
    .end local v13    # "val1":I
    .end local v14    # "mask":J
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 401
    .end local v11    # "j":I
    :cond_5
    aget-wide v11, p1, v7

    or-long/2addr v11, v9

    aput-wide v11, p1, v7

    .line 391
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 403
    .end local v7    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public decaps([B[B[B)V
    .locals 26
    .param p1, "ss"    # [B
    .param p2, "ct"    # [B
    .param p3, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ss",
            "ct",
            "sk"
        }
    .end annotation

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v8, v1, [J

    .line 202
    .local v8, "x":[J
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v6, v1, [J

    .line 203
    .local v6, "y":[J
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    add-int/lit8 v1, v1, 0x28

    new-array v9, v1, [B

    .line 204
    .local v9, "pk":[B
    move-object/from16 v10, p3

    invoke-direct {v0, v8, v6, v9, v10}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractKeysFromSecretKeys([J[J[B[B)V

    .line 207
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v1, v1, [B

    .line 208
    .local v1, "u":[B
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    new-array v2, v2, [B

    .line 209
    .local v2, "v":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v3, v3, [B

    .line 210
    .local v3, "d":[B
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    new-array v4, v4, [B

    .line 211
    .local v4, "salt":[B
    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractCiphertexts([B[B[B[B[B)V

    .line 214
    move-object v11, v3

    move-object v12, v4

    .end local v3    # "d":[B
    .end local v4    # "salt":[B
    .local v11, "d":[B
    .local v12, "salt":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    new-array v5, v3, [B

    .line 215
    .local v5, "mPrimeBytes":[B
    move-object v4, v2

    .end local v2    # "v":[B
    .local v4, "v":[B
    move-object v2, v5

    move-object v3, v1

    move-object v1, v5

    move-object v5, v6

    .end local v6    # "y":[J
    .local v1, "mPrimeBytes":[B
    .local v3, "u":[B
    .local v5, "y":[J
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->decrypt([B[B[B[B[J)V

    .line 218
    move-object v14, v3

    move-object v15, v4

    move-object v13, v5

    .end local v3    # "u":[B
    .end local v4    # "v":[B
    .end local v5    # "y":[J
    .local v13, "y":[J
    .local v14, "u":[B
    .local v15, "v":[B
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v6, v2, [B

    .line 219
    .local v6, "theta":[B
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 220
    .local v2, "tmp":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    invoke-static {v9, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    add-int/2addr v3, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    invoke-static {v12, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    new-instance v3, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v5, 0x100

    invoke-direct {v3, v5}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    .line 225
    .local v3, "shakeDigest":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    array-length v5, v2

    const/16 v16, 0x0

    iget-byte v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->G_FCT_DOMAIN:B

    move-object/from16 v17, v8

    .end local v8    # "x":[J
    .local v17, "x":[J
    const/4 v8, 0x1

    move-object/from16 v18, v1

    .end local v1    # "mPrimeBytes":[B
    .local v18, "mPrimeBytes":[B
    new-array v1, v8, [B

    aput-byte v4, v1, v16

    invoke-virtual {v3, v6, v2, v5, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    .line 229
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v1, v1, [J

    .line 230
    .local v1, "h":[J
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v4, v4, [B

    .line 231
    .local v4, "s":[B
    invoke-direct {v0, v1, v4, v9}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractPublicKeys([J[B[B)V

    .line 233
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v5, v5, [B

    .line 234
    .local v5, "u2Bytes":[B
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    new-array v8, v8, [B

    .line 235
    .local v8, "v2Bytes":[B
    move-object/from16 v19, v1

    .end local v1    # "h":[J
    .local v19, "h":[J
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v1, v1, [J

    .line 236
    .local v1, "vTmp":[J
    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v9

    move-object v9, v3

    move-object/from16 v3, v19

    const/16 v19, 0x0

    .end local v19    # "h":[J
    .local v1, "u2Bytes":[B
    .local v2, "vTmp":[J
    .local v3, "h":[J
    .local v5, "mPrimeBytes":[B
    .local v9, "shakeDigest":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    .local v16, "tmp":[B
    .local v18, "pk":[B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->encrypt([B[J[J[B[B[B)V

    .line 237
    move-object/from16 v25, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v5, v25

    .local v1, "mPrimeBytes":[B
    .local v2, "u2Bytes":[B
    .local v5, "vTmp":[J
    invoke-static {v8, v5}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    .line 240
    move-object/from16 v20, v3

    .end local v3    # "h":[J
    .local v20, "h":[J
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v3, v3, [B

    .line 241
    .local v3, "dPrime":[B
    move-object/from16 v21, v4

    .end local v4    # "s":[B
    .local v21, "s":[B
    array-length v4, v1

    move-object/from16 v22, v5

    .end local v5    # "vTmp":[J
    .local v22, "vTmp":[J
    iget-byte v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->H_FCT_DOMAIN:B

    move/from16 v23, v5

    move-object/from16 v24, v6

    const/4 v5, 0x1

    .end local v6    # "theta":[B
    .local v24, "theta":[B
    new-array v6, v5, [B

    aput-byte v23, v6, v19

    invoke-virtual {v9, v3, v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    .line 244
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    add-int/2addr v4, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 245
    .local v4, "hashInputK":[B
    invoke-static {v1, v14}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    .line 246
    invoke-static {v4, v15}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    .line 247
    array-length v5, v4

    iget-byte v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_FCT_DOMAIN:B

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v6, v0, v19

    invoke-virtual {v9, v7, v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    .line 249
    const/4 v0, 0x1

    .line 251
    .local v0, "result":I
    invoke-static {v14, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 256
    :cond_0
    invoke-static {v15, v8}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 258
    const/4 v0, 0x0

    .line 261
    :cond_1
    invoke-static {v11, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 263
    const/4 v0, 0x0

    .line 266
    :cond_2
    if-nez v0, :cond_3

    .line 268
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->getSessionKeySize()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 270
    aput-byte v19, v7, v5

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 273
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method public encaps([B[B[B[B[B[B[B)V
    .locals 20
    .param p1, "u"    # [B
    .param p2, "v"    # [B
    .param p3, "K"    # [B
    .param p4, "d"    # [B
    .param p5, "pk"    # [B
    .param p6, "seed"    # [B
    .param p7, "salt"    # [B
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
            "u",
            "v",
            "K",
            "d",
            "pk",
            "seed",
            "salt"
        }
    .end annotation

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    new-array v5, v1, [B

    .line 146
    .local v5, "m":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v11, v1, [B

    .line 147
    .local v11, "secretKeySeed":[B
    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    move-object v12, v1

    .line 148
    .local v12, "randomGenerator":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    array-length v1, v9

    const/4 v3, 0x0

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v3, v1, v13}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->randomGeneratorInit([B[BII)V

    .line 149
    const/16 v1, 0x28

    invoke-virtual {v12, v11, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    .line 151
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v14, v3, [B

    .line 152
    .local v14, "publicKeySeed":[B
    invoke-virtual {v12, v14, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    .line 155
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    invoke-virtual {v12, v5, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    .line 158
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v6, v1, [B

    .line 159
    .local v6, "theta":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    add-int/2addr v1, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    add-int/2addr v1, v3

    new-array v15, v1, [B

    .line 160
    .local v15, "tmp":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    invoke-virtual {v12, v10, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    .line 162
    array-length v1, v5

    invoke-static {v5, v13, v15, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    invoke-static {v8, v13, v15, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    add-int/2addr v1, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    invoke-static {v10, v13, v15, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    .line 166
    .local v1, "shakeDigest":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    array-length v2, v15

    iget-byte v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->G_FCT_DOMAIN:B

    const/4 v4, 0x1

    const/16 v16, 0x0

    new-array v13, v4, [B

    aput-byte v3, v13, v16

    invoke-virtual {v1, v6, v15, v2, v13}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    .line 170
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v3, v2, [J

    .line 171
    .local v3, "h":[J
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v2, v2, [B

    .line 172
    .local v2, "s":[B
    invoke-direct {v0, v3, v2, v8}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractPublicKeys([J[B[B)V

    .line 174
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v13, v13, [J

    .line 175
    .local v13, "vTmp":[J
    move-object v4, v2

    move-object v2, v13

    const/4 v8, 0x1

    move-object v13, v1

    move-object/from16 v1, p1

    .end local v1    # "shakeDigest":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    .local v2, "vTmp":[J
    .local v4, "s":[B
    .local v13, "shakeDigest":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->encrypt([B[J[J[B[B[B)V

    .line 177
    invoke-static {v7, v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    .line 180
    array-length v1, v5

    move-object/from16 v17, v2

    .end local v2    # "vTmp":[J
    .local v17, "vTmp":[J
    iget-byte v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->H_FCT_DOMAIN:B

    move/from16 v18, v2

    new-array v2, v8, [B

    aput-byte v18, v2, v16

    move-object/from16 v8, p4

    invoke-virtual {v13, v8, v5, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    .line 183
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 184
    .local v1, "hashInputK":[B
    move-object/from16 v2, p1

    invoke-static {v5, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 185
    invoke-static {v1, v7}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 186
    array-length v2, v1

    move-object/from16 v19, v3

    .end local v3    # "h":[J
    .local v19, "h":[J
    iget-byte v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_FCT_DOMAIN:B

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v3, v0, v16

    move-object/from16 v3, p3

    invoke-virtual {v13, v3, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    .line 187
    return-void
.end method

.method public genKeyPair([B[B[B)V
    .locals 16
    .param p1, "pk"    # [B
    .param p2, "sk"    # [B
    .param p3, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "sk",
            "seed"
        }
    .end annotation

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v2, v2, [B

    .line 91
    .local v2, "secretKeySeed":[B
    new-instance v3, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    .line 92
    .local v3, "randomGenerator":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v6, v5, v7}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->randomGeneratorInit([B[BII)V

    .line 93
    const/16 v5, 0x28

    invoke-virtual {v3, v2, v5}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    .line 96
    new-instance v6, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    invoke-direct {v6, v4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    .line 97
    .local v6, "secretKeySeedExpander":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    array-length v8, v2

    invoke-virtual {v6, v2, v8}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    .line 99
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v8, v8, [J

    .line 100
    .local v8, "xLongBytes":[J
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v9, v9, [J

    .line 102
    .local v9, "yLongBytes":[J
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {v0, v8, v6, v10}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    .line 103
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {v0, v9, v6, v10}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    .line 106
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v10, v10, [B

    .line 107
    .local v10, "publicKeySeed":[B
    invoke-virtual {v3, v10, v5}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    .line 109
    new-instance v5, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    invoke-direct {v5, v4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    .line 110
    .local v5, "randomPublic":Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    array-length v4, v10

    invoke-virtual {v5, v10, v4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    .line 112
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v4, v4, [J

    .line 113
    .local v4, "hLongBytes":[J
    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatePublicKeyH([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;)V

    .line 116
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v11, v11, [J

    .line 117
    .local v11, "s":[J
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {v12, v11, v9, v4}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->multLongs([J[J[J)V

    .line 118
    invoke-static {v11, v11, v8}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    .line 119
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v12, v12, [B

    .line 120
    .local v12, "sBytes":[B
    invoke-static {v12, v11}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    .line 122
    invoke-static {v10, v12}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v13

    .line 123
    .local v13, "tmpPk":[B
    invoke-static {v2, v13}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v14

    .line 125
    .local v14, "tmpSk":[B
    array-length v15, v13

    move-object/from16 v0, p1

    invoke-static {v13, v7, v0, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v15, v14

    move-object/from16 v0, p2

    invoke-static {v14, v7, v0, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    return-void
.end method

.method generatePublicKeyH([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;)V
    .locals 9
    .param p1, "out"    # [J
    .param p2, "random"    # Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "random"
        }
    .end annotation

    .line 407
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v0, v0, [B

    .line 408
    .local v0, "randBytes":[B
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    invoke-virtual {p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->expandSeed([BI)V

    .line 409
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v1, v1, [J

    .line 410
    .local v1, "tmp":[J
    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    .line 411
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v3, v1, v2

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    int-to-long v5, v5

    const-wide/16 v7, 0x40

    invoke-static {v5, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->bitMask(JJ)J

    move-result-wide v5

    and-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 412
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    return-void
.end method

.method getSessionKeySize()I
    .locals 1

    .line 277
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    return v0
.end method
