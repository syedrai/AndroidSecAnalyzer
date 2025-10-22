.class public Lorg/bouncycastle/jcajce/io/CipherInputStream;
.super Ljava/io/FilterInputStream;
.source "CipherInputStream.java"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private finalized:Z

.field private final inputBuffer:[B

.field private maxBuf:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "cipher"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->inputBuffer:[B

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    .line 44
    iput-object p2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 45
    return-void
.end method

.method private finaliseCipher()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;
        }
    .end annotation

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v2, "Error finalising cipher"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private nextChunk()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 58
    return v1

    .line 61
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    .line 62
    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    .line 65
    :goto_0
    iget v2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    if-nez v2, :cond_5

    .line 67
    iget-object v2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 68
    .local v2, "read":I
    if-ne v2, v1, :cond_3

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finaliseCipher()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    .line 76
    iget v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    return v0

    .line 73
    :cond_2
    :goto_1
    return v1

    .line 79
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->inputBuffer:[B

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    .line 80
    iget-object v3, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    if-eqz v3, :cond_4

    .line 82
    iget-object v3, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    array-length v3, v3

    iput v3, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    .line 84
    .end local v2    # "read":I
    :cond_4
    goto :goto_0

    .line 85
    :cond_5
    iget v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

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

    .line 178
    iget v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    iget v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finaliseCipher()[B

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    .line 206
    return-void

    .line 198
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finalized:Z

    if-nez v1, :cond_1

    .line 202
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->finaliseCipher()[B

    .line 204
    :cond_1
    throw v0
.end method

.method public mark(I)V
    .locals 0
    .param p1, "readlimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readlimit"
        }
    .end annotation

    .line 210
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 219
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

    .line 119
    iget v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_0

    .line 123
    const/4 v0, -0x1

    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    iget v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

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

    .line 148
    iget v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    iget v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->maxBuf:I

    if-lt v0, v1, :cond_0

    .line 150
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->nextChunk()I

    move-result v0

    if-gez v0, :cond_0

    .line 152
    const/4 v0, -0x1

    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 157
    .local v0, "toSupply":I
    iget-object v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->buf:[B

    iget v2, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    .line 159
    return v0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    return-void
.end method

.method public skip(J)J
    .locals 4
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

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 167
    return-wide v0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/io/CipherInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 171
    .local v1, "skip":I
    iget v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/jcajce/io/CipherInputStream;->bufOff:I

    .line 172
    int-to-long v2, v1

    return-wide v2
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
