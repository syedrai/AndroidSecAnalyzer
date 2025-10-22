.class public Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;
.super Lorg/bouncycastle/crypto/BufferedBlockCipher;
.source "DefaultBufferedBlockCipher.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field protected forEncryption:Z

.field protected mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

.field protected partialBlockOkay:Z

.field protected pgpCFB:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 5
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 44
    instance-of v0, p1, Lorg/bouncycastle/crypto/MultiBlockCipher;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/MultiBlockCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    .line 52
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    .line 55
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 60
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 63
    .local v2, "idx":I
    if-lez v2, :cond_1

    const-string v4, "PGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    .line 65
    iget-boolean v4, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-nez v4, :cond_4

    instance-of v4, p1, Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz v4, :cond_2

    goto :goto_2

    .line 71
    :cond_2
    if-lez v2, :cond_3

    const-string v4, "OpenPGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    goto :goto_3

    .line 67
    :cond_4
    :goto_2
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    .line 73
    :goto_3
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
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

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, "resultLen":I
    :try_start_0
    iget v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-gt v1, v2, :cond_2

    .line 314
    iget v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    if-eqz v1, :cond_1

    .line 316
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 322
    iget v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    move v0, v1

    .line 323
    iput v4, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 324
    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "data not block size aligned"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .restart local p1    # "out":[B
    .restart local p2    # "outOff":I
    :cond_1
    :goto_0
    nop

    .line 331
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 327
    return v0

    .line 311
    :cond_2
    :try_start_1
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short for doFinal()"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    .end local v0    # "resultLen":I
    .restart local p1    # "out":[B
    .restart local p2    # "outOff":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 332
    throw v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 160
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 162
    iget v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0

    .line 166
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
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

    .line 127
    iget v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 130
    .local v0, "total":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->pgpCFB:Z

    if-eqz v1, :cond_1

    .line 132
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .local v1, "leftOver":I
    goto :goto_0

    .line 138
    .end local v1    # "leftOver":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .restart local v1    # "leftOver":I
    goto :goto_0

    .line 143
    .end local v1    # "leftOver":I
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .line 146
    .restart local v1    # "leftOver":I
    :goto_0
    sub-int v2, v0, v1

    return v2
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
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

    .line 99
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->forEncryption:Z

    .line 101
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->reset()V

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 104
    return-void
.end method

.method public processByte(B[BI)I
    .locals 4
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

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "resultLen":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 189
    iget v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 192
    iput v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 195
    :cond_0
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 13
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

    .line 218
    move/from16 v0, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    if-ltz v0, :cond_7

    .line 223
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->getBlockSize()I

    move-result v7

    .line 224
    .local v7, "blockSize":I
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v8

    .line 226
    .local v8, "length":I
    if-lez v8, :cond_1

    .line 228
    add-int v1, v6, v8

    array-length v2, v4

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 235
    .local v1, "resultLen":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    sub-int v9, v2, v3

    .line 237
    .local v9, "gapLen":I
    const/4 v10, 0x0

    if-le v0, v9, :cond_4

    .line 239
    iget-object v2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3, v10, v4, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int v11, v1, v2

    .line 243
    .end local v1    # "resultLen":I
    .local v11, "resultLen":I
    iput v10, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 244
    sub-int v12, v0, v9

    .line 245
    .end local p3    # "len":I
    .local v12, "len":I
    add-int v2, p2, v9

    .line 247
    .end local p2    # "inOff":I
    .local v2, "inOff":I
    iget-object p2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    if-eqz p2, :cond_3

    .line 249
    iget-object p2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p2

    div-int v3, v12, p2

    .line 251
    .local v3, "blockCount":I
    if-lez v3, :cond_2

    .line 253
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    add-int v5, v6, v11

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/MultiBlockCipher;->processBlocks([BII[BI)I

    move-result p2

    move v0, v2

    .end local v2    # "inOff":I
    .local v0, "inOff":I
    add-int/2addr v11, p2

    .line 255
    iget-object p2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->mbCipher:Lorg/bouncycastle/crypto/MultiBlockCipher;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/MultiBlockCipher;->getMultiBlockSize()I

    move-result p2

    mul-int p2, p2, v3

    .line 257
    .local p2, "processed":I
    sub-int/2addr v12, p2

    .line 258
    add-int/2addr v0, p2

    move p2, v0

    move v1, v11

    goto :goto_1

    .line 251
    .end local v0    # "inOff":I
    .end local p2    # "processed":I
    .restart local v2    # "inOff":I
    :cond_2
    move v0, v2

    .end local v2    # "inOff":I
    .restart local v0    # "inOff":I
    move p2, v0

    move v1, v11

    .line 260
    .end local v0    # "inOff":I
    .end local v3    # "blockCount":I
    .end local v11    # "resultLen":I
    .restart local v1    # "resultLen":I
    .local p2, "inOff":I
    :goto_1
    goto :goto_3

    .line 247
    .end local v1    # "resultLen":I
    .end local p2    # "inOff":I
    .restart local v2    # "inOff":I
    .restart local v11    # "resultLen":I
    :cond_3
    move v0, v2

    .end local v2    # "inOff":I
    .restart local v0    # "inOff":I
    move p2, v0

    move v1, v11

    .line 263
    .end local v0    # "inOff":I
    .end local v11    # "resultLen":I
    .restart local v1    # "resultLen":I
    .restart local p2    # "inOff":I
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v0, v0

    if-le v12, v0, :cond_5

    .line 265
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int v3, v6, v1

    invoke-interface {v0, p1, p2, v4, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    add-int/2addr v1, v0

    .line 267
    sub-int/2addr v12, v7

    .line 268
    add-int/2addr p2, v7

    goto :goto_2

    .line 237
    .end local v12    # "len":I
    .restart local p3    # "len":I
    :cond_4
    move v12, v0

    .line 273
    .end local p3    # "len":I
    .restart local v12    # "len":I
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iget v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, v12

    iput v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 277
    iget v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v3, v3

    if-ne v0, v3, :cond_6

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    add-int v5, v6, v1

    invoke-interface {v0, v3, v10, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    add-int/2addr v1, v0

    .line 280
    iput v10, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 283
    :cond_6
    return v1

    .line 220
    .end local v1    # "resultLen":I
    .end local v7    # "blockSize":I
    .end local v8    # "length":I
    .end local v9    # "gapLen":I
    .end local v12    # "len":I
    .restart local p3    # "len":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a negative input length!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 3

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 346
    iget-object v1, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->buf:[B

    aput-byte v2, v1, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_0
    iput v2, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->bufOff:I

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 355
    return-void
.end method
