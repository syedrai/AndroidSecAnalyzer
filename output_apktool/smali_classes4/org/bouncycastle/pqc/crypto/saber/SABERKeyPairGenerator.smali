.class public Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;
.super Ljava/lang/Object;
.source "SABERKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private l:I

.field private random:Ljava/security/SecureRandom;

.field private saberParams:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->saberParams:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    move-result-object v0

    .line 30
    .local v0, "engine":Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getPrivateKeySize()I

    move-result v1

    new-array v1, v1, [B

    .line 31
    .local v1, "sk":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getPublicKeySize()I

    move-result v2

    new-array v2, v2, [B

    .line 32
    .local v2, "pk":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->crypto_kem_keypair([B[BLjava/security/SecureRandom;)I

    .line 34
    new-instance v3, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->saberParams:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;[B)V

    .line 35
    .local v3, "pubKey":Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->saberParams:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;[B)V

    .line 36
    .local v4, "privKey":Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;
    new-instance v5, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v5, v3, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
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

    .line 21
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->saberParams:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->saberParams:Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->getL()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->l:I

    .line 25
    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 42
    return-void
.end method
