.class public Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "BIKEKeyGeneratorSpi.java"


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
    .locals 7

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;

    .line 62
    .local v0, "pubKey":Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 64
    .local v1, "kemGen":Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v2

    .line 66
    .local v2, "secEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    new-instance v3, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {v2}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    .line 70
    .local v3, "rv":Ljavax/crypto/SecretKey;
    :try_start_0
    invoke-interface {v2}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->destroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .line 77
    return-object v3

    .line 72
    :catch_0
    move-exception v4

    .line 74
    .local v4, "e":Ljavax/security/auth/DestroyFailedException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "key cleanup failed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 81
    .end local v0    # "pubKey":Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;
    .end local v1    # "kemGen":Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;
    .end local v2    # "secEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .end local v3    # "rv":Ljavax/crypto/SecretKey;
    .end local v4    # "e":Ljavax/security/auth/DestroyFailedException;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;

    .line 82
    .local v0, "privKey":Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;)V

    .line 84
    .local v1, "kemExt":Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getEncapsulation()[B

    move-result-object v2

    .line 85
    .local v2, "encapsulation":[B
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->extractSecret([B)[B

    move-result-object v3

    .line 87
    .local v3, "secret":[B
    new-instance v4, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/jcajce/SecretKeyWithEncapsulation;-><init>(Ljavax/crypto/SecretKey;[B)V

    .line 89
    .local v4, "rv":Ljavax/crypto/SecretKey;
    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 91
    return-object v4
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
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 36
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    .line 39
    iput-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    goto :goto_0

    .line 41
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    if-eqz v0, :cond_1

    .line 43
    iput-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->genSpec:Lorg/bouncycastle/jcajce/spec/KEMGenerateSpec;

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKEKeyGeneratorSpi;->extSpec:Lorg/bouncycastle/jcajce/spec/KEMExtractSpec;

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
