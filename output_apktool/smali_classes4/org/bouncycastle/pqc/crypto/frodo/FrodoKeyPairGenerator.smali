.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;
.super Ljava/lang/Object;
.source "FrodoKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private B:I

.field private D:I

.field private frodoParams:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;

.field private n:I

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

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->frodoParams:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    move-result-object v0

    .line 34
    .local v0, "engine":Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->getPrivateKeySize()I

    move-result v1

    new-array v1, v1, [B

    .line 35
    .local v1, "sk":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->getPublicKeySize()I

    move-result v2

    new-array v2, v2, [B

    .line 36
    .local v2, "pk":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->kem_keypair([B[BLjava/security/SecureRandom;)V

    .line 38
    new-instance v3, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->frodoParams:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;[B)V

    .line 39
    .local v3, "pubKey":Lorg/bouncycastle/pqc/crypto/frodo/FrodoPublicKeyParameters;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->frodoParams:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;[B)V

    .line 40
    .local v4, "privKey":Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;
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

    .line 23
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->frodoParams:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;

    .line 24
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->frodoParams:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->n:I

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->frodoParams:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getD()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->D:I

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->frodoParams:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getB()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->B:I

    .line 29
    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

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

    .line 45
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 46
    return-void
.end method
