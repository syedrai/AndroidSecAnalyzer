.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;
.super Ljava/lang/Object;
.source "RainbowSigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# static fields
.field private static final MAXITS:I = 0x10000


# instance fields
.field private cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

.field private hashAlgo:Lorg/bouncycastle/crypto/Digest;

.field private key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

.field private random:Ljava/security/SecureRandom;

.field signableDocumentLength:I

.field private version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    return-void
.end method

.method private genSignature([B)[B
    .locals 37
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 64
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    .line 66
    .local v2, "msgHash":[B
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 67
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 69
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v3

    .line 70
    .local v3, "v1":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v4

    .line 71
    .local v4, "o1":I
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v6

    .line 72
    .local v6, "o2":I
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v7

    .line 73
    .local v7, "m":I
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v8

    .line 75
    .local v8, "n":I
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    .line 77
    .local v9, "sk":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    iget-object v11, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v12}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v12

    new-array v12, v12, [B

    invoke-static {v10, v11, v2, v12}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B

    move-result-object v10

    .line 78
    .local v10, "seed":[B
    new-instance v11, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    .line 80
    new-array v11, v3, [S

    .line 81
    .local v11, "vinegar":[S
    const/4 v12, 0x0

    .line 84
    .local v12, "L1":[[S
    new-array v13, v4, [S

    .line 85
    .local v13, "r_l1_F1":[S
    new-array v14, v6, [S

    .line 86
    .local v14, "r_l2_F1":[S
    new-array v15, v6, [S

    .line 87
    .local v15, "r_l2_F5":[S
    const/16 v16, 0x0

    const/4 v5, 0x2

    new-array v1, v5, [I

    const/16 v17, 0x1

    aput v4, v1, v17

    aput v6, v1, v16

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    .line 88
    .local v1, "L2_F2":[[S
    move-object/from16 v19, v10

    const/4 v5, 0x2

    .end local v10    # "seed":[B
    .local v19, "seed":[B
    new-array v10, v5, [I

    aput v6, v10, v17

    aput v6, v10, v16

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    .line 90
    .local v5, "L2_F3":[[S
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_salt()I

    move-result v10

    new-array v10, v10, [B

    .line 95
    .local v10, "salt":[B
    move-object/from16 v20, v12

    .end local v12    # "L1":[[S
    .local v20, "L1":[[S
    new-array v12, v7, [S

    .line 98
    .local v12, "x":[S
    move/from16 v21, v8

    .end local v8    # "n":I
    .local v21, "n":I
    new-array v8, v4, [S

    .line 99
    .local v8, "y_o1":[S
    const/16 v22, 0x0

    .line 107
    .local v22, "y_o2":[S
    const/16 v23, 0x0

    move-object/from16 v24, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v5

    move/from16 v5, v23

    .line 109
    .local v5, "counter":I
    .local v8, "L1":[[S
    .local v20, "L2_F3":[[S
    .local v24, "y_o1":[S
    :goto_0
    move-object/from16 v23, v14

    .end local v14    # "r_l2_F1":[S
    .local v23, "r_l2_F1":[S
    const/high16 v14, 0x10000

    if-nez v8, :cond_4

    if-ge v5, v14, :cond_4

    .line 111
    new-array v14, v3, [B

    .line 112
    .local v14, "tmpRandom":[B
    move/from16 v25, v5

    .end local v5    # "counter":I
    .local v25, "counter":I
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v14}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 113
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 115
    move/from16 v26, v5

    .end local v5    # "i":I
    .local v26, "i":I
    aget-byte v5, v14, v26

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v11, v26

    .line 113
    add-int/lit8 v5, v26, 0x1

    .end local v26    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    :cond_0
    move/from16 v26, v5

    .line 117
    .end local v5    # "i":I
    move-object/from16 v26, v14

    const/4 v5, 0x2

    .end local v14    # "tmpRandom":[B
    .local v26, "tmpRandom":[B
    new-array v14, v5, [I

    aput v4, v14, v17

    aput v4, v14, v16

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    .line 118
    .end local v8    # "L1":[[S
    .local v5, "L1":[[S
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v3, :cond_3

    .line 120
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_3
    if-ge v14, v4, :cond_2

    .line 122
    const/16 v27, 0x0

    move/from16 v28, v8

    move/from16 v8, v27

    .local v8, "j":I
    .local v28, "i":I
    :goto_4
    if-ge v8, v4, :cond_1

    .line 124
    move/from16 v27, v8

    .end local v8    # "j":I
    .local v27, "j":I
    iget-object v8, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    aget-object v8, v8, v14

    aget-object v8, v8, v28

    aget-short v8, v8, v27

    move/from16 v29, v14

    .end local v14    # "k":I
    .local v29, "k":I
    aget-short v14, v11, v28

    invoke-static {v8, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v8

    .line 125
    .local v8, "temp":S
    aget-object v14, v5, v29

    aget-object v30, v5, v29

    move-object/from16 v31, v14

    aget-short v14, v30, v27

    invoke-static {v14, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v14

    aput-short v14, v31, v27

    .line 122
    add-int/lit8 v14, v27, 0x1

    move v8, v14

    move/from16 v14, v29

    .end local v27    # "j":I
    .local v14, "j":I
    goto :goto_4

    .end local v29    # "k":I
    .local v8, "j":I
    .local v14, "k":I
    :cond_1
    move/from16 v27, v8

    move/from16 v29, v14

    .line 120
    .end local v8    # "j":I
    .end local v14    # "k":I
    .restart local v29    # "k":I
    add-int/lit8 v14, v29, 0x1

    move/from16 v8, v28

    .end local v29    # "k":I
    .restart local v14    # "k":I
    goto :goto_3

    .end local v28    # "i":I
    .local v8, "i":I
    :cond_2
    move/from16 v28, v8

    move/from16 v29, v14

    .line 118
    .end local v8    # "i":I
    .end local v14    # "k":I
    .restart local v28    # "i":I
    add-int/lit8 v8, v28, 0x1

    .end local v28    # "i":I
    .restart local v8    # "i":I
    goto :goto_2

    :cond_3
    move/from16 v28, v8

    .line 129
    .end local v8    # "i":I
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v8, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->inverse([[S)[[S

    move-result-object v8

    .line 130
    .end local v5    # "L1":[[S
    .local v8, "L1":[[S
    add-int/lit8 v5, v25, 0x1

    move-object/from16 v14, v23

    .end local v25    # "counter":I
    .local v5, "counter":I
    goto/16 :goto_0

    .line 109
    .end local v26    # "tmpRandom":[B
    :cond_4
    move/from16 v25, v5

    .line 134
    .end local v5    # "counter":I
    .restart local v25    # "counter":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_5
    if-ge v5, v4, :cond_5

    .line 136
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move/from16 v27, v5

    .end local v5    # "k":I
    .local v27, "k":I
    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    aget-object v5, v5, v27

    invoke-virtual {v14, v5, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix_quad([[S[S)S

    move-result v5

    aput-short v5, v13, v27

    .line 134
    add-int/lit8 v5, v27, 0x1

    const/high16 v14, 0x10000

    .end local v27    # "k":I
    .restart local v5    # "k":I
    goto :goto_5

    :cond_5
    move/from16 v27, v5

    .line 139
    .end local v5    # "k":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-ge v5, v3, :cond_9

    .line 141
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_7
    if-ge v14, v6, :cond_8

    .line 143
    move/from16 v27, v5

    .end local v5    # "i":I
    .local v27, "i":I
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move/from16 v28, v14

    .end local v14    # "k":I
    .local v28, "k":I
    iget-object v14, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    aget-object v14, v14, v28

    invoke-virtual {v5, v14, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix_quad([[S[S)S

    move-result v5

    aput-short v5, v23, v28

    .line 144
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_8
    if-ge v5, v4, :cond_6

    .line 146
    iget-object v14, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    aget-object v14, v14, v28

    aget-object v14, v14, v27

    aget-short v14, v14, v5

    move/from16 v29, v5

    .end local v5    # "j":I
    .local v29, "j":I
    aget-short v5, v11, v27

    invoke-static {v14, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    .line 147
    .local v5, "temp":S
    aget-object v14, v1, v28

    aget-object v30, v1, v28

    move-object/from16 v31, v14

    aget-short v14, v30, v29

    invoke-static {v14, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v14

    aput-short v14, v31, v29

    .line 144
    add-int/lit8 v14, v29, 0x1

    move v5, v14

    .end local v29    # "j":I
    .local v14, "j":I
    goto :goto_8

    .end local v14    # "j":I
    .local v5, "j":I
    :cond_6
    move/from16 v29, v5

    .line 149
    .end local v5    # "j":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_9
    if-ge v5, v6, :cond_7

    .line 151
    iget-object v14, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    aget-object v14, v14, v28

    aget-object v14, v14, v27

    aget-short v14, v14, v5

    move/from16 v29, v5

    .end local v5    # "j":I
    .restart local v29    # "j":I
    aget-short v5, v11, v27

    invoke-static {v14, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    .line 152
    .local v5, "temp":S
    aget-object v14, v20, v28

    aget-object v30, v20, v28

    move-object/from16 v31, v14

    aget-short v14, v30, v29

    invoke-static {v14, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v14

    aput-short v14, v31, v29

    .line 149
    add-int/lit8 v14, v29, 0x1

    move v5, v14

    .end local v29    # "j":I
    .restart local v14    # "j":I
    goto :goto_9

    .end local v14    # "j":I
    .local v5, "j":I
    :cond_7
    move/from16 v29, v5

    .line 141
    .end local v5    # "j":I
    add-int/lit8 v14, v28, 0x1

    move/from16 v5, v27

    .end local v28    # "k":I
    .local v14, "k":I
    goto :goto_7

    .end local v27    # "i":I
    .local v5, "i":I
    :cond_8
    move/from16 v27, v5

    move/from16 v28, v14

    .line 139
    .end local v5    # "i":I
    .end local v14    # "k":I
    .restart local v27    # "i":I
    add-int/lit8 v5, v27, 0x1

    .end local v27    # "i":I
    .restart local v5    # "i":I
    goto :goto_6

    :cond_9
    move/from16 v27, v5

    .line 157
    .end local v5    # "i":I
    new-array v5, v7, [B

    move-object/from16 v14, v22

    move/from16 v22, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v14

    move/from16 v14, v25

    .line 158
    .end local v25    # "counter":I
    .local v3, "y_o1":[S
    .local v5, "mHash":[B
    .local v14, "counter":I
    .local v22, "v1":I
    .local v24, "y_o2":[S
    :goto_a
    if-nez v24, :cond_f

    move-object/from16 v25, v11

    const/high16 v11, 0x10000

    .end local v11    # "vinegar":[S
    .local v25, "vinegar":[S
    if-ge v14, v11, :cond_e

    .line 160
    move/from16 v18, v14

    const/4 v11, 0x2

    .end local v14    # "counter":I
    .local v18, "counter":I
    new-array v14, v11, [I

    aput v6, v14, v17

    aput v6, v14, v16

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[S

    .line 162
    .local v11, "L2":[[S
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v14, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 165
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v14, v2, v10, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B

    move-result-object v14

    .line 166
    .local v14, "hash":[B
    move-object/from16 v28, v2

    .end local v2    # "msgHash":[B
    .local v28, "msgHash":[B
    invoke-direct {v0, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v2

    .line 169
    .local v2, "h":[S
    move-object/from16 v29, v5

    .end local v5    # "mHash":[B
    .local v29, "mHash":[B
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v30, v14

    .end local v14    # "hash":[B
    .local v30, "hash":[B
    iget-object v14, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    move-object/from16 v31, v10

    .end local v10    # "salt":[B
    .local v31, "salt":[B
    invoke-static {v2, v4, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v10

    invoke-virtual {v5, v14, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v5

    .line 170
    .local v5, "tmp_vec":[S
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-static {v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOf([SI)[S

    move-result-object v14

    invoke-virtual {v10, v14, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v5

    .line 171
    const/4 v10, 0x0

    invoke-static {v5, v10, v12, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    invoke-static {v2, v4, v12, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-static {v12, v4}, Lorg/bouncycastle/util/Arrays;->copyOf([SI)[S

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v5

    .line 177
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v10, v8, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v3

    .line 180
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v10, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v5

    .line 181
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_b
    if-ge v10, v6, :cond_a

    .line 183
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v32, v1

    .end local v1    # "L2_F2":[[S
    .local v32, "L2_F2":[[S
    iget-object v1, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    aget-object v1, v1, v10

    invoke-virtual {v14, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix_quad([[S[S)S

    move-result v1

    aput-short v1, v15, v10

    .line 181
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v32

    goto :goto_b

    .end local v32    # "L2_F2":[[S
    .restart local v1    # "L2_F2":[[S
    :cond_a
    move-object/from16 v32, v1

    .line 185
    .end local v1    # "L2_F2":[[S
    .end local v10    # "k":I
    .restart local v32    # "L2_F2":[[S
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v1, v5, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v1

    .line 186
    .end local v5    # "tmp_vec":[S
    .local v1, "tmp_vec":[S
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v10, v23

    .end local v23    # "r_l2_F1":[S
    .local v10, "r_l2_F1":[S
    invoke-virtual {v5, v1, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v1

    .line 187
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-static {v12, v4, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v14

    invoke-virtual {v5, v1, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v1

    .line 189
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    if-ge v5, v4, :cond_d

    .line 191
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_d
    if-ge v14, v6, :cond_c

    .line 193
    const/16 v23, 0x0

    move-object/from16 v33, v2

    move/from16 v2, v23

    .local v2, "j":I
    .local v33, "h":[S
    :goto_e
    if-ge v2, v6, :cond_b

    .line 195
    move/from16 v23, v2

    .end local v2    # "j":I
    .local v23, "j":I
    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    aget-object v2, v2, v14

    aget-object v2, v2, v5

    aget-short v2, v2, v23

    move-object/from16 v34, v3

    .end local v3    # "y_o1":[S
    .local v34, "y_o1":[S
    aget-short v3, v34, v5

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v2

    .line 196
    .local v2, "temp":S
    aget-object v3, v11, v14

    aget-object v35, v11, v14

    move-object/from16 v36, v3

    aget-short v3, v35, v23

    invoke-static {v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v36, v23

    .line 193
    add-int/lit8 v3, v23, 0x1

    move v2, v3

    move-object/from16 v3, v34

    .end local v23    # "j":I
    .local v3, "j":I
    goto :goto_e

    .end local v34    # "y_o1":[S
    .local v2, "j":I
    .local v3, "y_o1":[S
    :cond_b
    move/from16 v23, v2

    move-object/from16 v34, v3

    .line 191
    .end local v2    # "j":I
    .end local v3    # "y_o1":[S
    .restart local v34    # "y_o1":[S
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v33

    goto :goto_d

    .end local v33    # "h":[S
    .end local v34    # "y_o1":[S
    .local v2, "h":[S
    .restart local v3    # "y_o1":[S
    :cond_c
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    .line 189
    .end local v2    # "h":[S
    .end local v3    # "y_o1":[S
    .end local v14    # "k":I
    .restart local v33    # "h":[S
    .restart local v34    # "y_o1":[S
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .end local v33    # "h":[S
    .end local v34    # "y_o1":[S
    .restart local v2    # "h":[S
    .restart local v3    # "y_o1":[S
    :cond_d
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    .line 200
    .end local v2    # "h":[S
    .end local v3    # "y_o1":[S
    .end local v5    # "i":I
    .restart local v33    # "h":[S
    .restart local v34    # "y_o1":[S
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v5, v20

    .end local v20    # "L2_F3":[[S
    .local v5, "L2_F3":[[S
    invoke-virtual {v2, v11, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v2

    .line 203
    .end local v11    # "L2":[[S
    .local v2, "L2":[[S
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->solveEquation([[S[S)[S

    move-result-object v24

    .line 205
    add-int/lit8 v14, v18, 0x1

    move-object/from16 v23, v10

    move-object/from16 v11, v25

    move-object/from16 v2, v28

    move-object/from16 v5, v29

    move-object/from16 v10, v31

    move-object/from16 v1, v32

    move-object/from16 v3, v34

    const/16 v16, 0x0

    .end local v18    # "counter":I
    .local v14, "counter":I
    goto/16 :goto_a

    .line 158
    .end local v28    # "msgHash":[B
    .end local v29    # "mHash":[B
    .end local v30    # "hash":[B
    .end local v31    # "salt":[B
    .end local v32    # "L2_F2":[[S
    .end local v33    # "h":[S
    .end local v34    # "y_o1":[S
    .local v1, "L2_F2":[[S
    .local v2, "msgHash":[B
    .restart local v3    # "y_o1":[S
    .local v5, "mHash":[B
    .local v10, "salt":[B
    .restart local v20    # "L2_F3":[[S
    .local v23, "r_l2_F1":[S
    :cond_e
    move-object/from16 v32, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v5

    move-object/from16 v31, v10

    move/from16 v18, v14

    move-object/from16 v5, v20

    move-object/from16 v10, v23

    .end local v1    # "L2_F2":[[S
    .end local v2    # "msgHash":[B
    .end local v14    # "counter":I
    .end local v20    # "L2_F3":[[S
    .end local v23    # "r_l2_F1":[S
    .local v5, "L2_F3":[[S
    .local v10, "r_l2_F1":[S
    .restart local v18    # "counter":I
    .restart local v28    # "msgHash":[B
    .restart local v29    # "mHash":[B
    .restart local v31    # "salt":[B
    .restart local v32    # "L2_F2":[[S
    goto :goto_f

    .end local v18    # "counter":I
    .end local v25    # "vinegar":[S
    .end local v28    # "msgHash":[B
    .end local v29    # "mHash":[B
    .end local v31    # "salt":[B
    .end local v32    # "L2_F2":[[S
    .restart local v1    # "L2_F2":[[S
    .restart local v2    # "msgHash":[B
    .local v5, "mHash":[B
    .local v10, "salt":[B
    .local v11, "vinegar":[S
    .restart local v14    # "counter":I
    .restart local v20    # "L2_F3":[[S
    .restart local v23    # "r_l2_F1":[S
    :cond_f
    move-object/from16 v32, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v5

    move-object/from16 v31, v10

    move-object/from16 v25, v11

    move/from16 v18, v14

    move-object/from16 v5, v20

    move-object/from16 v10, v23

    .line 209
    .end local v1    # "L2_F2":[[S
    .end local v2    # "msgHash":[B
    .end local v11    # "vinegar":[S
    .end local v14    # "counter":I
    .end local v20    # "L2_F3":[[S
    .end local v23    # "r_l2_F1":[S
    .local v5, "L2_F3":[[S
    .local v10, "r_l2_F1":[S
    .restart local v18    # "counter":I
    .restart local v25    # "vinegar":[S
    .restart local v28    # "msgHash":[B
    .restart local v29    # "mHash":[B
    .restart local v31    # "salt":[B
    .restart local v32    # "L2_F2":[[S
    :goto_f
    if-nez v24, :cond_10

    new-array v1, v6, [S

    goto :goto_10

    :cond_10
    move-object/from16 v1, v24

    .line 212
    .end local v24    # "y_o2":[S
    .local v1, "y_o2":[S
    :goto_10
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v11, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    invoke-virtual {v2, v11, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v2

    .line 213
    .local v2, "tmp_vec":[S
    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v14, v25

    .end local v25    # "vinegar":[S
    .local v14, "vinegar":[S
    invoke-virtual {v11, v14, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v11

    .line 214
    .local v11, "z":[S
    move-object/from16 v17, v2

    .end local v2    # "tmp_vec":[S
    .local v17, "tmp_vec":[S
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v20, v5

    .end local v5    # "L2_F3":[[S
    .restart local v20    # "L2_F3":[[S
    iget-object v5, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    invoke-virtual {v2, v5, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v2

    .line 215
    .end local v17    # "tmp_vec":[S
    .restart local v2    # "tmp_vec":[S
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v5, v11, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v5

    .line 216
    .end local v11    # "z":[S
    .local v5, "z":[S
    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v17, v2

    .end local v2    # "tmp_vec":[S
    .restart local v17    # "tmp_vec":[S
    iget-object v2, v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    invoke-virtual {v11, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v2

    .line 217
    .end local v17    # "tmp_vec":[S
    .restart local v2    # "tmp_vec":[S
    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v11, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    .line 218
    move/from16 v11, v21

    .end local v21    # "n":I
    .local v11, "n":I
    invoke-static {v5, v11}, Lorg/bouncycastle/util/Arrays;->copyOf([SI)[S

    move-result-object v5

    .line 219
    move-object/from16 v16, v3

    move/from16 v0, v22

    const/4 v3, 0x0

    .end local v3    # "y_o1":[S
    .end local v22    # "v1":I
    .local v0, "v1":I
    .local v16, "y_o1":[S
    invoke-static {v2, v3, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    nop

    .end local v0    # "v1":I
    .restart local v22    # "v1":I
    add-int v0, v4, v22

    invoke-static {v1, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    move/from16 v0, v18

    const/high16 v3, 0x10000

    .end local v18    # "counter":I
    .local v0, "counter":I
    if-eq v0, v3, :cond_11

    .line 228
    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->convertArray([S)[B

    move-result-object v3

    .line 230
    .local v3, "signature":[B
    move/from16 v18, v0

    move-object/from16 v0, v31

    .end local v31    # "salt":[B
    .local v0, "salt":[B
    .restart local v18    # "counter":I
    invoke-static {v3, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v17

    return-object v17

    .line 224
    .end local v3    # "signature":[B
    .end local v18    # "counter":I
    .local v0, "counter":I
    .restart local v31    # "salt":[B
    :cond_11
    move/from16 v18, v0

    .end local v0    # "counter":I
    .restart local v18    # "counter":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "unable to generate signature - LES not solvable"

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private makeMessageRepresentative([B)[S
    .locals 4
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 290
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    new-array v0, v0, [S

    .line 292
    .local v0, "output":[S
    const/4 v1, 0x0

    .line 293
    .local v1, "h":I
    const/4 v2, 0x0

    .line 296
    .local v2, "i":I
    :cond_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    .line 298
    goto :goto_0

    .line 300
    :cond_1
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v0, v2

    .line 301
    add-int/lit8 v1, v1, 0x1

    .line 302
    add-int/lit8 v2, v2, 0x1

    .line 304
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 306
    :goto_0
    return-object v0
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 1
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->genSignature([B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
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

    .line 32
    if-eqz p1, :cond_1

    .line 34
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 36
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 38
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    .line 39
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    .line 40
    .local v0, "tmpParam":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;
    goto :goto_0

    .line 43
    .end local v0    # "tmpParam":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    .line 44
    .restart local v0    # "tmpParam":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 45
    .local v1, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_skseed()I

    move-result v2

    new-array v2, v2, [B

    .line 46
    .local v2, "seed":[B
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 47
    new-instance v3, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    .line 49
    .end local v1    # "sr":Ljava/security/SecureRandom;
    .end local v2    # "seed":[B
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    .line 50
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_1

    .line 54
    .end local v0    # "tmpParam":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    .line 58
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getDocLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    .line 60
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 11
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

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 242
    .local v0, "msgHash":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 243
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 245
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v1

    .line 246
    .local v1, "m":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v2

    .line 248
    .local v2, "n":I
    new-instance v4, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    .line 251
    .local v4, "p_map":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;
    array-length v5, p2

    invoke-static {p2, v2, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 252
    .local v5, "salt":[B
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    new-array v7, v1, [B

    invoke-static {v6, v0, v5, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B

    move-result-object v6

    .line 253
    .local v6, "hash":[B
    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v7

    .line 256
    .local v7, "h":[S
    invoke-static {p2, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 257
    .local v3, "sig_msg":[B
    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->convertArray([B)[S

    move-result-object v8

    .line 260
    .local v8, "sig":[S
    sget-object v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner$1;->$SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version:[I

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 272
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "No valid version. Please choose one of the following: classic, circumzenithal, compressed"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 268
    :pswitch_0
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    .line 269
    .local v9, "cpk":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    invoke-virtual {v4, v9, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->publicMap_cyclic(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S

    move-result-object v10

    .line 270
    .local v10, "verificationResult":[S
    goto :goto_0

    .line 263
    .end local v9    # "cpk":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    .end local v10    # "verificationResult":[S
    :pswitch_1
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v9, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    .line 264
    .local v9, "pk":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    invoke-virtual {v4, v9, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->publicMap(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S

    move-result-object v10

    .line 265
    .restart local v10    # "verificationResult":[S
    nop

    .line 277
    .end local v9    # "pk":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    :goto_0
    invoke-static {v7, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->equals([S[S)Z

    move-result v9

    return v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
