.class public Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;
.super Ljava/lang/Object;
.source "Argon2BytesGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;,
        Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;,
        Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    }
.end annotation


# static fields
.field private static final ARGON2_ADDRESSES_IN_BLOCK:I = 0x80

.field private static final ARGON2_BLOCK_SIZE:I = 0x400

.field private static final ARGON2_PREHASH_DIGEST_LENGTH:I = 0x40

.field private static final ARGON2_PREHASH_SEED_LENGTH:I = 0x48

.field private static final ARGON2_QWORDS_IN_BLOCK:I = 0x80

.field private static final ARGON2_SYNC_POINTS:I = 0x4

.field private static final M32L:J = 0xffffffffL

.field private static final MAX_PARALLELISM:I = 0x1000000

.field private static final MIN_ITERATIONS:I = 0x1

.field private static final MIN_OUTLEN:I = 0x4

.field private static final MIN_PARALLELISM:I = 0x1

.field private static final ZERO_BYTES:[B


# instance fields
.field private laneLength:I

.field private memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

.field private parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

.field private segmentLength:I


# direct methods
.method static bridge synthetic -$$Nest$smroundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p16}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->roundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->ZERO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static F([JIIII)V
    .locals 1
    .param p0, "v"    # [J
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 449
    const/16 v0, 0x20

    invoke-static {p0, p1, p2, p4, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->quarterRound([JIIII)V

    .line 450
    const/16 v0, 0x18

    invoke-static {p0, p3, p4, p2, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->quarterRound([JIIII)V

    .line 451
    const/16 v0, 0x10

    invoke-static {p0, p1, p2, p4, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->quarterRound([JIIII)V

    .line 452
    const/16 v0, 0x3f

    invoke-static {p0, p3, p4, p2, v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->quarterRound([JIIII)V

    .line 453
    return-void
.end method

.method private static addByteString([BLorg/bouncycastle/crypto/Digest;[B)V
    .locals 3
    .param p0, "tmpBlockBytes"    # [B
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "octets"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tmpBlockBytes",
            "digest",
            "octets"
        }
    .end annotation

    .line 514
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 516
    sget-object v2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->ZERO_BYTES:[B

    invoke-interface {p1, v2, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 517
    return-void

    .line 520
    :cond_0
    array-length v2, p2

    invoke-static {v2, p0, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 521
    invoke-interface {p1, p0, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 522
    array-length v0, p2

    invoke-interface {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 523
    return-void
.end method

.method private digest([B[BII)V
    .locals 4
    .param p1, "tmpBlockBytes"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .param p4, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tmpBlockBytes",
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 364
    .local v0, "finalBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 366
    iget v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v2, v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    .line 367
    .local v2, "lastBlockInLane":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$mxorWith(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 364
    .end local v2    # "lastBlockInLane":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->toBytes([B)V

    .line 372
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->hash([B[BII)V

    .line 373
    return-void
.end method

.method private doInit(Lorg/bouncycastle/crypto/params/Argon2Parameters;)V
    .locals 3
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/params/Argon2Parameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getMemory()I

    move-result v0

    .line 133
    .local v0, "memoryBlocks":I
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    .line 135
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v1

    mul-int/lit8 v0, v1, 0x8

    .line 138
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int v1, v0, v1

    iput v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    .line 139
    iget v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    .line 142
    iget v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    mul-int v1, v1, v2

    .line 144
    .end local v0    # "memoryBlocks":I
    .local v1, "memoryBlocks":I
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->initMemory(I)V

    .line 145
    return-void
.end method

.method private fillFirstBlocks([B[B)V
    .locals 7
    .param p1, "tmpBlockBytes"    # [B
    .param p2, "initialHashWithZeros"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tmpBlockBytes",
            "initialHashWithZeros"
        }
    .end annotation

    .line 531
    const/16 v0, 0x48

    new-array v0, v0, [B

    .line 532
    .local v0, "initialHashWithOnes":[B
    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 536
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 538
    const/16 v4, 0x44

    invoke-static {v2, p2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 539
    invoke-static {v2, v0, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 541
    const/16 v4, 0x400

    invoke-direct {p0, p2, p1, v1, v4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->hash([B[BII)V

    .line 542
    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v6, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v6, v6, v2

    add-int/2addr v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->fromBytes([B)V

    .line 544
    invoke-direct {p0, v0, p1, v1, v4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->hash([B[BII)V

    .line 545
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v5, v5, v2

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->fromBytes([B)V

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 547
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private fillMemoryBlocks()V
    .locals 6

    .line 159
    new-instance v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator-IA;)V

    .line 160
    .local v0, "filler":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;
    new-instance v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;-><init>()V

    .line 161
    .local v1, "position":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    const/4 v2, 0x0

    .local v2, "pass":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 163
    iput v2, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    .line 165
    const/4 v3, 0x0

    .local v3, "slice":I
    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 167
    iput v3, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    .line 169
    const/4 v4, 0x0

    .local v4, "lane":I
    :goto_2
    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 171
    iput v4, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    .line 173
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillSegment(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)V

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 165
    .end local v4    # "lane":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    .end local v3    # "slice":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "pass":I
    :cond_2
    return-void
.end method

.method private fillSegment(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)V
    .locals 18
    .param p1, "filler"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;
    .param p2, "position"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filler",
            "position"
        }
    .end annotation

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    const/4 v2, 0x0

    .local v2, "addressBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    const/4 v3, 0x0

    .line 183
    .local v3, "inputBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->isDataIndependentAddressing(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z

    move-result v6

    .line 184
    .local v6, "dataIndependentAddressing":Z
    invoke-static {v7}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getStartingIndex(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)I

    move-result v8

    .line 185
    .local v8, "startingIndex":I
    iget v4, v7, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    iget v5, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v4, v4, v5

    iget v5, v7, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    iget v9, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int v5, v5, v9

    add-int/2addr v4, v5

    add-int/2addr v4, v8

    .line 186
    .local v4, "currentOffset":I
    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getPrevOffset(I)I

    move-result v5

    .line 188
    .local v5, "prevOffset":I
    if-eqz v6, :cond_0

    .line 190
    iget-object v9, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->addressBlock:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-virtual {v9}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->clear()Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    move-result-object v2

    .line 191
    iget-object v9, v1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->inputBlock:Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    invoke-virtual {v9}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->clear()Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    move-result-object v3

    .line 193
    invoke-direct {v0, v1, v7, v3, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->initAddressBlocks(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    move-object/from16 v17, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v4, v17

    goto :goto_0

    .line 188
    :cond_0
    move-object/from16 v17, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v4, v17

    .line 196
    .local v2, "currentOffset":I
    .local v3, "addressBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .local v4, "inputBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    :goto_0
    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->isWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z

    move-result v9

    .line 198
    .local v9, "withXor":Z
    move v10, v8

    move/from16 v17, v10

    move v10, v2

    move/from16 v2, v17

    .local v2, "index":I
    .local v10, "currentOffset":I
    :goto_1
    iget v11, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    if-ge v2, v11, :cond_3

    .line 200
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getPseudoRandom(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;ILorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IZ)J

    move-result-wide v11

    .line 201
    move-object v15, v3

    move-object/from16 v16, v4

    move v14, v5

    move v13, v6

    move-object v6, v1

    .end local v3    # "addressBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .end local v4    # "inputBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .end local v5    # "prevOffset":I
    .end local v6    # "dataIndependentAddressing":Z
    .local v11, "pseudoRandom":J
    .local v13, "dataIndependentAddressing":Z
    .local v14, "prevOffset":I
    .local v15, "addressBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .local v16, "inputBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    invoke-direct {v0, v7, v11, v12}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getRefLane(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;J)I

    move-result v1

    .line 202
    .local v1, "refLane":I
    iget v3, v7, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    move-object v3, v7

    move v7, v1

    move-object v1, v3

    move-wide v3, v11

    .end local v1    # "refLane":I
    .end local v11    # "pseudoRandom":J
    .local v3, "pseudoRandom":J
    .local v7, "refLane":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->getRefColumn(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;IJZ)I

    move-result v5

    .line 205
    .local v5, "refColumn":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object v1, v1, v14

    .line 206
    .local v1, "prevBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    iget-object v11, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iget v12, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    mul-int v12, v12, v7

    add-int/2addr v12, v5

    aget-object v11, v11, v12

    .line 207
    .local v11, "refBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object v12, v12, v10

    .line 209
    .local v12, "currentBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    if-eqz v9, :cond_2

    .line 211
    invoke-static {v6, v1, v11, v12}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->-$$Nest$mfillBlockWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    goto :goto_3

    .line 215
    :cond_2
    invoke-static {v6, v1, v11, v12}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->-$$Nest$mfillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 218
    :goto_3
    move v14, v10

    .line 219
    nop

    .end local v1    # "prevBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .end local v3    # "pseudoRandom":J
    .end local v5    # "refColumn":I
    .end local v7    # "refLane":I
    .end local v11    # "refBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .end local v12    # "currentBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    add-int/lit8 v10, v10, 0x1

    .line 198
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, p2

    move-object v1, v6

    move v6, v13

    move v5, v14

    move-object v3, v15

    move-object/from16 v4, v16

    goto :goto_1

    .line 221
    .end local v2    # "index":I
    .end local v13    # "dataIndependentAddressing":Z
    .end local v14    # "prevOffset":I
    .end local v15    # "addressBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .end local v16    # "inputBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .local v3, "addressBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .restart local v4    # "inputBlock":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .local v5, "prevOffset":I
    .restart local v6    # "dataIndependentAddressing":Z
    :cond_3
    return-void
.end method

.method private getPrevOffset(I)I
    .locals 1
    .param p1, "currentOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentOffset"
        }
    .end annotation

    .line 255
    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    .line 258
    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 263
    :cond_0
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private getPseudoRandom(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;ILorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IZ)J
    .locals 4
    .param p1, "filler"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;
    .param p2, "index"    # I
    .param p3, "addressBlock"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p4, "inputBlock"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p5, "prevOffset"    # I
    .param p6, "dataIndependentAddressing"    # Z
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
            "filler",
            "index",
            "addressBlock",
            "inputBlock",
            "prevOffset",
            "dataIndependentAddressing"
        }
    .end annotation

    .line 291
    if-eqz p6, :cond_1

    .line 293
    rem-int/lit16 v0, p2, 0x80

    .line 294
    .local v0, "addressIndex":I
    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0, p1, p4, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->nextAddresses(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 298
    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v1

    aget-wide v2, v1, v0

    return-wide v2

    .line 302
    .end local v0    # "addressIndex":I
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object v0, v0, p5

    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method private getRefColumn(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;IJZ)I
    .locals 9
    .param p1, "position"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    .param p2, "index"    # I
    .param p3, "pseudoRandom"    # J
    .param p5, "sameLane"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "index",
            "pseudoRandom",
            "sameLane"
        }
    .end annotation

    .line 323
    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 325
    const/4 v0, 0x0

    .line 327
    .local v0, "startPosition":I
    if-eqz p5, :cond_0

    .line 330
    iget v1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int v1, v1, v2

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    .local v1, "referenceAreaSize":I
    goto :goto_2

    .line 335
    .end local v1    # "referenceAreaSize":I
    :cond_0
    iget v3, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    iget v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int v3, v3, v4

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v3

    .restart local v1    # "referenceAreaSize":I
    goto :goto_2

    .line 340
    .end local v0    # "startPosition":I
    .end local v1    # "referenceAreaSize":I
    :cond_2
    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    mul-int v0, v0, v3

    iget v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int/2addr v0, v3

    .line 342
    .restart local v0    # "startPosition":I
    if-eqz p5, :cond_3

    .line 344
    iget v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "referenceAreaSize":I
    goto :goto_2

    .line 348
    .end local v1    # "referenceAreaSize":I
    :cond_3
    iget v3, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    iget v4, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->segmentLength:I

    sub-int/2addr v3, v4

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v1, v3

    .line 352
    .restart local v1    # "referenceAreaSize":I
    :goto_2
    const-wide v2, 0xffffffffL

    and-long/2addr v2, p3

    .line 353
    .local v2, "relativePosition":J
    mul-long v4, v2, v2

    const/16 v6, 0x20

    ushr-long v2, v4, v6

    .line 354
    add-int/lit8 v4, v1, -0x1

    int-to-long v4, v4

    int-to-long v7, v1

    mul-long v7, v7, v2

    ushr-long v6, v7, v6

    sub-long/2addr v4, v6

    .line 356
    .end local v2    # "relativePosition":J
    .local v4, "relativePosition":J
    int-to-long v2, v0

    add-long/2addr v2, v4

    long-to-int v3, v2

    iget v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->laneLength:I

    rem-int/2addr v3, v2

    return v3
.end method

.method private getRefLane(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;J)I
    .locals 4
    .param p1, "position"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    .param p2, "pseudoRandom"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "pseudoRandom"
        }
    .end annotation

    .line 308
    const/16 v0, 0x20

    ushr-long v0, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    .line 310
    .local v1, "refLane":I
    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez v0, :cond_0

    .line 313
    iget v1, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    .line 315
    :cond_0
    return v1
.end method

.method private static getStartingIndex(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)I
    .locals 1
    .param p0, "position"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 269
    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x2

    return v0

    .line 275
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hash([B[BII)V
    .locals 11
    .param p1, "input"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .param p4, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 380
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 381
    .local v0, "outLenBytes":[B
    const/4 v1, 0x0

    invoke-static {p4, v0, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 383
    const/16 v2, 0x40

    .line 385
    .local v2, "blake2bLength":I
    if-gt p4, v2, :cond_0

    .line 387
    new-instance v3, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    mul-int/lit8 v4, p4, 0x8

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    .line 389
    .local v3, "blake":Lorg/bouncycastle/crypto/digests/Blake2bDigest;
    array-length v4, v0

    invoke-virtual {v3, v0, v1, v4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 390
    array-length v4, p1

    invoke-virtual {v3, p1, v1, v4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 391
    invoke-virtual {v3, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    .line 392
    .end local v3    # "blake":Lorg/bouncycastle/crypto/digests/Blake2bDigest;
    goto :goto_1

    .line 395
    :cond_0
    new-instance v3, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    mul-int/lit8 v4, v2, 0x8

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    .line 396
    .local v3, "digest":Lorg/bouncycastle/crypto/digests/Blake2bDigest;
    new-array v4, v2, [B

    .line 399
    .local v4, "outBuffer":[B
    array-length v5, v0

    invoke-virtual {v3, v0, v1, v5}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 400
    array-length v5, p1

    invoke-virtual {v3, p1, v1, v5}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 401
    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    .line 403
    div-int/lit8 v5, v2, 0x2

    .local v5, "halfLen":I
    move v6, p3

    .line 404
    .local v6, "outPos":I
    invoke-static {v4, v1, p2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    add-int/2addr v6, v5

    .line 407
    add-int/lit8 v7, p4, 0x1f

    div-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, -0x2

    .line 409
    .local v7, "r":I
    const/4 v8, 0x2

    .local v8, "i":I
    :goto_0
    if-gt v8, v7, :cond_1

    .line 412
    array-length v9, v4

    invoke-virtual {v3, v4, v1, v9}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 413
    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    .line 415
    invoke-static {v4, v1, p2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v6, v5

    goto :goto_0

    .line 418
    .end local v8    # "i":I
    :cond_1
    mul-int/lit8 v8, v7, 0x20

    sub-int v8, p4, v8

    .line 421
    .local v8, "lastLength":I
    new-instance v9, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    mul-int/lit8 v10, v8, 0x8

    invoke-direct {v9, v10}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    .line 423
    .end local v3    # "digest":Lorg/bouncycastle/crypto/digests/Blake2bDigest;
    .local v9, "digest":Lorg/bouncycastle/crypto/digests/Blake2bDigest;
    array-length v3, v4

    invoke-virtual {v9, v4, v1, v3}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 424
    invoke-virtual {v9, p2, v6}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    .line 426
    .end local v4    # "outBuffer":[B
    .end local v5    # "halfLen":I
    .end local v6    # "outPos":I
    .end local v7    # "r":I
    .end local v8    # "lastLength":I
    .end local v9    # "digest":Lorg/bouncycastle/crypto/digests/Blake2bDigest;
    :goto_1
    return-void
.end method

.method private initAddressBlocks(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 4
    .param p1, "filler"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;
    .param p2, "position"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    .param p3, "inputBlock"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p4, "addressBlock"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filler",
            "position",
            "inputBlock",
            "addressBlock"
        }
    .end annotation

    .line 234
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget v1, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 235
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget v1, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->lane:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 236
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget v1, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    .line 237
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    array-length v1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    .line 238
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    .line 239
    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->intToLong(I)J

    move-result-wide v1

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    .line 241
    iget v0, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget v0, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->nextAddresses(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 246
    :cond_0
    return-void
.end method

.method private initMemory(I)V
    .locals 4
    .param p1, "memoryBlocks"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryBlocks"
        }
    .end annotation

    .line 149
    new-array v0, p1, [Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    new-instance v2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator-IA;)V

    aput-object v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private initialize([B[BI)V
    .locals 8
    .param p1, "tmpBlockBytes"    # [B
    .param p2, "password"    # [B
    .param p3, "outputLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tmpBlockBytes",
            "password",
            "outputLength"
        }
    .end annotation

    .line 493
    new-instance v0, Lorg/bouncycastle/crypto/digests/Blake2bDigest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;-><init>(I)V

    .line 495
    .local v0, "blake":Lorg/bouncycastle/crypto/digests/Blake2bDigest;
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getMemory()I

    move-result v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    .line 496
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getVersion()I

    move-result v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v7

    move v3, p3

    .end local p3    # "outputLength":I
    .local v3, "outputLength":I
    filled-new-array/range {v2 .. v7}, [I

    move-result-object p3

    .line 498
    .local p3, "values":[I
    const/4 v1, 0x0

    invoke-static {p3, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 499
    array-length v2, p3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->update([BII)V

    .line 501
    invoke-static {p1, v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString([BLorg/bouncycastle/crypto/Digest;[B)V

    .line 502
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getSalt()[B

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString([BLorg/bouncycastle/crypto/Digest;[B)V

    .line 503
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getSecret()[B

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString([BLorg/bouncycastle/crypto/Digest;[B)V

    .line 504
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getAdditional()[B

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->addByteString([BLorg/bouncycastle/crypto/Digest;[B)V

    .line 506
    const/16 v2, 0x48

    new-array v2, v2, [B

    .line 507
    .local v2, "initialHashWithZeros":[B
    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/digests/Blake2bDigest;->doFinal([BI)I

    .line 509
    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillFirstBlocks([B[B)V

    .line 510
    return-void
.end method

.method private intToLong(I)J
    .locals 4
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 551
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private isDataIndependentAddressing(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z
    .locals 3
    .param p1, "position"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    .line 226
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-nez v0, :cond_0

    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->slice:I

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 225
    :goto_1
    return v1
.end method

.method private isWithXor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;)Z
    .locals 2
    .param p1, "position"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 250
    iget v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Position;->pass:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getVersion()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextAddresses(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 6
    .param p1, "filler"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;
    .param p2, "inputBlock"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p3, "addressBlock"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filler",
            "inputBlock",
            "addressBlock"
        }
    .end annotation

    .line 281
    invoke-static {p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v0

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 282
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->-$$Nest$mfillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 283
    invoke-static {p1, p3, p3}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;->-$$Nest$mfillBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$FillBlock;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    .line 284
    return-void
.end method

.method private static quarterRound([JIIII)V
    .locals 12
    .param p0, "v"    # [J
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "s"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "x",
            "y",
            "z",
            "s"
        }
    .end annotation

    .line 460
    aget-wide v0, p0, p1

    .local v0, "a":J
    aget-wide v2, p0, p2

    .local v2, "b":J
    aget-wide v4, p0, p3

    .line 462
    .local v4, "c":J
    const-wide v6, 0xffffffffL

    and-long v8, v0, v6

    const-wide/16 v10, 0x2

    mul-long v8, v8, v10

    and-long/2addr v6, v2

    mul-long v8, v8, v6

    add-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 463
    xor-long v6, v4, v0

    move/from16 v8, p4

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v4

    .line 465
    aput-wide v0, p0, p1

    .line 466
    aput-wide v4, p0, p3

    .line 467
    return-void
.end method

.method private reset()V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->memory:[Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    aget-object v1, v1, v0

    .line 119
    .local v1, "b":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->clear()Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;

    .line 116
    .end local v1    # "b":Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static roundFunction(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;IIIIIIIIIIIIIIII)V
    .locals 16
    .param p0, "block"    # Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .param p1, "v0"    # I
    .param p2, "v1"    # I
    .param p3, "v2"    # I
    .param p4, "v3"    # I
    .param p5, "v4"    # I
    .param p6, "v5"    # I
    .param p7, "v6"    # I
    .param p8, "v7"    # I
    .param p9, "v8"    # I
    .param p10, "v9"    # I
    .param p11, "v10"    # I
    .param p12, "v11"    # I
    .param p13, "v12"    # I
    .param p14, "v13"    # I
    .param p15, "v14"    # I
    .param p16, "v15"    # I
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
            0x0
        }
        names = {
            "block",
            "v0",
            "v1",
            "v2",
            "v3",
            "v4",
            "v5",
            "v6",
            "v7",
            "v8",
            "v9",
            "v10",
            "v11",
            "v12",
            "v13",
            "v14",
            "v15"
        }
    .end annotation

    .line 434
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    invoke-static/range {p0 .. p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->-$$Nest$fgetv(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J

    move-result-object v3

    .line 436
    .local v3, "v":[J
    invoke-static {v3, v0, v4, v8, v12}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    .line 437
    invoke-static {v3, v1, v5, v9, v13}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    .line 438
    invoke-static {v3, v2, v6, v10, v14}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    .line 439
    move/from16 v4, p4

    invoke-static {v3, v4, v7, v11, v15}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    .line 441
    invoke-static {v3, v0, v5, v10, v15}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    .line 442
    invoke-static {v3, v1, v6, v11, v12}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    .line 443
    invoke-static {v3, v2, v7, v8, v13}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    .line 444
    move/from16 v0, p5

    invoke-static {v3, v4, v0, v9, v14}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->F([JIIII)V

    .line 445
    return-void
.end method


# virtual methods
.method public generateBytes([B[B)I
    .locals 2
    .param p1, "password"    # [B
    .param p2, "out"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "password",
            "out"
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->generateBytes([B[BII)I

    move-result v0

    return v0
.end method

.method public generateBytes([B[BII)I
    .locals 2
    .param p1, "password"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .param p4, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "password",
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 94
    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    .line 99
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 101
    .local v0, "tmpBlockBytes":[B
    invoke-direct {p0, v0, p1, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->initialize([B[BI)V

    .line 102
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->fillMemoryBlocks()V

    .line 103
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->digest([B[BII)V

    .line 105
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->reset()V

    .line 107
    return p4

    .line 96
    .end local v0    # "tmpBlockBytes":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output length less than 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateBytes([C[B)I
    .locals 1
    .param p1, "password"    # [C
    .param p2, "out"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "password",
            "out"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getCharToByteConverter()Lorg/bouncycastle/crypto/CharToByteConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->generateBytes([B[B)I

    move-result v0

    return v0
.end method

.method public generateBytes([C[BII)I
    .locals 1
    .param p1, "password"    # [C
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .param p4, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "password",
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getCharToByteConverter()Lorg/bouncycastle/crypto/CharToByteConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->generateBytes([B[BII)I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/params/Argon2Parameters;)V
    .locals 5
    .param p1, "parameters"    # Lorg/bouncycastle/crypto/params/Argon2Parameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->parameters:Lorg/bouncycastle/crypto/params/Argon2Parameters;

    .line 57
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 61
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v0

    const/high16 v2, 0x1000000

    if-gt v0, v2, :cond_2

    .line 65
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getMemory()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_1

    .line 69
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getIterations()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;->doInit(Lorg/bouncycastle/crypto/params/Argon2Parameters;)V

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "iterations is less than: 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Argon2Parameters;->getLanes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "memory is less than: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "lanes must be less than 16777216"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "lanes must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
