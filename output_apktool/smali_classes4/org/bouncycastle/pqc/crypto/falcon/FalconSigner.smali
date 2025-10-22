.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;
.super Ljava/lang/Object;
.source "FalconSigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private encodedkey:[B

.field private nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 9
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    new-array v3, v0, [B

    .line 50
    .local v3, "sm":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    array-length v6, p1

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    .end local p1    # "message":[B
    .local v4, "message":[B
    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign(Z[B[BII[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
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

    .line 17
    if-eqz p1, :cond_1

    .line 19
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    .line 22
    .local v0, "skparam":Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    .line 23
    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v2

    .line 24
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result v3

    move-object v4, p2

    check-cast v4, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 25
    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    .line 26
    .end local v0    # "skparam":Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    .line 30
    .restart local v0    # "skparam":Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    .line 31
    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v2

    .line 32
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result v3

    .line 33
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    .line 34
    .end local v0    # "skparam":Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    .line 39
    .local v0, "pkparam":Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getH()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    .line 40
    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v2

    .line 41
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result v3

    .line 42
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    .line 44
    .end local v0    # "pkparam":Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;
    :goto_0
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 10
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

    .line 55
    const/4 v0, 0x0

    aget-byte v1, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    if-eq v1, v2, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    new-array v5, v1, [B

    .line 60
    .local v5, "nonce":[B
    array-length v1, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v1, v2

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    new-array v4, v1, [B

    .line 61
    .local v4, "sig":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    invoke-static {p2, v9, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/2addr v1, v9

    array-length v2, p2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v9

    invoke-static {p2, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v6, p1

    .end local p1    # "message":[B
    .local v6, "message":[B
    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign_open(Z[B[B[B[BI)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 64
    .local v0, "res":Z
    :cond_1
    return v0
.end method
