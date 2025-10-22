.class public Lorg/bouncycastle/jcajce/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final oneByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "cipher"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->oneByte:[B

    .line 41
    iput-object p2, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, "error":Ljava/io/IOException;
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v1

    .line 115
    .local v1, "outData":[B
    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v1    # "outData":[B
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v3, "Error during cipher finalisation"

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 127
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    :goto_0
    nop

    .line 130
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->flush()V

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 140
    goto :goto_2

    .line 133
    :catch_2
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    if-nez v0, :cond_1

    .line 138
    move-object v0, v1

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 145
    return-void

    .line 143
    :cond_2
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 91
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

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->oneByte:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->write([BII)V

    .line 55
    return-void
.end method

.method public write([BII)V
    .locals 2
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

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    .line 70
    .local v0, "outData":[B
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 74
    :cond_0
    return-void
.end method
