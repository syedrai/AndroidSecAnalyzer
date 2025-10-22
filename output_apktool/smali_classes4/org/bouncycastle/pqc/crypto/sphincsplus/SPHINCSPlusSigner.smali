.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;
.super Ljava/lang/Object;
.source "SPHINCSPlusSigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 20
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-result-object v2

    .line 63
    .local v2, "engine":Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->init([B)V

    .line 66
    iget v3, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v3, v3, [B

    .line 67
    .local v3, "optRand":[B
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->random:Ljava/security/SecureRandom;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 69
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    array-length v6, v3

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    :goto_0
    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;

    invoke-direct {v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    .line 77
    .local v4, "fors":Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->prf:[B

    invoke-virtual {v2, v6, v3, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF_msg([B[B[B)[B

    move-result-object v6

    .line 80
    .local v6, "R":[B
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    invoke-virtual {v2, v6, v7, v8, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    move-result-object v7

    .line 81
    .local v7, "idxDigest":Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
    iget-object v8, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->digest:[B

    .line 82
    .local v8, "mHash":[B
    iget-wide v9, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_tree:J

    .line 83
    .local v9, "idx_tree":J
    iget v11, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_leaf:I

    .line 85
    .local v11, "idx_leaf":I
    new-instance v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    .line 86
    .local v12, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 87
    invoke-virtual {v12, v9, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 88
    invoke-virtual {v12, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 89
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->seed:[B

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-virtual {v4, v8, v14, v15, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    move-result-object v14

    .line 91
    .local v14, "sig_fors":[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    new-instance v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    .line 92
    .end local v12    # "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .local v15, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    invoke-virtual {v15, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 93
    invoke-virtual {v15, v9, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 94
    invoke-virtual {v15, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 95
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-virtual {v4, v14, v8, v12, v15}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->pkFromSig([Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v12

    .line 98
    .local v12, "PK_FORS":[B
    new-instance v13, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    .line 99
    .local v13, "treeAdrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/16 v16, 0x0

    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 101
    const/16 v17, 0x2

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->getSeed()[B

    move-result-object v1

    move-object/from16 v18, v3

    .end local v3    # "optRand":[B
    .local v18, "optRand":[B
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v3

    invoke-direct {v5, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V

    .line 102
    .local v5, "ht":Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;
    invoke-virtual {v5, v12, v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->sign([BJI)[B

    move-result-object v1

    .line 104
    .local v1, "SIG_HT":[B
    array-length v3, v14

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [[B

    .line 105
    .local v3, "sigComponents":[[B
    aput-object v6, v3, v16

    .line 107
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "i":I
    :goto_1
    move-object/from16 v16, v1

    .end local v1    # "SIG_HT":[B
    .local v16, "SIG_HT":[B
    array-length v1, v14

    if-eq v0, v1, :cond_1

    .line 109
    add-int/lit8 v1, v0, 0x1

    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    aget-object v0, v14, v17

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->sk:[B

    move/from16 v19, v1

    aget-object v1, v14, v17

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->authPath:[[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    aput-object v0, v3, v19

    .line 107
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v1, v16

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    :cond_1
    move/from16 v17, v0

    .line 111
    .end local v0    # "i":I
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aput-object v16, v3, v0

    .line 113
    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
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

    .line 37
    if-eqz p1, :cond_1

    .line 39
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    .line 42
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 46
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    goto :goto_0

    .line 51
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    .line 53
    :goto_0
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 18
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

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-result-object v1

    .line 124
    .local v1, "engine":Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->init([B)V

    .line 126
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    .line 127
    .local v2, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    iget v8, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    iget v9, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;-><init>(IIIIII[B)V

    .line 129
    .local v3, "sig":Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->getR()[B

    move-result-object v4

    .line 130
    .local v4, "R":[B
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->getSIG_FORS()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    move-result-object v5

    .line 131
    .local v5, "sig_fors":[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->getSIG_HT()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v8

    .line 134
    .local v8, "SIG_HT":[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v6

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getRoot()[B

    move-result-object v7

    move-object/from16 v14, p1

    invoke-virtual {v1, v4, v6, v7, v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    move-result-object v15

    .line 135
    .local v15, "idxDigest":Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
    iget-object v6, v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->digest:[B

    .line 136
    .local v6, "mHash":[B
    iget-wide v10, v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_tree:J

    .line 137
    .local v10, "idx_tree":J
    iget v12, v15, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_leaf:I

    .line 140
    .local v12, "idx_leaf":I
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 141
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    .line 142
    invoke-virtual {v2, v10, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 143
    invoke-virtual {v2, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 144
    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;

    invoke-direct {v9, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v13

    invoke-virtual {v9, v5, v6, v13, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->pkFromSig([Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v9

    .line 146
    .local v9, "PK_FORS":[B
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 147
    invoke-virtual {v2, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    .line 148
    invoke-virtual {v2, v10, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    .line 149
    invoke-virtual {v2, v12}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 150
    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v13

    move-object/from16 v16, v2

    .end local v2    # "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .local v16, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/4 v2, 0x0

    invoke-direct {v7, v1, v2, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V

    .line 151
    .local v7, "ht":Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v2

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getRoot()[B

    move-result-object v13

    move-object/from16 v17, v9

    move-object v9, v2

    move-object v2, v6

    move-object v6, v7

    move-object/from16 v7, v17

    .end local v9    # "PK_FORS":[B
    .local v2, "mHash":[B
    .local v6, "ht":Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;
    .local v7, "PK_FORS":[B
    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->verify([B[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[BJI[B)Z

    move-result v9

    return v9
.end method
