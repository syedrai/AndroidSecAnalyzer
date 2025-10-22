.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;
.super Ljava/lang/Object;
.source "GMSSStateAwareSigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private final gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

.field private key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 3
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "digest"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    instance-of v0, p1, Lorg/bouncycastle/util/Memoable;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    .line 31
    .local v0, "dig":Lorg/bouncycastle/util/Memoable;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;

    invoke-direct {v2, p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;Lorg/bouncycastle/util/Memoable;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    .line 38
    return-void

    .line 27
    .end local v0    # "dig":Lorg/bouncycastle/util/Memoable;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "digest must implement Memoable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 2
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->generateSignature([B)[B

    move-result-object v0

    .line 68
    .local v0, "sig":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextKey()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    .line 70
    return-object v0

    .line 63
    .end local v0    # "sig":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "signing key no longer usable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUpdatedPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    .line 82
    .local v0, "k":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    .line 84
    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
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

    .line 42
    if-eqz p1, :cond_1

    .line 44
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 48
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    .line 49
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 52
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 57
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 1
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

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->verifySignature([B[B)Z

    move-result v0

    return v0
.end method
