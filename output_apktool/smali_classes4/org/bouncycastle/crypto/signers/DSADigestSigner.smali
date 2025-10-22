.class public Lorg/bouncycastle/crypto/signers/DSADigestSigner;
.super Ljava/lang/Object;
.source "DSADigestSigner.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# instance fields
.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final dsa:Lorg/bouncycastle/crypto/DSA;

.field private final encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

.field private forSigning:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "dsa"    # Lorg/bouncycastle/crypto/DSA;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dsa",
            "digest"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    .line 26
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 27
    sget-object v0, Lorg/bouncycastle/crypto/signers/StandardDSAEncoding;->INSTANCE:Lorg/bouncycastle/crypto/signers/StandardDSAEncoding;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/DSAExt;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/signers/DSAEncoding;)V
    .locals 0
    .param p1, "dsa"    # Lorg/bouncycastle/crypto/DSAExt;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "encoding"    # Lorg/bouncycastle/crypto/signers/DSAEncoding;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dsa",
            "digest",
            "encoding"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    .line 36
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 37
    iput-object p3, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    .line 38
    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 6

    .line 98
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 104
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 106
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v1

    .line 110
    .local v1, "sig":[Ljava/math/BigInteger;
    :try_start_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    aget-object v2, v1, v2

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-interface {v3, v4, v2, v5}, Lorg/bouncycastle/crypto/signers/DSAEncoding;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 112
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unable to encode signature"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    .end local v0    # "hash":[B
    .end local v1    # "sig":[Ljava/math/BigInteger;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSADigestSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getOrder()Ljava/math/BigInteger;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    instance-of v0, v0, Lorg/bouncycastle/crypto/DSAExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    check-cast v0, Lorg/bouncycastle/crypto/DSAExt;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "parameters"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "parameters"
        }
    .end annotation

    .line 44
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    .line 48
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .local v0, "k":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 54
    .end local v0    # "k":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 57
    .restart local v0    # "k":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Signing Requires Private Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_2
    :goto_1
    if-nez p1, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 64
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Verification Requires Public Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->reset()V

    .line 69
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 70
    return-void
.end method

.method public reset()V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 144
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 79
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "length"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 90
    return-void
.end method

.method public verifySignature([B)Z
    .locals 6
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 127
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->encoding:Lorg/bouncycastle/crypto/signers/DSAEncoding;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lorg/bouncycastle/crypto/signers/DSAEncoding;->decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object v1

    .line 133
    .local v1, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->dsa:Lorg/bouncycastle/crypto/DSA;

    aget-object v4, v1, v2

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-interface {v3, v0, v4, v5}, Lorg/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 135
    .end local v1    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    return v2

    .line 123
    .end local v0    # "hash":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSADigestSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
