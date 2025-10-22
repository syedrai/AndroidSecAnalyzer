.class public Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;
.super Ljava/security/Signature;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi$withSha3512;,
        Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi$withSha512;,
        Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi$withShake256;,
        Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi$Base;
    }
.end annotation


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;)V
    .locals 1
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "signer"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "signer"
        }
    .end annotation

    .line 28
    const-string v0, "Picnic"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 31
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;

    .line 32
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 61
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPrivateKey;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPrivateKey;

    .line 64
    .local v0, "key":Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPrivateKey;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    move-result-object v1

    .line 65
    .local v1, "param":Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 66
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 67
    .end local v0    # "key":Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPrivateKey;
    .end local v1    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    nop

    .line 72
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "unknown private key passed to Picnic"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 54
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->random:Ljava/security/SecureRandom;

    .line 55
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 56
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 37
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPublicKey;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPublicKey;

    .line 40
    .local v0, "key":Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPublicKey;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    move-result-object v1

    .line 42
    .local v1, "param":Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 43
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 44
    .end local v0    # "key":Lorg/bouncycastle/pqc/jcajce/provider/picnic/BCPicnicPublicKey;
    .end local v1    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    nop

    .line 49
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "unknown public key passed to Picnic"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "value"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 91
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->generateSignature([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v1, "detachedSig":[B
    return-object v1

    .line 99
    .end local v1    # "detachedSig":[B
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 78
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 84
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 3
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 109
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 111
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->verifySignature([B[B)Z

    move-result v1

    return v1
.end method
