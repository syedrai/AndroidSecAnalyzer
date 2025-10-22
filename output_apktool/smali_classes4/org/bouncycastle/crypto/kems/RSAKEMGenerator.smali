.class public Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;
.super Ljava/lang/Object;
.source "RSAKEMGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private final keyLen:I

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->ZERO:Ljava/math/BigInteger;

    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "keyLen"    # I
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p3, "rnd"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyLen",
            "kdf",
            "rnd"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->keyLen:I

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 44
    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->rnd:Ljava/security/SecureRandom;

    .line 45
    return-void
.end method

.method static generateKey(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/math/BigInteger;Ljava/math/BigInteger;I)[B
    .locals 4
    .param p0, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kdf",
            "n",
            "r",
            "keyLen"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 77
    .local v0, "R":[B
    new-instance v1, Lorg/bouncycastle/crypto/params/KDFParameters;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {p0, v1}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 80
    new-array v1, p3, [B

    .line 81
    .local v1, "K":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-interface {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 83
    return-object v1
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 9
    .param p1, "recipientKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 49
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 51
    .local v0, "key":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 57
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v2

    sget-object v3, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v4, "RSAKem"

    invoke-direct {v1, v4, v2, v0, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 56
    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 59
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 60
    .local v1, "n":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 63
    .local v2, "e":Ljava/math/BigInteger;
    sget-object v3, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->ZERO:Ljava/math/BigInteger;

    sget-object v4, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->rnd:Ljava/security/SecureRandom;

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 66
    .local v3, "r":Ljava/math/BigInteger;
    invoke-virtual {v3, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 67
    .local v4, "c":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    invoke-static {v5, v4}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v5

    .line 69
    .local v5, "C":[B
    new-instance v6, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;

    iget-object v7, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget v8, p0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->keyLen:I

    invoke-static {v7, v1, v3, v8}, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->generateKey(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v6

    .line 53
    .end local v1    # "n":Ljava/math/BigInteger;
    .end local v2    # "e":Ljava/math/BigInteger;
    .end local v3    # "r":Ljava/math/BigInteger;
    .end local v4    # "c":Ljava/math/BigInteger;
    .end local v5    # "C":[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "public key required for encryption"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
