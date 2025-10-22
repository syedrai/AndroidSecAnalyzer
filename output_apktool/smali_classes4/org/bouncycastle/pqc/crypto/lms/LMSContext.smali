.class public Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
.super Ljava/lang/Object;
.source "LMSContext.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# instance fields
.field private final C:[B

.field private volatile digest:Lorg/bouncycastle/crypto/Digest;

.field private final key:Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;

.field private final path:[[B

.field private final publicKey:Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;

.field private final sigParams:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field private final signature:Ljava/lang/Object;

.field private signedPubKeys:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/crypto/Digest;[B[[B)V
    .locals 1
    .param p1, "key"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;
    .param p2, "sigParams"    # Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .param p3, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p4, "C"    # [B
    .param p5, "path"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "sigParams",
            "digest",
            "C",
            "path"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->key:Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->sigParams:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 24
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 25
    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->C:[B

    .line 26
    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->path:[[B

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;

    .line 28
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->signature:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;Ljava/lang/Object;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "publicKey"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;
    .param p2, "signature"    # Ljava/lang/Object;
    .param p3, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "signature",
            "digest"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;

    .line 34
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->signature:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->C:[B

    .line 37
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->key:Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;

    .line 38
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->sigParams:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 39
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->path:[[B

    .line 40
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getC()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->C:[B

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method getPath()[[B
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->path:[[B

    return-object v0
.end method

.method getPrivateKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->key:Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;

    return-object v0
.end method

.method getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;

    return-object v0
.end method

.method getQ()[B
    .locals 3

    .line 49
    const/16 v0, 0x22

    new-array v0, v0, [B

    .line 51
    .local v0, "Q":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 55
    return-object v0
.end method

.method getSigParams()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->sigParams:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    return-object v0
.end method

.method public getSignature()Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->signature:Ljava/lang/Object;

    return-object v0
.end method

.method getSignedPubKeys()[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->signedPubKeys:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 123
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 108
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 113
    return-void
.end method

.method withSignedPublicKeys([Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    .locals 0
    .param p1, "signedPubKeys"    # [Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signedPubKeys"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->signedPubKeys:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    .line 92
    return-object p0
.end method
