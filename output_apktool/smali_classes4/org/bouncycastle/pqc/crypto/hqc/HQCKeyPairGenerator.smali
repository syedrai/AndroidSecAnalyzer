.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;
.super Ljava/lang/Object;
.source "HQCKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private N_BYTE:I

.field private delta:I

.field private hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

.field private k:I

.field private n:I

.field private random:Ljava/security/SecureRandom;

.field private w:I

.field private we:I

.field private wr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    move-result-object v0

    .line 47
    .local v0, "engine":Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->N_BYTE:I

    add-int/lit8 v1, v1, 0x28

    new-array v1, v1, [B

    .line 48
    .local v1, "pk":[B
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->N_BYTE:I

    add-int/lit8 v2, v2, 0x50

    new-array v2, v2, [B

    .line 50
    .local v2, "sk":[B
    invoke-virtual {v0, v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->genKeyPair([B[B[B)V

    .line 53
    new-instance v3, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V

    .line 54
    .local v3, "publicKey":Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V

    .line 56
    .local v4, "privateKey":Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;
    new-instance v5, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v5, v3, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    .line 62
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 64
    .local v0, "seed":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 66
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->genKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    return-object v1
.end method

.method public generateKeyPairWithSeed([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->genKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

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

    .line 31
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    .line 32
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->n:I

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->k:I

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getDelta()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->delta:I

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getW()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->w:I

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getWr()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->wr:I

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getWe()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->we:I

    .line 41
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->n:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->N_BYTE:I

    .line 42
    return-void
.end method
