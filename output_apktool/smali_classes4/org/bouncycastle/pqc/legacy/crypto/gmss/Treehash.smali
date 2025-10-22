.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
.super Ljava/lang/Object;
.source "Treehash.java"


# instance fields
.field private firstNode:[B

.field private firstNodeHeight:I

.field private heightOfNodes:Ljava/util/Vector;

.field private isFinished:Z

.field private isInitialized:Z

.field private maxHeight:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private seedActive:[B

.field private seedInitialized:Z

.field private seedNext:[B

.field private tailLength:I

.field private tailStack:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;ILorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "tailStack"    # Ljava/util/Vector;
    .param p2, "maxHeight"    # I
    .param p3, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tailStack",
            "maxHeight",
            "digest"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    .line 152
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->maxHeight:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isInitialized:Z

    .line 155
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isFinished:Z

    .line 156
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedInitialized:Z

    .line 157
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedNext:[B

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedActive:[B

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .locals 6
    .param p1, "name"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "statByte"    # [[B
    .param p3, "statInt"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "statByte",
            "statInt"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 94
    const/4 v0, 0x0

    aget v1, p3, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->maxHeight:I

    .line 95
    const/4 v1, 0x1

    aget v2, p3, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    .line 96
    const/4 v2, 0x2

    aget v3, p3, v2

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 98
    const/4 v3, 0x3

    aget v3, p3, v3

    if-ne v3, v1, :cond_0

    .line 100
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isFinished:Z

    goto :goto_0

    .line 104
    :cond_0
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isFinished:Z

    .line 106
    :goto_0
    const/4 v3, 0x4

    aget v3, p3, v3

    if-ne v3, v1, :cond_1

    .line 108
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isInitialized:Z

    goto :goto_1

    .line 112
    :cond_1
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isInitialized:Z

    .line 114
    :goto_1
    const/4 v3, 0x5

    aget v3, p3, v3

    if-ne v3, v1, :cond_2

    .line 116
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedInitialized:Z

    goto :goto_2

    .line 120
    :cond_2
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedInitialized:Z

    .line 123
    :goto_2
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 124
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    if-ge v3, v4, :cond_3

    .line 126
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    add-int/lit8 v5, v3, 0x6

    aget v5, p3, v5

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 130
    .end local v3    # "i":I
    :cond_3
    aget-object v0, p2, v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    .line 131
    aget-object v0, p2, v1

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedActive:[B

    .line 132
    aget-object v0, p2, v2

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedNext:[B

    .line 134
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    if-ge v0, v1, :cond_4

    .line 137
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    add-int/lit8 v2, v0, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 139
    .end local v0    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isInitialized:Z

    .line 316
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isFinished:Z

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    .line 318
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 320
    return-void
.end method

.method public getFirstNode()[B
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    return-object v0
.end method

.method public getFirstNodeHeight()I
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    if-nez v0, :cond_0

    .line 356
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->maxHeight:I

    return v0

    .line 358
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    return v0
.end method

.method public getLowestNodeHeight()I
    .locals 2

    .line 332
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    if-nez v0, :cond_0

    .line 334
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->maxHeight:I

    return v0

    .line 336
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    if-nez v0, :cond_1

    .line 338
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    return v0

    .line 342
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 343
    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 342
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSeedActive()[B
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedActive:[B

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 5

    .line 446
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 447
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 448
    .local v0, "statByte":[[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    aput-object v3, v0, v1

    .line 449
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedActive:[B

    aput-object v1, v0, v4

    .line 450
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedNext:[B

    aput-object v1, v0, v2

    .line 451
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    if-ge v1, v2, :cond_0

    .line 453
    add-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v0, v2

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getStatInt()[I
    .locals 5

    .line 466
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [I

    .line 467
    .local v0, "statInt":[I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->maxHeight:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 468
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 469
    const/4 v1, 0x2

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    aput v4, v0, v1

    .line 470
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isFinished:Z

    const/4 v4, 0x3

    if-eqz v1, :cond_0

    .line 472
    aput v3, v0, v4

    goto :goto_0

    .line 476
    :cond_0
    aput v2, v0, v4

    .line 478
    :goto_0
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isInitialized:Z

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    .line 480
    aput v3, v0, v4

    goto :goto_1

    .line 484
    :cond_1
    aput v2, v0, v4

    .line 486
    :goto_1
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedInitialized:Z

    const/4 v4, 0x5

    if-eqz v1, :cond_2

    .line 488
    aput v3, v0, v4

    goto :goto_2

    .line 492
    :cond_2
    aput v2, v0, v4

    .line 494
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    if-ge v1, v2, :cond_3

    .line 496
    add-int/lit8 v2, v1, 0x6

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 498
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public getTailStack()Ljava/util/Vector;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    .line 182
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedInitialized:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    .line 190
    const/4 v1, -0x1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isInitialized:Z

    .line 192
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedNext:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedActive:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 193
    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 192
    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->maxHeight:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initializeSeed([B)V
    .locals 3
    .param p1, "seedIn"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seedIn"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedNext:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 172
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    .line 171
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedInitialized:Z

    .line 174
    return-void
.end method

.method public setFirstNode([B)V
    .locals 1
    .param p1, "hash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    .line 408
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isInitialized:Z

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->initialize()V

    .line 412
    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    .line 413
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->maxHeight:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isFinished:Z

    .line 415
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 506
    const-string v0, "Treehash    : "

    .line 507
    .local v0, "out":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x6

    const-string v3, " "

    if-ge v1, v2, :cond_0

    .line 509
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_2

    .line 513
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 515
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 519
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "null "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    return-object v0
.end method

.method public update(Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;[B)V
    .locals 8
    .param p1, "gmssRandom"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;
    .param p2, "leaf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gmssRandom",
            "leaf"
        }
    .end annotation

    .line 206
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isFinished:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 210
    const-string v1, "No more update possible for treehash instance!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    return-void

    .line 213
    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isInitialized:Z

    if-nez v0, :cond_1

    .line 216
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 217
    const-string v1, "Treehash instance not initialized before update"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 222
    .local v0, "help":[B
    const/4 v1, -0x1

    .line 224
    .local v1, "helpHeight":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedActive:[B

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 227
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 229
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    .line 230
    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    goto/16 :goto_1

    .line 235
    :cond_2
    move-object v0, p2

    .line 236
    const/4 v1, 0x0

    .line 239
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 240
    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 241
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 246
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 247
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    shl-int/2addr v2, v3

    new-array v2, v2, [B

    .line 250
    .local v2, "toBeHashed":[B
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 251
    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 250
    invoke-static {v5, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 253
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 254
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 256
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 257
    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 258
    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 256
    invoke-static {v0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v5, v2, v4, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 260
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v0, v5, [B

    .line 261
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v0, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 264
    add-int/lit8 v1, v1, 0x1

    .line 265
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    sub-int/2addr v5, v3

    iput v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    .line 266
    .end local v2    # "toBeHashed":[B
    goto :goto_0

    .line 269
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 270
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 271
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    .line 276
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    if-ne v2, v5, :cond_4

    .line 278
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 279
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    shl-int/2addr v2, v3

    new-array v2, v2, [B

    .line 280
    .restart local v2    # "toBeHashed":[B
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 281
    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 280
    invoke-static {v5, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 285
    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 286
    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    .line 284
    invoke-static {v5, v4, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 288
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 289
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 292
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v5, v2, v4, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 293
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    .line 294
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNode:[B

    invoke-interface {v5, v6, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 295
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 298
    iput v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->tailLength:I

    .line 303
    .end local v2    # "toBeHashed":[B
    :cond_4
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->firstNodeHeight:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->maxHeight:I

    if-ne v2, v4, :cond_5

    .line 305
    iput-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isFinished:Z

    .line 307
    :cond_5
    return-void
.end method

.method public updateNextSeed(Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;)V
    .locals 1
    .param p1, "gmssRandom"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gmssRandom"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->seedNext:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 426
    return-void
.end method

.method public wasFinished()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isFinished:Z

    return v0
.end method

.method public wasInitialized()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->isInitialized:Z

    return v0
.end method
