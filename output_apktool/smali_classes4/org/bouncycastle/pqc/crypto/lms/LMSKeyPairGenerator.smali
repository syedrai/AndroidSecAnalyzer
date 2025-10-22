.class public Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;
.super Ljava/lang/Object;
.source "LMSKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field param:Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 7

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;->param:Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 23
    .local v0, "source":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 24
    .local v1, "I":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 26
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;->param:Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v2

    .line 27
    .local v2, "sigParameter":Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result v3

    new-array v3, v3, [B

    .line 28
    .local v3, "rootSecret":[B
    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 30
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;->param:Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->getLMOTSParam()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v1, v3}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->generateKeys(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-result-object v4

    .line 32
    .local v4, "privKey":Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
    new-instance v5, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 16
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSKeyPairGenerator;->param:Lorg/bouncycastle/pqc/crypto/lms/LMSKeyGenerationParameters;

    .line 17
    return-void
.end method
