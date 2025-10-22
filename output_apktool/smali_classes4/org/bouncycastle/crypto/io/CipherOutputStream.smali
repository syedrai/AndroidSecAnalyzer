.class public Lorg/bouncycastle/crypto/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field private buf:[B

.field private bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private final oneByte:[B

.field private streamCipher:Lorg/bouncycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/BufferedBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "os",
            "cipher"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/StreamCipher;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/StreamCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "os",
            "cipher"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    .line 52
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "cipher"    # Lorg/bouncycastle/crypto/modes/AEADBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "os",
            "cipher"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    .line 61
    iput-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    .line 62
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

    .line 157
    move v0, p1

    .line 158
    .local v0, "bufLen":I
    if-eqz p2, :cond_1

    .line 160
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    goto :goto_0

    .line 175
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    .line 181
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    array-length v1, v1

    if-ge v1, v0, :cond_5

    .line 183
    :cond_4
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    .line 185
    :cond_5
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->ensureCapacity(IZ)V

    .line 227
    const/4 v0, 0x0

    .line 230
    .local v0, "error":Ljava/io/IOException;
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v2

    .line 234
    .local v2, "outLen":I
    if-eqz v2, :cond_0

    .line 236
    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 238
    .end local v2    # "outLen":I
    :cond_0
    goto :goto_0

    .line 239
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v2, :cond_3

    .line 241
    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-interface {v2, v3, v1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v2

    .line 243
    .restart local v2    # "outLen":I
    if-eqz v2, :cond_2

    .line 245
    iget-object v3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 247
    .end local v2    # "outLen":I
    :cond_2
    goto :goto_0

    .line 248
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz v1, :cond_4

    .line 250
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/StreamCipher;->reset()V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/crypto/io/CipherIOException;

    const-string v3, "Error closing stream: "

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/io/CipherIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1

    .line 253
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 255
    .local v1, "e":Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v2, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v3, "Error finalising cipher data"

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 260
    .end local v1    # "e":Lorg/bouncycastle/crypto/InvalidCipherTextException;
    :cond_4
    :goto_0
    nop

    .line 264
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->flush()V

    .line 265
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 274
    goto :goto_2

    .line 267
    :catch_2
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    if-nez v0, :cond_5

    .line 272
    move-object v0, v1

    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 279
    return-void

    .line 277
    :cond_6
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 204
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
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

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    int-to-byte v2, p1

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/StreamCipher;->returnByte(B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->write([BII)V

    .line 84
    :goto_0
    return-void
.end method

.method public write([B)V
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

    .line 103
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->write([BII)V

    .line 104
    return-void
.end method

.method public write([BII)V
    .locals 8
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

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/crypto/io/CipherOutputStream;->ensureCapacity(IZ)V

    .line 123
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_1

    .line 125
    iget-object v2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->bufferedBlockCipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v6, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    .local v3, "b":[B
    .local v4, "off":I
    .local v5, "len":I
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    .line 127
    move-object v2, v3

    move v3, v4

    move v4, v5

    .end local v5    # "len":I
    .local v2, "b":[B
    .local v3, "off":I
    .local v4, "len":I
    .local p1, "outLen":I
    if-eqz p1, :cond_0

    .line 129
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object p3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {p2, p3, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 131
    .end local p1    # "outLen":I
    :cond_0
    goto :goto_0

    .line 132
    .end local v2    # "b":[B
    .end local v3    # "off":I
    .end local v4    # "len":I
    .local p1, "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_1
    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    .restart local v2    # "b":[B
    .restart local v3    # "off":I
    .restart local v4    # "len":I
    iget-object p1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz p1, :cond_3

    .line 134
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->aeadBlockCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result p1

    .line 136
    .local p1, "outLen":I
    if-eqz p1, :cond_2

    .line 138
    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object p3, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {p2, p3, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 140
    .end local p1    # "outLen":I
    :cond_2
    goto :goto_0

    .line 143
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->streamCipher:Lorg/bouncycastle/crypto/StreamCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 145
    iget-object p1, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lorg/bouncycastle/crypto/io/CipherOutputStream;->buf:[B

    invoke-virtual {p1, p2, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 147
    :goto_0
    return-void
.end method
