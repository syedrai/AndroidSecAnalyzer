.class Lorg/bouncycastle/pqc/crypto/picnic/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final MAX_SEED_SIZE_BYTES:I = 0x20


# instance fields
.field private dataSize:I

.field private depth:I

.field private engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

.field private exists:[Z

.field private haveNode:[Z

.field nodes:[[B

.field private numLeaves:I

.field private numNodes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V
    .locals 6
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    .param p2, "numLeaves"    # I
    .param p3, "dataSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "engine",
            "numLeaves",
            "dataSize"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    .line 41
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    .line 42
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    sub-int/2addr v2, v1

    shl-int v2, v1, v2

    sub-int/2addr v2, p2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    .line 43
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    .line 44
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    .line 45
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    aput p3, v3, v1

    const/4 v4, 0x0

    aput v0, v3, v4

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge v0, v3, :cond_0

    .line 49
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    new-array v5, p3, [B

    aput-object v5, v3, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    .line 54
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v3, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    invoke-static {v0, v3, v5, v1}, Lorg/bouncycastle/util/Arrays;->fill([ZIIZ)V

    .line 58
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v3

    .restart local v0    # "i":I
    :goto_1
    if-lez v0, :cond_3

    .line 60
    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v3

    if-nez v3, :cond_1

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    aput-boolean v1, v3, v0

    .line 58
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 65
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    aput-boolean v1, v0, v4

    .line 66
    return-void
.end method

.method private computeParentHash(I[B)V
    .locals 7
    .param p1, "child"    # I
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "salt"
        }
    .end annotation

    .line 406
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    return-void

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v0

    .line 413
    .local v0, "parent":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 415
    return-void

    .line 419
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    .line 421
    return-void

    .line 424
    :cond_2
    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v2

    aget-boolean v1, v1, v4

    if-nez v1, :cond_3

    .line 426
    return-void

    .line 430
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 431
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 432
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hasRightChild(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 435
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, v4, v6, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 437
    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v4, 0x20

    invoke-interface {v1, p2, v6, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 438
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v4

    invoke-interface {v1, v4, v6, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 439
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, v2, v6, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 440
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aput-boolean v3, v1, v0

    .line 441
    return-void
.end method

.method private contains([III)Z
    .locals 2
    .param p1, "list"    # [I
    .param p2, "len"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "len",
            "value"
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 396
    aget v1, p1, v0

    if-ne v1, p3, :cond_0

    .line 398
    const/4 v1, 0x1

    return v1

    .line 394
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private exists(I)Z
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 569
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-lt p1, v0, :cond_0

    .line 571
    const/4 v0, 0x0

    return v0

    .line 573
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private expandSeeds([BI)V
    .locals 9
    .param p1, "salt"    # [B
    .param p2, "repIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "repIndex"
        }
    .end annotation

    .line 496
    const/16 v0, 0x40

    new-array v2, v0, [B

    .line 500
    .local v2, "tmp":[B
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v0

    .line 502
    .local v0, "lastNonLeaf":I
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_0
    if-gt v7, v0, :cond_3

    .line 504
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v1, v1, v7

    if-nez v1, :cond_0

    .line 506
    move-object v1, p0

    move-object v4, p1

    move v6, p2

    goto :goto_1

    .line 509
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v3, v1, v7

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    .end local p1    # "salt":[B
    .end local p2    # "repIndex":I
    .local v4, "salt":[B
    .local v6, "repIndex":I
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hashSeed([B[B[BBII)V

    .line 511
    iget-object p1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 p2, v7, 0x2

    add-int/2addr p2, v8

    aget-boolean p1, p1, p2

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 514
    iget-object p1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    mul-int/lit8 v3, v7, 0x2

    add-int/2addr v3, v8

    aget-object p1, p1, v3

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v2, p2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    iget-object p1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v3, v7, 0x2

    add-int/2addr v3, v8

    aput-boolean v8, p1, v3

    .line 519
    :cond_1
    mul-int/lit8 p1, v7, 0x2

    add-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v3, v7, 0x2

    add-int/lit8 v3, v3, 0x2

    aget-boolean p1, p1, v3

    if-nez p1, :cond_2

    .line 522
    iget-object p1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    mul-int/lit8 v5, v7, 0x2

    add-int/lit8 v5, v5, 0x2

    aget-object v3, v3, v5

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v2, p1, v3, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    iget-object p1, v1, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 p2, v7, 0x2

    add-int/lit8 p2, p2, 0x2

    aput-boolean v8, p1, p2

    .line 502
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object p1, v4

    move p2, v6

    goto :goto_0

    .line 527
    .end local v4    # "salt":[B
    .end local v6    # "repIndex":I
    .end local v7    # "i":I
    .restart local p1    # "salt":[B
    .restart local p2    # "repIndex":I
    :cond_3
    return-void
.end method

.method private getParent(I)I
    .locals 1
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 560
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeftChild(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 564
    :cond_0
    add-int/lit8 v0, p1, -0x2

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getRevealedMerkleNodes([II[I)[I
    .locals 8
    .param p1, "missingLeaves"    # [I
    .param p2, "missingLeavesSize"    # I
    .param p3, "outputSize"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "missingLeaves",
            "missingLeavesSize",
            "outputSize"
        }
    .end annotation

    .line 333
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    .line 334
    .local v0, "firstLeaf":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    new-array v1, v1, [Z

    .line 337
    .local v1, "missingNodes":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, p2, :cond_0

    .line 339
    aget v4, p1, v2

    add-int/2addr v4, v0

    aput-boolean v3, v1, v4

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v2

    .line 344
    .local v2, "lastNonLeaf":I
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-lez v4, :cond_4

    .line 346
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 348
    goto :goto_2

    .line 350
    :cond_1
    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-direct {p0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    aget-boolean v5, v1, v5

    if-eqz v5, :cond_3

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x2

    aget-boolean v5, v1, v5

    if-eqz v5, :cond_3

    .line 354
    aput-boolean v3, v1, v4

    goto :goto_2

    .line 359
    :cond_2
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    aget-boolean v5, v1, v5

    if-eqz v5, :cond_3

    .line 361
    aput-boolean v3, v1, v4

    .line 344
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 368
    .end local v4    # "i":I
    :cond_4
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    new-array v3, v3, [I

    .line 369
    .local v3, "revealed":[I
    const/4 v4, 0x0

    .line 370
    .local v4, "pos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, p2, :cond_8

    .line 372
    aget v6, p1, v5

    add-int/2addr v6, v0

    .line 375
    .local v6, "node":I
    :cond_5
    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v7

    aget-boolean v7, v1, v7

    if-nez v7, :cond_6

    .line 377
    invoke-direct {p0, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->contains([III)Z

    move-result v7

    if-nez v7, :cond_7

    .line 379
    aput v6, v3, v4

    .line 380
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 384
    :cond_6
    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v7

    move v6, v7

    if-nez v7, :cond_5

    .line 370
    .end local v6    # "node":I
    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 388
    .end local v5    # "i":I
    :cond_8
    const/4 v5, 0x0

    aput v4, p3, v5

    .line 389
    return-object v3
.end method

.method private getRevealedNodes([II[I)[I
    .locals 10
    .param p1, "hideList"    # [I
    .param p2, "hideListSize"    # I
    .param p3, "outputSize"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hideList",
            "hideListSize",
            "outputSize"
        }
    .end annotation

    .line 183
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 187
    .local v0, "pathLen":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p2, v2, v1

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 190
    .local v2, "pathSets":[[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_1

    .line 192
    const/4 v5, 0x0

    .line 193
    .local v5, "pos":I
    aget v6, p1, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 194
    .local v6, "node":I
    aget-object v7, v2, v5

    aput v6, v7, v4

    .line 195
    add-int/2addr v5, v1

    .line 196
    :goto_1
    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v7

    move v6, v7

    if-eqz v7, :cond_0

    .line 198
    aget-object v7, v2, v5

    aput v6, v7, v4

    .line 199
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    .end local v5    # "pos":I
    .end local v6    # "node":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    .end local v4    # "i":I
    :cond_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    new-array v4, v4, [I

    .line 205
    .local v4, "revealed":[I
    const/4 v5, 0x0

    .line 206
    .local v5, "revealedPos":I
    const/4 v6, 0x0

    .local v6, "d":I
    :goto_2
    if-ge v6, v0, :cond_6

    .line 208
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, p2, :cond_5

    .line 210
    aget-object v8, v2, v6

    aget v8, v8, v7

    invoke-direct {p0, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hasSibling(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 212
    goto :goto_5

    .line 214
    :cond_2
    aget-object v8, v2, v6

    aget v8, v8, v7

    invoke-direct {p0, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getSibling(I)I

    move-result v8

    .line 215
    .local v8, "sibling":I
    aget-object v9, v2, v6

    invoke-direct {p0, v9, p2, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->contains([III)Z

    move-result v9

    if-nez v9, :cond_4

    .line 218
    :goto_4
    invoke-direct {p0, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hasRightChild(I)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-direct {p0, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeafNode(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 220
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v8, v9, 0x1

    goto :goto_4

    .line 224
    :cond_3
    invoke-direct {p0, v4, v5, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->contains([III)Z

    move-result v9

    if-nez v9, :cond_4

    .line 226
    aput v8, v4, v5

    .line 227
    add-int/lit8 v5, v5, 0x1

    .line 208
    .end local v8    # "sibling":I
    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 206
    .end local v7    # "i":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 236
    .end local v6    # "d":I
    :cond_6
    aput v5, p3, v3

    .line 237
    return-object v4
.end method

.method private getSibling(I)I
    .locals 5
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeftChild(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge v0, v1, :cond_0

    .line 250
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 254
    :cond_0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "getSibling"

    const-string v3, "getSibling: request for node with not sibling"

    const-string v4, "org.bouncycastle.pqc.crypto.picnic.Tree"

    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    return v0

    .line 260
    :cond_1
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private hasRightChild(I)Z
    .locals 2
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 548
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasSibling(I)Z
    .locals 2
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 272
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 274
    return v1

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeftChild(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    return v1

    .line 282
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private hashSeed([B[B[BBII)V
    .locals 5
    .param p1, "digest_arr"    # [B
    .param p2, "inputSeed"    # [B
    .param p3, "salt"    # [B
    .param p4, "hashPrefix"    # B
    .param p5, "repIndex"    # I
    .param p6, "nodeIndex"    # I
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
            "digest_arr",
            "inputSeed",
            "salt",
            "hashPrefix",
            "repIndex",
            "nodeIndex"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p4}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 532
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 533
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v1, 0x20

    invoke-interface {v0, p3, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 534
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const v1, 0xffff

    and-int v3, p5, v1

    int-to-short v3, v3

    invoke-static {v3}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v3, v2, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 535
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    and-int/2addr v1, p6

    int-to-short v1, v1

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v1

    invoke-interface {v0, v1, v2, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 536
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 538
    return-void
.end method

.method private isLeafNode(I)Z
    .locals 3
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 266
    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLeftChild(I)Z
    .locals 2
    .param p1, "node"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 543
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected addMerkleNodes([II[BI)I
    .locals 9
    .param p1, "missingLeaves"    # [I
    .param p2, "missingLeavesSize"    # I
    .param p3, "input"    # [B
    .param p4, "inputSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "missingLeaves",
            "missingLeavesSize",
            "input",
            "inputSize"
        }
    .end annotation

    .line 460
    move v0, p4

    .line 462
    .local v0, "intLen":I
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 463
    .local v2, "revealedSize":[I
    const/4 v3, 0x0

    aput v3, v2, v3

    .line 464
    invoke-direct {p0, p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedMerkleNodes([II[I)[I

    move-result-object v4

    .line 468
    .local v4, "revealed":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    aget v6, v2, v3

    const/4 v7, -0x1

    if-ge v5, v6, :cond_1

    .line 470
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    sub-int/2addr v0, v6

    .line 471
    if-gez v0, :cond_0

    .line 473
    return v7

    .line 475
    :cond_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    mul-int v6, v6, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v8, v4, v5

    aget-object v7, v7, v8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    invoke-static {p3, v6, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget v7, v4, v5

    aput-boolean v1, v6, v7

    .line 468
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    .end local v5    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 481
    return v7

    .line 484
    :cond_2
    return v3
.end method

.method protected buildMerkleTree([[B[B)V
    .locals 6
    .param p1, "leafData"    # [[B
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leafData",
            "salt"
        }
    .end annotation

    .line 72
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    .line 76
    .local v0, "firstLeaf":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    if-ge v1, v2, :cond_1

    .line 78
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 80
    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    add-int v4, v0, v1

    aget-object v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    add-int v3, v0, v1

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    .restart local v1    # "i":I
    :goto_1
    if-lez v1, :cond_2

    .line 87
    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->computeParentHash(I[B)V

    .line 85
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 89
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected generateSeeds([B[BI)V
    .locals 3
    .param p1, "rootSeed"    # [B
    .param p2, "salt"    # [B
    .param p3, "repIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootSeed",
            "salt",
            "repIndex"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 490
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 491
    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->expandSeeds([BI)V

    .line 492
    return-void
.end method

.method protected getLeaf(I)[B
    .locals 3
    .param p1, "leafIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leafIndex"
        }
    .end annotation

    .line 447
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    .line 448
    .local v0, "firstLeaf":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    add-int v2, v0, p1

    aget-object v1, v1, v2

    return-object v1
.end method

.method protected getLeaves()[[B
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    return-object v0
.end method

.method protected getLeavesOffset()I
    .locals 2

    .line 33
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    return v0
.end method

.method hasLeftChild(Lorg/bouncycastle/pqc/crypto/picnic/Tree;I)Z
    .locals 3
    .param p1, "tree"    # Lorg/bouncycastle/pqc/crypto/picnic/Tree;
    .param p2, "node"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tree",
            "node"
        }
    .end annotation

    .line 553
    mul-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected openMerkleTree([II[I)[B
    .locals 9
    .param p1, "missingLeaves"    # [I
    .param p2, "missingLeavesSize"    # I
    .param p3, "outputSizeBytes"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "missingLeaves",
            "missingLeavesSize",
            "outputSizeBytes"
        }
    .end annotation

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 164
    .local v0, "revealedSize":[I
    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedMerkleNodes([II[I)[I

    move-result-object v1

    .line 167
    .local v1, "revealed":[I
    const/4 v2, 0x0

    aget v3, v0, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    mul-int v3, v3, v4

    aput v3, p3, v2

    .line 168
    aget v3, p3, v2

    new-array v3, v3, [B

    .line 169
    .local v3, "output":[B
    move-object v4, v3

    .line 171
    .local v4, "outputBase":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    aget v6, v0, v2

    if-ge v5, v6, :cond_0

    .line 173
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v7, v1, v5

    aget-object v6, v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    mul-int v7, v7, v5

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    invoke-static {v6, v2, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    .end local v5    # "i":I
    :cond_0
    return-object v4
.end method

.method protected openMerkleTreeSize([II)I
    .locals 3
    .param p1, "missingLeaves"    # [I
    .param p2, "missingLeavesSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "missingLeaves",
            "missingLeavesSize"
        }
    .end annotation

    .line 324
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 326
    .local v0, "revealedSize":[I
    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedMerkleNodes([II[I)[I

    .line 327
    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    mul-int v1, v1, v2

    return v1
.end method

.method protected reconstructSeeds([II[BI[BI)I
    .locals 10
    .param p1, "hideList"    # [I
    .param p2, "hideListSize"    # I
    .param p3, "input"    # [B
    .param p4, "inputLen"    # I
    .param p5, "salt"    # [B
    .param p6, "repIndex"    # I
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
            "hideList",
            "hideListSize",
            "input",
            "inputLen",
            "salt",
            "repIndex"
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    .line 139
    .local v0, "ret":I
    move v1, p4

    .line 141
    .local v1, "inLen":I
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 142
    .local v3, "revealedSize":[I
    const/4 v4, 0x0

    aput v4, v3, v4

    .line 143
    invoke-direct {p0, p1, p2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedNodes([II[I)[I

    move-result-object v5

    .line 144
    .local v5, "revealed":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    aget v7, v3, v4

    if-ge v6, v7, :cond_1

    .line 146
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    sub-int/2addr v1, v7

    .line 147
    if-gez v1, :cond_0

    .line 149
    const/4 v2, -0x1

    return v2

    .line 151
    :cond_0
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v7, v7, v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v9, v5, v6

    aget-object v8, v8, v9

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v7, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget v8, v5, v6

    aput-boolean v2, v7, v8

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 155
    .end local v6    # "i":I
    :cond_1
    move/from16 v4, p6

    invoke-direct {p0, p5, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->expandSeeds([BI)V

    .line 157
    return v0
.end method

.method protected revealSeeds([II[BI)I
    .locals 10
    .param p1, "hideList"    # [I
    .param p2, "hideListSize"    # I
    .param p3, "output"    # [B
    .param p4, "outputSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hideList",
            "hideListSize",
            "output",
            "outputSize"
        }
    .end annotation

    .line 298
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 299
    .local v0, "revealedSize":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 305
    move v2, p4

    .line 308
    .local v2, "outLen":I
    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedNodes([II[I)[I

    move-result-object v3

    .line 309
    .local v3, "revealed":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    aget v5, v0, v1

    if-ge v4, v5, :cond_1

    .line 311
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    sub-int/2addr v2, v5

    .line 312
    if-gez v2, :cond_0

    .line 314
    sget-object v5, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "revealSeeds"

    const-string v8, "Insufficient sized buffer provided to revealSeeds"

    const-string v9, "org.bouncycastle.pqc.crypto.picnic.Tree"

    invoke-virtual {v5, v6, v9, v7, v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return v1

    .line 317
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v6, v3, v4

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v6, v6, v4

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v5, v1, p3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 319
    .end local v4    # "i":I
    :cond_1
    array-length v1, p3

    sub-int/2addr v1, v2

    return v1
.end method

.method protected revealSeedsSize([II)I
    .locals 3
    .param p1, "hideList"    # [I
    .param p2, "hideListSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hideList",
            "hideListSize"
        }
    .end annotation

    .line 288
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 289
    .local v0, "numNodesRevealed":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 291
    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedNodes([II[I)[I

    .line 292
    aget v1, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v1, v1, v2

    return v1
.end method

.method protected verifyMerkleTree([[B[B)I
    .locals 6
    .param p1, "leafData"    # [[B
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leafData",
            "salt"
        }
    .end annotation

    .line 94
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    .line 98
    .local v0, "firstLeaf":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_2

    .line 100
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    add-int v5, v0, v1

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_0

    .line 104
    return v3

    .line 107
    :cond_0
    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 109
    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    add-int v5, v0, v1

    aget-object v3, v3, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    add-int v3, v0, v1

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    .restart local v1    # "i":I
    :goto_1
    if-lez v1, :cond_3

    .line 119
    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->computeParentHash(I[B)V

    .line 117
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 123
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_4

    .line 125
    return v3

    .line 127
    :cond_4
    return v4
.end method
