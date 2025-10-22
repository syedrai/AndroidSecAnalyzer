.class Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;
.super Ljava/lang/Object;
.source "BIKEEngine.java"


# instance fields
.field private L_BYTE:I

.field private R2_BYTE:I

.field private R_BYTE:I

.field private final bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

.field private hw:I

.field private nbIter:I

.field private r:I

.field private t:I

.field private tau:I

.field private w:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "w"    # I
    .param p3, "t"    # I
    .param p4, "l"    # I
    .param p5, "nbIter"    # I
    .param p6, "tau"    # I
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
            "r",
            "w",
            "t",
            "l",
            "nbIter",
            "tau"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    .line 42
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->w:I

    .line 43
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->t:I

    .line 45
    iput p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->nbIter:I

    .line 46
    iput p6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    .line 47
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->w:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    .line 48
    div-int/lit8 v0, p4, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    .line 49
    add-int/lit8 v0, p1, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    .line 50
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R2_BYTE:I

    .line 51
    new-instance v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    .line 52
    return-void
.end method

.method private BFIter([B[BI[I[I[I[I[B[B[B)V
    .locals 12
    .param p1, "s"    # [B
    .param p2, "e"    # [B
    .param p3, "T"    # I
    .param p4, "h0Compact"    # [I
    .param p5, "h1Compact"    # [I
    .param p6, "h0CompactCol"    # [I
    .param p7, "h1CompactCol"    # [I
    .param p8, "black"    # [B
    .param p9, "gray"    # [B
    .param p10, "ctrs"    # [B
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
            0x0
        }
        names = {
            "s",
            "e",
            "T",
            "h0Compact",
            "h1Compact",
            "h0CompactCol",
            "h1CompactCol",
            "black",
            "gray",
            "ctrs"
        }
    .end annotation

    .line 278
    move-object/from16 v0, p10

    move-object/from16 v1, p6

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    .line 281
    const/4 v2, 0x0

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 282
    .local v3, "count":I
    sub-int v4, v3, p3

    shr-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 283
    .local v4, "ctrBit1":I
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v6, p3, v6

    sub-int v6, v3, v6

    shr-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v5

    .line 284
    .local v6, "ctrBit2":I
    aget-byte v7, p2, v2

    int-to-byte v8, v4

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p2, v2

    .line 285
    int-to-byte v7, v4

    aput-byte v7, p8, v2

    .line 286
    int-to-byte v7, v6

    aput-byte v7, p9, v2

    .line 288
    .end local v3    # "count":I
    .end local v4    # "ctrBit1":I
    .end local v6    # "ctrBit2":I
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v3, v4, :cond_0

    .line 290
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    .line 291
    .local v4, "count":I
    sub-int v6, v4, p3

    shr-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v5

    .line 292
    .local v6, "ctrBit1":I
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v7, p3, v7

    sub-int v7, v4, v7

    shr-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v5

    .line 293
    .local v7, "ctrBit2":I
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v8, v3

    aget-byte v9, p2, v8

    int-to-byte v10, v6

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 294
    int-to-byte v8, v6

    aput-byte v8, p8, v3

    .line 295
    int-to-byte v8, v7

    aput-byte v8, p9, v3

    .line 288
    .end local v4    # "count":I
    .end local v6    # "ctrBit1":I
    .end local v7    # "ctrBit2":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v3    # "j":I
    :cond_0
    move-object/from16 v3, p7

    invoke-direct {p0, v3, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    .line 304
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    .line 305
    .restart local v4    # "count":I
    sub-int v6, v4, p3

    shr-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v5

    .line 306
    .restart local v6    # "ctrBit1":I
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v7, p3, v7

    sub-int v7, v4, v7

    shr-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v5

    .line 307
    .restart local v7    # "ctrBit2":I
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aget-byte v9, p2, v8

    int-to-byte v10, v6

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 308
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    int-to-byte v9, v6

    aput-byte v9, p8, v8

    .line 309
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    int-to-byte v9, v7

    aput-byte v9, p9, v8

    .line 311
    .end local v4    # "count":I
    .end local v6    # "ctrBit1":I
    .end local v7    # "ctrBit2":I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v4, v6, :cond_1

    .line 313
    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    .line 314
    .local v6, "count":I
    sub-int v7, v6, p3

    shr-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v5

    .line 315
    .local v7, "ctrBit1":I
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v8, p3, v8

    sub-int v8, v6, v8

    shr-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v5

    .line 316
    .local v8, "ctrBit2":I
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v4

    aget-byte v10, p2, v9

    int-to-byte v11, v7

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p2, v9

    .line 317
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v9, v4

    int-to-byte v10, v7

    aput-byte v10, p8, v9

    .line 318
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v9, v4

    int-to-byte v10, v8

    aput-byte v10, p9, v9

    .line 311
    .end local v6    # "count":I
    .end local v7    # "ctrBit1":I
    .end local v8    # "ctrBit2":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 323
    .end local v4    # "j":I
    :cond_1
    const/4 v4, 0x0

    move v8, v4

    .local v8, "i":I
    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v8, v4, :cond_3

    .line 326
    aget-byte v4, p8, v8

    if-eqz v4, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[IZ)V

    .line 323
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 328
    .end local v8    # "i":I
    :cond_3
    return-void
.end method

.method private BFIter2([B[BI[I[I[I[I[B)V
    .locals 13
    .param p1, "s"    # [B
    .param p2, "e"    # [B
    .param p3, "T"    # I
    .param p4, "h0Compact"    # [I
    .param p5, "h1Compact"    # [I
    .param p6, "h0CompactCol"    # [I
    .param p7, "h1CompactCol"    # [I
    .param p8, "ctrs"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "s",
            "e",
            "T",
            "h0Compact",
            "h1Compact",
            "h0CompactCol",
            "h1CompactCol",
            "ctrs"
        }
    .end annotation

    .line 332
    move-object/from16 v0, p8

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 336
    .local v1, "updatedIndices":[I
    move-object/from16 v2, p6

    invoke-direct {p0, v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    .line 339
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    .line 340
    .local v4, "count":I
    sub-int v5, v4, p3

    shr-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 341
    .local v5, "ctrBit1":I
    aget-byte v7, p2, v3

    int-to-byte v8, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p2, v3

    .line 342
    aput v5, v1, v3

    .line 344
    .end local v4    # "count":I
    .end local v5    # "ctrBit1":I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v4, v5, :cond_0

    .line 346
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    .line 347
    .local v5, "count":I
    sub-int v7, v5, p3

    shr-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v6

    .line 348
    .local v7, "ctrBit1":I
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v8, v4

    aget-byte v9, p2, v8

    int-to-byte v10, v7

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 349
    aput v7, v1, v4

    .line 344
    .end local v5    # "count":I
    .end local v7    # "ctrBit1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
    .end local v4    # "j":I
    :cond_0
    move-object/from16 v4, p7

    invoke-direct {p0, v4, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    .line 358
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    .line 359
    .restart local v5    # "count":I
    sub-int v7, v5, p3

    shr-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v6

    .line 360
    .restart local v7    # "ctrBit1":I
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aget-byte v9, p2, v8

    int-to-byte v10, v7

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 361
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aput v7, v1, v8

    .line 363
    .end local v5    # "count":I
    .end local v7    # "ctrBit1":I
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v5, v7, :cond_1

    .line 365
    aget-byte v7, v0, v5

    and-int/lit16 v7, v7, 0xff

    .line 366
    .local v7, "count":I
    sub-int v8, v7, p3

    shr-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v6

    .line 367
    .local v8, "ctrBit1":I
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v5

    aget-byte v10, p2, v9

    int-to-byte v11, v8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p2, v9

    .line 368
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v9, v5

    aput v8, v1, v9

    .line 363
    .end local v7    # "count":I
    .end local v8    # "ctrBit1":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 373
    .end local v5    # "j":I
    :cond_1
    const/4 v5, 0x0

    move v9, v5

    .local v9, "i":I
    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v9, v5, :cond_3

    .line 376
    aget v5, v1, v9

    if-ne v5, v6, :cond_2

    const/4 v12, 0x1

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    :goto_3
    move-object v7, p0

    move-object v8, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[IZ)V

    .line 373
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 378
    .end local v9    # "i":I
    :cond_3
    return-void
.end method

.method private BFMaskedIter([B[B[BI[I[I[I[I)V
    .locals 12
    .param p1, "s"    # [B
    .param p2, "e"    # [B
    .param p3, "mask"    # [B
    .param p4, "T"    # I
    .param p5, "h0Compact"    # [I
    .param p6, "h1Compact"    # [I
    .param p7, "h0CompactCol"    # [I
    .param p8, "h1CompactCol"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "s",
            "e",
            "mask",
            "T",
            "h0Compact",
            "h1Compact",
            "h0CompactCol",
            "h1CompactCol"
        }
    .end annotation

    .line 382
    move/from16 v6, p4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v2, v2, 0x2

    new-array v7, v2, [I

    .line 384
    .local v7, "updatedIndices":[I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v2, v3, :cond_3

    .line 386
    aget-byte v3, p3, v2

    if-ne v3, v9, :cond_2

    .line 389
    move-object/from16 v10, p7

    invoke-direct {p0, v10, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v3

    if-lt v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 391
    .local v3, "isCtrGtEqT":Z
    :goto_1
    invoke-direct {p0, p2, v2, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BIZ)V

    .line 392
    if-eqz v3, :cond_1

    const/4 v8, 0x1

    :cond_1
    aput v8, v7, v2

    goto :goto_2

    .line 386
    .end local v3    # "isCtrGtEqT":Z
    :cond_2
    move-object/from16 v10, p7

    .line 384
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v10, p7

    .line 396
    .end local v2    # "j":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v2, v3, :cond_7

    .line 398
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v3, v2

    aget-byte v3, p3, v3

    if-ne v3, v9, :cond_6

    .line 401
    move-object/from16 v11, p8

    invoke-direct {p0, v11, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v3

    if-lt v3, v6, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 403
    .restart local v3    # "isCtrGtEqT":Z
    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v4, v2

    invoke-direct {p0, p2, v4, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BIZ)V

    .line 404
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v4, v2

    if-eqz v3, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    aput v5, v7, v4

    goto :goto_6

    .line 398
    .end local v3    # "isCtrGtEqT":Z
    :cond_6
    move-object/from16 v11, p8

    .line 396
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v11, p8

    .line 409
    .end local v2    # "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_9

    .line 412
    aget v3, v7, v2

    if-ne v3, v9, :cond_8

    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[IZ)V

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 414
    .end local v2    # "i":I
    :cond_9
    return-void
.end method

.method private BGFDecoder([B[I[I)[B
    .locals 12
    .param p1, "s"    # [B
    .param p2, "h0Compact"    # [I
    .param p3, "h1Compact"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "h0Compact",
            "h1Compact"
        }
    .end annotation

    .line 237
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    .line 240
    .local v3, "e":[B
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getColumnFromCompactVersion([I)[I

    move-result-object v7

    .line 241
    .local v7, "h0CompactCol":[I
    invoke-direct {p0, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getColumnFromCompactVersion([I)[I

    move-result-object v8

    .line 243
    .local v8, "h1CompactCol":[I
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    .line 244
    .local v4, "black":[B
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    new-array v9, v0, [B

    .line 247
    .local v9, "ctrs":[B
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v10, v0, [B

    .line 249
    .local v10, "gray":[B
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->getHammingWeight([B)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->threshold(II)I

    move-result v0

    .line 251
    .local v0, "T":I
    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v11, v9

    move-object v9, v4

    move v4, v0

    .end local v0    # "T":I
    .end local p1    # "s":[B
    .end local p2    # "h0Compact":[I
    .end local p3    # "h1Compact":[I
    .local v2, "s":[B
    .local v4, "T":I
    .local v5, "h0Compact":[I
    .local v6, "h1Compact":[I
    .local v9, "black":[B
    .local v11, "ctrs":[B
    invoke-direct/range {v1 .. v11}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFIter([B[BI[I[I[I[I[B[B[B)V

    .line 252
    move p1, v4

    move-object v4, v9

    .end local v9    # "black":[B
    .local v4, "black":[B
    .local p1, "T":I
    iget p2, v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/lit8 p2, p2, 0x1

    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, p2

    .end local v5    # "h0Compact":[I
    .local v6, "h0Compact":[I
    .local v7, "h1Compact":[I
    .local v8, "h0CompactCol":[I
    .local v9, "h1CompactCol":[I
    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFMaskedIter([B[B[BI[I[I[I[I)V

    .line 253
    move-object p2, v4

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .end local v4    # "black":[B
    .end local v9    # "h1CompactCol":[I
    .restart local v5    # "h0Compact":[I
    .local v6, "h1Compact":[I
    .local v7, "h0CompactCol":[I
    .local v8, "h1CompactCol":[I
    .local p2, "black":[B
    iget p3, v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/lit8 p3, p3, 0x1

    div-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x1

    move-object v4, v10

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, p3

    .end local v5    # "h0Compact":[I
    .end local v10    # "gray":[B
    .local v4, "gray":[B
    .local v6, "h0Compact":[I
    .local v7, "h1Compact":[I
    .local v8, "h0CompactCol":[I
    .restart local v9    # "h1CompactCol":[I
    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFMaskedIter([B[B[BI[I[I[I[I)V

    .line 255
    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .end local v4    # "gray":[B
    .end local v9    # "h1CompactCol":[I
    .end local p1    # "T":I
    .restart local v5    # "h0Compact":[I
    .local v6, "h1Compact":[I
    .local v7, "h0CompactCol":[I
    .local v8, "h1CompactCol":[I
    const/4 p1, 0x1

    .local p1, "i":I
    :goto_0
    iget p3, v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->nbIter:I

    if-ge p1, p3, :cond_0

    .line 257
    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 259
    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->getHammingWeight([B)I

    move-result p3

    iget v0, v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->threshold(II)I

    move-result v4

    .line 261
    .local v4, "T":I
    move-object v9, v11

    .end local v11    # "ctrs":[B
    .local v9, "ctrs":[B
    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFIter2([B[BI[I[I[I[I[B)V

    .line 255
    .end local v4    # "T":I
    .end local v9    # "ctrs":[B
    .restart local v11    # "ctrs":[B
    add-int/lit8 p1, p1, 0x1

    move-object v1, p0

    goto :goto_0

    .line 263
    .end local p1    # "i":I
    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->getHammingWeight([B)I

    move-result p1

    if-nez p1, :cond_1

    .line 265
    return-object v3

    .line 269
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private computeSyndrome([B[B)[B
    .locals 3
    .param p1, "c0"    # [B
    .param p2, "h0"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c0",
            "h0"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v0

    .line 228
    .local v0, "t":[J
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v1

    .line 229
    .local v1, "u":[J
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    .line 230
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2, p2, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    .line 231
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    .line 232
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->encodeBitsTransposed([J)[B

    move-result-object v2

    return-object v2
.end method

.method private convertToCompact([I[B)V
    .locals 7
    .param p1, "compactVersion"    # [I
    .param p2, "h"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compactVersion",
            "h"
        }
    .end annotation

    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    if-ge v1, v2, :cond_2

    .line 532
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 534
    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ne v3, v4, :cond_0

    .line 536
    goto :goto_2

    .line 538
    :cond_0
    aget-byte v3, p2, v1

    shr-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x1

    .line 542
    .local v3, "mask":I
    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v2

    neg-int v5, v3

    and-int/2addr v4, v5

    aget v5, p1, v0

    neg-int v6, v3

    not-int v6, v6

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, p1, v0

    .line 545
    add-int v4, v0, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    rem-int v0, v4, v5

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 530
    .end local v2    # "j":I
    .end local v3    # "mask":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private ctr([I[BI)I
    .locals 9
    .param p1, "hCompactCol"    # [I
    .param p2, "s"    # [B
    .param p3, "j"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hCompactCol",
            "s",
            "j"
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/lit8 v2, v2, -0x4

    .line 440
    .local v2, "limit":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 442
    add-int/lit8 v3, v1, 0x0

    aget v3, p1, v3

    add-int/2addr v3, p3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v3, v4

    .line 443
    .local v3, "sPos0":I
    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    add-int/2addr v4, p3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v4, v5

    .line 444
    .local v4, "sPos1":I
    add-int/lit8 v5, v1, 0x2

    aget v5, p1, v5

    add-int/2addr v5, p3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v5, v6

    .line 445
    .local v5, "sPos2":I
    add-int/lit8 v6, v1, 0x3

    aget v6, p1, v6

    add-int/2addr v6, p3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v6, v7

    .line 447
    .local v6, "sPos3":I
    shr-int/lit8 v7, v3, 0x1f

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 448
    shr-int/lit8 v7, v4, 0x1f

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 449
    shr-int/lit8 v7, v5, 0x1f

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 450
    shr-int/lit8 v7, v6, 0x1f

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 452
    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v0, v7

    .line 453
    aget-byte v7, p2, v4

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v0, v7

    .line 454
    aget-byte v7, p2, v5

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v0, v7

    .line 455
    aget-byte v7, p2, v6

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v0, v7

    .line 457
    nop

    .end local v3    # "sPos0":I
    .end local v4    # "sPos1":I
    .end local v5    # "sPos2":I
    .end local v6    # "sPos3":I
    add-int/lit8 v1, v1, 0x4

    .line 458
    goto :goto_0

    .line 459
    :cond_0
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v3, :cond_1

    .line 461
    aget v3, p1, v1

    add-int/2addr v3, p3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v3, v4

    .line 462
    .local v3, "sPos":I
    shr-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 463
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    .line 464
    nop

    .end local v3    # "sPos":I
    add-int/lit8 v1, v1, 0x1

    .line 465
    goto :goto_1

    .line 466
    :cond_1
    return v0
.end method

.method private ctrAll([I[B[B)V
    .locals 10
    .param p1, "hCompactCol"    # [I
    .param p2, "s"    # [B
    .param p3, "ctrs"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hCompactCol",
            "s",
            "ctrs"
        }
    .end annotation

    .line 472
    const/4 v0, 0x0

    aget v1, p1, v0

    .local v1, "col":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v2, v1

    .line 473
    .local v2, "neg":I
    invoke-static {p2, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    invoke-static {p2, v0, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    .end local v1    # "col":I
    .end local v2    # "neg":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_4

    .line 478
    aget v2, p1, v1

    .local v2, "col":I
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v3, v2

    .line 480
    .local v3, "neg":I
    const/4 v4, 0x0

    .line 483
    .local v4, "j":I
    add-int/lit8 v5, v3, -0x4

    .line 484
    .local v5, "jLimit":I
    :goto_1
    if-gt v4, v5, :cond_0

    .line 486
    add-int/lit8 v6, v4, 0x0

    aget-byte v7, p3, v6

    add-int v8, v2, v4

    add-int/2addr v8, v0

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 487
    add-int/lit8 v6, v4, 0x1

    aget-byte v7, p3, v6

    add-int v8, v2, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 488
    add-int/lit8 v6, v4, 0x2

    aget-byte v7, p3, v6

    add-int v8, v2, v4

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 489
    add-int/lit8 v6, v4, 0x3

    aget-byte v7, p3, v6

    add-int v8, v2, v4

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 490
    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 494
    .end local v5    # "jLimit":I
    :cond_0
    :goto_2
    if-ge v4, v3, :cond_1

    .line 496
    aget-byte v5, p3, v4

    add-int v6, v2, v4

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 501
    :cond_1
    move v5, v3

    .line 504
    .local v5, "k":I
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/lit8 v6, v6, -0x4

    .line 505
    .local v6, "kLimit":I
    :goto_3
    if-gt v5, v6, :cond_2

    .line 507
    add-int/lit8 v7, v5, 0x0

    aget-byte v8, p3, v7

    add-int/lit8 v9, v5, 0x0

    sub-int/2addr v9, v3

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 508
    add-int/lit8 v7, v5, 0x1

    aget-byte v8, p3, v7

    add-int/lit8 v9, v5, 0x1

    sub-int/2addr v9, v3

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 509
    add-int/lit8 v7, v5, 0x2

    aget-byte v8, p3, v7

    add-int/lit8 v9, v5, 0x2

    sub-int/2addr v9, v3

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 510
    add-int/lit8 v7, v5, 0x3

    aget-byte v8, p3, v7

    add-int/lit8 v9, v5, 0x3

    sub-int/2addr v9, v3

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 511
    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 515
    .end local v6    # "kLimit":I
    :cond_2
    :goto_4
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v5, v6, :cond_3

    .line 517
    aget-byte v6, p3, v5

    sub-int v7, v5, v3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 518
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 476
    .end local v2    # "col":I
    .end local v3    # "neg":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 522
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private functionH([B)[B
    .locals 4
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 61
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 62
    .local v0, "res":[B
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 63
    .local v1, "digest":Lorg/bouncycastle/crypto/Xof;
    const/4 v2, 0x0

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 64
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->t:I

    invoke-static {v0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V

    .line 65
    return-object v0
.end method

.method private functionK([B[B[B[B)V
    .locals 4
    .param p1, "m"    # [B
    .param p2, "c0"    # [B
    .param p3, "c1"    # [B
    .param p4, "result"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "c0",
            "c1",
            "result"
        }
    .end annotation

    .line 82
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 84
    .local v0, "hashRes":[B
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 85
    .local v1, "digest":Lorg/bouncycastle/crypto/digests/SHA3Digest;
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 86
    array-length v2, p2

    invoke-virtual {v1, p2, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 87
    array-length v2, p3

    invoke-virtual {v1, p3, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 88
    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 90
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v0, v3, p4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    return-void
.end method

.method private functionL([B[B[B)V
    .locals 4
    .param p1, "e0"    # [B
    .param p2, "e1"    # [B
    .param p3, "result"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e0",
            "e1",
            "result"
        }
    .end annotation

    .line 70
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 72
    .local v0, "hashRes":[B
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 73
    .local v1, "digest":Lorg/bouncycastle/crypto/digests/SHA3Digest;
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 74
    array-length v2, p2

    invoke-virtual {v1, p2, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 75
    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 77
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v0, v3, p3, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-void
.end method

.method private getColumnFromCompactVersion([I)[I
    .locals 4
    .param p1, "hCompact"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hCompact"
        }
    .end annotation

    .line 552
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v0, v0, [I

    .line 553
    .local v0, "hCompactColumn":[I
    const/4 v1, 0x0

    aget v2, p1, v1

    if-nez v2, :cond_1

    .line 555
    aput v1, v0, v1

    .line 556
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_0

    .line 558
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    sub-int/2addr v3, v1

    aget v3, p1, v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 563
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_2

    .line 565
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget v3, p1, v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 568
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method private recomputeSyndrome([BI[I[IZ)V
    .locals 4
    .param p1, "syndrome"    # [B
    .param p2, "index"    # I
    .param p3, "h0Compact"    # [I
    .param p4, "h1Compact"    # [I
    .param p5, "isOne"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "syndrome",
            "index",
            "h0Compact",
            "h1Compact",
            "isOne"
        }
    .end annotation

    .line 573
    move v0, p5

    .line 575
    .local v0, "bit":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge p2, v1, :cond_2

    .line 577
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_1

    .line 579
    aget v2, p3, v1

    if-gt v2, p2, :cond_0

    .line 581
    aget v2, p3, v1

    sub-int v2, p2, v2

    aget-byte v3, p1, v2

    xor-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    goto :goto_1

    .line 585
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v2, p2

    aget v3, p3, v1

    sub-int/2addr v2, v3

    aget-byte v3, p1, v2

    xor-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 577
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_4

    .line 591
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_4

    .line 593
    aget v2, p4, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v3, p2, v3

    if-gt v2, v3, :cond_3

    .line 595
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v2, p2, v2

    aget v3, p4, v1

    sub-int/2addr v2, v3

    aget-byte v3, p1, v2

    xor-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    goto :goto_3

    .line 599
    :cond_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aget v3, p4, v1

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    aget-byte v3, p1, v2

    xor-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 591
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 603
    .end local v1    # "i":I
    :cond_4
    :goto_4
    return-void
.end method

.method private splitEBytes([B[B[B)V
    .locals 8
    .param p1, "e"    # [B
    .param p2, "e0"    # [B
    .param p3, "e1"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "e0",
            "e1"
        }
    .end annotation

    .line 607
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/lit8 v0, v0, 0x7

    .line 608
    .local v0, "partial":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    .line 610
    .local v1, "split":B
    const/4 v2, -0x1

    shl-int/2addr v2, v0

    int-to-byte v2, v2

    .line 611
    .local v2, "mask":B
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/lit8 v3, v3, -0x1

    not-int v4, v2

    and-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 613
    and-int v3, v1, v2

    int-to-byte v3, v3

    .line 614
    .local v3, "c":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    if-ge v4, v5, :cond_0

    .line 616
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/2addr v5, v4

    aget-byte v5, p1, v5

    .line 617
    .local v5, "next":B
    rsub-int/lit8 v6, v0, 0x8

    shl-int v6, v5, v6

    and-int/lit16 v7, v3, 0xff

    ushr-int/2addr v7, v0

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v4

    .line 618
    move v3, v5

    .line 614
    .end local v5    # "next":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method private threshold(II)I
    .locals 6
    .param p1, "hammingWeight"    # I
    .param p2, "r"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hammingWeight",
            "r"
        }
    .end annotation

    .line 418
    sparse-switch p2, :sswitch_data_0

    .line 423
    move v0, p1

    .end local p1    # "hammingWeight":I
    .local v0, "hammingWeight":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 422
    .end local v0    # "hammingWeight":I
    .restart local p1    # "hammingWeight":I
    :sswitch_0
    const-wide v3, 0x4031e0e560418937L    # 17.8785

    const/16 v5, 0x45

    const-wide v1, 0x3f707a8c0d3f02caL    # 0.00402312

    move v0, p1

    .end local p1    # "hammingWeight":I
    .restart local v0    # "hammingWeight":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->thresholdFromParameters(IDDI)I

    move-result p1

    return p1

    .line 421
    .end local v0    # "hammingWeight":I
    .restart local p1    # "hammingWeight":I
    :sswitch_1
    move v0, p1

    .end local p1    # "hammingWeight":I
    .restart local v0    # "hammingWeight":I
    const-wide v3, 0x402e84816f0068dcL    # 15.2588

    const/16 v5, 0x34

    const-wide v1, 0x3f7590c0ad03d9a9L    # 0.005265

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->thresholdFromParameters(IDDI)I

    move-result p1

    return p1

    .line 420
    .end local v0    # "hammingWeight":I
    .restart local p1    # "hammingWeight":I
    :sswitch_2
    move v0, p1

    .end local p1    # "hammingWeight":I
    .restart local v0    # "hammingWeight":I
    const-wide v3, 0x402b0f5c28f5c28fL    # 13.53

    const/16 v5, 0x24

    const-wide v1, 0x3f7c8ee1afb2e092L    # 0.0069722

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->thresholdFromParameters(IDDI)I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x3023 -> :sswitch_2
        0x6053 -> :sswitch_1
        0xa00d -> :sswitch_0
    .end sparse-switch
.end method

.method private static thresholdFromParameters(IDDI)I
    .locals 2
    .param p0, "hammingWeight"    # I
    .param p1, "dm"    # D
    .param p3, "da"    # D
    .param p5, "min"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hammingWeight",
            "dm",
            "da",
            "min"
        }
    .end annotation

    .line 430
    int-to-double v0, p0

    mul-double v0, v0, p1

    add-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private updateNewErrorIndex([BIZ)V
    .locals 3
    .param p1, "e"    # [B
    .param p2, "index"    # I
    .param p3, "isOne"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "index",
            "isOne"
        }
    .end annotation

    .line 624
    move v0, p2

    .line 625
    .local v0, "newIndex":I
    if-eqz p2, :cond_1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-eq p2, v1, :cond_1

    .line 627
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-le p2, v1, :cond_0

    .line 629
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int v0, v1, v2

    goto :goto_0

    .line 633
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v0, v1, p2

    .line 636
    :cond_1
    :goto_0
    aget-byte v1, p1, v0

    xor-int/2addr v1, p3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 637
    return-void
.end method


# virtual methods
.method public decaps([B[B[B[B[B[B)V
    .locals 18
    .param p1, "k"    # [B
    .param p2, "h0"    # [B
    .param p3, "h1"    # [B
    .param p4, "sigma"    # [B
    .param p5, "c0"    # [B
    .param p6, "c1"    # [B
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
            "k",
            "h0",
            "h1",
            "sigma",
            "c0",
            "c1"
        }
    .end annotation

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v5, v5, [I

    .line 192
    .local v5, "h0Compact":[I
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v6, v6, [I

    .line 193
    .local v6, "h1Compact":[I
    invoke-direct {v0, v5, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->convertToCompact([I[B)V

    .line 194
    move-object/from16 v7, p3

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->convertToCompact([I[B)V

    .line 197
    invoke-direct {v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->computeSyndrome([B[B)[B

    move-result-object v8

    .line 200
    .local v8, "syndrome":[B
    invoke-direct {v0, v8, v5, v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BGFDecoder([B[I[I)[B

    move-result-object v9

    .line 201
    .local v9, "ePrimeBits":[B
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 v10, v10, 0x2

    new-array v11, v10, [B

    .line 202
    .local v11, "ePrimeBytes":[B
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v10, v10, 0x2

    const/4 v12, 0x0

    invoke-static {v11, v9, v12, v10}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->fromBitArrayToByteArray([B[BII)V

    .line 204
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v10, v10, [B

    .line 205
    .local v10, "e0Bytes":[B
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v12, v12, [B

    .line 206
    .local v12, "e1Bytes":[B
    invoke-direct {v0, v11, v10, v12}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->splitEBytes([B[B[B)V

    .line 209
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v13, v13, [B

    .line 210
    .local v13, "mPrime":[B
    invoke-direct {v0, v10, v12, v13}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionL([B[B[B)V

    .line 211
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v14, v4, v13}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 214
    invoke-direct {v0, v13}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionH([B)[B

    move-result-object v14

    .line 215
    .local v14, "wlist":[B
    move-object v15, v13

    .end local v13    # "mPrime":[B
    .local v15, "mPrime":[B
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R2_BYTE:I

    move-object/from16 v16, v15

    .end local v15    # "mPrime":[B
    .local v16, "mPrime":[B
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R2_BYTE:I

    move-object/from16 v17, v12

    .end local v12    # "e1Bytes":[B
    .local v17, "e1Bytes":[B
    const/4 v12, 0x0

    move-object/from16 v2, v16

    move/from16 v16, v15

    const/4 v15, 0x0

    .end local v16    # "mPrime":[B
    .local v2, "mPrime":[B
    invoke-static/range {v11 .. v16}, Lorg/bouncycastle/util/Arrays;->areEqual([BII[BII)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 217
    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B[B)V

    move-object/from16 v12, p4

    goto :goto_0

    .line 221
    :cond_0
    move-object/from16 v12, p4

    invoke-direct {v0, v12, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B[B)V

    .line 223
    :goto_0
    return-void
.end method

.method public encaps([B[B[B[BLjava/security/SecureRandom;)V
    .locals 8
    .param p1, "c0"    # [B
    .param p2, "c1"    # [B
    .param p3, "k"    # [B
    .param p4, "h"    # [B
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c0",
            "c1",
            "k",
            "h",
            "random"
        }
    .end annotation

    .line 146
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v0, v0, [B

    .line 147
    .local v0, "m":[B
    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 150
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionH([B)[B

    move-result-object v1

    .line 152
    .local v1, "eBytes":[B
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v2, v2, [B

    .line 153
    .local v2, "e0Bytes":[B
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v3, v3, [B

    .line 154
    .local v3, "e1Bytes":[B
    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->splitEBytes([B[B[B)V

    .line 156
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v4

    .line 157
    .local v4, "e0Element":[J
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v5

    .line 158
    .local v5, "e1Element":[J
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v6, v2, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    .line 159
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v6, v3, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    .line 162
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v6

    .line 163
    .local v6, "t":[J
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v7, p4, v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    .line 164
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v7, v6, v5, v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    .line 165
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v7, v6, v4, v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->add([J[J[J)V

    .line 166
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v7, v6, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->encodeBytes([J[B)V

    .line 169
    invoke-direct {p0, v2, v3, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionL([B[B[B)V

    .line 170
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v7, v0, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 173
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B[B)V

    .line 174
    return-void
.end method

.method public genKeyPair([B[B[B[BLjava/security/SecureRandom;)V
    .locals 8
    .param p1, "h0"    # [B
    .param p2, "h1"    # [B
    .param p3, "sigma"    # [B
    .param p4, "h"    # [B
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "h0",
            "h1",
            "sigma",
            "h",
            "random"
        }
    .end annotation

    .line 107
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 108
    .local v0, "seeds":[B
    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 110
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 111
    .local v1, "digest":Lorg/bouncycastle/crypto/Xof;
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 114
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    invoke-static {p1, v2, v4, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V

    .line 115
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    invoke-static {p2, v2, v4, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V

    .line 117
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v2

    .line 118
    .local v2, "h0Element":[J
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v4

    .line 119
    .local v4, "h1Element":[J
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v5, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    .line 120
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v5, p2, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    .line 123
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v5

    .line 124
    .local v5, "t":[J
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v6, v2, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->inv([J[J)V

    .line 125
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v6, v5, v4, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    .line 126
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v6, v5, p4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->encodeBytes([J[B)V

    .line 129
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    array-length v7, p3

    invoke-static {v0, v6, p3, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    return-void
.end method

.method public getSessionKeySize()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    return v0
.end method
