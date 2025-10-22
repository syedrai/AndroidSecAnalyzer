.class public Lorg/bouncycastle/crypto/macs/Blake3Mac;
.super Ljava/lang/Object;
.source "Blake3Mac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private final theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Blake3Digest;)V
    .locals 0
    .param p1, "pDigest"    # Lorg/bouncycastle/crypto/digests/Blake3Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pDigest"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    .line 29
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "pParams"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pParams"
        }
    .end annotation

    .line 38
    move-object v0, p1

    .line 39
    .local v0, "myParams":Lorg/bouncycastle/crypto/CipherParameters;
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_0

    .line 41
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/params/Blake3Parameters;->key([B)Lorg/bouncycastle/crypto/params/Blake3Parameters;

    move-result-object v0

    .line 43
    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/Blake3Parameters;

    if-eqz v1, :cond_2

    .line 48
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/crypto/params/Blake3Parameters;

    .line 49
    .local v1, "myBlakeParams":Lorg/bouncycastle/crypto/params/Blake3Parameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/Blake3Parameters;->getKey()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->init(Lorg/bouncycastle/crypto/params/Blake3Parameters;)V

    .line 56
    return-void

    .line 51
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Blake3Mac requires a key parameter."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    .end local v1    # "myBlakeParams":Lorg/bouncycastle/crypto/params/Blake3Parameters;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter passed to Blake3Mac init - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->reset()V

    .line 81
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->update(B)V

    .line 66
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Blake3Mac;->theDigest:Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->update([BII)V

    .line 71
    return-void
.end method
