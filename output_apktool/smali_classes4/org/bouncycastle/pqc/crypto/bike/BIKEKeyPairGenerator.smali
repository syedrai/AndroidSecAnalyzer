.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;
.super Ljava/lang/Object;
.source "BIKEKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private L_BYTE:I

.field private R_BYTE:I

.field private bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

.field private l:I

.field private r:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    move-result-object v1

    .line 60
    .local v1, "engine":Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->R_BYTE:I

    new-array v2, v0, [B

    .line 61
    .local v2, "h0":[B
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->R_BYTE:I

    new-array v3, v0, [B

    .line 62
    .local v3, "h1":[B
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->R_BYTE:I

    new-array v5, v0, [B

    .line 63
    .local v5, "h":[B
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->L_BYTE:I

    new-array v4, v0, [B

    .line 65
    .local v4, "sigma":[B
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->genKeyPair([B[B[B[BLjava/security/SecureRandom;)V

    .line 68
    new-instance v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;[B)V

    .line 69
    .local v0, "publicKey":Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;
    new-instance v6, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;[B[B[B)V

    .line 71
    .local v6, "privateKey":Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;
    new-instance v7, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v7, v0, v6}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v7
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 42
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    .line 43
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getR()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->r:I

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getL()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->l:I

    .line 53
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->l:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->L_BYTE:I

    .line 54
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->r:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->R_BYTE:I

    .line 55
    return-void
.end method
