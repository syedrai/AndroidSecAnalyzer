.class public Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;
.super Ljava/lang/Object;
.source "RSAKeyEncapsulation.java"

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncapsulation;


# instance fields
.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p2, "rnd"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kdf",
            "rnd"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 39
    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    .line 40
    return-void
.end method


# virtual methods
.method public decrypt([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 2
    .param p1, "in"    # [B
    .param p2, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "keyLen"
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen",
            "keyLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-direct {v0, v1, p4, v2}, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;-><init>(Lorg/bouncycastle/crypto/params/RSAKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;)V

    .line 117
    .local v0, "kemGen":Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;
    add-int v1, p2, p3

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;->extractSecret([B)[B

    move-result-object v1

    .line 119
    .local v1, "secEnc":[B
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v2

    .line 112
    .end local v0    # "kemGen":Lorg/bouncycastle/crypto/kems/RSAKEMExtractor;
    .end local v1    # "secEnc":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Private key required for decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "out"    # [B
    .param p2, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "keyLen"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "keyLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget-object v2, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    invoke-direct {v0, p3, v1, v2}, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;-><init>(ILorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V

    .line 78
    .local v0, "kemGen":Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;
    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v1

    .line 80
    .local v1, "secEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    invoke-interface {v1}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v2

    .line 81
    .local v2, "encLen":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v3

    .line 73
    .end local v0    # "kemGen":Lorg/bouncycastle/crypto/kems/RSAKEMGenerator;
    .end local v1    # "secEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .end local v2    # "encLen":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Public key required for encryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "key"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 50
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_1

    .line 55
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 56
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 57
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    :goto_0
    const-string v3, "RSAKem"

    invoke-direct {v0, v3, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 56
    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 58
    return-void

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA key required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
