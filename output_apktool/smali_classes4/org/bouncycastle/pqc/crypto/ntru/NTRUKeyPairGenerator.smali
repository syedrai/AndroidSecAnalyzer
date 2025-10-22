.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;
.super Ljava/lang/Object;
.source "NTRUKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 12

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    .line 34
    .local v0, "parameterSet":Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleFgBytes()I

    move-result v1

    new-array v1, v1, [B

    .line 35
    .local v1, "seed":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 37
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    .line 38
    .local v2, "owcpa":Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;
    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->keypair([B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;

    move-result-object v3

    .line 39
    .local v3, "owcpaKeys":Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;
    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;->publicKey:[B

    .line 40
    .local v4, "publicKey":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruSecretKeyBytes()I

    move-result v5

    new-array v5, v5, [B

    .line 41
    .local v5, "privateKey":[B
    iget-object v6, v3, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;->privateKey:[B

    .line 42
    .local v6, "owcpaPrivateKey":[B
    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v7

    new-array v7, v7, [B

    .line 45
    .local v7, "prfBytes":[B
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 46
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v9

    array-length v10, v7

    invoke-static {v7, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    new-instance v8, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;[B)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;[B)V

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v8
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

    .line 25
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    .line 26
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 27
    return-void
.end method
