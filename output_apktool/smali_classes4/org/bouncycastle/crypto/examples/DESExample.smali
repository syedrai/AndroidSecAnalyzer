.class public Lorg/bouncycastle/crypto/examples/DESExample;
.super Ljava/lang/Object;
.source "DESExample.java"


# instance fields
.field private cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

.field private encrypt:Z

.field private in:Ljava/io/BufferedInputStream;

.field private key:[B

.field private out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 63
    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    .line 66
    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    .line 69
    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "infile"    # Ljava/lang/String;
    .param p2, "outfile"    # Ljava/lang/String;
    .param p3, "keyfile"    # Ljava/lang/String;
    .param p4, "encrypt"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "infile",
            "outfile",
            "keyfile",
            "encrypt"
        }
    .end annotation

    .line 119
    const-string v0, "]"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 63
    iput-object v2, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    .line 66
    iput-object v2, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    .line 69
    iput-object v2, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    .line 128
    iput-boolean p4, p0, Lorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    .line 131
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    .line 137
    .local v2, "fnf":Ljava/io/FileNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input file not found ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 143
    .end local v2    # "fnf":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    goto :goto_1

    .line 145
    :catch_1
    move-exception v2

    .line 149
    .local v2, "fnf":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output file not created ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 153
    .end local v2    # "fnf":Ljava/io/IOException;
    :goto_1
    const/4 v2, 0x0

    if-eqz p4, :cond_0

    .line 165
    const/4 v3, 0x0

    .line 168
    .local v3, "sr":Ljava/security/SecureRandom;
    :try_start_2
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    move-object v3, v4

    .line 183
    const-string/jumbo v4, "www.bouncycastle.org"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 192
    goto :goto_2

    .line 220
    .end local v3    # "sr":Ljava/security/SecureRandom;
    :catch_2
    move-exception v2

    goto :goto_3

    .line 185
    .restart local v3    # "sr":Ljava/security/SecureRandom;
    :catch_3
    move-exception v4

    .line 189
    .local v4, "nsa":Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Hmmm, no SHA1PRNG, you need the Sun implementation"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 193
    .end local v4    # "nsa":Ljava/lang/Exception;
    :goto_2
    new-instance v4, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    const/16 v5, 0xc0

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 200
    .local v4, "kgp":Lorg/bouncycastle/crypto/KeyGenerationParameters;
    new-instance v5, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    .line 201
    .local v5, "kg":Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;
    invoke-virtual {v5, v4}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 206
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->generateKey()[B

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    .line 213
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    .local v6, "keystream":Ljava/io/BufferedOutputStream;
    iget-object v7, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    .line 216
    .local v7, "keyhex":[B
    array-length v8, v7

    invoke-virtual {v6, v7, v2, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 217
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 218
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v3    # "sr":Ljava/security/SecureRandom;
    .end local v4    # "kgp":Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .end local v5    # "kg":Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;
    .end local v6    # "keystream":Ljava/io/BufferedOutputStream;
    .end local v7    # "keyhex":[B
    goto :goto_4

    .line 224
    .local v2, "createKey":Ljava/io/IOException;
    :goto_3
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decryption create key file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 227
    .end local v2    # "createKey":Ljava/io/IOException;
    :goto_4
    goto :goto_5

    .line 234
    :cond_0
    :try_start_4
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 236
    .local v3, "keystream":Ljava/io/BufferedInputStream;
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->available()I

    move-result v4

    .line 237
    .local v4, "len":I
    new-array v5, v4, [B

    .line 238
    .local v5, "keyhex":[B
    invoke-virtual {v3, v5, v2, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 239
    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->decode([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 248
    .end local v3    # "keystream":Ljava/io/BufferedInputStream;
    .end local v4    # "len":I
    .end local v5    # "keyhex":[B
    goto :goto_5

    .line 241
    :catch_4
    move-exception v2

    .line 245
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decryption key file not found, or not valid ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 250
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_5
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    .line 77
    .local v0, "encrypt":Z
    const/4 v1, 0x0

    .line 78
    .local v1, "infile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, "outfile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 81
    .local v3, "keyfile":Ljava/lang/String;
    array-length v4, p0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v4, v6, :cond_0

    .line 83
    new-instance v4, Lorg/bouncycastle/crypto/examples/DESExample;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/examples/DESExample;-><init>()V

    .line 85
    .local v4, "de":Lorg/bouncycastle/crypto/examples/DESExample;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Usage: java "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " infile outfile [keyfile]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 91
    .end local v4    # "de":Lorg/bouncycastle/crypto/examples/DESExample;
    :cond_0
    const-string v3, "deskey.dat"

    .line 92
    const/4 v4, 0x0

    aget-object v1, p0, v4

    .line 93
    aget-object v2, p0, v5

    .line 95
    array-length v4, p0

    if-le v4, v6, :cond_1

    .line 97
    const/4 v0, 0x0

    .line 98
    aget-object v3, p0, v6

    .line 101
    :cond_1
    new-instance v4, Lorg/bouncycastle/crypto/examples/DESExample;

    invoke-direct {v4, v1, v2, v3, v0}, Lorg/bouncycastle/crypto/examples/DESExample;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    .restart local v4    # "de":Lorg/bouncycastle/crypto/examples/DESExample;
    invoke-direct {v4}, Lorg/bouncycastle/crypto/examples/DESExample;->process()V

    .line 103
    return-void
.end method

.method private performDecrypt([B)V
    .locals 14
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 382
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v0

    .line 390
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 391
    .local v0, "inblock":[B
    const/4 v3, 0x0

    .line 392
    .local v3, "outblock":[B
    const/4 v4, 0x0

    move-object v13, v3

    move-object v3, v0

    move-object v0, v4

    move-object v4, v13

    .line 393
    .local v0, "rv":Ljava/lang/String;
    .local v3, "inblock":[B
    .local v4, "outblock":[B
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .end local v0    # "rv":Ljava/lang/String;
    .local v6, "rv":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 395
    invoke-static {v6}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    move-object v8, v0

    .line 396
    .end local v3    # "inblock":[B
    .local v8, "inblock":[B
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    array-length v3, v8

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v11, v0, [B

    .line 398
    .end local v4    # "outblock":[B
    .local v11, "outblock":[B
    iget-object v7, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    array-length v10, v8

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    .line 404
    .local v0, "outL":I
    if-lez v0, :cond_0

    .line 406
    iget-object v3, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3, v11, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 393
    .end local v0    # "outL":I
    :cond_0
    move-object v0, v6

    move-object v3, v8

    move-object v4, v11

    goto :goto_0

    .line 416
    .end local v8    # "inblock":[B
    .end local v11    # "outblock":[B
    .restart local v3    # "inblock":[B
    .restart local v4    # "outblock":[B
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0, v4, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I

    move-result v0

    .line 417
    .restart local v0    # "outL":I
    if-lez v0, :cond_2

    .line 419
    iget-object v5, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5, v4, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    :cond_2
    goto :goto_1

    .line 422
    .end local v0    # "outL":I
    :catch_0
    move-exception v0

    .line 430
    .end local v3    # "inblock":[B
    .end local v4    # "outblock":[B
    .end local v6    # "rv":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 427
    :catch_1
    move-exception v0

    .line 429
    .local v0, "ioeread":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 431
    .end local v0    # "ioeread":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private performEncrypt([B)V
    .locals 12
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 312
    const/16 v1, 0x2f

    .line 313
    .local v1, "inBlockSize":I
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getOutputSize(I)I

    move-result v2

    .line 315
    .local v2, "outBlockSize":I
    new-array v4, v1, [B

    .line 316
    .local v4, "inblock":[B
    new-array v7, v2, [B

    .line 325
    .local v7, "outblock":[B
    const/4 v0, 0x0

    move-object v9, v0

    .line 326
    .local v9, "rv":[B
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v10, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    move v0, v6

    .local v6, "inL":I
    const/16 v11, 0xa

    if-lez v0, :cond_1

    .line 328
    iget-object v3, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    .line 333
    .local v0, "outL":I
    if-lez v0, :cond_0

    .line 335
    invoke-static {v7, v10, v0}, Lorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v3

    move-object v9, v3

    .line 336
    iget-object v3, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    array-length v5, v9

    invoke-virtual {v3, v9, v10, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 337
    iget-object v3, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3, v11}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 347
    .end local v0    # "outL":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0, v7, v10}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I

    move-result v0

    .line 348
    .restart local v0    # "outL":I
    if-lez v0, :cond_2

    .line 350
    invoke-static {v7, v10, v0}, Lorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v3

    move-object v9, v3

    .line 351
    iget-object v3, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    array-length v5, v9

    invoke-virtual {v3, v9, v10, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 352
    iget-object v3, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3, v11}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    :cond_2
    goto :goto_1

    .line 355
    .end local v0    # "outL":I
    :catch_0
    move-exception v0

    .line 363
    .end local v6    # "inL":I
    .end local v9    # "rv":[B
    :goto_1
    goto :goto_2

    .line 360
    :catch_1
    move-exception v0

    .line 362
    .local v0, "ioeread":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 364
    .end local v0    # "ioeread":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private process()V
    .locals 5

    .line 258
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->cipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 268
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->encrypt:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/examples/DESExample;->performEncrypt([B)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->key:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/examples/DESExample;->performDecrypt([B)V

    .line 280
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 281
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 282
    iget-object v0, p0, Lorg/bouncycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 287
    .local v0, "closing":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception closing resources: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    .end local v0    # "closing":Ljava/io/IOException;
    :goto_1
    return-void
.end method
