.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;
.super Ljava/lang/Object;
.source "HT.java"


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

.field final htPubKey:[B

.field private final pkSeed:[B

.field private final skSeed:[B

.field wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V
    .locals 3
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
    .param p2, "skSeed"    # [B
    .param p3, "pkSeed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "engine",
            "skSeed",
            "pkSeed"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    .line 19
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    .line 22
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    .line 24
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    .line 25
    .local v0, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    .line 26
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 28
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0, p2, p3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_PKgen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->htPubKey:[B

    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->htPubKey:[B

    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method sign([BJI)[B
    .locals 11
    .param p1, "M"    # [B
    .param p2, "idx_tree"    # J
    .param p4, "idx_leaf"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "M",
            "idx_tree",
            "idx_leaf"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    move-object v6, v0

    .line 44
    .local v6, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    .line 45
    invoke-virtual {v6, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 46
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    .end local p1    # "M":[B
    .end local p4    # "idx_leaf":I
    .local v2, "M":[B
    .local v4, "idx_leaf":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v3

    .line 47
    .local v3, "SIG_tmp":Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    iget-object p1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    new-array p1, p1, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    .line 48
    .local p1, "SIG_HT":[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    aput-object v3, p1, v0

    .line 50
    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    .line 51
    invoke-virtual {v6, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 53
    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move v10, v4

    move-object v4, v2

    move v2, v10

    .local v2, "idx_leaf":I
    .local v4, "M":[B
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p4

    .line 55
    move-object v0, v4

    move v4, v2

    .end local v2    # "idx_leaf":I
    .local v0, "M":[B
    .local v4, "idx_leaf":I
    .local p4, "root":[B
    const/4 v2, 0x1

    move v7, v2

    move-object v2, p4

    move p4, v4

    move-object v8, v3

    .end local v3    # "SIG_tmp":Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .end local v4    # "idx_leaf":I
    .local v2, "root":[B
    .local v7, "j":I
    .local v8, "SIG_tmp":Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .local p4, "idx_leaf":I
    :goto_0
    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    if-ge v7, v3, :cond_1

    .line 57
    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    const/4 v9, 0x1

    shl-int v3, v9, v3

    sub-int/2addr v3, v9

    int-to-long v3, v3

    and-long/2addr v3, p2

    long-to-int v4, v3

    .line 58
    .end local p4    # "idx_leaf":I
    .restart local v4    # "idx_leaf":I
    iget-object p4, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    ushr-long/2addr p2, p4

    .line 59
    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    .line 60
    invoke-virtual {v6, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 61
    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v3

    .line 62
    move v10, v4

    move-object v4, v2

    move v2, v10

    .end local v8    # "SIG_tmp":Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .local v2, "idx_leaf":I
    .restart local v3    # "SIG_tmp":Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .local v4, "root":[B
    aput-object v3, p1, v7

    .line 63
    iget-object p4, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    sub-int/2addr p4, v9

    if-ge v7, p4, :cond_0

    .line 65
    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p4

    .end local v4    # "root":[B
    .local p4, "root":[B
    goto :goto_1

    .line 63
    .end local p4    # "root":[B
    .restart local v4    # "root":[B
    :cond_0
    move-object p4, v4

    .line 55
    .end local v4    # "root":[B
    .restart local p4    # "root":[B
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v1, v2

    move-object v2, p4

    move p4, v1

    move-object v1, p0

    move-object v8, v3

    goto :goto_0

    .end local v3    # "SIG_tmp":Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .local v2, "root":[B
    .restart local v8    # "SIG_tmp":Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .local p4, "idx_leaf":I
    :cond_1
    move-object v4, v2

    .line 69
    .end local v2    # "root":[B
    .end local v7    # "j":I
    .restart local v4    # "root":[B
    array-length v1, p1

    new-array v1, v1, [[B

    .line 70
    .local v1, "totSigs":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, v1

    if-eq v2, v3, :cond_2

    .line 72
    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->sig:[B

    aget-object v5, p1, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->auth:[[B

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v5

    invoke-static {v3, v5}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 75
    .end local v2    # "i":I
    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v2

    return-object v2
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

    .line 153
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    .line 155
    .local v0, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 157
    .local v1, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;>;"
    const/4 v2, 0x1

    shl-int v3, v2, p3

    rem-int v3, p2, v3

    if-eqz v3, :cond_0

    .line 159
    const/4 v2, 0x0

    return-object v2

    .line 162
    :cond_0
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    shl-int v4, v2, p3

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 164
    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 165
    add-int v4, p2, v3

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 166
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v4, p1, p4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->pkGen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v4

    .line 168
    .local v4, "node":[B
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 169
    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    .line 170
    add-int v7, p2, v3

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 173
    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 174
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeHeight:I

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 176
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v7

    sub-int/2addr v7, v2

    div-int/2addr v7, v6

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 177
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    .line 179
    .local v7, "current":Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget-object v9, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    invoke-virtual {v8, p4, v0, v9, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v4

    .line 181
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    .line 182
    .end local v7    # "current":Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;
    goto :goto_1

    .line 184
    :cond_1
    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v7

    invoke-direct {v6, v4, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;-><init>([BI)V

    invoke-virtual {v1, v5, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 162
    .end local v4    # "node":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "idx":I
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    return-object v2
.end method

.method public verify([B[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[BJI[B)Z
    .locals 11
    .param p1, "M"    # [B
    .param p2, "sig_ht"    # [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .param p3, "pkSeed"    # [B
    .param p4, "idx_tree"    # J
    .param p6, "idx_leaf"    # I
    .param p7, "PK_HT"    # [B
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
            "M",
            "sig_ht",
            "pkSeed",
            "idx_tree",
            "idx_leaf",
            "PK_HT"
        }
    .end annotation

    .line 196
    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    .line 198
    .local v5, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/4 v0, 0x0

    aget-object v2, p2, v0

    .line 199
    .local v2, "SIG_tmp":Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    .line 200
    move-wide v6, p4

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 201
    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v8

    .line 202
    .local v8, "node":[B
    const/4 v1, 0x1

    move-object v3, v8

    move v8, v1

    move/from16 v1, p6

    .end local p4    # "idx_tree":J
    .end local p6    # "idx_leaf":I
    .local v1, "idx_leaf":I
    .local v3, "node":[B
    .local v6, "idx_tree":J
    .local v8, "j":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    if-ge v8, v4, :cond_0

    .line 204
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    const/4 v9, 0x1

    shl-int v4, v9, v4

    sub-int/2addr v4, v9

    int-to-long v9, v4

    and-long/2addr v9, v6

    long-to-int v1, v9

    .line 205
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    ushr-long/2addr v6, v4

    .line 206
    aget-object v2, p2, v8

    .line 207
    invoke-virtual {v5, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    .line 208
    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 209
    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    .line 202
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 211
    .end local v8    # "j":I
    :cond_0
    move-object/from16 v0, p7

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    return v4
.end method

.method xmss_PKgen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 7
    .param p1, "skSeed"    # [B
    .param p2, "pkSeed"    # [B
    .param p3, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "skSeed",
            "pkSeed",
            "adrs"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "skSeed":[B
    .end local p2    # "pkSeed":[B
    .end local p3    # "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .local v2, "skSeed":[B
    .local v5, "pkSeed":[B
    .local v6, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p1

    return-object p1
.end method

.method xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 9
    .param p1, "idx"    # I
    .param p2, "sig_xmss"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .param p3, "M"    # [B
    .param p4, "pkSeed"    # [B
    .param p5, "paramAdrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "sig_xmss",
            "M",
            "pkSeed",
            "paramAdrs"
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    .line 90
    .local v0, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 91
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 92
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->getWOTSSig()[B

    move-result-object v1

    .line 93
    .local v1, "sig":[B
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->getXMSSAUTH()[[B

    move-result-object v2

    .line 95
    .local v2, "AUTH":[[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v3, v1, p3, p4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->pkFromSig([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    .line 96
    .local v3, "node0":[B
    const/4 v4, 0x0

    .line 99
    .local v4, "node1":[B
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 100
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 101
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    if-ge v6, v7, :cond_1

    .line 103
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    .line 104
    const/4 v7, 0x1

    shl-int v8, v7, v6

    div-int v8, p1, v8

    rem-int/2addr v8, v5

    if-nez v8, :cond_0

    .line 106
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v7

    div-int/2addr v7, v5

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 107
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object v8, v2, v6

    invoke-virtual {v7, p4, v0, v3, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v4

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v8

    sub-int/2addr v8, v7

    div-int/2addr v8, v5

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    .line 112
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object v8, v2, v6

    invoke-virtual {v7, p4, v0, v8, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v4

    .line 114
    :goto_1
    move-object v3, v4

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 116
    .end local v6    # "k":I
    :cond_1
    return-object v3
.end method

.method xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .locals 8
    .param p1, "M"    # [B
    .param p2, "skSeed"    # [B
    .param p3, "idx"    # I
    .param p4, "pkSeed"    # [B
    .param p5, "paramAdrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "M",
            "skSeed",
            "idx",
            "pkSeed",
            "paramAdrs"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    new-array v0, v0, [[B

    .line 126
    .local v0, "AUTH":[[B
    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v1, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    move-object v7, v1

    .line 128
    .local v7, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 129
    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getLayerAddress()I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    .line 130
    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeAddress()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 133
    const/4 v1, 0x0

    move v5, v1

    .local v5, "j":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    const/4 v2, 0x1

    if-ge v5, v1, :cond_0

    .line 135
    shl-int v1, v2, v5

    div-int v1, p3, v1

    xor-int/2addr v1, v2

    .line 136
    .local v1, "k":I
    shl-int/2addr v2, v5

    mul-int v4, v1, v2

    move-object v2, p0

    move-object v3, p2

    move-object v6, p4

    .end local p2    # "skSeed":[B
    .end local p4    # "pkSeed":[B
    .local v3, "skSeed":[B
    .local v6, "pkSeed":[B
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p2

    move-object p4, v2

    aput-object p2, v0, v5

    .line 133
    .end local v1    # "k":I
    add-int/lit8 v5, v5, 0x1

    move-object p2, v3

    move-object p4, v6

    goto :goto_0

    .end local v3    # "skSeed":[B
    .end local v6    # "pkSeed":[B
    .restart local p2    # "skSeed":[B
    .restart local p4    # "pkSeed":[B
    :cond_0
    move-object v3, p2

    move-object v6, p4

    move-object p4, p0

    .line 138
    .end local v5    # "j":I
    .end local p2    # "skSeed":[B
    .end local p4    # "pkSeed":[B
    .restart local v3    # "skSeed":[B
    .restart local v6    # "pkSeed":[B
    new-instance p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {p2, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    .line 139
    .end local v7    # "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .local p2, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 140
    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 142
    iget-object v1, p4, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v1, p1, v3, v6, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    .line 144
    .local v1, "sig":[B
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;-><init>([B[[B)V

    return-object v2
.end method
