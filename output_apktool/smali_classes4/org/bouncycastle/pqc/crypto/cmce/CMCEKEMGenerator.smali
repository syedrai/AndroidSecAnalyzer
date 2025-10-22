.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;
.super Ljava/lang/Object;
.source "CMCEKEMGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;->sr:Ljava/security/SecureRandom;

    .line 19
    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 3
    .param p1, "recipientKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 23
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    .line 24
    .local v0, "key":Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-result-object v1

    .line 26
    .local v1, "engine":Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getDefaultSessionKeySize()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;I)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v2

    return-object v2
.end method

.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;I)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 6
    .param p1, "recipientKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "sessionKeySizeInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recipientKey",
            "sessionKeySizeInBits"
        }
    .end annotation

    .line 31
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;

    .line 32
    .local v0, "key":Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-result-object v1

    .line 33
    .local v1, "engine":Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getCipherTextSize()I

    move-result v2

    new-array v2, v2, [B

    .line 34
    .local v2, "cipher_text":[B
    div-int/lit8 v3, p2, 0x8

    new-array v3, v3, [B

    .line 35
    .local v3, "sessionKey":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPublicKeyParameters;->getPublicKey()[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->kem_enc([B[B[BLjava/security/SecureRandom;)I

    .line 36
    new-instance v4, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v4
.end method
