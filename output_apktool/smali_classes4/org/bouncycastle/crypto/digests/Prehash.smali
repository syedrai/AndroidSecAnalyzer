.class public Lorg/bouncycastle/crypto/digests/Prehash;
.super Ljava/lang/Object;
.source "Prehash.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final buf:Lorg/bouncycastle/util/io/LimitedBuffer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->algorithmName:Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/io/LimitedBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    .line 21
    return-void
.end method

.method public static forDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/digests/Prehash;
    .locals 1
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/bouncycastle/crypto/digests/Prehash;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/Prehash;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
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

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Prehash;->getDigestSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {v1}, Lorg/bouncycastle/util/io/LimitedBuffer;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/util/io/LimitedBuffer;->copyTo([BI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Prehash;->reset()V

    .line 52
    return v0

    .line 49
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incorrect prehash size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .restart local p1    # "out":[B
    .restart local p2    # "outOff":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Prehash;->reset()V

    .line 57
    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {v0}, Lorg/bouncycastle/util/io/LimitedBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {v0}, Lorg/bouncycastle/util/io/LimitedBuffer;->reset()V

    .line 63
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

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/util/io/LimitedBuffer;->write(I)V

    .line 36
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

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Prehash;->buf:Lorg/bouncycastle/util/io/LimitedBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/util/io/LimitedBuffer;->write([BII)V

    .line 41
    return-void
.end method
