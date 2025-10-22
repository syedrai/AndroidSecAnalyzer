.class public Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;
.super Ljava/lang/Object;
.source "Ed25519ctxSigner.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

.field private final context:[B

.field private forSigning:Z

.field private privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "context"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;-><init>(Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    .line 25
    if-eqz p1, :cond_0

    .line 30
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->context:[B

    .line 31
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'context\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 3

    .line 65
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->forSigning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->context:[B

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->generateSignature(Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;[B)[B

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519ctxSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
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

    .line 35
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->forSigning:Z

    .line 37
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 39
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    .line 40
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    goto :goto_0

    .line 44
    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    .line 45
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    .line 48
    :goto_0
    const-string v0, "Ed25519"

    const/16 v1, 0x80

    invoke-static {v0, v1, p2, p1}, Lorg/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 50
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->reset()V

    .line 51
    return-void
.end method

.method public reset()V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->reset()V

    .line 86
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

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->write(I)V

    .line 56
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->write([BII)V

    .line 61
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

    .line 75
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->forSigning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->context:[B

    invoke-virtual {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->verifySignature(Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;[B[B)Z

    move-result v0

    return v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519ctxSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
