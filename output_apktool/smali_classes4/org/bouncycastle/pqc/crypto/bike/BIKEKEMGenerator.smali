.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;
.super Ljava/lang/Object;
.source "BIKEKEMGenerator.java"

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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;->sr:Ljava/security/SecureRandom;

    .line 20
    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 10
    .param p1, "recipientKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    .line 26
    .local v0, "key":Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    move-result-object v2

    .line 28
    .local v2, "engine":Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getLByte()I

    move-result v1

    new-array v5, v1, [B

    .line 29
    .local v5, "K":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v1

    new-array v3, v1, [B

    .line 30
    .local v3, "c0":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getLByte()I

    move-result v1

    new-array v4, v1, [B

    .line 31
    .local v4, "c1":[B
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->publicKey:[B

    .line 33
    .local v6, "h":[B
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->encaps([B[B[B[BLjava/security/SecureRandom;)V

    .line 35
    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 37
    .local v1, "cipherText":[B
    new-instance v7, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getSessionKeySize()I

    move-result v8

    div-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    invoke-static {v5, v9, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v7
.end method
