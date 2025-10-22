.class public Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;
.super Ljava/lang/Object;
.source "CramerShoupKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculatePublicKey(Lorg/bouncycastle/crypto/params/CramerShoupParameters;Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;)Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;
    .locals 7
    .param p1, "csParams"    # Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .param p2, "sk"    # Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "csParams",
            "sk"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v0

    .line 62
    .local v0, "g1":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v1

    .line 63
    .local v1, "g2":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 65
    .local v2, "p":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX1()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX2()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 66
    .local v3, "c":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY1()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY2()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 67
    .local v4, "d":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->getZ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 69
    .local v5, "h":Ljava/math/BigInteger;
    new-instance v6, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    invoke-direct {v6, p1, v3, v4, v5}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;-><init>(Lorg/bouncycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method

.method private generatePrivateKey(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/CramerShoupParameters;)Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;
    .locals 8
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "csParams"    # Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "csParams"
        }
    .end annotation

    .line 51
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 52
    .local v0, "p":Ljava/math/BigInteger;
    new-instance v1, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;

    .line 53
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    .line 54
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 55
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, p2

    .end local p2    # "csParams":Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .local v2, "csParams":Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;-><init>(Lorg/bouncycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 56
    .local v1, "key":Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;
    return-object v1
.end method

.method private generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "random"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v0

    .line 37
    .local v0, "csParams":Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->generatePrivateKey(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/CramerShoupParameters;)Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;

    move-result-object v1

    .line 38
    .local v1, "sk":Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->calculatePublicKey(Lorg/bouncycastle/crypto/params/CramerShoupParameters;Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;)Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    move-result-object v2

    .line 39
    .local v2, "pk":Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;
    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/params/CramerShoupPrivateKeyParameters;->setPk(Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;)V

    .line 41
    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v2, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 5
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

    check-cast v0, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;

    .line 30
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/CramerShoupKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v4, "CramerShoupKeyGen"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 31
    return-void
.end method
