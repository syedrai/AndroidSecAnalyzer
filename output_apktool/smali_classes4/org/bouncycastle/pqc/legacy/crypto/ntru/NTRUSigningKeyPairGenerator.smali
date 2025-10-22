.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;
.super Ljava/lang/Object;
.source "NTRUSigningKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;,
        Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
    }
.end annotation


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateBasis()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
    .locals 30

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v2, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    .line 168
    .local v2, "N":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    .line 169
    .local v8, "q":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v9, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    .line 170
    .local v9, "d":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v3, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    .line 171
    .local v3, "d1":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v4, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    .line 172
    .local v4, "d2":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v6, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    .line 173
    .local v6, "d3":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v10, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    .line 184
    .local v10, "basisType":I
    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v11, v1, 0x1

    .line 185
    .local v11, "_2n1":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-boolean v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    .line 191
    .local v12, "primeCheck":Z
    :cond_0
    :goto_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v1, :cond_1

    add-int/lit8 v1, v9, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static {v2, v1, v9, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v6, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v1

    :goto_1
    move-object v14, v1

    .line 192
    .local v14, "f":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    invoke-interface {v14}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    .line 194
    .local v1, "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    if-eqz v12, :cond_2

    invoke-virtual {v1, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    move-result-object v5

    iget-object v5, v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;->res:Ljava/math/BigInteger;

    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    :cond_2
    invoke-virtual {v1, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v13

    .line 197
    .local v13, "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    if-eqz v13, :cond_c

    .line 198
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;

    move-result-object v15

    .line 206
    .local v15, "rf":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    :goto_2
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v5, :cond_3

    add-int/lit8 v5, v9, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static {v2, v5, v9, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v5

    move v7, v4

    move/from16 v20, v6

    move v6, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v6, 0x1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v5

    move v7, v4

    move/from16 v20, v6

    move v6, v3

    .end local v3    # "d1":I
    .end local v4    # "d2":I
    .local v6, "d1":I
    .local v7, "d2":I
    .local v20, "d3":I
    :goto_3
    move-object v3, v5

    .line 207
    .local v3, "g":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    invoke-interface {v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    .line 209
    .local v4, "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    if-eqz v12, :cond_5

    invoke-virtual {v4, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    move-result-object v5

    iget-object v5, v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;->res:Ljava/math/BigInteger;

    move/from16 v21, v6

    .end local v6    # "d1":I
    .local v21, "d1":I
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    move v4, v7

    move/from16 v6, v20

    move/from16 v3, v21

    goto :goto_2

    .end local v21    # "d1":I
    .restart local v6    # "d1":I
    :cond_5
    move/from16 v21, v6

    .line 211
    .end local v6    # "d1":I
    .restart local v21    # "d1":I
    :goto_4
    invoke-virtual {v4, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 212
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;

    move-result-object v6

    .line 213
    .local v6, "rg":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    iget-object v5, v15, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    move/from16 v22, v7

    .end local v7    # "d2":I
    .local v22, "d2":I
    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-static {v5, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->calculate(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;

    move-result-object v7

    .line 215
    .local v7, "r":Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;
    iget-object v5, v7, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->gcd:Ljava/math/BigInteger;

    move/from16 v23, v9

    .end local v9    # "d":I
    .local v23, "d":I
    sget-object v9, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 217
    iget-object v5, v15, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    .line 218
    .local v9, "A":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    iget-object v5, v7, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->x:Ljava/math/BigInteger;

    move/from16 v24, v10

    move/from16 v25, v11

    .end local v10    # "basisType":I
    .end local v11    # "_2n1":I
    .local v24, "basisType":I
    .local v25, "_2n1":I
    int-to-long v10, v8

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    .line 219
    iget-object v5, v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    .line 220
    .local v10, "B":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    iget-object v5, v7, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->y:Ljava/math/BigInteger;

    neg-int v11, v8

    move/from16 v26, v12

    .end local v12    # "primeCheck":Z
    .local v26, "primeCheck":Z
    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    .line 223
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    if-nez v5, :cond_7

    .line 225
    new-array v5, v2, [I

    .line 226
    .local v5, "fRevCoeffs":[I
    new-array v11, v2, [I

    .line 227
    .local v11, "gRevCoeffs":[I
    iget-object v12, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/16 v16, 0x0

    aget v12, v12, v16

    aput v12, v5, v16

    .line 228
    iget-object v12, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v12, v12, v16

    aput v12, v11, v16

    .line 229
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_5
    if-ge v12, v2, :cond_6

    .line 231
    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v16, v2, v12

    aget v0, v0, v16

    aput v0, v5, v12

    .line 232
    iget-object v0, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v16, v2, v12

    aget v0, v0, v16

    aput v0, v11, v12

    .line 229
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    .line 234
    .end local v12    # "i":I
    :cond_6
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v0, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 235
    .local v0, "fRev":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    new-instance v12, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v12, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 237
    .local v12, "gRev":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v16, v1

    .end local v1    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v16, "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-interface {v14, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    .line 238
    .local v1, "t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v17, v4

    .end local v4    # "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v17, "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-interface {v3, v12}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 239
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;

    move-result-object v4

    .line 240
    .local v4, "rt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    move-object/from16 v18, v1

    .end local v1    # "t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v18, "t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    .line 241
    .local v1, "C":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    move-object/from16 v19, v0

    .end local v0    # "fRev":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v19, "fRev":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v12, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    .line 242
    iget-object v0, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    .line 243
    .end local v1    # "C":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .local v0, "C":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    iget-object v1, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigInteger;)V

    .line 244
    .end local v4    # "rt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .end local v5    # "fRevCoeffs":[I
    .end local v11    # "gRevCoeffs":[I
    .end local v12    # "gRev":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v18    # "t":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v19    # "fRev":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move-object v11, v0

    goto :goto_7

    .line 248
    .end local v0    # "C":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .end local v16    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v17    # "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v1, "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v4, "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :cond_7
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    .end local v1    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v4    # "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .restart local v16    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .restart local v17    # "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    const/4 v0, 0x0

    .line 249
    .local v0, "log10N":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_8

    .line 251
    add-int/lit8 v0, v0, 0x1

    .line 249
    mul-int/lit8 v1, v1, 0xa

    goto :goto_6

    .line 258
    .end local v1    # "i":I
    :cond_8
    iget-object v1, v15, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    new-instance v4, Ljava/math/BigDecimal;

    iget-object v5, v15, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->getMaxCoeffLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigDecimal;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v1

    .line 259
    .local v1, "fInv":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    iget-object v4, v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    new-instance v5, Ljava/math/BigDecimal;

    iget-object v11, v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-direct {v5, v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->getMaxCoeffLength()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v11, v0

    invoke-virtual {v4, v5, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigDecimal;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v4

    .line 261
    .local v4, "gInv":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    invoke-virtual {v1, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v5

    .line 262
    .local v5, "Cdec":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    invoke-virtual {v4, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 263
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->halve()V

    .line 264
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;->round()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v11

    .line 267
    .end local v0    # "log10N":I
    .end local v1    # "fInv":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .end local v4    # "gInv":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .end local v5    # "Cdec":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigDecimalPolynomial;
    .local v11, "C":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    :goto_7
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    .line 268
    .local v12, "F":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    invoke-interface {v14, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    .line 269
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    .line 270
    .local v0, "G":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    invoke-interface {v3, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    .line 272
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v12}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    .line 273
    .local v1, "FInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    move-object/from16 v18, v4

    .line 274
    .local v18, "GInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v28, v0

    move v5, v2

    move-object/from16 v27, v6

    move-object/from16 v2, v17

    move-object/from16 v0, p0

    move-object v6, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .end local v0    # "G":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .end local v16    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v17    # "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v18    # "GInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v1, "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v2, "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v3, "FInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v4, "GInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v5, "N":I
    .local v6, "g":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .local v27, "rg":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .local v28, "G":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->minimizeFG(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 278
    move-object v4, v3

    move-object v3, v2

    move v2, v5

    .end local v5    # "N":I
    .local v2, "N":I
    .local v3, "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v4, "FInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .restart local v18    # "GInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    if-nez v24, :cond_9

    .line 280
    move-object v5, v4

    .line 281
    .local v5, "fPrime":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    invoke-interface {v6, v13, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v16

    move-object/from16 v29, v1

    move-object/from16 v1, v16

    .local v16, "h":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    goto :goto_8

    .line 285
    .end local v5    # "fPrime":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .end local v16    # "h":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :cond_9
    move-object v5, v6

    .line 286
    .restart local v5    # "fPrime":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    invoke-virtual {v4, v13, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v16

    move-object/from16 v29, v1

    move-object/from16 v1, v16

    .line 288
    .local v1, "h":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v29, "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :goto_8
    invoke-virtual {v1, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 290
    move-object/from16 v16, v13

    .end local v13    # "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v16, "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    new-instance v13, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;

    move-object/from16 v17, v1

    .end local v1    # "h":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v17, "h":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v4

    move-object v4, v15

    move-object v15, v5

    .end local v5    # "fPrime":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .local v1, "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v4, "rf":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .local v15, "fPrime":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .local v16, "h":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v17, "FInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct/range {v13 .. v19}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;)V

    return-object v13

    .line 215
    .end local v9    # "A":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .end local v16    # "h":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v17    # "FInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v18    # "GInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v24    # "basisType":I
    .end local v25    # "_2n1":I
    .end local v26    # "primeCheck":Z
    .end local v27    # "rg":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .end local v28    # "G":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .end local v29    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v1, "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v3, "g":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .local v4, "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v6, "rg":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .local v10, "basisType":I
    .local v11, "_2n1":I
    .local v12, "primeCheck":Z
    .restart local v13    # "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v15, "rf":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    :cond_a
    move-object/from16 v29, v1

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move-object v1, v13

    move-object v6, v3

    move-object v3, v4

    move-object v4, v15

    .end local v10    # "basisType":I
    .end local v11    # "_2n1":I
    .end local v12    # "primeCheck":Z
    .end local v13    # "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v15    # "rf":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .local v1, "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v3, "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v4, "rf":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .local v6, "g":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .restart local v24    # "basisType":I
    .restart local v25    # "_2n1":I
    .restart local v26    # "primeCheck":Z
    .restart local v27    # "rg":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .restart local v29    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move/from16 v6, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v9, v23

    move-object/from16 v1, v29

    goto/16 :goto_2

    .line 211
    .end local v6    # "g":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .end local v22    # "d2":I
    .end local v23    # "d":I
    .end local v24    # "basisType":I
    .end local v25    # "_2n1":I
    .end local v26    # "primeCheck":Z
    .end local v27    # "rg":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .end local v29    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v1, "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v3, "g":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .local v4, "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v7, "d2":I
    .local v9, "d":I
    .restart local v10    # "basisType":I
    .restart local v11    # "_2n1":I
    .restart local v12    # "primeCheck":Z
    .restart local v13    # "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .restart local v15    # "rf":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    :cond_b
    move-object/from16 v29, v1

    move-object v6, v3

    move-object v3, v4

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move-object v1, v13

    move-object v4, v15

    .end local v7    # "d2":I
    .end local v9    # "d":I
    .end local v10    # "basisType":I
    .end local v11    # "_2n1":I
    .end local v12    # "primeCheck":Z
    .end local v13    # "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .end local v15    # "rf":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .local v1, "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v3, "gInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v4, "rf":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;
    .restart local v6    # "g":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .restart local v22    # "d2":I
    .restart local v23    # "d":I
    .restart local v24    # "basisType":I
    .restart local v25    # "_2n1":I
    .restart local v26    # "primeCheck":Z
    .restart local v29    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    move/from16 v6, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move-object/from16 v1, v29

    goto/16 :goto_2

    .line 197
    .end local v20    # "d3":I
    .end local v21    # "d1":I
    .end local v22    # "d2":I
    .end local v23    # "d":I
    .end local v24    # "basisType":I
    .end local v25    # "_2n1":I
    .end local v26    # "primeCheck":Z
    .end local v29    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v1, "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v3, "d1":I
    .local v4, "d2":I
    .local v6, "d3":I
    .restart local v9    # "d":I
    .restart local v10    # "basisType":I
    .restart local v11    # "_2n1":I
    .restart local v12    # "primeCheck":Z
    .restart local v13    # "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    :cond_c
    move-object/from16 v29, v1

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v20, v6

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move-object v1, v13

    .end local v3    # "d1":I
    .end local v4    # "d2":I
    .end local v6    # "d3":I
    .end local v9    # "d":I
    .end local v10    # "basisType":I
    .end local v11    # "_2n1":I
    .end local v12    # "primeCheck":Z
    .end local v13    # "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .local v1, "fq":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .restart local v20    # "d3":I
    .restart local v21    # "d1":I
    .restart local v22    # "d2":I
    .restart local v23    # "d":I
    .restart local v24    # "basisType":I
    .restart local v25    # "_2n1":I
    .restart local v26    # "primeCheck":Z
    .restart local v29    # "fInt":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    goto/16 :goto_0
.end method

.method private minimizeFG(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 17
    .param p1, "f"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "g"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .param p3, "F"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .param p4, "G"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .param p5, "N"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "f",
            "g",
            "F",
            "G",
            "N"
        }
    .end annotation

    .line 109
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x0

    .line 110
    .local v5, "E":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 112
    mul-int/lit8 v7, v4, 0x2

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v8, v8, v6

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v9, v9, v6

    mul-int v8, v8, v9

    iget-object v9, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v9, v9, v6

    iget-object v10, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v10, v10, v6

    mul-int v9, v9, v10

    add-int/2addr v8, v9

    mul-int v7, v7, v8

    add-int/2addr v5, v7

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 116
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v5, v5, -0x4

    .line 118
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 119
    .local v6, "u":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    .line 120
    .local v7, "v":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    const/4 v8, 0x0

    .line 121
    .local v8, "j":I
    const/4 v9, 0x0

    .line 122
    .local v9, "k":I
    move/from16 v10, p5

    .line 123
    .local v10, "maxAdjustment":I
    :goto_1
    if-ge v9, v10, :cond_4

    if-ge v8, v4, :cond_4

    .line 125
    const/4 v11, 0x0

    .line 126
    .local v11, "D":I
    const/4 v12, 0x0

    .line 127
    .local v12, "i":I
    :goto_2
    if-ge v12, v4, :cond_1

    .line 129
    iget-object v13, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v13, v13, v12

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v14, v14, v12

    mul-int v13, v13, v14

    .line 130
    .local v13, "D1":I
    iget-object v14, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v14, v14, v12

    iget-object v15, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v15, v15, v12

    mul-int v14, v14, v15

    .line 131
    .local v14, "D2":I
    mul-int/lit8 v15, v4, 0x4

    add-int v16, v13, v14

    mul-int v15, v15, v16

    .line 132
    .local v15, "D3":I
    add-int/2addr v11, v15

    .line 133
    nop

    .end local v13    # "D1":I
    .end local v14    # "D2":I
    .end local v15    # "D3":I
    add-int/lit8 v12, v12, 0x1

    .line 134
    goto :goto_2

    .line 136
    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sumCoeffs()I

    move-result v13

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sumCoeffs()I

    move-result v14

    add-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x4

    .line 137
    .restart local v13    # "D1":I
    sub-int/2addr v11, v13

    .line 139
    if-le v11, v5, :cond_2

    .line 141
    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 142
    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 143
    add-int/lit8 v9, v9, 0x1

    .line 144
    const/4 v8, 0x0

    goto :goto_3

    .line 146
    :cond_2
    neg-int v14, v5

    if-ge v11, v14, :cond_3

    .line 148
    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 149
    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    .line 150
    add-int/lit8 v9, v9, 0x1

    .line 151
    const/4 v8, 0x0

    .line 153
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 154
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->rotate1()V

    .line 155
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->rotate1()V

    .line 156
    .end local v11    # "D":I
    .end local v12    # "i":I
    .end local v13    # "D1":I
    goto :goto_1

    .line 157
    :cond_4
    return-void
.end method


# virtual methods
.method public generateBoundedBasis()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    .locals 2

    .line 302
    nop

    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->generateBasis()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;

    move-result-object v0

    .line 303
    .local v0, "basis":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->isNormOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    return-object v0

    .line 307
    .end local v0    # "basis":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
    :cond_0
    goto :goto_0
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "pub":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 47
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "bases":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;>;"
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    .local v3, "k":I
    :goto_0
    if-ltz v3, :cond_0

    .line 50
    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator-IA;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 52
    .end local v3    # "k":I
    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "basises":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;"
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    .local v4, "k":I
    :goto_1
    if-ltz v4, :cond_2

    .line 58
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 61
    .local v5, "basis":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;"
    :try_start_0
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v6, v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    if-ne v4, v6, :cond_1

    .line 64
    new-instance v6, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    iget-object v7, v7, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 70
    :cond_1
    nop

    .line 56
    .end local v5    # "basis":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;"
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 67
    .restart local v5    # "basis":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;"
    :catch_0
    move-exception v6

    .line 69
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 72
    .end local v4    # "k":I
    .end local v5    # "basis":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {v4, v3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;-><init>(Ljava/util/List;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;)V

    .line 73
    .local v4, "priv":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;
    new-instance v5, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v5, v0, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 74
    .local v5, "kp":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    return-object v5
.end method

.method public generateKeyPairSingleThread()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 7

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "basises":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;"
    const/4 v1, 0x0

    .line 86
    .local v1, "pub":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    .local v2, "k":I
    :goto_0
    if-ltz v2, :cond_1

    .line 88
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->generateBoundedBasis()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v3

    .line 89
    .local v3, "basis":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    if-nez v2, :cond_0

    .line 92
    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;

    iget-object v5, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;)V

    move-object v1, v4

    .line 86
    .end local v3    # "basis":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 95
    .end local v2    # "k":I
    :cond_1
    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;-><init>(Ljava/util/List;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPublicKeyParameters;)V

    .line 96
    .local v2, "priv":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningPrivateKeyParameters;
    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
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

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 36
    return-void
.end method
