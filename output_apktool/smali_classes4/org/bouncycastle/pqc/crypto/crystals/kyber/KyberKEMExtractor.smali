.class public Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;
.super Ljava/lang/Object;
.source "KyberKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;)V
    .locals 0
    .param p1, "privParams"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privParams"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    .line 16
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->initCipher(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 17
    return-void
.end method

.method private initCipher(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 2
    .param p1, "recipientKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 21
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    .line 22
    .local v0, "key":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    .line 23
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 2
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->kemDecrypt([B[B)[B

    move-result-object v0

    .line 30
    .local v0, "sharedSecret":[B
    return-object v0
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getCryptoCipherTextBytes()I

    move-result v0

    return v0
.end method
