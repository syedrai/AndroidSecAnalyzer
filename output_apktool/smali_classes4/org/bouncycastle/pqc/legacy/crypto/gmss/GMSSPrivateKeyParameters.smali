.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;
.source "GMSSPrivateKeyParameters.java"


# instance fields
.field private K:[I

.field private currentAuthPaths:[[[B

.field private currentRetain:[[Ljava/util/Vector;

.field private currentRootSig:[[B

.field private currentSeeds:[[B

.field private currentStack:[Ljava/util/Vector;

.field private currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

.field private digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

.field private gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private index:[I

.field private keep:[[[B

.field private mdLength:I

.field private messDigestTrees:Lorg/bouncycastle/crypto/Digest;

.field private minTreehash:[I

.field private nextAuthPaths:[[[B

.field private nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

.field private nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

.field private nextNextSeeds:[[B

.field private nextRetain:[[Ljava/util/Vector;

.field private nextRoot:[[B

.field private nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

.field private nextStack:[Ljava/util/Vector;

.field private nextTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

.field private numLayer:I

.field private numLeafs:[I

.field private otsIndex:[I

.field private upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

.field private upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

.field private used:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;)V
    .locals 2
    .param p1, "original"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "original"
        }
    .end annotation

    .line 371
    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    .line 373
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    .line 374
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    .line 375
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    .line 376
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    .line 377
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    .line 378
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 379
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 380
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    .line 381
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    .line 382
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    .line 383
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    .line 384
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    .line 385
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 386
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 387
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 388
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    .line 389
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    .line 390
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    .line 391
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    .line 392
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    .line 393
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    .line 394
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    .line 395
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    .line 396
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    .line 397
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    .line 398
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    .line 399
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    .line 400
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 401
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 402
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    .line 403
    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V
    .locals 23
    .param p1, "index"    # [I
    .param p2, "currentSeeds"    # [[B
    .param p3, "nextNextSeeds"    # [[B
    .param p4, "currentAuthPaths"    # [[[B
    .param p5, "nextAuthPaths"    # [[[B
    .param p6, "keep"    # [[[B
    .param p7, "currentTreehash"    # [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .param p8, "nextTreehash"    # [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .param p9, "currentStack"    # [Ljava/util/Vector;
    .param p10, "nextStack"    # [Ljava/util/Vector;
    .param p11, "currentRetain"    # [[Ljava/util/Vector;
    .param p12, "nextRetain"    # [[Ljava/util/Vector;
    .param p13, "nextNextLeaf"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .param p14, "upperLeaf"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .param p15, "upperTreehashLeaf"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .param p16, "minTreehash"    # [I
    .param p17, "nextRoot"    # [[B
    .param p18, "nextNextRoot"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    .param p19, "currentRootSig"    # [[B
    .param p20, "nextRootSig"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;
    .param p21, "gmssParameterset"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
    .param p22, "digestProvider"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;
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
            "index",
            "currentSeeds",
            "nextNextSeeds",
            "currentAuthPaths",
            "nextAuthPaths",
            "keep",
            "currentTreehash",
            "nextTreehash",
            "currentStack",
            "nextStack",
            "currentRetain",
            "nextRetain",
            "nextNextLeaf",
            "upperLeaf",
            "upperTreehashLeaf",
            "minTreehash",
            "nextRoot",
            "nextNextRoot",
            "currentRootSig",
            "nextRootSig",
            "gmssParameterset",
            "digestProvider"
        }
    .end annotation

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v12, p20

    move-object/from16 v13, p21

    const/4 v14, 0x1

    invoke-direct {v0, v14, v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V

    .line 52
    const/4 v15, 0x0

    iput-boolean v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    .line 172
    const/16 v16, 0x0

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v15

    iput-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    .line 173
    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v15}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v15

    iput v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 177
    iput-object v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    .line 178
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v15

    iput-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    .line 179
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v15

    iput-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    .line 180
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v15

    iput-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    .line 182
    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v15

    iput v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    .line 185
    if-nez v1, :cond_1

    .line 187
    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v15, v15, [I

    iput-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    .line 188
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v17, 0x1

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v15, v14, :cond_0

    .line 190
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aput v16, v14, v15

    .line 188
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x1

    goto :goto_0

    .end local v15    # "i":I
    :cond_0
    goto :goto_1

    .line 195
    :cond_1
    const/16 v17, 0x1

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    .line 198
    :goto_1
    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    .line 199
    move-object/from16 v14, p3

    iput-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    .line 201
    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v15

    iput-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    .line 202
    move-object/from16 v15, p5

    iput-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    .line 205
    if-nez v3, :cond_3

    .line 207
    const/16 v18, 0x2

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v1, v1, [[[B

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v1, v2, :cond_2

    .line 210
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    move/from16 v19, v1

    .end local v1    # "i":I
    .local v19, "i":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v1, v1, v19

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v20, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v21, v1

    move/from16 v22, v2

    const/4 v1, 0x2

    new-array v2, v1, [I

    aput v22, v2, v17

    aput v21, v2, v16

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    aput-object v1, v20, v19

    .line 208
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v2, p2

    const/16 v18, 0x2

    .end local v19    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    :cond_2
    move/from16 v19, v1

    .end local v1    # "i":I
    goto :goto_3

    .line 215
    :cond_3
    iput-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    .line 219
    :goto_3
    if-nez v4, :cond_5

    .line 221
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    .line 222
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v1, v2, :cond_4

    .line 224
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    aput-object v19, v2, v1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    :cond_4
    goto :goto_5

    .line 229
    :cond_5
    iput-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    .line 233
    :goto_5
    if-nez v5, :cond_7

    .line 235
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    .line 236
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    .line 238
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    aput-object v19, v2, v1

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v1    # "i":I
    :cond_6
    goto :goto_7

    .line 243
    :cond_7
    iput-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    .line 246
    :goto_7
    move-object/from16 v1, p7

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 247
    move-object/from16 v2, p8

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 249
    move-object/from16 v1, p11

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    .line 250
    move-object/from16 v1, p12

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    .line 252
    iput-object v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    .line 254
    move-object/from16 v1, p22

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    .line 256
    if-nez v11, :cond_9

    .line 258
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    .line 259
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    .line 261
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    move-object/from16 v20, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v21, v19, 0x1

    aget v2, v2, v21

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    add-int/lit8 v21, v19, 0x1

    aget v3, v3, v21

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V

    aput-object v1, v20, v19

    .line 259
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v3, p6

    move-object/from16 v2, p8

    move-object/from16 v4, p9

    .end local v19    # "i":I
    .restart local v1    # "i":I
    goto :goto_8

    :cond_8
    move/from16 v19, v1

    .end local v1    # "i":I
    goto :goto_9

    .line 267
    :cond_9
    iput-object v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    .line 269
    :goto_9
    move-object/from16 v1, p19

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    .line 272
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    .line 273
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v2, v3, :cond_a

    .line 275
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v4, v4, v2

    shl-int v4, v17, v4

    aput v4, v3, v2

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 278
    .end local v2    # "i":I
    :cond_a
    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 280
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    .line 284
    if-nez v6, :cond_c

    .line 286
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/16 v18, 0x2

    add-int/lit8 v2, v2, -0x2

    new-array v2, v2, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 287
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_b

    .line 289
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    move/from16 v19, v2

    .end local v2    # "i":I
    .restart local v19    # "i":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    add-int/lit8 v20, v19, 0x1

    aget v2, v2, v20

    move-object/from16 v20, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v21, v19, 0x2

    aget v3, v3, v21

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    aget-object v5, v5, v19

    invoke-direct {v4, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II[B)V

    aput-object v4, v20, v19

    .line 287
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v5, p10

    move-object/from16 v1, p19

    .end local v19    # "i":I
    .restart local v2    # "i":I
    goto :goto_b

    :cond_b
    move/from16 v19, v2

    .end local v2    # "i":I
    goto :goto_c

    .line 294
    :cond_c
    iput-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    goto :goto_c

    .line 299
    :cond_d
    const/4 v1, 0x0

    new-array v2, v1, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 304
    :goto_c
    if-nez v7, :cond_f

    .line 306
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 307
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_e

    .line 309
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v5, v5, v1

    move/from16 v18, v1

    .end local v1    # "i":I
    .local v18, "i":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v19, v18, 0x1

    aget v1, v1, v19

    move-object/from16 v19, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v2, v2, v18

    invoke-direct {v3, v4, v5, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II[B)V

    aput-object v3, v19, v18

    .line 307
    add-int/lit8 v1, v18, 0x1

    const/16 v17, 0x1

    .end local v18    # "i":I
    .restart local v1    # "i":I
    goto :goto_d

    :cond_e
    move/from16 v18, v1

    .end local v1    # "i":I
    goto :goto_e

    .line 315
    :cond_f
    iput-object v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 320
    :goto_e
    if-nez v8, :cond_11

    .line 322
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 323
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_10

    .line 325
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v5, v5, v1

    move/from16 v18, v1

    .end local v1    # "i":I
    .restart local v18    # "i":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v19, v18, 0x1

    aget v1, v1, v19

    invoke-direct {v3, v4, v5, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II)V

    aput-object v3, v2, v18

    .line 323
    add-int/lit8 v1, v18, 0x1

    const/16 v17, 0x1

    .end local v18    # "i":I
    .restart local v1    # "i":I
    goto :goto_f

    :cond_10
    move/from16 v18, v1

    .end local v1    # "i":I
    goto :goto_10

    .line 330
    :cond_11
    iput-object v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    .line 333
    :goto_10
    if-nez v9, :cond_13

    .line 335
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    .line 336
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_11
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_12

    .line 338
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    const/16 v17, 0x1

    goto :goto_11

    .end local v1    # "i":I
    :cond_12
    goto :goto_12

    .line 343
    :cond_13
    iput-object v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    .line 347
    :goto_12
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v1, v1, [B

    .line 348
    .local v1, "dummy":[B
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v2, v2, [B

    .line 349
    .local v2, "OTSseed":[B
    if-nez v12, :cond_15

    .line 351
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/16 v17, 0x1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    iput-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    .line 352
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_14

    .line 354
    aget-object v4, p2, v3

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "OTSseed":[B
    .local v18, "OTSseed":[B
    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 356
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v4

    .line 357
    .end local v18    # "OTSseed":[B
    .local v4, "OTSseed":[B
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    move-object/from16 v19, v1

    .end local v1    # "dummy":[B
    .local v19, "dummy":[B
    invoke-interface/range {p22 .. p22}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    move/from16 v20, v3

    .end local v3    # "i":I
    .local v20, "i":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v3, v3, v20

    move-object/from16 v18, v5

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v21, v20, 0x1

    aget v5, v5, v21

    invoke-direct {v2, v1, v3, v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;-><init>(Lorg/bouncycastle/crypto/Digest;II)V

    aput-object v2, v18, v20

    .line 359
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    aget-object v1, v1, v20

    aget-object v2, v10, v20

    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->initSign([B[B)V

    .line 352
    add-int/lit8 v3, v20, 0x1

    move-object v2, v4

    move-object/from16 v1, v19

    .end local v20    # "i":I
    .restart local v3    # "i":I
    goto :goto_13

    .end local v4    # "OTSseed":[B
    .end local v19    # "dummy":[B
    .restart local v1    # "dummy":[B
    .restart local v2    # "OTSseed":[B
    :cond_14
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move/from16 v20, v3

    .end local v1    # "dummy":[B
    .end local v2    # "OTSseed":[B
    .end local v3    # "i":I
    .restart local v18    # "OTSseed":[B
    .restart local v19    # "dummy":[B
    goto :goto_14

    .line 364
    .end local v18    # "OTSseed":[B
    .end local v19    # "dummy":[B
    .restart local v1    # "dummy":[B
    .restart local v2    # "OTSseed":[B
    :cond_15
    move-object/from16 v19, v1

    .end local v1    # "dummy":[B
    .restart local v19    # "dummy":[B
    iput-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    .line 366
    :goto_14
    return-void
.end method

.method public constructor <init>([[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V
    .locals 23
    .param p1, "currentSeed"    # [[B
    .param p2, "nextNextSeed"    # [[B
    .param p3, "currentAuthPath"    # [[[B
    .param p4, "nextAuthPath"    # [[[B
    .param p5, "currentTreehash"    # [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .param p6, "nextTreehash"    # [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .param p7, "currentStack"    # [Ljava/util/Vector;
    .param p8, "nextStack"    # [Ljava/util/Vector;
    .param p9, "currentRetain"    # [[Ljava/util/Vector;
    .param p10, "nextRetain"    # [[Ljava/util/Vector;
    .param p11, "nextRoot"    # [[B
    .param p12, "currentRootSig"    # [[B
    .param p13, "gmssParameterset"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
    .param p14, "digestProvider"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentSeed",
            "nextNextSeed",
            "currentAuthPath",
            "nextAuthPath",
            "currentTreehash",
            "nextTreehash",
            "currentStack",
            "nextStack",
            "currentRetain",
            "nextRetain",
            "nextRoot",
            "currentRootSig",
            "gmssParameterset",
            "digestProvider"
        }
    .end annotation

    .line 125
    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v17, p11

    move-object/from16 v19, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v0 .. v22}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;-><init>([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V

    .line 129
    return-void
.end method

.method private computeAuthPaths(I)V
    .locals 18
    .param p1, "layer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .line 755
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v3, v0, v2

    .line 756
    .local v3, "Phi":I
    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v4, v0, v2

    .line 757
    .local v4, "H":I
    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v5, v0, v2

    .line 760
    .local v5, "K":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sub-int v6, v4, v5

    if-ge v0, v6, :cond_0

    .line 762
    iget-object v6, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v6, v6, v2

    aget-object v6, v6, v0

    iget-object v7, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->updateNextSeed(Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;)V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    .end local v0    # "i":I
    :cond_0
    invoke-direct {v1, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfPhi(I)I

    move-result v6

    .line 768
    .local v6, "Tau":I
    iget v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v0, [B

    .line 769
    .local v0, "OTSseed":[B
    iget-object v7, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v7

    .line 777
    .end local v0    # "OTSseed":[B
    .local v7, "OTSseed":[B
    add-int/lit8 v0, v6, 0x1

    ushr-int v0, v3, v0

    const/4 v8, 0x1

    and-int/lit8 v9, v0, 0x1

    .line 779
    .local v9, "L":I
    iget v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v10, v0, [B

    .line 783
    .local v10, "tempKeep":[B
    add-int/lit8 v0, v4, -0x1

    const/4 v11, 0x0

    if-ge v6, v0, :cond_1

    if-nez v9, :cond_1

    .line 785
    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v0, v0, v2

    aget-object v0, v0, v6

    iget v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v0, v11, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 789
    :cond_1
    iget v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v0, [B

    .line 794
    .local v0, "help":[B
    if-nez v6, :cond_3

    .line 797
    iget v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    sub-int/2addr v12, v8

    if-ne v2, v12, :cond_2

    .line 801
    new-instance v12, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    .line 802
    invoke-interface {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v13

    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v14, v14, v2

    invoke-direct {v12, v7, v13, v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 803
    .local v12, "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v0

    .line 804
    .end local v12    # "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    goto :goto_1

    .line 808
    :cond_2
    iget v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v12, v12, [B

    .line 809
    .local v12, "dummy":[B
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v13, v13, v2

    iget v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v13, v11, v12, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 811
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v0

    .line 812
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    aget-object v13, v13, v2

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    .line 822
    .end local v12    # "dummy":[B
    :goto_1
    iget-object v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v12, v12, v2

    aget-object v12, v12, v11

    iget v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v0, v11, v12, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v16, 0x1

    move-object v8, v0

    goto/16 :goto_4

    .line 828
    :cond_3
    iget v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    shl-int/2addr v12, v8

    new-array v12, v12, [B

    .line 829
    .local v12, "toBeHashed":[B
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v13, v13, v2

    add-int/lit8 v14, v6, -0x1

    aget-object v13, v13, v14

    iget v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v13, v11, v12, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    aget-object v13, v13, v2

    add-int/lit8 v14, v6, -0x1

    div-int/lit8 v14, v14, 0x2

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    aget-object v13, v13, v14

    iget v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    iget v15, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v13, v11, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 834
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v12

    invoke-interface {v13, v12, v11, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 835
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v13, v13, v2

    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v14}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v14

    new-array v14, v14, [B

    aput-object v14, v13, v6

    .line 836
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v14, v14, v2

    aget-object v14, v14, v6

    invoke-interface {v13, v14, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 840
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v6, :cond_8

    .line 845
    sub-int v14, v4, v5

    if-ge v13, v14, :cond_5

    .line 847
    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v14, v14, v2

    aget-object v14, v14, v13

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->wasFinished()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 849
    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v14, v14, v2

    aget-object v14, v14, v13

    .line 850
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getFirstNode()[B

    move-result-object v14

    iget-object v15, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v15, v15, v2

    aget-object v15, v15, v13

    const/16 v16, 0x1

    iget v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 849
    invoke-static {v14, v11, v15, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    iget-object v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v8, v8, v2

    aget-object v8, v8, v13

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->destroy()V

    goto :goto_3

    .line 857
    :cond_4
    const/16 v16, 0x1

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Treehash ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") not finished when needed in AuthPathComputation"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 858
    invoke-virtual {v8, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 845
    :cond_5
    const/16 v16, 0x1

    .line 867
    :goto_3
    add-int/lit8 v8, v4, -0x1

    if-ge v13, v8, :cond_6

    sub-int v8, v4, v5

    if-lt v13, v8, :cond_6

    .line 869
    iget-object v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v8, v8, v2

    sub-int v14, v4, v5

    sub-int v14, v13, v14

    aget-object v8, v8, v14

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 872
    iget-object v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v8, v8, v2

    sub-int v14, v4, v5

    sub-int v14, v13, v14

    aget-object v8, v8, v14

    .line 873
    invoke-virtual {v8}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v8

    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v14, v14, v2

    aget-object v14, v14, v13

    iget v15, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 872
    invoke-static {v8, v11, v14, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    iget-object v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v8, v8, v2

    sub-int v14, v4, v5

    sub-int v14, v13, v14

    aget-object v8, v8, v14

    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v14, v14, v2

    sub-int v15, v4, v5

    sub-int v15, v13, v15

    aget-object v14, v14, v15

    .line 877
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    .line 876
    invoke-virtual {v8, v14}, Ljava/util/Vector;->removeElementAt(I)V

    .line 883
    :cond_6
    sub-int v8, v4, v5

    if-ge v13, v8, :cond_7

    .line 886
    shl-int v8, v16, v13

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v3

    .line 887
    .local v8, "startPoint":I
    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v14, v14, v2

    if-ge v8, v14, :cond_7

    .line 893
    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v14, v14, v2

    aget-object v14, v14, v13

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->initialize()V

    .line 840
    .end local v8    # "startPoint":I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_8
    const/16 v16, 0x1

    move-object v8, v0

    .line 900
    .end local v0    # "help":[B
    .end local v12    # "toBeHashed":[B
    .end local v13    # "i":I
    .local v8, "help":[B
    :goto_4
    add-int/lit8 v0, v4, -0x1

    if-ge v6, v0, :cond_9

    if-nez v9, :cond_9

    .line 902
    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    aget-object v0, v0, v2

    div-int/lit8 v12, v6, 0x2

    int-to-double v12, v12

    .line 903
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    aget-object v0, v0, v12

    iget v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 902
    invoke-static {v10, v11, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    :cond_9
    iget v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_c

    .line 915
    const/4 v0, 0x1

    move v12, v0

    .local v12, "tmp":I
    :goto_5
    sub-int v0, v4, v5

    div-int/lit8 v0, v0, 0x2

    if-gt v12, v0, :cond_b

    .line 918
    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v13

    .line 921
    .local v13, "minTreehash":I
    if-ltz v13, :cond_a

    .line 925
    :try_start_0
    iget v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v0, [B

    .line 926
    .local v0, "seed":[B
    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v14, v14, v2

    aget-object v14, v14, v13

    .line 928
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getSeedActive()[B

    move-result-object v14

    iget v15, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 926
    invoke-static {v14, v11, v0, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v14, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v14

    .line 930
    .local v14, "seed2":[B
    new-instance v15, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    iget-object v11, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    .line 931
    invoke-interface {v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v11

    move-object/from16 v17, v0

    .end local v0    # "seed":[B
    .local v17, "seed":[B
    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v0, v0, v2

    invoke-direct {v15, v14, v11, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 932
    .local v15, "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v0

    .line 933
    .local v0, "leaf":[B
    iget-object v11, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v11, v11, v2

    aget-object v11, v11, v13

    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v11, v2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->update(Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v0    # "leaf":[B
    .end local v14    # "seed2":[B
    .end local v15    # "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    .end local v17    # "seed":[B
    goto :goto_6

    .line 936
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 915
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "minTreehash":I
    :cond_a
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p1

    const/4 v11, 0x0

    goto :goto_5

    .end local v12    # "tmp":I
    :cond_b
    goto :goto_7

    .line 946
    :cond_c
    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v2

    aput v2, v0, p1

    .line 948
    :goto_7
    return-void
.end method

.method private getMinTreehashIndex(I)I
    .locals 4
    .param p1, "layer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .line 726
    const/4 v0, -0x1

    .line 727
    .local v0, "minTreehash":I
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v2, v2, p1

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v3, v3, p1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 729
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->wasInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    aget-object v2, v2, v1

    .line 730
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->wasFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 732
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 734
    move v0, v1

    goto :goto_1

    .line 736
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getLowestNodeHeight()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v3, v3, v0

    .line 737
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getLowestNodeHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 739
    move v0, v1

    .line 727
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    .end local v1    # "h":I
    :cond_2
    return v0
.end method

.method private heightOfPhi(I)I
    .locals 3
    .param p1, "Phi"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Phi"
        }
    .end annotation

    .line 959
    if-nez p1, :cond_0

    .line 961
    const/4 v0, -0x1

    return v0

    .line 963
    :cond_0
    const/4 v0, 0x0

    .line 964
    .local v0, "Tau":I
    const/4 v1, 0x1

    .line 965
    .local v1, "modul":I
    :goto_0
    rem-int v2, p1, v1

    if-nez v2, :cond_1

    .line 967
    mul-int/lit8 v1, v1, 0x2

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    :cond_1
    add-int/lit8 v2, v0, -0x1

    return v2
.end method

.method private nextKey(I)V
    .locals 3
    .param p1, "layer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .line 433
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v2, v0, p1

    add-int/2addr v2, v1

    aput v2, v0, p1

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v2, v2, p1

    if-ne v0, v2, :cond_1

    .line 442
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-eq v0, v1, :cond_2

    .line 444
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextTree(I)V

    .line 445
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0

    .line 450
    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->updateKey(I)V

    .line 452
    :cond_2
    :goto_0
    return-void
.end method

.method private nextTree(I)V
    .locals 8
    .param p1, "layer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .line 463
    if-lez p1, :cond_8

    .line 466
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    add-int/lit8 v1, p1, -0x1

    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 469
    const/4 v0, 0x1

    .line 470
    .local v0, "lastTree":Z
    move v1, p1

    .line 473
    .local v1, "z":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 474
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v2, v2, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v4, v4, v1

    if-ge v2, v4, :cond_1

    .line 476
    const/4 v0, 0x0

    .line 479
    :cond_1
    if-eqz v0, :cond_2

    if-gtz v1, :cond_0

    .line 482
    :cond_2
    if-nez v0, :cond_8

    .line 484
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 487
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->updateSign()Z

    .line 490
    if-le p1, v3, :cond_3

    .line 492
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    move-result-object v5

    aput-object v5, v2, v4

    .line 496
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    move-result-object v5

    aput-object v5, v2, v4

    .line 500
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v4, p1, -0x1

    aget v2, v2, v4

    if-ltz v2, :cond_4

    .line 502
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    move-result-object v5

    aput-object v5, v2, v4

    .line 503
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v2

    .line 508
    .local v2, "leaf":[B
    :try_start_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v6, p1, -0x1

    aget v5, v5, v6

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 509
    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->update(Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;[B)V

    .line 512
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v6, p1, -0x1

    aget v5, v5, v6

    aget-object v4, v4, v5

    .line 513
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->wasFinished()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    goto :goto_0

    .line 519
    :catch_0
    move-exception v4

    .line 522
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 527
    .end local v2    # "leaf":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->updateNextNextAuthRoot(I)V

    .line 534
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    .line 535
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getSig()[B

    move-result-object v5

    aput-object v5, v2, v4

    .line 541
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v4, v4, p1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v5, v5, p1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 543
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aget-object v4, v4, p1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    aget-object v5, v5, v2

    aput-object v5, v4, v2

    .line 544
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    .line 545
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v5

    aget-object v5, v5, v2

    aput-object v5, v4, v2

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 550
    .end local v2    # "i":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v4, v4, p1

    const/4 v5, 0x0

    if-ge v2, v4, :cond_6

    .line 552
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    add-int/lit8 v6, p1, -0x1

    aget-object v4, v4, v6

    aget-object v4, v4, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v6, v6, p1

    aget-object v6, v6, v2

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v4, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v6, p1, -0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    aget-object v6, v6, v2

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v4, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 560
    .end local v2    # "i":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v4, v4, p1

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_7

    .line 562
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v4, v4, p1

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    aget-object v6, v6, v2

    aput-object v6, v4, v2

    .line 563
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    add-int/lit8 v6, p1, -0x1

    aget-object v4, v4, v6

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    .line 564
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v6

    aget-object v6, v6, v2

    aput-object v6, v4, v2

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 568
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aput-object v3, v2, p1

    .line 570
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    add-int/lit8 v3, p1, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v6, p1, -0x1

    aget-object v4, v4, v6

    .line 571
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStack()Ljava/util/Vector;

    move-result-object v4

    aput-object v4, v2, v3

    .line 574
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    add-int/lit8 v3, p1, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v6, p1, -0x1

    aget-object v4, v4, v6

    .line 575
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 579
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v2, v2, [B

    .line 580
    .local v2, "OTSseed":[B
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v3, v3, [B

    .line 582
    .local v3, "dummy":[B
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    add-int/lit8 v6, p1, -0x1

    aget-object v4, v4, v6

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 583
    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v2

    .line 586
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v2

    .line 587
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v2

    .line 590
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->initSign([B[B)V

    .line 593
    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextKey(I)V

    .line 596
    .end local v0    # "lastTree":Z
    .end local v1    # "z":I
    .end local v2    # "OTSseed":[B
    .end local v3    # "dummy":[B
    :cond_8
    return-void
.end method

.method private updateKey(I)V
    .locals 9
    .param p1, "layer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .line 611
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->computeAuthPaths(I)V

    .line 615
    if-lez p1, :cond_5

    .line 619
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 621
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v2, p1, -0x1

    sub-int/2addr v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    move-result-object v3

    aput-object v3, v1, v2

    .line 625
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    move-result-object v3

    aput-object v3, v1, v2

    .line 630
    nop

    .line 631
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getNumLeafs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 634
    .local v1, "t":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v2, v2, p1

    rem-int/2addr v2, v1

    if-ne v2, v0, :cond_2

    .line 641
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v2, v2, p1

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    if-ltz v2, :cond_1

    .line 643
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v2

    .line 648
    .local v2, "leaf":[B
    :try_start_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 649
    invoke-virtual {v3, v4, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->update(Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;[B)V

    .line 652
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    aget-object v3, v3, v4

    .line 653
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->wasFinished()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    goto :goto_0

    .line 659
    :catch_0
    move-exception v3

    .line 662
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 671
    .end local v2    # "leaf":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v4

    aput v4, v2, v3

    .line 673
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    if-ltz v2, :cond_3

    .line 676
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    aget-object v2, v2, v3

    .line 677
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getSeedActive()[B

    move-result-object v2

    .line 678
    .local v2, "seed":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    new-instance v5, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    .line 679
    invoke-interface {v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    add-int/lit8 v8, p1, -0x1

    aget v7, v7, v8

    invoke-direct {v5, v6, v7, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/crypto/Digest;II[B)V

    aput-object v5, v3, v4

    .line 680
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v6, p1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    move-result-object v5

    aput-object v5, v3, v4

    .line 683
    .end local v2    # "seed":[B
    goto :goto_1

    .line 690
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    if-ltz v2, :cond_3

    .line 692
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v3, p1, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    move-result-object v4

    aput-object v4, v2, v3

    .line 700
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->updateSign()Z

    .line 703
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v2, v2, p1

    if-ne v2, v0, :cond_4

    .line 707
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    .line 712
    :cond_4
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->updateNextNextAuthRoot(I)V

    .line 715
    .end local v1    # "t":I
    :cond_5
    return-void
.end method

.method private updateNextNextAuthRoot(I)V
    .locals 5
    .param p1, "layer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .line 982
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v0, [B

    .line 983
    .local v0, "OTSseed":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 986
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 989
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    .line 990
    invoke-interface {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v3, v3, p1

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 991
    .local v1, "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    .line 992
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v4

    .line 991
    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->update([B[B)V

    .line 993
    .end local v1    # "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    goto :goto_0

    .line 996
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->update([B[B)V

    .line 997
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    .line 999
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentAuthPaths()[[[B
    .locals 1

    .line 1021
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSeeds()[[B
    .locals 1

    .line 1016
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getIndex(I)I
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

    .line 1011
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    return v0
.end method

.method public getIndex()[I
    .locals 1

    .line 1003
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    return-object v0
.end method

.method public getName()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;
    .locals 1

    .line 1035
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    return-object v0
.end method

.method public getNumLeafs(I)I
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

    .line 1043
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSubtreeRootSig(I)[B
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

    .line 1029
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isUsed()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    return v0
.end method

.method public markUsed()V
    .locals 1

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    .line 413
    return-void
.end method

.method public nextKey()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;
    .locals 2

    .line 417
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;)V

    .line 419
    .local v0, "nKey":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextKey(I)V

    .line 421
    return-object v0
.end method
