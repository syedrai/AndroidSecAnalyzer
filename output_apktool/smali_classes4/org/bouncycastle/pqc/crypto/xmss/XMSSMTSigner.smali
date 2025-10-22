.class public Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;
.super Ljava/lang/Object;
.source "XMSSMTSigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private hasGenerated:Z

.field private initSign:Z

.field private params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

.field private privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

.field private wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

.field private xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wotsSign([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .locals 3
    .param p1, "messageDigest"    # [B
    .param p2, "otsHashAddress"    # Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageDigest",
            "otsHashAddress"
        }
    .end annotation

    .line 221
    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 225
    if-eqz p2, :cond_0

    .line 230
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getWOTSPlusSecretKey([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    .line 232
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->sign([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "otsHashAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 25
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 49
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_a

    .line 54
    iget-boolean v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->initSign:Z

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    if-eqz v0, :cond_8

    .line 66
    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    monitor-enter v3

    .line 68
    :try_start_0
    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getUsagesRemaining()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    .line 72
    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_6

    .line 80
    :try_start_1
    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object v0

    .line 83
    .local v0, "bdsState":Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;
    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getIndex()J

    move-result-wide v4

    .line 84
    .local v4, "globalIndex":J
    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v8

    .line 85
    .local v8, "totalHeight":I
    iget-object v9, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v9

    .line 86
    .local v9, "xmssHeight":I
    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getUsagesRemaining()J

    move-result-wide v10

    cmp-long v12, v10, v6

    if-lez v12, :cond_5

    .line 92
    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v6

    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v7

    const/16 v10, 0x20

    invoke-static {v4, v5, v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v6

    .line 93
    .local v6, "random":[B
    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getRoot()[B

    move-result-object v7

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 94
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v10

    invoke-static {v4, v5, v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v10

    .line 93
    invoke-static {v6, v7, v10}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v7

    .line 95
    .local v7, "concatenated":[B
    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v10

    invoke-virtual {v10, v7, v2}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object v10

    .line 97
    .local v10, "messageDigest":[B
    const/4 v11, 0x1

    iput-boolean v11, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->hasGenerated:Z

    .line 99
    new-instance v11, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v11, v12}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v11, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->withIndex(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-result-object v11

    invoke-virtual {v11, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->withRandom([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;

    move-result-object v11

    .line 103
    .local v11, "signature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;
    invoke-static {v4, v5, v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v12

    .line 104
    .local v12, "indexTree":J
    invoke-static {v4, v5, v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v14

    .line 107
    .local v14, "indexLeaf":I
    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v16, v6

    .end local v6    # "random":[B
    .local v16, "random":[B
    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v6

    invoke-virtual {v15, v2, v6}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    .line 111
    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v2, v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 112
    invoke-virtual {v2, v14}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 115
    .local v2, "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v15

    if-eqz v15, :cond_1

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v18, v7

    move/from16 v19, v8

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    new-instance v15, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-object/from16 v18, v7

    .end local v7    # "concatenated":[B
    .local v18, "concatenated":[B
    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v7

    move/from16 v19, v8

    .end local v8    # "totalHeight":I
    .local v19, "totalHeight":I
    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v8

    invoke-direct {v15, v6, v7, v8, v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v15}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->put(ILorg/bouncycastle/pqc/crypto/xmss/BDS;)V

    .line 121
    :goto_1
    invoke-direct {v1, v10, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsSign([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v6

    .line 123
    .local v6, "wotsPlusSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    new-instance v7, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v7, v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 124
    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withWOTSPlusSignature(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withAuthPath(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v7

    .line 125
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object v7

    .line 127
    .local v7, "reducedSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v8, 0x1

    .local v8, "layer":I
    :goto_2
    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v15

    if-ge v8, v15, :cond_4

    .line 132
    add-int/lit8 v15, v8, -0x1

    invoke-virtual {v0, v15}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v15

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getRoot()Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v15

    .line 134
    .local v15, "root":Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    invoke-static {v12, v13, v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v17

    move/from16 v14, v17

    .line 135
    invoke-static {v12, v13, v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 138
    move-object/from16 v17, v2

    .end local v2    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .local v17, "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 139
    invoke-virtual {v2, v12, v13}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v2, v14}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 142
    .end local v17    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .restart local v2    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    move-object/from16 v20, v6

    .end local v6    # "wotsPlusSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .local v20, "wotsPlusSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v6

    invoke-direct {v1, v6, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsSign([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v6

    .line 144
    .end local v20    # "wotsPlusSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .restart local v6    # "wotsPlusSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-static {v4, v5, v9, v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isNewBDSInitNeeded(JII)Z

    move-result v17

    if-eqz v17, :cond_2

    goto :goto_3

    :cond_2
    move-wide/from16 v21, v4

    move-object/from16 v23, v7

    move/from16 v24, v9

    goto :goto_4

    .line 146
    :cond_3
    :goto_3
    move-wide/from16 v21, v4

    .end local v4    # "globalIndex":J
    .local v21, "globalIndex":J
    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-object/from16 v23, v7

    .end local v7    # "reducedSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .local v23, "reducedSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v7

    move/from16 v24, v9

    .end local v9    # "xmssHeight":I
    .local v24, "xmssHeight":I
    iget-object v9, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v9

    invoke-direct {v4, v5, v7, v9, v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)V

    invoke-virtual {v0, v8, v4}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->put(ILorg/bouncycastle/pqc/crypto/xmss/BDS;)V

    .line 149
    :goto_4
    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 150
    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withWOTSPlusSignature(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v4

    .line 151
    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withAuthPath(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object v4

    move-object v7, v4

    .line 153
    .end local v23    # "reducedSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .restart local v7    # "reducedSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    nop

    .end local v15    # "root":Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v4, v21

    move/from16 v9, v24

    goto/16 :goto_2

    .end local v21    # "globalIndex":J
    .end local v24    # "xmssHeight":I
    .restart local v4    # "globalIndex":J
    .restart local v9    # "xmssHeight":I
    :cond_4
    move-object/from16 v17, v2

    move-wide/from16 v21, v4

    move-object/from16 v20, v6

    move-object/from16 v23, v7

    move/from16 v24, v9

    .line 156
    .end local v2    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .end local v4    # "globalIndex":J
    .end local v6    # "wotsPlusSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .end local v7    # "reducedSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .end local v8    # "layer":I
    .end local v9    # "xmssHeight":I
    .restart local v17    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .restart local v20    # "wotsPlusSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .restart local v21    # "globalIndex":J
    .restart local v23    # "reducedSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .restart local v24    # "xmssHeight":I
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :try_start_2
    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->rollKey()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    return-object v2

    .line 88
    .end local v10    # "messageDigest":[B
    .end local v11    # "signature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;
    .end local v12    # "indexTree":J
    .end local v14    # "indexLeaf":I
    .end local v16    # "random":[B
    .end local v17    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .end local v18    # "concatenated":[B
    .end local v19    # "totalHeight":I
    .end local v20    # "wotsPlusSignature":Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .end local v21    # "globalIndex":J
    .end local v23    # "reducedSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .end local v24    # "xmssHeight":I
    .restart local v4    # "globalIndex":J
    .local v8, "totalHeight":I
    .restart local v9    # "xmssHeight":I
    :cond_5
    move-wide/from16 v21, v4

    move/from16 v19, v8

    move/from16 v24, v9

    .end local v4    # "globalIndex":J
    .end local v8    # "totalHeight":I
    .end local v9    # "xmssHeight":I
    .restart local v19    # "totalHeight":I
    .restart local v21    # "globalIndex":J
    .restart local v24    # "xmssHeight":I
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "index out of bounds"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "message":[B
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    .end local v0    # "bdsState":Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;
    .end local v19    # "totalHeight":I
    .end local v21    # "globalIndex":J
    .end local v24    # "xmssHeight":I
    .restart local p1    # "message":[B
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->rollKey()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 161
    nop

    .end local p1    # "message":[B
    throw v0

    .line 74
    .restart local p1    # "message":[B
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "message":[B
    throw v0

    .line 70
    .restart local p1    # "message":[B
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "no usages of private key remaining"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "message":[B
    throw v0

    .line 162
    .restart local p1    # "message":[B
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 58
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "signing key no longer usable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "signer not initialized for signature generation"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "message == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUpdatedPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 2

    .line 244
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->hasGenerated:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 248
    .local v0, "privKey":Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 250
    return-object v0

    .line 254
    .end local v0    # "privKey":Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 256
    .restart local v0    # "privKey":Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    if-eqz v0, :cond_1

    .line 258
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getNextKey()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 261
    :cond_1
    return-object v0
.end method

.method public getUsagesRemaining()J
    .locals 2

    .line 237
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getUsagesRemaining()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "param"
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 28
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->initSign:Z

    .line 29
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->hasGenerated:Z

    .line 30
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSSParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    goto :goto_0

    .line 37
    :cond_0
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->initSign:Z

    .line 38
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSSParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    .line 44
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    .line 45
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 20
    .param p1, "message"    # [B
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "signature"
        }
    .end annotation

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_3

    .line 171
    if-eqz v2, :cond_2

    .line 175
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    if-eqz v3, :cond_1

    .line 180
    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->withSignature([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;

    move-result-object v3

    .line 182
    .local v3, "sig":Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getRandom()[B

    move-result-object v4

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object v5

    .line 183
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getIndex()J

    move-result-wide v6

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v8

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v6

    .line 182
    invoke-static {v4, v5, v6}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v4

    .line 184
    .local v4, "concatenated":[B
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object v8

    .line 186
    .local v8, "messageDigest":[B
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getIndex()J

    move-result-wide v12

    .line 187
    .local v12, "globalIndex":J
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v15

    .line 188
    .local v15, "xmssHeight":I
    invoke-static {v12, v13, v15}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v5

    .line 189
    .local v5, "indexTree":J
    invoke-static {v12, v13, v15}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v11

    .line 192
    .local v11, "indexLeaf":I
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v9

    new-array v9, v9, [B

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getPublicSeed()[B

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    .line 195
    new-instance v7, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 196
    invoke-virtual {v7, v11}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 199
    .local v10, "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    .line 200
    .local v9, "xmssMTSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    move-wide/from16 v16, v5

    .end local v5    # "indexTree":J
    .local v16, "indexTree":J
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move v7, v15

    .end local v15    # "xmssHeight":I
    .local v7, "xmssHeight":I
    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSVerifierUtil;->getRootNodeFromSignature(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;I[BLorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v5

    .line 201
    .end local v7    # "xmssHeight":I
    .local v5, "rootNode":Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .restart local v15    # "xmssHeight":I
    const/4 v6, 0x1

    move v14, v11

    move-object v11, v10

    move-object v10, v9

    move v9, v6

    move-wide/from16 v6, v16

    .end local v16    # "indexTree":J
    .local v6, "indexTree":J
    .local v9, "layer":I
    .local v10, "xmssMTSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .local v11, "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .local v14, "indexLeaf":I
    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 203
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    .line 204
    .end local v10    # "xmssMTSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .local v17, "xmssMTSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    invoke-static {v6, v7, v15}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v1

    .line 205
    .end local v14    # "indexLeaf":I
    .local v1, "indexLeaf":I
    invoke-static {v6, v7, v15}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v6

    .line 208
    new-instance v10, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v10}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v10, v9}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 209
    invoke-virtual {v10, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v10, v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v10

    move-object/from16 v18, v10

    check-cast v18, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 212
    .end local v11    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .local v18, "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v16

    move/from16 v19, v1

    .end local v1    # "indexLeaf":I
    .local v19, "indexLeaf":I
    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSVerifierUtil;->getRootNodeFromSignature(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;I[BLorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v5

    .line 201
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move/from16 v14, v19

    goto :goto_0

    .line 216
    .end local v9    # "layer":I
    .end local v17    # "xmssMTSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .end local v18    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .end local v19    # "indexLeaf":I
    .restart local v10    # "xmssMTSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .restart local v11    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .restart local v14    # "indexLeaf":I
    :cond_0
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v1

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object v9

    invoke-static {v1, v9}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    return v1

    .line 177
    .end local v3    # "sig":Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;
    .end local v4    # "concatenated":[B
    .end local v5    # "rootNode":Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .end local v6    # "indexTree":J
    .end local v8    # "messageDigest":[B
    .end local v10    # "xmssMTSignature":Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .end local v11    # "otsHashAddress":Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;
    .end local v12    # "globalIndex":J
    .end local v14    # "indexLeaf":I
    .end local v15    # "xmssHeight":I
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "publicKey == null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "signature == null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "message == null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
