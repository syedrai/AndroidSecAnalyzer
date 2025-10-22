.class public Lorg/bouncycastle/crypto/engines/XSalsa20Engine;
.super Lorg/bouncycastle/crypto/engines/Salsa20Engine;
.source "XSalsa20Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "XSalsa20"

    return-object v0
.end method

.method protected getNonceSize()I
    .locals 1

    .line 19
    const/16 v0, 0x18

    return v0
.end method

.method protected setKey([B[B)V
    .locals 8
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

    .line 29
    if-eqz p1, :cond_1

    .line 34
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 40
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-static {p2, v1, v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 47
    .local v0, "hsalsa20Out":[I
    const/16 v3, 0x14

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    invoke-static {v3, v4, v0}, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->salsaCore(I[I[I)V

    .line 50
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v4, 0x0

    aget v5, v0, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v6, v4

    sub-int/2addr v5, v4

    const/4 v4, 0x1

    aput v5, v3, v4

    .line 51
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v4, 0x5

    aget v5, v0, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v6, v4

    sub-int/2addr v5, v4

    aput v5, v3, v2

    .line 52
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v4, 0xa

    aget v5, v0, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v6, v4

    sub-int/2addr v5, v4

    const/4 v4, 0x3

    aput v5, v3, v4

    .line 53
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v4, 0xf

    aget v5, v0, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v6, v4

    sub-int/2addr v5, v4

    const/4 v4, 0x4

    aput v5, v3, v4

    .line 55
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v4, 0x6

    aget v5, v0, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v6, v6, v4

    sub-int/2addr v5, v6

    const/16 v6, 0xb

    aput v5, v3, v6

    .line 56
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v5, 0x7

    aget v6, v0, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v5, v7, v5

    sub-int/2addr v6, v5

    const/16 v5, 0xc

    aput v6, v3, v5

    .line 57
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v5, v0, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v1, v6, v1

    sub-int/2addr v5, v1

    const/16 v1, 0xd

    aput v5, v3, v1

    .line 58
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v3, 0x9

    aget v5, v0, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v3, v6, v3

    sub-int/2addr v5, v3

    const/16 v3, 0xe

    aput v5, v1, v3

    .line 61
    const/16 v1, 0x10

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    invoke-static {p2, v1, v3, v4, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 62
    return-void

    .line 36
    .end local v0    # "hsalsa20Out":[I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support re-init with null key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
