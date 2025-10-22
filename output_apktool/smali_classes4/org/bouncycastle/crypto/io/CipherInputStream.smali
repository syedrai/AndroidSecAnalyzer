.class public Lorg/bouncycastle/crypto/io/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# static fields
.field private static final INPUT_BUF_SIZE:I = 0x800


# instance fields
.field private aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field private buf:[B

.field private bufOff:I

.field private bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private finalized:Z

.field private inBuf:[B

.field private markBuf:[B

.field private markBufOff:I

.field private markPosition:J

.field private maxBuf:I

.field private skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

.field private streamCipher:Lorg/bouncycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "cipher"
        }
    .end annotation

    .line 53
    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .param p3, "bufSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "is",
            "cipher",
            "bufSize"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 88
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    .line 89
    instance-of v0, p2, Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/SkippingCipher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/StreamCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "cipher"
        }
    .end annotation

    .line 63
    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/StreamCipher;
    .param p3, "bufSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "is",
            "cipher",
            "bufSize"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    .line 103
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    .line 104
    instance-of v0, p2, Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/SkippingCipher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "cipher"
        }
    .end annotation

    .line 73
    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .param p3, "bufSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "is",
            "cipher",
            "bufSize"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 117
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 118
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    .line 119
    instance-of v0, p2, Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/SkippingCipher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    .line 120
    return-void
.end method

.method private ensureCapacity(IZ)V
    .locals 2
    .param p1, "updateSize"    # I
    .param p2, "finalOutput"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "updateSize",
            "finalOutput"
        }
    .end annotation

    .line 342
    move v0, p1

    .line 343
    .local v0, "bufLen":I
    if-eqz p2, :cond_1

    .line 345
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    goto :goto_0

    .line 349
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_3

    .line 351
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    goto :goto_0

    .line 356
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    goto :goto_0

    .line 360
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_3

    .line 362
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    .line 366
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    array-length v1, v1

    if-ge v1, v0, :cond_5

    .line 368
    :cond_4
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    .line 370
    :cond_5
    return-void
.end method

.method private finaliseCipher()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    .line 184
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->ensureCapacity(IZ)V

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_0

    .line 195
    :cond_1
    iput v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    nop

    .line 206
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error finalising cipher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v1, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v2, "Error finalising cipher"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private nextChunk()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 133
    return v1

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 137
    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    .line 140
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-nez v2, :cond_5

    .line 142
    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 143
    .local v7, "read":I
    if-ne v7, v1, :cond_2

    .line 145
    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    .line 146
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-nez v0, :cond_1

    .line 148
    return v1

    .line 150
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    return v0

    .line 155
    :cond_2
    :try_start_0
    invoke-direct {p0, v7, v0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->ensureCapacity(IZ)V

    .line 156
    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v2, :cond_3

    .line 158
    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_1

    .line 160
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v2, :cond_4

    .line 162
    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v9}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    goto :goto_1

    .line 166
    :cond_4
    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v9}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 167
    iput v7, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    nop

    .line 174
    .end local v7    # "read":I
    goto :goto_0

    .line 170
    .restart local v7    # "read":I
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/crypto/io/CipherIOException;

    const-string v2, "Error processing stream "

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/CipherIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "read":I
    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    .line 395
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    .line 396
    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBufOff:I

    .line 397
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markPosition:J

    .line 398
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 401
    iput-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    .line 403
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 406
    iput-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    .line 408
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->inBuf:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 409
    return-void

    .line 388
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->finalized:Z

    if-nez v1, :cond_3

    .line 392
    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->finaliseCipher()V

    .line 394
    :cond_3
    throw v0
.end method

.method public mark(I)V
    .locals 4
    .param p1, "readlimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readlimit"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 422
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SkippingCipher;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markPosition:J

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    .line 430
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBufOff:I

    .line 434
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 469
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0

    .line 474
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_0

    .line 223
    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_0

    .line 225
    const/4 v0, -0x1

    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/io/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_0

    .line 275
    invoke-direct {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_0

    .line 277
    const/4 v0, -0x1

    return v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 282
    .local v0, "toSupply":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 284
    return v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 451
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    iget-wide v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markPosition:J

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/SkippingCipher;->seekTo(J)J

    .line 453
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBuf:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->buf:[B

    .line 458
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->markBufOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 459
    return-void

    .line 446
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cipher must implement SkippingCipher to be used with reset()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 293
    return-wide v0

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    .line 299
    .local v0, "avail":I
    int-to-long v1, v0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    .line 301
    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 303
    return-wide p1

    .line 306
    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->maxBuf:I

    iput v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 308
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->in:Ljava/io/InputStream;

    int-to-long v2, v0

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 310
    .local v1, "skip":J
    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->skippingCipher:Lorg/bouncycastle/crypto/SkippingCipher;

    invoke-interface {v3, v1, v2}, Lorg/bouncycastle/crypto/SkippingCipher;->skip(J)J

    move-result-wide v3

    .line 312
    .local v3, "cSkip":J
    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 317
    int-to-long v5, v0

    add-long/2addr v5, v1

    return-wide v5

    .line 314
    :cond_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to skip cipher "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    .end local v0    # "avail":I
    .end local v1    # "skip":J
    .end local v3    # "cSkip":J
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 322
    .local v1, "skip":I
    iget v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/io/CipherInputStream;->bufOff:I

    .line 324
    int-to-long v2, v1

    return-wide v2
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
