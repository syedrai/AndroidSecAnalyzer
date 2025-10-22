.class public Lorg/bouncycastle/crypto/signers/Ed448Signer;
.super Ljava/lang/Object;
.source "Ed448Signer.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

.field private final context:[B

.field private forSigning:Z

.field private privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;


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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;-><init>(Lorg/bouncycastle/crypto/signers/Ed448Signer-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    .line 26
    if-eqz p1, :cond_0

    .line 31
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->context:[B

    .line 32
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'context\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 3

    .line 69
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->forSigning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->context:[B

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->generateSignature(Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;[B)[B

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed448Signer not initialised for signature generation."

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

    .line 36
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->forSigning:Z

    .line 37
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 41
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 43
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    .line 44
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    goto :goto_0

    .line 48
    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    .line 49
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    .line 52
    :goto_0
    const-string v0, "Ed448"

    const/16 v1, 0xe0

    invoke-static {v0, v1, p2, p1}, Lorg/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 54
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed448Signer;->reset()V

    .line 55
    return-void
.end method

.method public reset()V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->reset()V

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

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->write(I)V

    .line 60
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

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->write([BII)V

    .line 65
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

    .line 79
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->forSigning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->buffer:Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed448Signer;->context:[B

    invoke-virtual {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/signers/Ed448Signer$Buffer;->verifySignature(Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;[B[B)Z

    move-result v0

    return v0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed448Signer not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
