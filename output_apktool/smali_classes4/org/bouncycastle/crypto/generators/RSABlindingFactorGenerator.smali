.class public Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;
.super Ljava/lang/Object;
.source "RSABlindingFactorGenerator.java"


# static fields
.field private static TWO:Ljava/math/BigInteger;


# instance fields
.field private key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateBlindingFactor()Ljava/math/BigInteger;
    .locals 4

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 65
    .local v0, "m":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 70
    .local v1, "length":I
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v2}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 72
    .local v2, "factor":Ljava/math/BigInteger;
    sget-object v3, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-static {v0, v2}, Lorg/bouncycastle/util/BigIntegers;->modOddIsCoprime(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    return-object v2

    .line 61
    .end local v0    # "m":Ljava/math/BigInteger;
    .end local v1    # "length":I
    .end local v2    # "factor":Ljava/math/BigInteger;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generator not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
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

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 37
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 38
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->random:Ljava/security/SecureRandom;

    .line 39
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 42
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 43
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->random:Ljava/security/SecureRandom;

    .line 46
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-nez v0, :cond_1

    .line 50
    return-void

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "generator requires RSA public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
