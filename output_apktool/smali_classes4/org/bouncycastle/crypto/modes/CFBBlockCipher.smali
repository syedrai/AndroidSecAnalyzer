.class public Lorg/bouncycastle/crypto/modes/CFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "CFBBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/CFBModeCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private byteCount:I

.field private cfbOutV:[B

.field private cfbV:[B

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z

.field private inBuf:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 3
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "bitBlockSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "bitBlockSize"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 52
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    if-gt p2, v0, :cond_0

    if-lt p2, v1, :cond_0

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 58
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    .line 60
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    .line 61
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    .line 62
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    .line 63
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    .line 64
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CFB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decryptByte(B)B
    .locals 7
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 163
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte p1, v0, v2

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 171
    .local v0, "rv":B
    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_1

    .line 173
    iput v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 175
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    :cond_1
    return v0
.end method

.method private encryptByte(B)B
    .locals 7
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 142
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 148
    .local v0, "rv":B
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte v0, v2, v3

    .line 150
    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_1

    .line 152
    iput v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 154
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    :cond_1
    return v0
.end method

.method public static newInstance(Lorg/bouncycastle/crypto/BlockCipher;I)Lorg/bouncycastle/crypto/modes/CFBModeCipher;
    .locals 1
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p1, "blockSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "blockSize"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    return-object v0
.end method


# virtual methods
.method protected calculateByte(B)B
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->encryptByte(B)B

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->decryptByte(B)B

    move-result v0

    :goto_0
    return v0
.end method

.method public decryptBlock([BI[BI)I
    .locals 6
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

    .line 260
    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v1, "in":[B
    .local v2, "inOff":I
    .local v4, "out":[B
    .local v5, "outOff":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 262
    iget p1, v0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p1
.end method

.method public encryptBlock([BI[BI)I
    .locals 6
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

    .line 236
    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v1, "in":[B
    .local v2, "inOff":I
    .local v4, "out":[B
    .local v5, "outOff":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 238
    iget p1, v0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/CFB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 189
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getCurrentIV()[B
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encrypting",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 82
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    .line 84
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 86
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 87
    .local v0, "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 89
    .local v2, "iv":[B
    array-length v3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 92
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v6, v2

    sub-int/2addr v4, v6

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v6, v2

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_0

    .line 95
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    aput-byte v5, v4, v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 100
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 106
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 108
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 110
    .end local v0    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v2    # "iv":[B
    :cond_2
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 116
    if-eqz p2, :cond_4

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 121
    :cond_4
    :goto_2
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 6
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

    .line 212
    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v1, "in":[B
    .local v2, "inOff":I
    .local v4, "out":[B
    .local v5, "outOff":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 214
    iget p1, v0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p1
.end method

.method public reset()V
    .locals 4

    .line 281
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 283
    iput v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 285
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 286
    return-void
.end method
