.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
.super Ljava/lang/Object;
.source "GMSSRootCalc.java"


# instance fields
.field private AuthPath:[[B

.field private K:I

.field private digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

.field private heightOfNextSeed:I

.field private heightOfNodes:Ljava/util/Vector;

.field private heightOfTree:I

.field private index:[I

.field private indexForNextSeed:I

.field private isFinished:Z

.field private isInitialized:Z

.field private mdLength:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private retain:[Ljava/util/Vector;

.field private root:[B

.field private tailStack:Ljava/util/Vector;

.field private treehash:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V
    .locals 3
    .param p1, "heightOfTree"    # I
    .param p2, "K"    # I
    .param p3, "digestProvider"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "heightOfTree",
            "K",
            "digestProvider"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    .line 116
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    .line 117
    invoke-interface {p3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    .line 119
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    .line 120
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    .line 121
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p1, v1, v0

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    .line 122
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->root:[B

    .line 124
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v0, v2

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthPath()[[B
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getRetain()[Ljava/util/Vector;
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getStack()Ljava/util/Vector;
    .locals 3

    .line 404
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 405
    .local v0, "copy":Ljava/util/Vector;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_0
    return-object v0
.end method

.method public getStatByte()[[B
    .locals 6

    .line 421
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .local v0, "tailLength":I
    goto :goto_0

    .line 427
    .end local v0    # "tailLength":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 429
    .restart local v0    # "tailLength":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/16 v4, 0x40

    aput v4, v3, v2

    const/4 v4, 0x0

    aput v1, v3, v4

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 430
    .local v1, "statByte":[[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->root:[B

    aput-object v3, v1, v4

    .line 432
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v3, v4, :cond_1

    .line 434
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v5, v5, v3

    aput-object v5, v1, v4

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 436
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 438
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aput-object v5, v1, v4

    .line 436
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 441
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public getStatInt()[I
    .locals 6

    .line 453
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .local v0, "tailLength":I
    goto :goto_0

    .line 459
    .end local v0    # "tailLength":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 461
    .restart local v0    # "tailLength":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    new-array v1, v1, [I

    .line 462
    .local v1, "statInt":[I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 463
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 464
    const/4 v2, 0x2

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    aput v5, v1, v2

    .line 465
    const/4 v2, 0x3

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    aput v5, v1, v2

    .line 466
    const/4 v2, 0x4

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    aput v5, v1, v2

    .line 467
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isFinished:Z

    const/4 v5, 0x5

    if-eqz v2, :cond_1

    .line 469
    aput v4, v1, v5

    goto :goto_1

    .line 473
    :cond_1
    aput v3, v1, v5

    .line 475
    :goto_1
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    const/4 v5, 0x6

    if-eqz v2, :cond_2

    .line 477
    aput v4, v1, v5

    goto :goto_2

    .line 481
    :cond_2
    aput v3, v1, v5

    .line 483
    :goto_2
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 485
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v2, v3, :cond_3

    .line 487
    add-int/lit8 v3, v2, 0x8

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v4, v4, v2

    aput v4, v1, v3

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 489
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_4

    .line 491
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 492
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 495
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method public getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSUtils;->clone([Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/Vector;)V
    .locals 5
    .param p1, "sharedStack"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedStack"
        }
    .end annotation

    .line 139
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v0, v1

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;-><init>(Ljava/util/Vector;ILorg/bouncycastle/crypto/Digest;)V

    aput-object v2, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    .line 146
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    .line 147
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->root:[B

    .line 149
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    .line 150
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 151
    iput-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    .line 152
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isFinished:Z

    .line 154
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v2, :cond_1

    .line 156
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v4, -0x1

    aput v4, v2, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v0, v3

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    .line 160
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 162
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v2, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    .line 166
    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    .line 167
    return-void
.end method

.method public initializeTreehashSeed([BI)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "index"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->initializeSeed([B)V

    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 503
    const-string v0, ""

    .line 505
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 507
    const/4 v1, 0x0

    .local v1, "tailLength":I
    goto :goto_0

    .line 511
    .end local v1    # "tailLength":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 514
    .restart local v1    # "tailLength":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v1

    const-string v4, " "

    if-ge v2, v3, :cond_1

    .line 516
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 518
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 520
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 522
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    return-object v0
.end method

.method public update([B)V
    .locals 9
    .param p1, "leaf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leaf"
        }
    .end annotation

    .line 197
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isFinished:Z

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Too much updates for Tree!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 201
    return-void

    .line 203
    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    if-nez v0, :cond_1

    .line 206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "GMSSRootCalc not initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 214
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v1

    const/4 v2, 0x3

    if-ne v0, v3, :cond_2

    .line 216
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v0, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {p1, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_3

    .line 221
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    if-le v0, v4, :cond_3

    .line 223
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->setFirstNode([B)V

    .line 227
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v1

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v1

    if-lt v0, v2, :cond_4

    .line 230
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    if-ne v0, v4, :cond_4

    .line 233
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 238
    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v0, v0, v1

    if-nez v0, :cond_5

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 246
    :cond_5
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v0, v0, [B

    .line 247
    .local v0, "help":[B
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    shl-int/2addr v4, v3

    new-array v4, v4, [B

    .line 250
    .local v4, "toBeHashed":[B
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {p1, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    const/4 v5, 0x0

    .line 253
    .local v5, "helpHeight":I
    :cond_6
    :goto_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 254
    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 255
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 259
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v6

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v6, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/util/Vector;->removeElementAt(I)V

    .line 262
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/util/Vector;->removeElementAt(I)V

    .line 263
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v0, v1, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    array-length v7, v4

    invoke-interface {v6, v4, v1, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 266
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v0, v6, [B

    .line 267
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 270
    add-int/lit8 v5, v5, 0x1

    .line 271
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v5, v6, :cond_6

    .line 273
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v7, v6, v5

    add-int/2addr v7, v3

    aput v7, v6, v5

    .line 276
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v6, v6, v5

    if-ne v6, v3, :cond_7

    .line 278
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v6, v6, v5

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v0, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    :cond_7
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_9

    .line 284
    if-nez v5, :cond_8

    .line 287
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "M\ufffd\ufffd\ufffdP"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    :cond_8
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v6, v6, v5

    sub-int/2addr v6, v2

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_6

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v6, v6, v5

    if-lt v6, v2, :cond_6

    .line 296
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v7, v8

    sub-int v7, v5, v7

    aget-object v6, v6, v7

    .line 297
    invoke-virtual {v6, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 303
    :cond_9
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    aget v6, v6, v5

    if-ne v6, v2, :cond_6

    .line 305
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v6, v6, v5

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->setFirstNode([B)V

    goto/16 :goto_1

    .line 311
    :cond_a
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 312
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 315
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ne v5, v2, :cond_b

    .line 317
    iput-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isFinished:Z

    .line 318
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    .line 319
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->root:[B

    .line 323
    .end local v0    # "help":[B
    .end local v4    # "toBeHashed":[B
    .end local v5    # "helpHeight":I
    :cond_b
    :goto_2
    return-void
.end method

.method public update([B[B)V
    .locals 3
    .param p1, "seed"    # [B
    .param p2, "leaf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "leaf"
        }
    .end annotation

    .line 179
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    .line 182
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    .line 183
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    .line 184
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    .line 187
    :cond_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 188
    return-void
.end method

.method public wasFinished()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isFinished:Z

    return v0
.end method

.method public wasInitialized()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    return v0
.end method
