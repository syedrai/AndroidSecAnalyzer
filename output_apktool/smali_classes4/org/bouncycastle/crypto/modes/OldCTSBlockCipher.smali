.class public Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;
.super Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "OldCTSBlockCipher.java"


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 30
    instance-of v0, p1, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 37
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    .line 39
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .line 41
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 197
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_7

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 203
    .local v0, "blockSize":I
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v0

    .line 204
    .local v1, "len":I
    new-array v2, v0, [B

    .line 206
    .local v2, "block":[B
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->forEncryption:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 208
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v3, v5, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 210
    iget v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_3

    .line 215
    iget v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v5, v5

    if-eq v3, v5, :cond_0

    .line 217
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    sub-int v6, v3, v0

    aget-byte v6, v2, v6

    aput-byte v6, v5, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v3    # "i":I
    :cond_0
    move v3, v0

    .restart local v3    # "i":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    if-eq v3, v5, :cond_1

    .line 222
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    aget-byte v6, v5, v3

    sub-int v7, v3, v0

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 225
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v3, v3, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v3, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    .line 229
    .local v3, "c":Lorg/bouncycastle/crypto/BlockCipher;
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v3, v5, v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 230
    .end local v3    # "c":Lorg/bouncycastle/crypto/BlockCipher;
    goto :goto_2

    .line 233
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v3, v5, v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 236
    :goto_2
    add-int v3, p2, v0

    invoke-static {v2, v4, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 212
    :cond_3
    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "need at least one block of input for CTS"

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    :cond_4
    new-array v3, v0, [B

    .line 242
    .local v3, "lastBlock":[B
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v5, v5, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v5, :cond_5

    .line 244
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v5, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v5

    .line 246
    .local v5, "c":Lorg/bouncycastle/crypto/BlockCipher;
    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v5, v6, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 247
    .end local v5    # "c":Lorg/bouncycastle/crypto/BlockCipher;
    goto :goto_3

    .line 250
    :cond_5
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v5, v6, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 253
    :goto_3
    move v5, v0

    .local v5, "i":I
    :goto_4
    iget v6, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    if-eq v5, v6, :cond_6

    .line 255
    sub-int v6, v5, v0

    sub-int v7, v5, v0

    aget-byte v7, v2, v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    aget-byte v8, v8, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 253
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 258
    .end local v5    # "i":I
    :cond_6
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-static {v5, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5, v2, v4, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 261
    add-int v5, p2, v0

    invoke-static {v3, v4, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    .end local v3    # "lastBlock":[B
    :goto_5
    iget v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .line 266
    .local v3, "offset":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->reset()V

    .line 268
    return v3

    .line 199
    .end local v0    # "blockSize":I
    .end local v1    # "len":I
    .end local v2    # "block":[B
    .end local v3    # "offset":I
    :cond_7
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer to small in doFinal"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 76
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 54
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 55
    .local v0, "total":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .line 57
    .local v1, "leftOver":I
    if-nez v1, :cond_0

    .line 59
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v0, v2

    return v2

    .line 62
    :cond_0
    sub-int v2, v0, v1

    return v2
.end method

.method public processByte(B[BI)I
    .locals 6
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
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

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "resultLen":I
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    iput v1, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 107
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len",
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

    .line 130
    if-ltz p3, :cond_3

    .line 135
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 136
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 138
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 140
    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 147
    .local v2, "resultLen":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    .line 149
    .local v3, "gapLen":I
    if-le p3, v3, :cond_2

    .line 151
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p4, p5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 154
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput v0, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .line 158
    sub-int/2addr p3, v3

    .line 159
    add-int/2addr p2, v3

    .line 161
    :goto_1
    if-le p3, v0, :cond_2

    .line 163
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    add-int v7, p5, v2

    invoke-interface {v4, v5, v6, p4, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 165
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    sub-int/2addr p3, v0

    .line 168
    add-int/2addr p2, v0

    goto :goto_1

    .line 172
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/bouncycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .line 176
    return v2

    .line 132
    .end local v0    # "blockSize":I
    .end local v1    # "length":I
    .end local v2    # "resultLen":I
    .end local v3    # "gapLen":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
