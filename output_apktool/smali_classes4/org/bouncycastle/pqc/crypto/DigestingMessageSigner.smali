.class public Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;
.super Ljava/lang/Object;
.source "DigestingMessageSigner.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# instance fields
.field private forSigning:Z

.field private final messDigest:Lorg/bouncycastle/crypto/Digest;

.field private final messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/MessageSigner;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "messSigner"    # Lorg/bouncycastle/pqc/crypto/MessageSigner;
    .param p2, "messDigest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messSigner",
            "messDigest"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    .line 24
    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 3

    .line 66
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->forSigning:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 72
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 74
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, v0}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->generateSignature([B)[B

    move-result-object v1

    return-object v1

    .line 68
    .end local v0    # "hash":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DigestingMessageSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
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

    .line 30
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->forSigning:Z

    .line 33
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .local v0, "k":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 39
    .end local v0    # "k":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 42
    .restart local v0    # "k":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Signing Requires Private Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_2
    :goto_1
    if-nez p1, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 49
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Verification Requires Public Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->reset()V

    .line 54
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 55
    return-void
.end method

.method public reset()V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 90
    return-void
.end method

.method public update(B)V
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

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 80
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "off",
            "len"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 85
    return-void
.end method

.method public verifySignature([B)Z
    .locals 3
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->forSigning:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 107
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 109
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->verifySignature([B[B)Z

    move-result v1

    return v1

    .line 103
    .end local v0    # "hash":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DigestingMessageSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
