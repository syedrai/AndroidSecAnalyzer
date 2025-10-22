.class public Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;
.super Ljava/lang/Object;
.source "RSAKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private final keyLen:I

.field private final privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/RSAKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 4
    .param p1, "privKey"    # Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .param p2, "keyLen"    # I
    .param p3, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privKey",
            "keyLen",
            "kdf"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 41
    iput p2, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->keyLen:I

    .line 42
    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 44
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 45
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "RSAKem"

    invoke-direct {v0, v3, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 44
    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 46
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "private key required for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 6
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 51
    .local v0, "n":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 54
    .local v1, "d":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 57
    .local v2, "c":Ljava/math/BigInteger;
    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 59
    .local v3, "r":Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget v5, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->keyLen:I

    invoke-static {v4, v0, v3, v5}, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->generateKey(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object v4

    return-object v4
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->privKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
