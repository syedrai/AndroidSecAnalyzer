.class public Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;
.super Ljava/lang/Object;
.source "KyberKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 14

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    move-result-object v0

    .line 28
    .local v0, "engine":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->init(Ljava/security/SecureRandom;)V

    .line 30
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->generateKemKeyPair()[[B

    move-result-object v1

    .line 32
    .local v1, "keyPair":[[B
    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    const/4 v6, 0x1

    aget-object v7, v1, v6

    invoke-direct {v2, v3, v5, v7}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B[B)V

    .line 33
    .local v2, "pubKey":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;
    new-instance v7, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    const/4 v3, 0x2

    aget-object v9, v1, v3

    const/4 v3, 0x3

    aget-object v10, v1, v3

    const/4 v3, 0x4

    aget-object v11, v1, v3

    aget-object v12, v1, v4

    aget-object v13, v1, v6

    invoke-direct/range {v7 .. v13}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B[B[B[B[B)V

    .line 35
    .local v7, "privKey":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;
    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v2, v7}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
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

    .line 19
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 22
    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

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

    .line 40
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 41
    return-void
.end method
