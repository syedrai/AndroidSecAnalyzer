.class public Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;
.super Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "NISTCTSBlockCipher.java"


# static fields
.field public static final CS1:I = 0x1

.field public static final CS2:I = 0x2

.field public static final CS3:I = 0x3


# instance fields
.field private final blockSize:I

.field private final type:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "cipher"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 40
    iput p1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    .line 41
    invoke-static {p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 43
    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    .line 45
    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 47
    return-void
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

    .line 203
    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_e

    .line 208
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 209
    .local v0, "blockSize":I
    iget v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v0

    .line 210
    .local v1, "len":I
    new-array v2, v0, [B

    .line 212
    .local v2, "block":[B
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->forEncryption:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 214
    iget v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_4

    .line 219
    iget v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-le v3, v0, :cond_3

    .line 221
    new-array v3, v0, [B

    .line 223
    .local v3, "lastBlock":[B
    iget v7, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-eq v7, v5, :cond_1

    iget v7, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v7, v4, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v2, v6, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 248
    invoke-static {v2, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v5, v1

    invoke-static {v4, v5, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v3, v6, v3, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 252
    add-int v4, p2, v1

    invoke-static {v3, v6, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 225
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v4, v7, v6, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 227
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v3, v6, v3, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 231
    iget v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v4, v5, :cond_2

    if-ne v1, v0, :cond_2

    .line 233
    invoke-static {v2, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int v4, p2, v0

    invoke-static {v3, v6, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 239
    :cond_2
    invoke-static {v3, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    add-int v4, p2, v0

    invoke-static {v2, v6, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    .end local v3    # "lastBlock":[B
    :goto_1
    goto/16 :goto_6

    .line 257
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v6, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 259
    invoke-static {v2, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6

    .line 216
    :cond_4
    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "need at least one block of input for NISTCTS"

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_5
    iget v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_d

    .line 269
    new-array v3, v0, [B

    .line 271
    .restart local v3    # "lastBlock":[B
    iget v7, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-le v7, v0, :cond_c

    .line 273
    iget v7, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-eq v7, v4, :cond_9

    iget v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v4, v5

    rem-int/2addr v4, v0

    if-eqz v4, :cond_6

    goto :goto_3

    .line 298
    :cond_6
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v4, Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    .line 300
    .local v4, "c":Lorg/bouncycastle/crypto/BlockCipher;
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v7, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v7, v0

    invoke-interface {v4, v5, v7, v3, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 302
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v5, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    if-eq v1, v0, :cond_7

    .line 306
    sub-int v5, v0, v1

    invoke-static {v3, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    :cond_7
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5, v2, v6, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 311
    invoke-static {v2, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-eq v5, v1, :cond_8

    .line 315
    aget-byte v7, v3, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    aget-byte v8, v8, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    .line 313
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 318
    .end local v5    # "i":I
    :cond_8
    add-int v5, p2, v0

    invoke-static {v3, v6, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    .end local v4    # "c":Lorg/bouncycastle/crypto/BlockCipher;
    goto :goto_6

    .line 275
    :cond_9
    :goto_3
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v4, v4, Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    if-eqz v4, :cond_a

    .line 277
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v4, Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/modes/CBCModeCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    .line 279
    .restart local v4    # "c":Lorg/bouncycastle/crypto/BlockCipher;
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 280
    .end local v4    # "c":Lorg/bouncycastle/crypto/BlockCipher;
    goto :goto_4

    .line 283
    :cond_a
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 286
    :goto_4
    move v4, v0

    .local v4, "i":I
    :goto_5
    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-eq v4, v5, :cond_b

    .line 288
    sub-int v5, v4, v0

    sub-int v7, v4, v0

    aget-byte v7, v2, v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    aget-byte v8, v8, v4

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    .line 286
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 291
    .end local v4    # "i":I
    :cond_b
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v2, v6, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 294
    add-int v4, p2, v0

    invoke-static {v3, v6, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 323
    :cond_c
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 325
    invoke-static {v2, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    .end local v3    # "lastBlock":[B
    :goto_6
    iget v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 331
    .local v3, "offset":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->reset()V

    .line 333
    return v3

    .line 266
    .end local v3    # "offset":I
    :cond_d
    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "need at least one block of input for CTS"

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    .end local v0    # "blockSize":I
    .end local v1    # "len":I
    .end local v2    # "block":[B
    :cond_e
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

    .line 82
    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

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

    .line 60
    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 61
    .local v0, "total":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .line 63
    .local v1, "leftOver":I
    if-nez v1, :cond_0

    .line 65
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v0, v2

    return v2

    .line 68
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

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "resultLen":I
    iget v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 106
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    iput v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 113
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

    .line 136
    if-ltz p3, :cond_3

    .line 141
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 142
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 144
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 146
    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 153
    .local v2, "resultLen":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    .line 155
    .local v3, "gapLen":I
    if-le p3, v3, :cond_2

    .line 157
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p4, p5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 160
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 164
    sub-int/2addr p3, v3

    .line 165
    add-int/2addr p2, v3

    .line 167
    :goto_1
    if-le p3, v0, :cond_2

    .line 169
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    add-int v7, p5, v2

    invoke-interface {v4, v5, v6, p4, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 171
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    sub-int/2addr p3, v0

    .line 174
    add-int/2addr p2, v0

    goto :goto_1

    .line 178
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 182
    return v2

    .line 138
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
