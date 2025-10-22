.class public Lorg/bouncycastle/crypto/signers/Ed25519Signer;
.super Ljava/lang/Object;
.source "Ed25519Signer.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;

.field private forSigning:Z

.field private privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;-><init>(Lorg/bouncycastle/crypto/signers/Ed25519Signer-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;

    .line 25
    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 2

    .line 62
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->forSigning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->generateSignature(Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;)[B

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519Signer not initialised for signature generation."

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

    .line 29
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->forSigning:Z

    .line 30
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 34
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 36
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    .line 37
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    goto :goto_0

    .line 41
    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    .line 42
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    .line 45
    :goto_0
    const-string v0, "Ed25519"

    const/16 v1, 0x80

    invoke-static {v0, v1, p2, p1}, Lorg/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 47
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->reset()V

    .line 48
    return-void
.end method

.method public reset()V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V

    .line 83
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

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->write(I)V

    .line 53
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

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->write([BII)V

    .line 58
    return-void
.end method

.method public verifySignature([B)Z
    .locals 2
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->forSigning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->verifySignature(Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;[B)Z

    move-result v0

    return v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519Signer not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
