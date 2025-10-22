.class public Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;
.super Ljava/lang/Object;
.source "ECElGamalEncryptor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ec/ECEncryptor;


# instance fields
.field private key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

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

    .line 86
    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public encrypt(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/crypto/ec/ECPair;
    .locals 7
    .param p1, "point"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 70
    .local v0, "ec":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/ec/ECUtil;->generateK(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 72
    .local v1, "k":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v2

    .line 74
    .local v2, "basePointMultiplier":Lorg/bouncycastle/math/ec/ECMultiplier;
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 75
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 76
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 79
    .local v3, "gamma_phi":[Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 81
    new-instance v4, Lorg/bouncycastle/crypto/ec/ECPair;

    aget-object v5, v3, v5

    aget-object v6, v3, v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/crypto/ec/ECPair;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)V

    return-object v4

    .line 66
    .end local v0    # "ec":Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v1    # "k":Ljava/math/BigInteger;
    .end local v2    # "basePointMultiplier":Lorg/bouncycastle/math/ec/ECMultiplier;
    .end local v3    # "gamma_phi":[Lorg/bouncycastle/math/ec/ECPoint;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ECElGamalEncryptor not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 33
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    const-string v1, "ECPublicKeyParameters are required for encryption."

    if-eqz v0, :cond_1

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 37
    .local v0, "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 42
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->random:Ljava/security/SecureRandom;

    .line 43
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 39
    .restart local v0    # "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_2

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 52
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->random:Ljava/security/SecureRandom;

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
