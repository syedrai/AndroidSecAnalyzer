.class public Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;
.super Lorg/bouncycastle/crypto/engines/Salsa20Engine;
.source "ChaCha7539Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-eqz v2, :cond_0

    .line 54
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to increase counter past 2^32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected advanceCounter(J)V
    .locals 7
    .param p1, "diff"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diff"
        }
    .end annotation

    .line 30
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    .line 31
    .local v1, "hi":I
    long-to-int v0, p1

    .line 33
    .local v0, "lo":I
    const-string v2, "attempt to increase counter past 2^32."

    if-gtz v1, :cond_2

    .line 38
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    .line 40
    .local v3, "oldState":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v6, v5, v4

    add-int/2addr v6, v0

    aput v6, v5, v4

    .line 42
    if-eqz v3, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v4, v5, v4

    if-lt v4, v3, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 35
    .end local v3    # "oldState":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected generateKeyStream([B)V
    .locals 3
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 117
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->chachaCore(I[I[I)V

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 119
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "ChaCha7539"

    return-object v0
.end method

.method protected getCounter()J
    .locals 4

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected getNonceSize()I
    .locals 1

    .line 25
    const/16 v0, 0xc

    return v0
.end method

.method protected resetCounter()V
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 94
    return-void
.end method

.method protected retreatCounter()V
    .locals 3

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 84
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected retreatCounter(J)V
    .locals 11
    .param p1, "diff"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diff"
        }
    .end annotation

    .line 58
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    .line 59
    .local v1, "hi":I
    long-to-int v0, p1

    .line 61
    .local v0, "lo":I
    const-string v2, "attempt to reduce counter past zero."

    if-nez v1, :cond_1

    .line 66
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    int-to-long v5, v3

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    int-to-long v9, v0

    and-long/2addr v7, v9

    cmp-long v3, v5, v7

    if-ltz v3, :cond_0

    .line 68
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v3, v2, v4

    sub-int/2addr v3, v0

    aput v3, v2, v4

    .line 74
    return-void

    .line 72
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected setKey([B[B)V
    .locals 4
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyBytes",
            "ivBytes"
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 100
    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 105
    array-length v1, p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->packTauOrSigma(I[II)V

    .line 108
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v2, 0xd

    const/4 v3, 0x3

    invoke-static {p2, v0, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 113
    return-void
.end method
