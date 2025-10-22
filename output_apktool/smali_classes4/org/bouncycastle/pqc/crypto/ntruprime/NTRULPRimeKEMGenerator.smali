.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMGenerator;
.super Ljava/lang/Object;
.source "NTRULPRimeKEMGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMGenerator;->random:Ljava/security/SecureRandom;

    .line 19
    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 36
    .param p1, "recipientKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 24
    move-object/from16 v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;

    .line 25
    .local v0, "publicKey":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v1

    .line 27
    .local v1, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getP()I

    move-result v2

    .line 28
    .local v2, "p":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getQ()I

    move-result v6

    .line 29
    .local v6, "q":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getW()I

    move-result v9

    .line 30
    .local v9, "w":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getRoundedPolynomialBytes()I

    move-result v10

    .line 31
    .local v10, "roundedPolynomialBytes":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau0()I

    move-result v7

    .line 32
    .local v7, "tau0":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau1()I

    move-result v8

    .line 37
    .local v8, "tau1":I
    const/4 v11, 0x1

    new-array v3, v11, [B

    const/4 v12, 0x0

    const/4 v4, 0x4

    aput-byte v4, v3, v12

    move-object v13, v3

    .line 38
    .local v13, "cachePrefix":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-static {v13, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v14

    .line 44
    .local v14, "cache":[B
    const/16 v3, 0x100

    new-array v5, v3, [B

    .line 45
    .local v5, "r":[B
    move-object/from16 v15, p0

    iget-object v4, v15, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomInputs(Ljava/security/SecureRandom;[B)V

    .line 47
    const/16 v4, 0x20

    new-array v4, v4, [B

    .line 48
    .local v4, "encR":[B
    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedInputs([B[B)V

    .line 53
    new-array v3, v2, [S

    .line 54
    .local v3, "A":[S
    const/16 v17, 0x0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getRoundEncA()[B

    move-result-object v12

    invoke-static {v3, v12, v2, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    .line 59
    new-array v12, v2, [S

    .line 60
    .local v12, "G":[S
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getSeed()[B

    move-result-object v11

    invoke-static {v12, v11, v2, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->generatePolynomialInRQFromSeed([S[BII)V

    .line 65
    move-object/from16 v19, v0

    const/4 v11, 0x1

    .end local v0    # "publicKey":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;
    .local v19, "publicKey":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;
    new-array v0, v11, [B

    const/4 v11, 0x5

    aput-byte v11, v0, v17

    .line 66
    .local v0, "hsPrefix":[B
    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v11

    .line 67
    .local v11, "hsHash":[B
    move-object/from16 v20, v0

    .end local v0    # "hsPrefix":[B
    .local v20, "hsPrefix":[B
    array-length v0, v11

    const/16 v21, 0x2

    div-int/lit8 v0, v0, 0x2

    move-object/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "params":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
    .local v22, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
    invoke-static {v11, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 73
    .local v0, "hs":[B
    new-array v1, v2, [I

    .line 74
    .local v1, "L":[I
    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->expand([I[B)V

    .line 76
    move-object/from16 v23, v0

    .end local v0    # "hs":[B
    .local v23, "hs":[B
    new-array v0, v2, [B

    .line 77
    .local v0, "b":[B
    invoke-static {v0, v1, v2, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sortGenerateShortPolynomial([B[III)V

    .line 83
    move-object/from16 v24, v1

    .end local v1    # "L":[I
    .local v24, "L":[I
    new-array v1, v2, [S

    .line 84
    .local v1, "bG":[S
    invoke-static {v1, v12, v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    .line 86
    move/from16 v25, v9

    .end local v9    # "w":I
    .local v25, "w":I
    new-array v9, v2, [S

    .line 87
    .local v9, "B":[S
    invoke-static {v9, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    .line 89
    move-object/from16 v26, v1

    .end local v1    # "bG":[S
    .local v26, "bG":[S
    new-array v1, v10, [B

    .line 90
    .local v1, "encB":[B
    invoke-static {v1, v9, v2, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    .line 96
    move-object/from16 v27, v4

    .end local v4    # "encR":[B
    .local v27, "encR":[B
    new-array v4, v2, [S

    .line 97
    .local v4, "bA":[S
    invoke-static {v4, v3, v0, v2, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    .line 99
    move-object/from16 v28, v0

    const/16 v0, 0x100

    .end local v0    # "b":[B
    .local v28, "b":[B
    new-array v0, v0, [B

    .line 100
    .local v0, "T":[B
    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v27

    .end local v27    # "encR":[B
    .local v0, "encR":[B
    .local v3, "T":[B
    .local v16, "A":[S
    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->top([B[S[BIII)V

    .line 102
    move/from16 v27, v2

    .end local v2    # "p":I
    .local v27, "p":I
    const/16 v2, 0x80

    new-array v2, v2, [B

    .line 103
    .local v2, "encT":[B
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getTopEncodedPolynomial([B[B)V

    .line 109
    move-object/from16 v29, v3

    .end local v3    # "T":[B
    .local v29, "T":[B
    array-length v3, v0

    move/from16 v30, v3

    array-length v3, v14

    div-int/lit8 v3, v3, 0x2

    add-int v3, v30, v3

    new-array v3, v3, [B

    .line 110
    .local v3, "hcInput":[B
    move-object/from16 v30, v4

    .end local v4    # "bA":[S
    .local v30, "bA":[S
    array-length v4, v0

    move-object/from16 v31, v5

    const/4 v5, 0x0

    .end local v5    # "r":[B
    .local v31, "r":[B
    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    array-length v4, v0

    move/from16 v32, v6

    .end local v6    # "q":I
    .local v32, "q":I
    array-length v6, v14

    div-int/lit8 v6, v6, 0x2

    invoke-static {v14, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    const/4 v4, 0x1

    new-array v6, v4, [B

    aput-byte v21, v6, v5

    .line 114
    .local v6, "hcPrefix":[B
    invoke-static {v6, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v4

    .line 119
    .local v4, "hc":[B
    array-length v5, v1

    move-object/from16 v33, v3

    .end local v3    # "hcInput":[B
    .local v33, "hcInput":[B
    array-length v3, v2

    add-int/2addr v5, v3

    array-length v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    new-array v3, v5, [B

    .line 120
    .local v3, "ct":[B
    array-length v5, v1

    move-object/from16 v34, v6

    const/4 v6, 0x0

    .end local v6    # "hcPrefix":[B
    .local v34, "hcPrefix":[B
    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    array-length v5, v1

    move/from16 v17, v7

    .end local v7    # "tau0":I
    .local v17, "tau0":I
    array-length v7, v2

    invoke-static {v2, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    array-length v5, v1

    array-length v7, v2

    add-int/2addr v5, v7

    array-length v7, v4

    div-int/lit8 v7, v7, 0x2

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    array-length v5, v0

    array-length v7, v3

    add-int/2addr v5, v7

    new-array v5, v5, [B

    .line 128
    .local v5, "ssInput":[B
    array-length v7, v0

    invoke-static {v0, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    array-length v7, v0

    move-object/from16 v21, v0

    .end local v0    # "encR":[B
    .local v21, "encR":[B
    array-length v0, v3

    invoke-static {v3, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    const/4 v0, 0x1

    new-array v7, v0, [B

    aput-byte v0, v7, v6

    .line 132
    .local v7, "ssPrefix":[B
    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v0

    .line 133
    .local v0, "ssHash":[B
    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getSessionKeySize()I

    move-result v18

    move-object/from16 v35, v1

    .end local v1    # "encB":[B
    .local v35, "encB":[B
    div-int/lit8 v1, v18, 0x8

    invoke-static {v0, v6, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 135
    .local v1, "ss":[B
    new-instance v6, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {v6, v1, v3}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v6
.end method
