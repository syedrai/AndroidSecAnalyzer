.class Lorg/bouncycastle/pqc/crypto/xmss/XMSSVerifierUtil;
.super Ljava/lang/Object;
.source "XMSSVerifierUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRootNodeFromSignature(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;I[BLorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 17
    .param p0, "wotsPlus"    # Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;
    .param p1, "height"    # I
    .param p2, "messageDigest"    # [B
    .param p3, "signature"    # Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .param p4, "otsHashAddress"    # Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .param p5, "indexLeaf"    # I
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
            "wotsPlus",
            "height",
            "messageDigest",
            "signature",
            "otsHashAddress",
            "indexLeaf"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    array-length v3, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getTreeDigestSize()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 19
    if-eqz p3, :cond_3

    .line 23
    if-eqz v2, :cond_2

    .line 29
    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    .line 30
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .line 31
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    .line 32
    .local v3, "lTreeAddress":Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    .line 33
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 34
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 38
    .local v4, "hashTreeAddress":Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;
    nop

    .line 39
    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->getWOTSPlusSignature()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v5

    .line 38
    invoke-virtual {v0, v1, v5, v2}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getPublicKeyFromSignature([BLorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    move-result-object v5

    .line 40
    .local v5, "wotsPlusPK":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;
    const/4 v6, 0x2

    new-array v7, v6, [Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    .line 41
    .local v7, "node":[Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    invoke-static {v0, v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNodeUtil;->lTree(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 43
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    move/from16 v10, p1

    if-ge v8, v10, :cond_1

    .line 45
    new-instance v11, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v11}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    .line 46
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 47
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v11, v8}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v11

    .line 48
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v11

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 49
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v11

    move-object v4, v11

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 50
    const/4 v11, 0x1

    shl-int v12, v11, v8

    div-int v12, p5, v12

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    rem-double/2addr v12, v14

    const-wide/16 v14, 0x0

    cmpl-double v16, v12, v14

    if-nez v16, :cond_0

    .line 52
    new-instance v12, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v12}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    .line 53
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 54
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 55
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v12

    .line 56
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v13

    div-int/2addr v13, v6

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v12

    .line 57
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v12

    move-object v4, v12

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 58
    aget-object v12, v7, v9

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->getAuthPath()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {v0, v12, v13, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNodeUtil;->randomizeHash(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v12

    aput-object v12, v7, v11

    .line 59
    new-instance v12, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v13, v7, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v13

    add-int/2addr v13, v11

    aget-object v14, v7, v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    aput-object v12, v7, v11

    goto :goto_1

    .line 63
    :cond_0
    new-instance v12, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v12}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    .line 64
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 65
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 66
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v12

    .line 67
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v13

    sub-int/2addr v13, v11

    div-int/2addr v13, v6

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v12

    .line 68
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v12

    move-object v4, v12

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 69
    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->getAuthPath()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v13, v7, v9

    invoke-static {v0, v12, v13, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNodeUtil;->randomizeHash(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v12

    aput-object v12, v7, v11

    .line 70
    new-instance v12, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v13, v7, v11

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v13

    add-int/2addr v13, v11

    aget-object v14, v7, v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    aput-object v12, v7, v11

    .line 72
    :goto_1
    aget-object v11, v7, v11

    aput-object v11, v7, v9

    .line 43
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 74
    .end local v8    # "k":I
    :cond_1
    aget-object v6, v7, v9

    return-object v6

    .line 25
    .end local v3    # "lTreeAddress":Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;
    .end local v4    # "hashTreeAddress":Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;
    .end local v5    # "wotsPlusPK":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;
    .end local v7    # "node":[Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    :cond_2
    move/from16 v10, p1

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "otsHashAddress == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 21
    :cond_3
    move/from16 v10, p1

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "signature == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 17
    :cond_4
    move/from16 v10, p1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
