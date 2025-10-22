.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;
.super Ljava/lang/Object;
.source "PicnicSigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 6
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->privKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    move-result-object v0

    .line 34
    .local v0, "engine":Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    array-length v1, p1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getSignatureSize(I)I

    move-result v1

    new-array v1, v1, [B

    .line 35
    .local v1, "sig":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->privKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->crypto_sign([B[B[B)V

    .line 37
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getTrueSignatureSize()I

    move-result v2

    new-array v2, v2, [B

    .line 38
    .local v2, "signature":[B
    array-length v3, p1

    add-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getTrueSignatureSize()I

    move-result v5

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    return-object v2
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

    .line 20
    if-eqz p1, :cond_0

    .line 22
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->privKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    goto :goto_0

    .line 26
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    .line 29
    :goto_0
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 5
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

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    move-result-object v0

    .line 45
    .local v0, "engine":Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
    array-length v1, p1

    new-array v1, v1, [B

    .line 46
    .local v1, "verify_message":[B
    array-length v2, p2

    invoke-static {v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v2

    .line 48
    .local v2, "attached_signature":[B
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->crypto_sign_open([B[B[B)Z

    move-result v3

    .line 49
    .local v3, "verify":Z
    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    const/4 v4, 0x0

    return v4

    .line 53
    :cond_0
    return v3
.end method
