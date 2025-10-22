.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;
.super Ljava/lang/Object;
.source "NTRUEncryptionKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 18

    .line 38
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v2, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    .line 39
    .local v2, "N":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    .line 40
    .local v1, "q":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v8, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    .line 41
    .local v8, "df":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    .line 42
    .local v3, "df1":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    .line 43
    .local v4, "df2":I
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    .line 44
    .local v5, "df3":I
    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v9, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dg:I

    .line 45
    .local v9, "dg":I
    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v10, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    .line 46
    .local v10, "fastFp":Z
    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v11, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    .line 50
    .local v11, "sparse":Z
    const/4 v6, 0x0

    move-object v12, v6

    .line 58
    .local v12, "fp":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v10, :cond_1

    .line 61
    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v6, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v6, :cond_0

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-static {v2, v8, v8, v11, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v6

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move v6, v5

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v6

    .line 62
    .local v6, "t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    :goto_1
    invoke-interface {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    .line 63
    .local v7, "f":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    .line 64
    iget-object v15, v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v16, v15, v13

    add-int/lit8 v16, v16, 0x1

    aput v16, v15, v13

    goto :goto_3

    .line 68
    .end local v6    # "t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .end local v7    # "f":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :cond_1
    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v6, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v6, :cond_2

    add-int/lit8 v6, v8, -0x1

    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static {v2, v8, v6, v11, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v6

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v5, -0x1

    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v6

    .line 69
    .restart local v6    # "t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    :goto_2
    invoke-interface {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    .line 70
    .restart local v7    # "f":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertF3()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 71
    if-nez v12, :cond_3

    .line 73
    goto :goto_0

    .line 77
    :cond_3
    :goto_3
    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v15

    .line 78
    .local v15, "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    if-nez v15, :cond_4

    .line 80
    goto :goto_0

    .line 86
    .end local v7    # "f":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :cond_4
    if-eqz v10, :cond_5

    .line 88
    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v7, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    move-object v12, v7

    .line 89
    iget-object v7, v12, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aput v14, v7, v13

    .line 96
    :cond_5
    :goto_4
    add-int/lit8 v7, v9, -0x1

    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v13

    invoke-static {v2, v9, v7, v13}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v7

    .line 97
    .local v7, "g":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;
    invoke-virtual {v7, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 99
    nop

    .line 103
    invoke-virtual {v7, v15, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v13

    .line 104
    .local v13, "h":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult3(I)V

    .line 105
    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 106
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->clear()V

    .line 107
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clear()V

    .line 109
    new-instance v14, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    move/from16 v16, v1

    .end local v1    # "q":I
    .local v16, "q":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v1

    invoke-direct {v14, v13, v6, v12, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    .line 110
    .local v14, "priv":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    move/from16 v17, v2

    .end local v2    # "N":I
    .local v17, "N":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v2

    invoke-direct {v1, v13, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    .line 111
    .local v1, "pub":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v1, v14}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2

    .line 97
    .end local v13    # "h":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v14    # "priv":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;
    .end local v16    # "q":I
    .end local v17    # "N":I
    .local v1, "q":I
    .restart local v2    # "N":I
    :cond_6
    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "q":I
    .end local v2    # "N":I
    .restart local v16    # "q":I
    .restart local v17    # "N":I
    goto :goto_4
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

    .line 28
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    .line 29
    return-void
.end method
