.class public Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;
.super Ljava/lang/Object;
.source "KyberKEMGenerator.java"

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
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;->sr:Ljava/security/SecureRandom;

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

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    .line 24
    .local v0, "key":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    move-result-object v1

    .line 25
    .local v1, "engine":Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->init(Ljava/security/SecureRandom;)V

    .line 26
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->kemEncrypt([B)[[B

    move-result-object v2

    .line 27
    .local v2, "kemEncrypt":[[B
    new-instance v3, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v3
.end method
