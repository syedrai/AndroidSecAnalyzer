.class public Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source "ECKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lorg/bouncycastle/math/ec/ECConstants;


# instance fields
.field private final name:Ljava/lang/String;

.field params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    const-string v0, "ECKeyGen"

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 94
    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 59
    .local v0, "n":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 60
    .local v1, "nBitLength":I
    ushr-int/lit8 v2, v1, 0x2

    .line 65
    .local v2, "minWeight":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 67
    .local v3, "d":Ljava/math/BigInteger;
    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->isOutOfRangeD(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v3}, Lorg/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 74
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 82
    .local v4, "Q":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v5, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v6, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v7, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v6, v4, v7}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    new-instance v7, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v8, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v7, v3, v8}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 6
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 46
    .local v0, "ecP":Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 47
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 49
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 50
    return-void
.end method

.method protected isOutOfRangeD(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "n"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "d",
            "n"
        }
    .end annotation

    .line 89
    sget-object v0, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
