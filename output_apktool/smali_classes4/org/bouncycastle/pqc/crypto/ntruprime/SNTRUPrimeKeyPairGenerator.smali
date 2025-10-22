.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;
.super Ljava/lang/Object;
.source "SNTRUPrimeKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 20

    .line 35
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getP()I

    move-result v1

    .line 36
    .local v1, "p":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getQ()I

    move-result v2

    .line 37
    .local v2, "q":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getW()I

    move-result v3

    .line 43
    .local v3, "w":I
    new-array v4, v1, [B

    .line 44
    .local v4, "g":[B
    new-array v5, v1, [B

    .line 45
    .local v5, "ginv":[B
    :goto_0
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomSmallPolynomial(Ljava/security/SecureRandom;[B)V

    .line 46
    invoke-static {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->isInvertiblePolynomialInR3([B[BI)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    new-array v6, v1, [B

    .line 53
    .local v6, "f":[B
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static {v7, v6, v1, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomShortPolynomial(Ljava/security/SecureRandom;[BII)V

    .line 55
    new-array v7, v1, [S

    .line 56
    .local v7, "finv3":[S
    invoke-static {v7, v6, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getOneThirdInverseInRQ([S[BII)V

    .line 61
    new-array v8, v1, [S

    .line 62
    .local v8, "h":[S
    invoke-static {v8, v7, v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    .line 67
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getPublicKeyBytes()I

    move-result v9

    new-array v14, v9, [B

    .line 68
    .local v14, "pk":[B
    invoke-static {v14, v8, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedPolynomial([B[SII)V

    .line 70
    new-instance v9, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v10

    invoke-direct {v9, v10, v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;[B)V

    .line 75
    .local v9, "publicKey":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;
    add-int/lit8 v10, v1, 0x3

    const/4 v11, 0x4

    div-int/2addr v10, v11

    new-array v12, v10, [B

    .line 76
    .local v12, "encF":[B
    invoke-static {v12, v6, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    .line 78
    add-int/lit8 v10, v1, 0x3

    div-int/2addr v10, v11

    new-array v13, v10, [B

    .line 79
    .local v13, "encGinv":[B
    invoke-static {v13, v5, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    .line 81
    add-int/lit8 v10, v1, 0x3

    div-int/2addr v10, v11

    new-array v15, v10, [B

    .line 82
    .local v15, "rho":[B
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 84
    const/4 v10, 0x1

    new-array v10, v10, [B

    const/16 v16, 0x4

    const/4 v11, 0x0

    aput-byte v16, v10, v11

    .line 85
    .local v10, "prefix":[B
    invoke-static {v10, v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v11

    .line 87
    .local v11, "hash":[B
    move-object/from16 v17, v10

    .end local v10    # "prefix":[B
    .local v17, "prefix":[B
    new-instance v10, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    move/from16 v18, v1

    .end local v1    # "p":I
    .local v18, "p":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;->getSntrupParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v1

    array-length v0, v11

    div-int/lit8 v0, v0, 0x2

    .line 88
    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-static {v11, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    move-object v0, v11

    move-object/from16 v11, v19

    .end local v11    # "hash":[B
    .local v0, "hash":[B
    invoke-direct/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;[B[B[B[B[B)V

    .line 90
    .local v10, "privateKey":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;
    new-instance v1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v9, v10}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1

    .line 46
    .end local v0    # "hash":[B
    .end local v6    # "f":[B
    .end local v7    # "finv3":[S
    .end local v8    # "h":[S
    .end local v9    # "publicKey":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePublicKeyParameters;
    .end local v10    # "privateKey":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;
    .end local v12    # "encF":[B
    .end local v13    # "encGinv":[B
    .end local v14    # "pk":[B
    .end local v15    # "rho":[B
    .end local v17    # "prefix":[B
    .end local v18    # "p":I
    .restart local v1    # "p":I
    :cond_0
    move/from16 v18, v1

    .end local v1    # "p":I
    .restart local v18    # "p":I
    move-object/from16 v0, p0

    goto/16 :goto_0
.end method

.method public getParams()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKeyGenerationParameters;

    .line 26
    return-void
.end method
