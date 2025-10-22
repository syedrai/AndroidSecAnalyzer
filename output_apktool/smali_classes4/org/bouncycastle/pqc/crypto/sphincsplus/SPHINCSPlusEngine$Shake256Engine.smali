.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.source "SPHINCSPlusEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shake256Engine"
.end annotation


# instance fields
.field private final maskDigest:Lorg/bouncycastle/crypto/Xof;

.field private final treeDigest:Lorg/bouncycastle/crypto/Xof;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 3
    .param p1, "robust"    # Z
    .param p2, "n"    # I
    .param p3, "w"    # I
    .param p4, "d"    # I
    .param p5, "a"    # I
    .param p6, "k"    # I
    .param p7, "h"    # I
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
            "robust",
            "n",
            "w",
            "d",
            "a",
            "k",
            "h"
        }
    .end annotation

    .line 335
    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;-><init>(ZIIIIII)V

    .line 337
    move v0, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "robust":Z
    .local v0, "h":I
    .local p2, "robust":Z
    .local p3, "n":I
    .local p4, "w":I
    .local p5, "d":I
    .local p6, "a":I
    .local p7, "k":I
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    .line 338
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    .line 339
    return-void
.end method


# virtual methods
.method F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 6
    .param p1, "pkSeed"    # [B
    .param p2, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .param p3, "m1"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "adrs",
            "m1"
        }
    .end annotation

    .line 348
    move-object v0, p3

    .line 349
    .local v0, "mTheta":[B
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->robust:Z

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v0

    .line 354
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v1, v1, [B

    .line 356
    .local v1, "rv":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 357
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v5, v5

    invoke-interface {v2, v3, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 358
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 359
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 361
    return-object v1
.end method

.method H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 5
    .param p1, "pkSeed"    # [B
    .param p2, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .param p3, "m1"    # [B
    .param p4, "m2"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "adrs",
            "m1",
            "m2"
        }
    .end annotation

    .line 366
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v0, v0, [B

    .line 368
    .local v0, "rv":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 369
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v4, v4

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 370
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->robust:Z

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v1

    .line 374
    .local v1, "m1m2":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 375
    .end local v1    # "m1m2":[B
    goto :goto_0

    .line 378
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p3

    invoke-interface {v1, p3, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 379
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p4

    invoke-interface {v1, p4, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 382
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 384
    return-object v0
.end method

.method H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
    .locals 19
    .param p1, "R"    # [B
    .param p2, "pkSeed"    # [B
    .param p3, "pkRoot"    # [B
    .param p4, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "R",
            "pkSeed",
            "pkRoot",
            "message"
        }
    .end annotation

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->A:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->K:I

    mul-int v5, v5, v6

    add-int/lit8 v5, v5, 0x7

    const/16 v6, 0x8

    div-int/2addr v5, v6

    .line 390
    .local v5, "forsMsgBytes":I
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->H:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->D:I

    div-int/2addr v7, v8

    .line 391
    .local v7, "leafBits":I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->H:I

    sub-int/2addr v8, v7

    .line 392
    .local v8, "treeBits":I
    add-int/lit8 v9, v7, 0x7

    div-int/2addr v9, v6

    .line 393
    .local v9, "leafBytes":I
    add-int/lit8 v10, v8, 0x7

    div-int/2addr v10, v6

    .line 394
    .local v10, "treeBytes":I
    add-int v11, v5, v9

    add-int/2addr v11, v10

    .line 395
    .local v11, "m":I
    new-array v12, v11, [B

    .line 397
    .local v12, "out":[B
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v14, v1

    const/4 v15, 0x0

    invoke-interface {v13, v1, v15, v14}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 398
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v14, v2

    invoke-interface {v13, v2, v15, v14}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 399
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v14, v3

    invoke-interface {v13, v3, v15, v14}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 400
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v14, v4

    invoke-interface {v13, v4, v15, v14}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 402
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v14, v12

    invoke-interface {v13, v12, v15, v14}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 406
    new-array v6, v6, [B

    .line 407
    .local v6, "treeIndexBuf":[B
    rsub-int/lit8 v13, v10, 0x8

    invoke-static {v12, v5, v6, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    invoke-static {v6, v15}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v13

    .line 409
    .local v13, "treeIndex":J
    rsub-int/lit8 v16, v8, 0x40

    const-wide/16 v17, -0x1

    ushr-long v16, v17, v16

    and-long v13, v13, v16

    .line 411
    const/4 v15, 0x4

    new-array v15, v15, [B

    .line 412
    .local v15, "leafIndexBuf":[B
    add-int v0, v5, v10

    rsub-int/lit8 v1, v9, 0x4

    invoke-static {v12, v0, v15, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    const/4 v0, 0x0

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 415
    .local v1, "leafIndex":I
    rsub-int/lit8 v16, v7, 0x20

    const/16 v17, -0x1

    ushr-int v16, v17, v16

    and-int v1, v1, v16

    .line 417
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    invoke-static {v12, v0, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v13, v14, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;-><init>(JI[B)V

    return-object v2
.end method

.method PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 4
    .param p1, "pkSeed"    # [B
    .param p2, "skSeed"    # [B
    .param p3, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "skSeed",
            "adrs"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 441
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 442
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p2

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 444
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v0, v0, [B

    .line 445
    .local v0, "prf":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 446
    return-object v0
.end method

.method public PRF_msg([B[B[B)[B
    .locals 4
    .param p1, "prf"    # [B
    .param p2, "randomiser"    # [B
    .param p3, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prf",
            "randomiser",
            "message"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 452
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p2

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 453
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p3

    invoke-interface {v0, p3, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 454
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v0, v0, [B

    .line 455
    .local v0, "out":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 456
    return-object v0
.end method

.method T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 6
    .param p1, "pkSeed"    # [B
    .param p2, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .param p3, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "adrs",
            "m"
        }
    .end annotation

    .line 422
    move-object v0, p3

    .line 423
    .local v0, "mTheta":[B
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->robust:Z

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v0

    .line 428
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v1, v1, [B

    .line 430
    .local v1, "rv":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 431
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v5, v5

    invoke-interface {v2, v3, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 432
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 433
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 435
    return-object v1
.end method

.method protected bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5
    .param p1, "pkSeed"    # [B
    .param p2, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .param p3, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "adrs",
            "m"
        }
    .end annotation

    .line 461
    array-length v0, p3

    new-array v0, v0, [B

    .line 462
    .local v0, "mask":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 463
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v4, v4

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 464
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 465
    array-length v1, p3

    invoke-static {v1, p3, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 466
    return-object v0
.end method

.method protected bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 5
    .param p1, "pkSeed"    # [B
    .param p2, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .param p3, "m1"    # [B
    .param p4, "m2"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkSeed",
            "adrs",
            "m1",
            "m2"
        }
    .end annotation

    .line 471
    array-length v0, p3

    array-length v1, p4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 472
    .local v0, "mask":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 473
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v4, v4

    invoke-interface {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 474
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 475
    array-length v1, p3

    invoke-static {v1, p3, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 476
    array-length v1, p4

    array-length v2, p3

    invoke-static {v1, p4, v3, v0, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 477
    return-object v0
.end method

.method init([B)V
    .locals 0
    .param p1, "pkSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkSeed"
        }
    .end annotation

    .line 344
    return-void
.end method
