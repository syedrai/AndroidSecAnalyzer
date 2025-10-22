.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;
.super Ljava/lang/Object;
.source "NTRULPRimeKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;)V
    .locals 0
    .param p1, "privateKey"    # Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    .line 14
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 45
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v2

    .line 21
    .local v2, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getP()I

    move-result v3

    .line 22
    .local v3, "p":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getQ()I

    move-result v7

    .line 23
    .local v7, "q":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getW()I

    move-result v8

    .line 24
    .local v8, "w":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getRoundedPolynomialBytes()I

    move-result v11

    .line 25
    .local v11, "roundedPolynomialBytes":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau0()I

    move-result v12

    .line 26
    .local v12, "tau0":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau1()I

    move-result v13

    .line 27
    .local v13, "tau1":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau2()I

    move-result v9

    .line 28
    .local v9, "tau2":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau3()I

    move-result v10

    .line 33
    .local v10, "tau3":I
    new-array v14, v3, [B

    .line 34
    .local v14, "a":[B
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getEncoded()[B

    move-result-object v4

    invoke-static {v14, v4, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedSmallPolynomial([B[BI)V

    .line 39
    new-array v15, v11, [B

    .line 40
    .local v15, "encB":[B
    const/4 v4, 0x0

    invoke-static {v1, v4, v15, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    new-array v5, v3, [S

    .line 43
    .local v5, "B":[S
    invoke-static {v5, v15, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    .line 48
    const/16 v6, 0x80

    new-array v4, v6, [B

    .line 49
    .local v4, "encT":[B
    array-length v6, v4

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "params":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
    .local v18, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
    invoke-static {v1, v11, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    const/16 v6, 0x100

    new-array v2, v6, [B

    .line 52
    .local v2, "T":[B
    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getTopDecodedPolynomial([B[B)V

    .line 57
    new-array v6, v3, [S

    .line 58
    .local v6, "aB":[S
    invoke-static {v6, v5, v14, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    .line 60
    move-object/from16 v20, v2

    move-object/from16 v19, v4

    const/16 v2, 0x100

    .end local v2    # "T":[B
    .end local v4    # "encT":[B
    .local v19, "encT":[B
    .local v20, "T":[B
    new-array v4, v2, [B

    .line 61
    .local v4, "r":[B
    move-object/from16 v16, v5

    move-object v5, v6

    move-object/from16 v21, v19

    move-object/from16 v6, v20

    const/4 v2, 0x0

    .end local v19    # "encT":[B
    .end local v20    # "T":[B
    .local v5, "aB":[S
    .local v6, "T":[B
    .local v16, "B":[S
    .local v21, "encT":[B
    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->right([B[S[BIIII)V

    .line 66
    move-object/from16 v24, v5

    move/from16 v17, v9

    move/from16 v19, v10

    move v10, v8

    .end local v5    # "aB":[S
    .end local v6    # "T":[B
    .end local v8    # "w":I
    .end local v9    # "tau2":I
    .local v10, "w":I
    .local v17, "tau2":I
    .local v19, "tau3":I
    .restart local v20    # "T":[B
    .local v24, "aB":[S
    const/16 v5, 0x20

    new-array v6, v5, [B

    .line 67
    .local v6, "encR":[B
    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedInputs([B[B)V

    .line 72
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getPublicKeyBytes()I

    move-result v8

    sub-int/2addr v8, v5

    new-array v8, v8, [B

    .line 73
    .local v8, "encA":[B
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getPk()[B

    move-result-object v9

    move-object/from16 v25, v4

    .end local v4    # "r":[B
    .local v25, "r":[B
    array-length v4, v8

    invoke-static {v9, v5, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-array v4, v3, [S

    .line 76
    .local v4, "A":[S
    invoke-static {v4, v8, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    .line 81
    new-array v5, v5, [B

    .line 82
    .local v5, "seed":[B
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getPk()[B

    move-result-object v9

    move-object/from16 v26, v8

    .end local v8    # "encA":[B
    .local v26, "encA":[B
    array-length v8, v5

    invoke-static {v9, v2, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    new-array v8, v3, [S

    .line 85
    .local v8, "G":[S
    invoke-static {v8, v5, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->generatePolynomialInRQFromSeed([S[BII)V

    .line 90
    const/4 v9, 0x1

    const/16 v27, 0x0

    new-array v2, v9, [B

    const/16 v28, 0x5

    aput-byte v28, v2, v27

    .line 91
    .local v2, "hsPrefix":[B
    move/from16 v28, v12

    .end local v12    # "tau0":I
    .local v28, "tau0":I
    invoke-static {v2, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v12

    .line 92
    .local v12, "hsHash":[B
    array-length v9, v12

    const/16 v30, 0x2

    div-int/lit8 v9, v9, 0x2

    move-object/from16 v31, v2

    const/4 v2, 0x0

    .end local v2    # "hsPrefix":[B
    .local v31, "hsPrefix":[B
    invoke-static {v12, v2, v9}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 98
    .local v9, "hs":[B
    new-array v2, v3, [I

    .line 99
    .local v2, "L":[I
    invoke-static {v2, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->expand([I[B)V

    .line 101
    move-object/from16 v32, v12

    .end local v12    # "hsHash":[B
    .local v32, "hsHash":[B
    new-array v12, v3, [B

    .line 102
    .local v12, "b":[B
    invoke-static {v12, v2, v3, v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sortGenerateShortPolynomial([B[III)V

    .line 108
    move-object/from16 v33, v2

    .end local v2    # "L":[I
    .local v33, "L":[I
    new-array v2, v3, [S

    .line 109
    .local v2, "bG":[S
    invoke-static {v2, v8, v12, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    .line 111
    move/from16 v34, v10

    .end local v10    # "w":I
    .local v34, "w":I
    new-array v10, v3, [S

    .line 112
    .local v10, "Bnew":[S
    invoke-static {v10, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    .line 114
    move-object/from16 v35, v2

    .end local v2    # "bG":[S
    .local v35, "bG":[S
    new-array v2, v11, [B

    .line 115
    .local v2, "encBnew":[B
    invoke-static {v2, v10, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    .line 121
    move-object/from16 v36, v5

    .end local v5    # "seed":[B
    .local v36, "seed":[B
    new-array v5, v3, [S

    .line 122
    .local v5, "bA":[S
    invoke-static {v5, v4, v12, v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    .line 124
    move-object/from16 v37, v2

    const/16 v2, 0x100

    .end local v2    # "encBnew":[B
    .local v37, "encBnew":[B
    new-array v2, v2, [B

    .line 125
    .local v2, "Tnew":[B
    move-object/from16 v23, v4

    move-object v4, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v23

    move/from16 v23, v13

    move-object v13, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v9

    move/from16 v9, v23

    move-object/from16 v23, v8

    move/from16 v8, v28

    move/from16 v28, v3

    const/4 v3, 0x1

    .end local v3    # "p":I
    .local v2, "T":[B
    .local v4, "Tnew":[B
    .local v6, "r":[B
    .local v8, "tau0":I
    .local v9, "tau1":I
    .local v13, "encR":[B
    .local v20, "A":[S
    .local v23, "G":[S
    .local v25, "hs":[B
    .local v28, "p":I
    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->top([B[S[BIII)V

    .line 127
    move-object/from16 v44, v6

    move-object v6, v4

    move-object/from16 v4, v44

    .local v4, "r":[B
    .local v6, "Tnew":[B
    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 128
    .local v3, "encTnew":[B
    invoke-static {v3, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getTopEncodedPolynomial([B[B)V

    .line 134
    move-object/from16 v22, v2

    .end local v2    # "T":[B
    .local v22, "T":[B
    array-length v2, v13

    move/from16 v38, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v2

    array-length v2, v2

    add-int v2, v38, v2

    new-array v2, v2, [B

    .line 135
    .local v2, "hcInput":[B
    move-object/from16 v38, v3

    .end local v3    # "encTnew":[B
    .local v38, "encTnew":[B
    array-length v3, v13

    move-object/from16 v39, v4

    const/4 v4, 0x0

    .end local v4    # "r":[B
    .local v39, "r":[B
    invoke-static {v13, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v3

    array-length v4, v13

    move-object/from16 v40, v5

    .end local v5    # "bA":[S
    .local v40, "bA":[S
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v5

    array-length v5, v5

    move-object/from16 v41, v6

    const/4 v6, 0x0

    .end local v6    # "Tnew":[B
    .local v41, "Tnew":[B
    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v3, 0x1

    new-array v4, v3, [B

    aput-byte v30, v4, v6

    .line 139
    .local v4, "hcPrefix":[B
    invoke-static {v4, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v3

    .line 144
    .local v3, "hc":[B
    array-length v5, v15

    move-object/from16 v6, v21

    move-object/from16 v21, v2

    .end local v2    # "hcInput":[B
    .local v6, "encT":[B
    .local v21, "hcInput":[B
    array-length v2, v6

    add-int/2addr v5, v2

    array-length v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v2

    new-array v2, v5, [B

    .line 145
    .local v2, "ct":[B
    array-length v5, v15

    move-object/from16 v42, v4

    const/4 v4, 0x0

    .end local v4    # "hcPrefix":[B
    .local v42, "hcPrefix":[B
    invoke-static {v15, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length v5, v15

    move/from16 v43, v7

    .end local v7    # "q":I
    .local v43, "q":I
    array-length v7, v6

    invoke-static {v6, v4, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    array-length v5, v15

    array-length v7, v6

    add-int/2addr v5, v7

    array-length v7, v3

    div-int/lit8 v7, v7, 0x2

    invoke-static {v3, v4, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 158
    .local v4, "mask":I
    :goto_0
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getRho()[B

    move-result-object v5

    invoke-static {v13, v5, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->updateDiffMask([B[BI)V

    .line 163
    array-length v5, v13

    array-length v7, v2

    add-int/2addr v5, v7

    new-array v5, v5, [B

    .line 164
    .local v5, "ssInput":[B
    array-length v7, v13

    const/4 v0, 0x0

    invoke-static {v13, v0, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    array-length v7, v13

    array-length v1, v2

    invoke-static {v2, v0, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    const/4 v1, 0x1

    new-array v7, v1, [B

    aput-byte v1, v7, v0

    .line 168
    .local v7, "ssPrefix":[B
    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v1

    .line 170
    .local v1, "ssHash":[B
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getSessionKeySize()I

    move-result v27

    move-object/from16 v29, v2

    .end local v2    # "ct":[B
    .local v29, "ct":[B
    div-int/lit8 v2, v27, 0x8

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getRoundedPolynomialBytes()I

    move-result v0

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
