.class public Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;
.super Ljava/lang/Object;
.source "ECGOST3410Signer.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DSAExt;


# instance fields
.field key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 158
    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->reverse([B)[B

    move-result-object v0

    .line 75
    .local v0, "mRev":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 77
    .local v1, "e":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 78
    .local v3, "ec":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 79
    .local v4, "n":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v5, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v5

    .line 83
    .local v5, "d":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v6

    .line 92
    .local v6, "basePointMultiplier":Lorg/bouncycastle/math/ec/ECMultiplier;
    :cond_0
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    invoke-static {v7, v8}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 94
    .local v7, "k":Ljava/math/BigInteger;
    sget-object v8, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 96
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 98
    .local v8, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 100
    .local v8, "r":Ljava/math/BigInteger;
    sget-object v9, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 102
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 104
    .local v7, "s":Ljava/math/BigInteger;
    sget-object v9, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 106
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/math/BigInteger;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    aput-object v7, v9, v2

    return-object v9
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
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

    .line 36
    if-eqz p1, :cond_1

    .line 38
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 42
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    .line 43
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    .line 44
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    .line 48
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 53
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    .line 56
    :goto_0
    const-string v0, "ECGOST3410"

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECKeyParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 57
    return-void
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 11
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "r",
            "s"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->reverse([B)[B

    move-result-object v0

    .line 120
    .local v0, "mRev":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 121
    .local v1, "e":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    .line 124
    .local v2, "n":Ljava/math/BigInteger;
    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_4

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {v2, v1}, Lorg/bouncycastle/util/BigIntegers;->modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 137
    .local v3, "v":Ljava/math/BigInteger;
    invoke-virtual {p3, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 138
    .local v5, "z1":Ljava/math/BigInteger;
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 140
    .local v6, "z2":Ljava/math/BigInteger;
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 141
    .local v7, "G":Lorg/bouncycastle/math/ec/ECPoint;
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v8, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 143
    .local v8, "Q":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-static {v7, v5, v8, v6}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 146
    .local v9, "point":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 148
    return v4

    .line 151
    :cond_2
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 153
    .local v4, "R":Ljava/math/BigInteger;
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    return v10

    .line 132
    .end local v3    # "v":Ljava/math/BigInteger;
    .end local v4    # "R":Ljava/math/BigInteger;
    .end local v5    # "z1":Ljava/math/BigInteger;
    .end local v6    # "z2":Ljava/math/BigInteger;
    .end local v7    # "G":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v8    # "Q":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v9    # "point":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_3
    :goto_0
    return v4

    .line 126
    :cond_4
    :goto_1
    return v4
.end method
