.class public Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;
.super Ljava/lang/Object;
.source "ECNewRandomnessTransform.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ec/ECPairFactorTransform;


# instance fields
.field private key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private lastK:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 105
    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public getTransformValue()Ljava/math/BigInteger;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->lastK:Ljava/math/BigInteger;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 35
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    const-string v1, "ECPublicKeyParameters are required for new randomness transform."

    if-eqz v0, :cond_1

    .line 37
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 39
    .local v0, "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 45
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->random:Ljava/security/SecureRandom;

    .line 46
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 41
    .restart local v0    # "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_2

    .line 54
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 55
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->random:Ljava/security/SecureRandom;

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transform(Lorg/bouncycastle/crypto/ec/ECPair;)Lorg/bouncycastle/crypto/ec/ECPair;
    .locals 9
    .param p1, "cipherText"    # Lorg/bouncycastle/crypto/ec/ECPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipherText"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 76
    .local v0, "ec":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    .line 78
    .local v1, "n":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v2

    .line 79
    .local v2, "basePointMultiplier":Lorg/bouncycastle/math/ec/ECMultiplier;
    iget-object v3, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/ec/ECUtil;->generateK(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 81
    .local v3, "k":Ljava/math/BigInteger;
    const/4 v4, 0x2

    new-array v4, v4, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 82
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/ec/ECPair;->getX()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 83
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/ec/ECPair;->getY()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 86
    .local v4, "gamma_phi":[Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 88
    iput-object v3, p0, Lorg/bouncycastle/crypto/ec/ECNewRandomnessTransform;->lastK:Ljava/math/BigInteger;

    .line 90
    new-instance v5, Lorg/bouncycastle/crypto/ec/ECPair;

    aget-object v6, v4, v6

    aget-object v7, v4, v7

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/crypto/ec/ECPair;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)V

    return-object v5

    .line 71
    .end local v0    # "ec":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "n":Ljava/math/BigInteger;
    .end local v2    # "basePointMultiplier":Lorg/bouncycastle/math/ec/ECMultiplier;
    .end local v3    # "k":Ljava/math/BigInteger;
    .end local v4    # "gamma_phi":[Lorg/bouncycastle/math/ec/ECPoint;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ECNewRandomnessTransform not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
