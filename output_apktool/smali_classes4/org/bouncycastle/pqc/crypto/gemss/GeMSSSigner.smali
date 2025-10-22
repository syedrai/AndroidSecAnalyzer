.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;
.super Ljava/lang/Object;
.source "GeMSSSigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 8
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    move-result-object v1

    .line 48
    .local v1, "engine":Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
    iget v0, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v2, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    sub-int/2addr v3, v4

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    .line 49
    .local v0, "SIZE_SIGN_HFE":I
    array-length v2, p1

    add-int/2addr v2, v0

    new-array v3, v2, [B

    .line 50
    .local v3, "sm8":[B
    const/4 v2, 0x0

    array-length v4, p1

    invoke-static {p1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->random:Ljava/security/SecureRandom;

    array-length v6, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    iget-object v7, v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    const/4 v5, 0x0

    move-object v4, p1

    .end local p1    # "message":[B
    .local v4, "message":[B
    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->signHFE_FeistelPatarin(Ljava/security/SecureRandom;[B[BII[B)V

    .line 52
    return-object v3
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "param"
        }
    .end annotation

    .line 25
    if-eqz p1, :cond_1

    .line 27
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    .line 30
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 34
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    .line 35
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 40
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    .line 43
    :goto_0
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 3
    .param p1, "message"    # [B
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "signature"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    move-result-object v0

    .line 58
    .local v0, "engine":Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->getPK()[B

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->crypto_sign_open([B[B[B)I

    move-result v1

    .line 59
    .local v1, "ret":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
