.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyPairGenerator;
.super Ljava/lang/Object;
.source "PicnicKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    move-result-object v0

    .line 25
    .local v0, "engine":Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getSecretKeySize()I

    move-result v1

    new-array v1, v1, [B

    .line 26
    .local v1, "sk":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getPublicKeySize()I

    move-result v2

    new-array v2, v2, [B

    .line 27
    .local v2, "pk":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->crypto_sign_keypair([B[BLjava/security/SecureRandom;)V

    .line 29
    new-instance v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;[B)V

    .line 30
    .local v3, "pubKey":Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    invoke-direct {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;[B)V

    .line 33
    .local v4, "privKey":Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;
    new-instance v5, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v5, v3, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

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

    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 19
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    .line 20
    return-void
.end method
