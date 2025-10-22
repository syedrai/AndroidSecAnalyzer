.class public Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "NTRUKeyGeneratorSpi.java"


# instance fields
.field private extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

.field private genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 9

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPublicKey;

    .line 62
    .local v0, "pubKey":Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPublicKey;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 64
    .local v2, "kemGen":Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v3

    .line 66
    .local v3, "secEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    invoke-interface {v3}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v4

    .line 67
    .local v4, "sharedSecret":[B
    iget-object v5, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getKeySize()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    invoke-static {v4, v1, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 69
    .local v1, "secret":[B
    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 71
    new-instance v5, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v7, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {v3}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    .line 75
    .local v5, "rv":Ljavax/crypto/SecretKey;
    :try_start_0
    invoke-interface {v3}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->destroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 82
    return-object v5

    .line 77
    :catch_0
    move-exception v6

    .line 79
    .local v6, "e":Ljavax/security/auth/DestroyFailedException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "key cleanup failed"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    .end local v0    # "pubKey":Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPublicKey;
    .end local v1    # "secret":[B
    .end local v2    # "kemGen":Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;
    .end local v3    # "secEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .end local v4    # "sharedSecret":[B
    .end local v5    # "rv":Ljavax/crypto/SecretKey;
    .end local v6    # "e":Ljavax/security/auth/DestroyFailedException;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPrivateKey;

    .line 87
    .local v0, "privKey":Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPrivateKey;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/ntru/BCNTRUPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;)V

    .line 89
    .local v2, "kemExt":Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;
    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getEncapsulation()[B

    move-result-object v3

    .line 90
    .local v3, "encapsulation":[B
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->extractSecret([B)[B

    move-result-object v4

    .line 91
    .restart local v4    # "sharedSecret":[B
    iget-object v5, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getKeySize()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    invoke-static {v4, v1, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 93
    .restart local v1    # "secret":[B
    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 95
    new-instance v5, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v7, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    .line 97
    .restart local v5    # "rv":Ljavax/crypto/SecretKey;
    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 99
    return-object v5
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "secureRandom"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secureRandom"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithmParameterSpec",
            "secureRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 35
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 36
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    .line 39
    iput-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    goto :goto_0

    .line 41
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    if-eqz v0, :cond_1

    .line 43
    iput-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntru/NTRUKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "unknown spec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
