.class Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;
.super Ljava/lang/Object;
.source "Fors.java"


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V
    .locals 0
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    .line 14
    return-void
.end method

.method static message_to_idxs([BII)[I
    .locals 7
    .param p0, "msg"    # [B
    .param p1, "fors_trees"    # I
    .param p2, "fors_height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "fors_trees",
            "fors_height"
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "offset":I
    new-array v1, p1, [I

    .line 149
    .local v1, "idxs":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 151
    const/4 v3, 0x0

    aput v3, v1, v2

    .line 152
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 154
    aget v4, v1, v2

    shr-int/lit8 v5, v0, 0x3

    aget-byte v5, p0, v5

    not-int v6, v0

    and-int/lit8 v6, v6, 0x7

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, p2, -0x1

    sub-int/2addr v6, v3

    shl-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v1, v2

    .line 155
    add-int/lit8 v0, v0, 0x1

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public pkFromSig([Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 19
    .param p1, "sig_fors"    # [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    .param p2, "message"    # [B
    .param p3, "pkSeed"    # [B
    .param p4, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig_fors",
            "message",
            "pkSeed",
            "adrs"
        }
    .end annotation

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x2

    new-array v4, v3, [[B

    .line 99
    .local v4, "node":[[B
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    new-array v5, v5, [[B

    .line 100
    .local v5, "root":[[B
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T:I

    .line 102
    .local v6, "t":I
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    move-object/from16 v9, p2

    invoke-static {v9, v7, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->message_to_idxs([BII)[I

    move-result-object v7

    .line 104
    .local v7, "idxs":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    if-ge v8, v10, :cond_2

    .line 107
    aget v10, v7, v8

    .line 109
    .local v10, "idx":I
    aget-object v11, p1, v8

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->getSK()[B

    move-result-object v11

    .line 110
    .local v11, "sk":[B
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    .line 111
    mul-int v13, v8, v6

    add-int/2addr v13, v10

    invoke-virtual {v2, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 112
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v13, v1, v2, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v13

    aput-object v13, v4, v12

    .line 114
    aget-object v13, p1, v8

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->getAuthPath()[[B

    move-result-object v13

    .line 116
    .local v13, "authPath":[[B
    mul-int v14, v8, v6

    add-int/2addr v14, v10

    invoke-virtual {v2, v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 117
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v15, v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    if-ge v14, v15, :cond_1

    .line 119
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v2, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    .line 120
    const/4 v15, 0x1

    shl-int v16, v15, v14

    div-int v16, v10, v16

    rem-int/lit8 v16, v16, 0x2

    if-nez v16, :cond_0

    .line 122
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v16

    const/16 v17, 0x2

    div-int/lit8 v3, v16, 0x2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 123
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    const/16 v16, 0x0

    aget-object v12, v4, v16

    const/16 v18, 0x1

    aget-object v15, v13, v14

    invoke-virtual {v3, v1, v2, v12, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v3

    aput-object v3, v4, v18

    goto :goto_2

    .line 127
    :cond_0
    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 128
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object v12, v13, v14

    aget-object v15, v4, v16

    invoke-virtual {v3, v1, v2, v12, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v3

    aput-object v3, v4, v18

    .line 130
    :goto_2
    aget-object v3, v4, v18

    aput-object v3, v4, v16

    .line 117
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x2

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    const/16 v17, 0x2

    .line 132
    .end local v14    # "j":I
    aget-object v3, v4, v16

    aput-object v3, v5, v8

    .line 104
    .end local v10    # "idx":I
    .end local v11    # "sk":[B
    .end local v13    # "authPath":[[B
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto/16 :goto_0

    .line 134
    .end local v8    # "i":I
    :cond_2
    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    .line 135
    .local v3, "forspkADRS":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 136
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 137
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v10

    invoke-virtual {v8, v1, v3, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v8

    return-object v8
.end method

.method public sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    .locals 17
    .param p1, "md"    # [B
    .param p2, "skSeed"    # [B
    .param p3, "pkSeed"    # [B
    .param p4, "paramAdrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "md",
            "skSeed",
            "pkSeed",
            "paramAdrs"
        }
    .end annotation

    .line 64
    move-object/from16 v0, p0

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    move-object/from16 v6, p4

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    .line 66
    .local v5, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    move-object/from16 v7, p1

    invoke-static {v7, v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->message_to_idxs([BII)[I

    move-result-object v8

    .line 67
    .local v8, "idxs":[I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    new-array v9, v1, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    .line 69
    .local v9, "sig_fors":[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v10, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T:I

    .line 70
    .local v10, "t":I
    const/4 v1, 0x0

    move v11, v1

    .local v11, "i":I
    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    if-ge v11, v1, :cond_1

    .line 73
    aget v12, v8, v11

    .line 75
    .local v12, "idx":I
    const/4 v1, 0x6

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 76
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    .line 78
    mul-int v1, v11, v10

    add-int/2addr v1, v12

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 80
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v13

    .line 82
    .local v13, "sk":[B
    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->changeType(I)V

    .line 84
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    new-array v14, v1, [[B

    .line 86
    .local v14, "authPath":[[B
    const/4 v1, 0x0

    move v3, v1

    .local v3, "j":I
    :goto_1
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    if-ge v3, v1, :cond_0

    .line 88
    const/4 v1, 0x1

    shl-int v15, v1, v3

    div-int v15, v12, v15

    xor-int/2addr v15, v1

    .line 89
    .local v15, "s":I
    mul-int v16, v11, v10

    shl-int/2addr v1, v3

    mul-int v1, v1, v15

    add-int v16, v16, v1

    move-object v1, v2

    move/from16 v2, v16

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v2

    aput-object v2, v14, v3

    .line 86
    .end local v15    # "s":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    goto :goto_1

    .line 91
    .end local v3    # "j":I
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;-><init>([B[[B)V

    aput-object v0, v9, v11

    .line 70
    .end local v12    # "idx":I
    .end local v13    # "sk":[B
    .end local v14    # "authPath":[[B
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 93
    .end local v11    # "i":I
    :cond_1
    return-object v9
.end method

.method treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 10
    .param p1, "skSeed"    # [B
    .param p2, "s"    # I
    .param p3, "z"    # I
    .param p4, "pkSeed"    # [B
    .param p5, "adrsParam"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "skSeed",
            "s",
            "z",
            "pkSeed",
            "adrsParam"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 22
    .local v0, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;>;"
    const/4 v1, 0x1

    shl-int v2, v1, p3

    rem-int v2, p2, v2

    if-eqz v2, :cond_0

    .line 24
    const/4 v1, 0x0

    return-object v1

    .line 27
    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v2, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    .line 29
    .local v2, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    shl-int v4, v1, p3

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 31
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 32
    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 33
    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    .line 34
    add-int v4, p2, v3

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 36
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v4, p4, p1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v4

    .line 38
    .local v4, "sk":[B
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->changeType(I)V

    .line 40
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v6, p4, v2, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v6

    .line 42
    .local v6, "node":[B
    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    .line 45
    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 46
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeHeight:I

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 48
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v7

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 49
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    .line 51
    .local v7, "current":Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget-object v9, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    invoke-virtual {v8, p4, v2, v9, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v6

    .line 53
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    .line 54
    .end local v7    # "current":Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;
    goto :goto_1

    .line 56
    :cond_1
    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v8

    invoke-direct {v7, v6, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;-><init>([BI)V

    invoke-virtual {v0, v5, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 29
    .end local v4    # "sk":[B
    .end local v6    # "node":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "idx":I
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    return-object v1
.end method
