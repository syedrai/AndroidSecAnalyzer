.class public Lorg/bouncycastle/pqc/crypto/saber/SABERKEMGenerator;
.super Ljava/lang/Object;
.source "SABERKEMGenerator.java"

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
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMGenerator;->sr:Ljava/security/SecureRandom;

    .line 19
    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 6
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

    check-cast v0, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;

    .line 24
    .local v0, "key":Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    move-result-object v1

    .line 25
    .local v1, "engine":Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getCipherTextSize()I

    move-result v2

    new-array v2, v2, [B

    .line 26
    .local v2, "cipher_text":[B
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSessionKeySize()I

    move-result v3

    new-array v3, v3, [B

    .line 27
    .local v3, "sessionKey":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABERPublicKeyParameters;->getPublicKey()[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->crypto_kem_enc([B[B[BLjava/security/SecureRandom;)I

    .line 28
    new-instance v4, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v4
.end method
