.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;
.super Ljava/lang/Object;
.source "FalconKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private logn:I

.field private nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

.field private noncelen:I

.field private params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

.field private pk_size:I

.field private random:Ljava/security/SecureRandom;

.field private sk_size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 11

    .line 50
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    new-array v0, v0, [B

    .line 51
    .local v0, "pk":[B
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    new-array v1, v1, [B

    .line 52
    .local v1, "sk":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign_keypair([BI[BI)[[B

    move-result-object v2

    .line 53
    .local v2, "keyData":[[B
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v6

    .line 54
    .local v6, "p":Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
    new-instance v5, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    const/4 v4, 0x1

    aget-object v7, v2, v4

    const/4 v4, 0x2

    aget-object v8, v2, v4

    const/4 v4, 0x3

    aget-object v9, v2, v4

    aget-object v10, v2, v3

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V

    .line 55
    .local v5, "privk":Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    aget-object v3, v2, v3

    invoke-direct {v4, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B)V

    .line 56
    .local v4, "pubk":Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;
    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 24
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 26
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    .line 27
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->noncelen:I

    .line 28
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->noncelen:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    .line 29
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 30
    .local v0, "n":I
    const/16 v2, 0x8

    .line 31
    .local v2, "sk_coeff_size":I
    const/16 v3, 0x400

    if-ne v0, v3, :cond_0

    .line 33
    const/4 v2, 0x5

    goto :goto_1

    .line 35
    :cond_0
    const/16 v3, 0x100

    if-eq v0, v3, :cond_3

    const/16 v3, 0x200

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    const/16 v3, 0x80

    if-ne v0, v3, :cond_4

    .line 41
    :cond_2
    const/4 v2, 0x7

    goto :goto_1

    .line 37
    :cond_3
    :goto_0
    const/4 v2, 0x6

    .line 43
    :cond_4
    :goto_1
    mul-int/lit8 v3, v0, 0xe

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v1

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    .line 44
    mul-int/lit8 v3, v2, 0x2

    mul-int v3, v3, v0

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    .line 45
    return-void
.end method
