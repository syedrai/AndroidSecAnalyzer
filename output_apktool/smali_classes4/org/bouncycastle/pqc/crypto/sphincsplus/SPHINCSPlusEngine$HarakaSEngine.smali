.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.source "SPHINCSPlusEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HarakaSEngine"
.end annotation


# instance fields
.field private harakaS256Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

.field private harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

.field private harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 0
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

    .line 490
    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;-><init>(ZIIIIII)V

    .line 491
    return-void
.end method


# virtual methods
.method public F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5
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

    .line 502
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 503
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    .line 504
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->robust:Z

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS256Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->update([BII)V

    .line 507
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS256Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

    invoke-virtual {v1, v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->doFinal([BI)I

    .line 508
    array-length v1, p3

    invoke-static {v1, p3, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 509
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    array-length v2, p3

    invoke-virtual {v1, v0, v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    array-length v2, p3

    invoke-virtual {v1, p3, v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    .line 516
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    invoke-virtual {v1, v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->doFinal([BI)I

    .line 517
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1
.end method

.method public H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 6
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

    .line 522
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    new-array v0, v0, [B

    .line 523
    .local v0, "rv":[B
    array-length v1, p3

    array-length v2, p4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 524
    .local v1, "m":[B
    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    array-length v2, p3

    array-length v4, p4

    invoke-static {p4, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->bitmask(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v1

    .line 527
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v5, v5

    invoke-virtual {v2, v4, v3, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 528
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 529
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    .line 530
    return-object v0
.end method

.method H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
    .locals 18
    .param p1, "prf"    # [B
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
            "prf",
            "pkSeed",
            "pkRoot",
            "message"
        }
    .end annotation

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->A:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->K:I

    mul-int v4, v4, v5

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    .line 536
    .local v4, "forsMsgBytes":I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->H:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->D:I

    div-int/2addr v5, v6

    .line 537
    .local v5, "leafBits":I
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->H:I

    sub-int/2addr v6, v5

    .line 538
    .local v6, "treeBits":I
    add-int/lit8 v7, v5, 0x7

    shr-int/lit8 v7, v7, 0x3

    .line 539
    .local v7, "leafBytes":I
    add-int/lit8 v8, v6, 0x7

    shr-int/lit8 v8, v8, 0x3

    .line 540
    .local v8, "treeBytes":I
    add-int v9, v4, v7

    add-int/2addr v9, v8

    new-array v9, v9, [B

    .line 541
    .local v9, "out":[B
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v11, v1

    const/4 v12, 0x0

    invoke-virtual {v10, v1, v12, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 542
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v11, v2

    invoke-virtual {v10, v2, v12, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 543
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v11, v3

    invoke-virtual {v10, v3, v12, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 544
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v11, v9

    invoke-virtual {v10, v9, v12, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    .line 545
    const/16 v10, 0x8

    new-array v10, v10, [B

    .line 546
    .local v10, "treeIndexBuf":[B
    rsub-int/lit8 v11, v8, 0x8

    invoke-static {v9, v4, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    invoke-static {v10, v12}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v13

    .line 548
    .local v13, "treeIndex":J
    rsub-int/lit8 v11, v6, 0x40

    const-wide/16 v15, -0x1

    ushr-long/2addr v15, v11

    and-long/2addr v13, v15

    .line 550
    const/4 v11, 0x4

    new-array v11, v11, [B

    .line 551
    .local v11, "leafIndexBuf":[B
    add-int v15, v4, v8

    rsub-int/lit8 v12, v7, 0x4

    invoke-static {v9, v15, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v15

    .line 554
    .local v15, "leafIndex":I
    rsub-int/lit8 v16, v5, 0x20

    const/16 v17, -0x1

    ushr-int v16, v17, v16

    and-int v15, v15, v16

    .line 555
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    invoke-static {v9, v12, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    invoke-direct {v0, v13, v14, v15, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;-><init>(JI[B)V

    return-object v0
.end method

.method PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 5
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

    .line 570
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 571
    .local v0, "rv":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    iget-object v2, p3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    .line 572
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    array-length v2, p2

    invoke-virtual {v1, p2, v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->update([BII)V

    .line 573
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    invoke-virtual {v1, v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->doFinal([BI)I

    .line 574
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1
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

    .line 579
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    new-array v0, v0, [B

    .line 580
    .local v0, "rv":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 581
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v2, p2

    invoke-virtual {v1, p2, v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 582
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v2, p3

    invoke-virtual {v1, p3, v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 583
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    .line 584
    return-object v0
.end method

.method public T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
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

    .line 560
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->N:I

    new-array v0, v0, [B

    .line 561
    .local v0, "rv":[B
    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->bitmask(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p3

    .line 562
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 563
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v2, p3

    invoke-virtual {v1, p3, v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 564
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    .line 565
    return-object v0
.end method

.method protected bitmask(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5
    .param p1, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .param p2, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adrs",
            "m"
        }
    .end annotation

    .line 589
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->robust:Z

    if-eqz v0, :cond_0

    .line 591
    array-length v0, p2

    new-array v0, v0, [B

    .line 592
    .local v0, "mask":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    .line 593
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    .line 594
    array-length v1, p2

    invoke-static {v1, v0, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 596
    .end local v0    # "mask":[B
    :cond_0
    return-object p2
.end method

.method init([B)V
    .locals 2
    .param p1, "pkSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkSeed"
        }
    .end annotation

    .line 495
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    .line 496
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS256Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;

    .line 497
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaSXof:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$HarakaSEngine;->harakaS512Digest:Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;

    .line 498
    return-void
.end method
