.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;
.super Ljava/lang/Object;
.source "CMCEKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-result-object v0

    .line 37
    .local v0, "engine":Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v1

    new-array v1, v1, [B

    .line 38
    .local v1, "sk":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPublicKeySize()I

    move-result v2

    new-array v2, v2, [B

    .line 39
    .local v2, "pk":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->kem_keypair([B[BLjava/security/SecureRandom;)V

    .line 41
    new-instance v3, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B)V

    .line 42
    .local v3, "pubKey":Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B)V

    .line 43
    .local v4, "privKey":Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;
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

    .line 26
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->cmceParams:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyGenerationParameters;

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 32
    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

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

    .line 49
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 50
    return-void
.end method
