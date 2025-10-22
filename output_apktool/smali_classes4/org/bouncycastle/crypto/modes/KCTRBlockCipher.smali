.class public Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "KCTRBlockCipher.java"


# instance fields
.field private byteCount:I

.field private engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private initialised:Z

.field private iv:[B

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "engine"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    .line 31
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    .line 32
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    .line 33
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    .line 34
    return-void
.end method

.method private checkCounter()V
    .locals 0

    .line 150
    return-void
.end method

.method private incrementCounterAt(I)V
    .locals 4
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 126
    move v0, p1

    .line 127
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aget-byte v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    if-eqz v3, :cond_0

    .line 131
    move v0, v2

    goto :goto_1

    .line 129
    :cond_0
    move v0, v2

    goto :goto_0

    .line 134
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 76
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->incrementCounterAt(I)V

    .line 80
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->checkCounter()V

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 89
    .local v0, "rv":B
    iget v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 91
    iput v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    .line 94
    :cond_1
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/KCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->initialised:Z

    .line 41
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 44
    .local v1, "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 45
    .local v2, "iv":[B
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    array-length v3, v3

    array-length v4, v2

    sub-int/2addr v3, v4

    .line 47
    .local v3, "diff":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 48
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    array-length v6, v2

    invoke-static {v2, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 50
    .end local v1    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v2    # "iv":[B
    .end local v3    # "diff":I
    nop

    .line 56
    if-eqz p2, :cond_0

    .line 58
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->reset()V

    .line 62
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameter passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 100
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 104
    array-length v0, p3

    sub-int/2addr v0, p4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v3, "in":[B
    .local v4, "inOff":I
    .local v6, "out":[B
    .local v7, "outOff":I
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->processBytes([BII[BI)I

    .line 111
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result p1

    return p1

    .line 106
    .end local v3    # "in":[B
    .end local v4    # "inOff":I
    .end local v6    # "out":[B
    .end local v7    # "outOff":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_0
    move-object v3, p1

    move v4, p2

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .restart local v3    # "in":[B
    .restart local v4    # "inOff":I
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    .end local v3    # "in":[B
    .end local v4    # "inOff":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    :cond_1
    move-object v3, p1

    move v4, p2

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .restart local v3    # "in":[B
    .restart local v4    # "inOff":I
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    .line 116
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->initialised:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 121
    iput v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    .line 122
    return-void
.end method
