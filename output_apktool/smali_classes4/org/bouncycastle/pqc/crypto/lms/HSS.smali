.class Lorg/bouncycastle/pqc/crypto/lms/HSS;
.super Ljava/lang/Object;
.source "HSS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/lms/HSS$PlaceholderLMSPrivateKey;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateHSSKeyPair(Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;)Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;
    .locals 29
    .param p0, "parameters"    # Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getDepth()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    .line 16
    .local v0, "keys":[Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    .line 18
    .local v1, "sig":[Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getLmsParameters()[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result v3

    new-array v11, v3, [B

    .line 19
    .local v11, "rootSeed":[B
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 21
    const/16 v3, 0x10

    new-array v9, v3, [B

    .line 22
    .local v9, "I":[B
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 30
    new-array v3, v4, [B

    .line 32
    .local v3, "zero":[B
    const-wide/16 v4, 0x1

    .line 33
    .local v4, "hssKeyMaxIndex":J
    const/4 v6, 0x0

    move-wide/from16 v19, v4

    move v4, v6

    .local v4, "t":I
    .local v19, "hssKeyMaxIndex":J
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 35
    if-nez v4, :cond_0

    .line 37
    new-instance v5, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    .line 38
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getLmsParameters()[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v6

    .line 39
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getLmsParameters()[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMOTSParam()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v7

    .line 42
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getLmsParameters()[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v8

    shl-int v10, v2, v8

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[BI[B)V

    aput-object v5, v0, v4

    move-object/from16 v16, v3

    goto :goto_1

    .line 47
    :cond_0
    new-instance v12, Lorg/bouncycastle/pqc/crypto/lms/HSS$PlaceholderLMSPrivateKey;

    .line 48
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getLmsParameters()[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v13

    .line 49
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getLmsParameters()[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMOTSParam()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v14

    .line 52
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getLmsParameters()[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v5

    shl-int v17, v2, v5

    const/4 v15, -0x1

    move-object/from16 v18, v3

    move-object/from16 v16, v3

    .end local v3    # "zero":[B
    .local v16, "zero":[B
    invoke-direct/range {v12 .. v18}, Lorg/bouncycastle/pqc/crypto/lms/HSS$PlaceholderLMSPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[BI[B)V

    aput-object v12, v0, v4

    .line 55
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getLmsParameters()[Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v3

    shl-int v3, v2, v3

    int-to-long v5, v3

    mul-long v19, v19, v5

    .line 33
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v16

    goto :goto_0

    .end local v16    # "zero":[B
    .restart local v3    # "zero":[B
    :cond_1
    move-object/from16 v16, v3

    .line 60
    .end local v3    # "zero":[B
    .end local v4    # "t":I
    .restart local v16    # "zero":[B
    const-wide/16 v2, 0x0

    cmp-long v4, v19, v2

    if-nez v4, :cond_2

    .line 62
    const-wide v19, 0x7fffffffffffffffL

    move-wide/from16 v27, v19

    goto :goto_2

    .line 60
    :cond_2
    move-wide/from16 v27, v19

    .line 65
    .end local v19    # "hssKeyMaxIndex":J
    .local v27, "hssKeyMaxIndex":J
    :goto_2
    new-instance v21, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    .line 66
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSKeyGenerationParameters;->getDepth()I

    move-result v22

    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    .line 68
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const-wide/16 v25, 0x0

    invoke-direct/range {v21 .. v28}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;-><init>(ILjava/util/List;Ljava/util/List;JJ)V

    .line 65
    return-object v21
.end method

.method public static generateSignature(ILorg/bouncycastle/pqc/crypto/lms/LMSContext;)Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;
    .locals 4
    .param p0, "L"    # I
    .param p1, "context"    # Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "L",
            "context"
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getSignedPubKeys()[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    move-result-object v2

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->generateSign(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;-><init>(I[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;)V

    return-object v0
.end method

.method public static generateSignature(Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;[B)Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;
    .locals 9
    .param p0, "keyPair"    # Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyPair",
            "message"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getL()I

    move-result v0

    .line 136
    .local v0, "L":I
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSS;->rangeTestKeys(Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;)V

    .line 140
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;>;"
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getSig()Ljava/util/List;

    move-result-object v2

    .line 143
    .local v2, "sig":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;>;"
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getKeys()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    .line 146
    .local v3, "nextKey":Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
    const/4 v4, 0x0

    .line 147
    .local v4, "i":I
    add-int/lit8 v5, v0, -0x1

    new-array v5, v5, [Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    .line 148
    .local v5, "signed_pub_key":[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;
    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_0

    .line 150
    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    .line 151
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    add-int/lit8 v8, v4, 0x1

    .line 152
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;)V

    aput-object v6, v5, v4

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->incIndex()V

    .line 160
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;>;"
    .end local v2    # "sig":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;>;"
    .end local v4    # "i":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->generateLMSContext()Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->withSignedPublicKeys([Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v1

    .line 164
    .local v1, "context":Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    const/4 v2, 0x0

    array-length v4, p1

    invoke-virtual {v1, p1, v2, v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->update([BII)V

    .line 166
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/HSS;->generateSignature(ILorg/bouncycastle/pqc/crypto/lms/LMSContext;)Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;

    move-result-object v2

    return-object v2

    .line 160
    .end local v1    # "context":Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    .end local v3    # "nextKey":Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
    .end local v5    # "signed_pub_key":[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static incrementIndex(Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;)V
    .locals 2
    .param p0, "keyPair"    # Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyPair"
        }
    .end annotation

    .line 83
    monitor-enter p0

    .line 85
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSS;->rangeTestKeys(Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;)V

    .line 86
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->incIndex()V

    .line 87
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getL()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->incIndex()V

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static rangeTestKeys(Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;)V
    .locals 7
    .param p0, "keyPair"    # Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyPair"
        }
    .end annotation

    .line 94
    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getIndexLimit()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 98
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;

    .line 100
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->isShard()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " shard"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hss private key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is exhausted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;-><init>(Ljava/lang/String;)V

    .end local p0    # "keyPair":Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;
    throw v0

    .line 105
    .restart local p0    # "keyPair":Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getL()I

    move-result v0

    .line 106
    .local v0, "L":I
    move v1, v0

    .line 107
    .local v1, "d":I
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 108
    .local v2, "prv":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;>;"
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getIndex()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getSigParameters()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    if-ne v3, v4, :cond_4

    .line 110
    add-int/lit8 v1, v1, -0x1

    .line 111
    if-nez v1, :cond_2

    .line 113
    new-instance v3, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;

    .line 115
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->isShard()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, " shard"

    goto :goto_1

    :cond_3
    const-string v4, ""

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hss private key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is exhausted the maximum limit for this HSS private key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;-><init>(Ljava/lang/String;)V

    .end local p0    # "keyPair":Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;
    throw v3

    .line 121
    .restart local p0    # "keyPair":Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;
    :cond_4
    :goto_2
    if-ge v1, v0, :cond_5

    .line 123
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->replaceConsumedKey(I)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    .end local v0    # "L":I
    .end local v1    # "d":I
    .end local v2    # "prv":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;>;"
    :cond_5
    monitor-exit p0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static verifySignature(Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;[B)Z
    .locals 10
    .param p0, "publicKey"    # Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;
    .param p1, "signature"    # Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "signature",
            "message"
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->getlMinus1()I

    move-result v0

    .line 177
    .local v0, "Nspk":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;->getL()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 179
    return v3

    .line 182
    :cond_0
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    .line 183
    .local v1, "sigList":[Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    new-array v2, v0, [Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    .line 185
    .local v2, "pubList":[Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->getSignedPubKey()[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;->getSignature()Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    move-result-object v5

    aput-object v5, v1, v4

    .line 188
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->getSignedPubKey()[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;->getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object v5

    aput-object v5, v2, v4

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->getSignature()Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    move-result-object v4

    aput-object v4, v1, v0

    .line 192
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;->getLMSPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object v4

    .line 194
    .local v4, "key":Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 196
    aget-object v6, v1, v5

    .line 197
    .local v6, "sig":Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    aget-object v7, v2, v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->toByteArray()[B

    move-result-object v7

    .line 198
    .local v7, "msg":[B
    invoke-static {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;[B)Z

    move-result v8

    if-nez v8, :cond_2

    .line 200
    return v3

    .line 204
    :cond_2
    :try_start_0
    aget-object v8, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 209
    nop

    .line 194
    .end local v6    # "sig":Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .end local v7    # "msg":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 206
    .restart local v6    # "sig":Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .restart local v7    # "msg":[B
    :catch_0
    move-exception v3

    .line 208
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 211
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v6    # "sig":Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .end local v7    # "msg":[B
    :cond_3
    aget-object v3, v1, v0

    invoke-static {v4, v3, p2}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;[B)Z

    move-result v3

    return v3
.end method
