.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMGenerator;
.super Ljava/lang/Object;
.source "SNTRUPrimeKEMGenerator.java"

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
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMGenerator;->random:Ljava/security/SecureRandom;

    .line 19
    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 29
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

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;

    .line 25
    .local v0, "publicKey":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v1

    .line 27
    .local v1, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getP()I

    move-result v2

    .line 28
    .local v2, "p":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getQ()I

    move-result v3

    .line 29
    .local v3, "q":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getW()I

    move-result v4

    .line 30
    .local v4, "w":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getRoundedPolynomialBytes()I

    move-result v5

    .line 35
    .local v5, "roundedPolynomialBytes":I
    const/4 v6, 0x1

    new-array v7, v6, [B

    const/4 v8, 0x0

    const/4 v9, 0x4

    aput-byte v9, v7, v8

    .line 36
    .local v7, "cachePrefix":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getEncoded()[B

    move-result-object v10

    invoke-static {v7, v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v10

    .line 42
    .local v10, "cache":[B
    new-array v11, v2, [B

    .line 43
    .local v11, "r":[B
    move-object/from16 v12, p0

    iget-object v13, v12, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v13, v11, v2, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomShortPolynomial(Ljava/security/SecureRandom;[BII)V

    .line 45
    add-int/lit8 v13, v2, 0x3

    div-int/2addr v13, v9

    new-array v9, v13, [B

    .line 46
    .local v9, "encR":[B
    invoke-static {v9, v11, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    .line 51
    new-array v13, v2, [S

    .line 52
    .local v13, "h":[S
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;->getEncH()[B

    move-result-object v14

    invoke-static {v13, v14, v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedPolynomial([S[BII)V

    .line 57
    new-array v14, v2, [S

    .line 58
    .local v14, "hr":[S
    invoke-static {v14, v13, v11, v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    .line 60
    new-array v15, v2, [S

    .line 61
    .local v15, "c":[S
    invoke-static {v15, v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    .line 66
    const/16 v16, 0x0

    new-array v8, v5, [B

    .line 67
    .local v8, "C":[B
    invoke-static {v8, v15, v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    .line 72
    move-object/from16 v17, v0

    .end local v0    # "publicKey":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;
    .local v17, "publicKey":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;
    new-array v0, v6, [B

    const/16 v18, 0x3

    aput-byte v18, v0, v16

    .line 73
    .local v0, "innerHCPrefix":[B
    invoke-static {v0, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v6

    .line 75
    .local v6, "innerHCHash":[B
    move-object/from16 v20, v0

    .end local v0    # "innerHCPrefix":[B
    .local v20, "innerHCPrefix":[B
    array-length v0, v6

    const/16 v21, 0x2

    div-int/lit8 v0, v0, 0x2

    move/from16 v22, v0

    array-length v0, v10

    div-int/lit8 v0, v0, 0x2

    add-int v0, v22, v0

    new-array v0, v0, [B

    .line 76
    .local v0, "hcInput":[B
    move-object/from16 v22, v1

    .end local v1    # "params":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
    .local v22, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
    array-length v1, v6

    div-int/lit8 v1, v1, 0x2

    move/from16 v23, v2

    const/4 v2, 0x0

    .end local v2    # "p":I
    .local v23, "p":I
    invoke-static {v6, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v1, v6

    div-int/lit8 v1, v1, 0x2

    move/from16 v24, v3

    .end local v3    # "q":I
    .local v24, "q":I
    array-length v3, v10

    div-int/lit8 v3, v3, 0x2

    invoke-static {v10, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    const/4 v1, 0x1

    new-array v3, v1, [B

    aput-byte v21, v3, v2

    .line 80
    .local v3, "hcPrefix":[B
    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v1

    .line 85
    .local v1, "hc":[B
    array-length v2, v8

    move-object/from16 v25, v0

    .end local v0    # "hcInput":[B
    .local v25, "hcInput":[B
    array-length v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    new-array v0, v2, [B

    .line 86
    .local v0, "ct":[B
    array-length v2, v8

    move-object/from16 v26, v3

    const/4 v3, 0x0

    .end local v3    # "hcPrefix":[B
    .local v26, "hcPrefix":[B
    invoke-static {v8, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    array-length v2, v8

    move/from16 v27, v4

    .end local v4    # "w":I
    .local v27, "w":I
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    const/4 v2, 0x1

    new-array v4, v2, [B

    aput-byte v18, v4, v3

    .line 93
    .local v4, "innerSSPrefix":[B
    invoke-static {v4, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v2

    .line 95
    .local v2, "innerSSHash":[B
    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v18, v1

    .end local v1    # "hc":[B
    .local v18, "hc":[B
    array-length v1, v0

    add-int/2addr v3, v1

    new-array v1, v3, [B

    .line 96
    .local v1, "ssInput":[B
    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v28, v4

    const/4 v4, 0x0

    .end local v4    # "innerSSPrefix":[B
    .local v28, "innerSSPrefix":[B
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v16, v2

    .end local v2    # "innerSSHash":[B
    .local v16, "innerSSHash":[B
    array-length v2, v0

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    const/4 v2, 0x1

    new-array v3, v2, [B

    aput-byte v2, v3, v4

    .line 100
    .local v3, "ssPrefix":[B
    invoke-static {v3, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v2

    .line 101
    .local v2, "ssHash":[B
    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getSessionKeySize()I

    move-result v19

    move-object/from16 v21, v1

    .end local v1    # "ssInput":[B
    .local v21, "ssInput":[B
    div-int/lit8 v1, v19, 0x8

    invoke-static {v2, v4, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 103
    .local v1, "ss":[B
    new-instance v4, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {v4, v1, v0}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v4
.end method
