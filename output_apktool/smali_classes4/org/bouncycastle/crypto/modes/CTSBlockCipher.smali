.class public Lorg/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "CTSBlockCipher.java"


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

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 27
    instance-of v0, p1, Lorg/bouncycastle/crypto/StreamBlockCipher;

    if-nez v0, :cond_0

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 34
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    .line 36
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 38
    return-void

    .line 29
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

    .line 194
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_a

    .line 199
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 200
    .local v0, "blockSize":I
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v0

    .line 201
    .local v1, "len":I
    new-array v2, v0, [B

    .line 203
    .local v2, "block":[B
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->forEncryption:Z

    const-string v4, "need at least one block of input for CTS"

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 205
    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_4

    .line 210
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v5, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 212
    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-le v3, v0, :cond_3

    .line 214
    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 216
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    sub-int v6, v3, v0

    aget-byte v6, v2, v6

    aput-byte v6, v4, v3

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v3    # "i":I
    :cond_0
    move v3, v0

    .restart local v3    # "i":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v3, v4, :cond_1

    .line 221
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v6, v4, v3

    sub-int v7, v3, v0

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v3, v3, Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v3, Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    .line 228
    .local v3, "c":Lorg/bouncycastle/crypto/BlockCipher;
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 229
    .end local v3    # "c":Lorg/bouncycastle/crypto/BlockCipher;
    goto :goto_2

    .line 232
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 235
    :goto_2
    add-int v3, p2, v0

    invoke-static {v2, v5, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 239
    :cond_3
    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 207
    :cond_4
    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_5
    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_9

    .line 249
    new-array v3, v0, [B

    .line 251
    .local v3, "lastBlock":[B
    iget v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-le v4, v0, :cond_8

    .line 253
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v4, v4, Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    if-eqz v4, :cond_6

    .line 255
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v4, Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    .line 257
    .local v4, "c":Lorg/bouncycastle/crypto/BlockCipher;
    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 258
    .end local v4    # "c":Lorg/bouncycastle/crypto/BlockCipher;
    goto :goto_3

    .line 261
    :cond_6
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 264
    :goto_3
    move v4, v0

    .local v4, "i":I
    :goto_4
    iget v6, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v4, v6, :cond_7

    .line 266
    sub-int v6, v4, v0

    sub-int v7, v4, v0

    aget-byte v7, v2, v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v8, v8, v4

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 264
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 269
    .end local v4    # "i":I
    :cond_7
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v2, v5, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 272
    add-int v4, p2, v0

    invoke-static {v3, v5, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 276
    :cond_8
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 278
    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    .end local v3    # "lastBlock":[B
    :goto_5
    iget v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 284
    .local v3, "offset":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    .line 286
    return v3

    .line 246
    .end local v3    # "offset":I
    :cond_9
    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    .end local v0    # "blockSize":I
    .end local v1    # "len":I
    .end local v2    # "block":[B
    :cond_a
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

    .line 73
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

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

    .line 51
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 52
    .local v0, "total":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .line 54
    .local v1, "leftOver":I
    if-nez v1, :cond_0

    .line 56
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v0, v2

    return v2

    .line 59
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

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "resultLen":I
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 97
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iput v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 102
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 104
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

    .line 127
    if-ltz p3, :cond_3

    .line 132
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 133
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 135
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 137
    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 144
    .local v2, "resultLen":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    .line 146
    .local v3, "gapLen":I
    if-le p3, v3, :cond_2

    .line 148
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p4, p5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 151
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iput v0, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 155
    sub-int/2addr p3, v3

    .line 156
    add-int/2addr p2, v3

    .line 158
    :goto_1
    if-le p3, v0, :cond_2

    .line 160
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    add-int v7, p5, v2

    invoke-interface {v4, v5, v6, p4, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 162
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    sub-int/2addr p3, v0

    .line 165
    add-int/2addr p2, v0

    goto :goto_1

    .line 169
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    .line 173
    return v2

    .line 129
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
