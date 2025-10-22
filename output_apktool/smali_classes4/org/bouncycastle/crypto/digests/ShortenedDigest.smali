.class public Lorg/bouncycastle/crypto/digests/ShortenedDigest;
.super Ljava/lang/Object;
.source "ShortenedDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

.field private length:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/ExtendedDigest;I)V
    .locals 2
    .param p1, "baseDigest"    # Lorg/bouncycastle/crypto/ExtendedDigest;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseDigest",
            "length"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_1

    .line 31
    invoke-interface {p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->getDigestSize()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    .line 37
    iput p2, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    .line 38
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseDigest output not large enough to support length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseDigest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
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

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 64
    .local v0, "tmp":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/ExtendedDigest;->doFinal([BI)I

    .line 66
    iget v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    mul-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->length:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ExtendedDigest;->reset()V

    .line 74
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

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/ExtendedDigest;->update(B)V

    .line 53
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

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/ExtendedDigest;->update([BII)V

    .line 58
    return-void
.end method
