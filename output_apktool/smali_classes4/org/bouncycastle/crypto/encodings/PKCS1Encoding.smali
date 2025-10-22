.class public Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs1.not_strict"

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs1.strict"


# instance fields
.field private blockBuffer:[B

.field private engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private fallback:[B

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private pLen:I

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;I)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "pLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "pLen"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 69
    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 71
    iput p2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;[B)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "fallback"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "fallback"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 85
    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 86
    invoke-direct {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 87
    iput-object p2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 88
    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 89
    return-void
.end method

.method private static checkPkcs1Encoding1([B)I
    .locals 8
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "foundZeroMask":I
    const/4 v1, 0x0

    .line 244
    .local v1, "lastPadPos":I
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    .line 247
    .local v2, "badPadSign":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 249
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 250
    .local v4, "padByte":I
    xor-int/lit8 v5, v4, 0x0

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 251
    .local v5, "is0x00Mask":I
    xor-int/lit16 v6, v4, 0xff

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    .line 252
    .local v6, "is0xFFMask":I
    not-int v7, v0

    and-int/2addr v7, v3

    and-int/2addr v7, v5

    xor-int/2addr v1, v7

    .line 253
    or-int/2addr v0, v5

    .line 254
    or-int v7, v0, v6

    not-int v7, v7

    or-int/2addr v2, v7

    .line 247
    .end local v4    # "padByte":I
    .end local v5    # "is0x00Mask":I
    .end local v6    # "is0xFFMask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v1, -0x9

    or-int/2addr v2, v3

    .line 260
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    .line 261
    .local v3, "plaintextLength":I
    shr-int/lit8 v4, v2, 0x1f

    or-int/2addr v4, v3

    return v4
.end method

.method private static checkPkcs1Encoding2([B)I
    .locals 7
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "foundZeroMask":I
    const/4 v1, 0x0

    .line 273
    .local v1, "lastPadPos":I
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    .line 276
    .local v2, "badPadSign":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 278
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 279
    .local v4, "padByte":I
    xor-int/lit8 v5, v4, 0x0

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 280
    .local v5, "is0x00Mask":I
    not-int v6, v0

    and-int/2addr v6, v3

    and-int/2addr v6, v5

    xor-int/2addr v1, v6

    .line 281
    or-int/2addr v0, v5

    .line 276
    .end local v4    # "padByte":I
    .end local v5    # "is0x00Mask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v1, -0x9

    or-int/2addr v2, v3

    .line 287
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    .line 288
    .local v3, "plaintextLength":I
    shr-int/lit8 v4, v2, 0x1f

    or-int/2addr v4, v3

    return v4
.end method

.method private static checkPkcs1Encoding2([BI)I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "plaintextLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "plaintextLength"
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    xor-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    .line 300
    .local v0, "badPadSign":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    .line 303
    .local v1, "lastPadPos":I
    add-int/lit8 v2, v1, -0x9

    or-int/2addr v0, v2

    .line 306
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 308
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x1

    or-int/2addr v0, v3

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v2    # "i":I
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    neg-int v2, v2

    or-int/2addr v0, v2

    .line 314
    shr-int/lit8 v2, v0, 0x1f

    return v2
.end method

.method private decodeBlock([BII)[B
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 386
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 388
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object v0

    return-object v0

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 392
    .local v0, "strictBlockSize":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 394
    .local v1, "block":[B
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v3

    .line 396
    .local v2, "incorrectLength":Z
    move-object v3, v1

    .line 397
    .local v3, "data":[B
    array-length v5, v1

    if-ge v5, v0, :cond_2

    .line 399
    iget-object v3, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 402
    :cond_2
    iget-boolean v5, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v5, :cond_3

    invoke-static {v3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding2([B)I

    move-result v5

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding1([B)I

    move-result v5

    .line 406
    .local v5, "plaintextLength":I
    :goto_1
    if-ltz v5, :cond_5

    .line 410
    if-nez v2, :cond_4

    .line 415
    :try_start_0
    new-array v6, v5, [B

    .line 416
    .local v6, "result":[B
    array-length v7, v3

    sub-int/2addr v7, v5

    invoke-static {v3, v7, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    nop

    .line 421
    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 422
    iget-object v7, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    array-length v8, v8

    array-length v9, v1

    sub-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v4, v8, v4}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 417
    return-object v6

    .line 412
    .end local v6    # "result":[B
    :cond_4
    :try_start_1
    new-instance v6, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "block incorrect size"

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .end local v0    # "strictBlockSize":I
    .end local v1    # "block":[B
    .end local v2    # "incorrectLength":Z
    .end local v3    # "data":[B
    .end local v5    # "plaintextLength":I
    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "inLen":I
    throw v6

    .line 408
    .restart local v0    # "strictBlockSize":I
    .restart local v1    # "block":[B
    .restart local v2    # "incorrectLength":Z
    .restart local v3    # "data":[B
    .restart local v5    # "plaintextLength":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "inLen":I
    :cond_5
    new-instance v6, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "block incorrect"

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .end local v0    # "strictBlockSize":I
    .end local v1    # "block":[B
    .end local v2    # "incorrectLength":Z
    .end local v3    # "data":[B
    .end local v5    # "plaintextLength":I
    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "inLen":I
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    .restart local v0    # "strictBlockSize":I
    .restart local v1    # "block":[B
    .restart local v2    # "incorrectLength":Z
    .restart local v3    # "data":[B
    .restart local v5    # "plaintextLength":I
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "inLen":I
    :catchall_0
    move-exception v6

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 422
    iget-object v7, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    array-length v8, v8

    array-length v9, v1

    sub-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v4, v8, v4}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 423
    throw v6
.end method

.method private decodeBlockOrRandom([BII)[B
    .locals 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 330
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_4

    .line 335
    iget v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 337
    .local v0, "plaintextLength":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 338
    .local v1, "random":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v2, :cond_0

    .line 340
    new-array v1, v0, [B

    .line 341
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 344
    :cond_0
    const/4 v2, 0x0

    .line 345
    .local v2, "badPadMask":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v3

    .line 346
    .local v3, "strictBlockSize":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    .line 348
    .local v4, "block":[B
    move-object v5, v4

    .line 349
    .local v5, "data":[B
    array-length v6, v4

    if-eq v6, v3, :cond_2

    .line 351
    iget-boolean v6, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-nez v6, :cond_1

    array-length v6, v4

    if-ge v6, v3, :cond_2

    .line 353
    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 357
    :cond_2
    invoke-static {v5, v0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding2([BI)I

    move-result v6

    or-int/2addr v2, v6

    .line 363
    array-length v6, v5

    sub-int/2addr v6, v0

    .line 364
    .local v6, "dataOff":I
    new-array v7, v0, [B

    .line 365
    .local v7, "result":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_3

    .line 367
    add-int v9, v6, v8

    aget-byte v9, v5, v9

    not-int v10, v2

    and-int/2addr v9, v10

    aget-byte v10, v1, v8

    and-int/2addr v10, v2

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 365
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 370
    .end local v8    # "i":I
    :cond_3
    const/4 v8, 0x0

    invoke-static {v4, v8}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 371
    iget-object v9, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget-object v10, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    array-length v10, v10

    array-length v11, v4

    sub-int/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v8, v10, v8}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 373
    return-object v7

    .line 332
    .end local v0    # "plaintextLength":I
    .end local v1    # "random":[B
    .end local v2    # "badPadMask":I
    .end local v3    # "strictBlockSize":I
    .end local v4    # "block":[B
    .end local v5    # "data":[B
    .end local v6    # "dataOff":I
    .end local v7    # "result":[B
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encodeBlock([BII)[B
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_4

    .line 199
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 201
    .local v0, "block":[B
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 203
    aput-byte v3, v0, v2

    .line 205
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_0

    .line 207
    const/4 v4, -0x1

    aput-byte v4, v0, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_3

    .line 212
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 214
    const/4 v1, 0x2

    aput-byte v1, v0, v2

    .line 220
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_3

    .line 222
    :goto_2
    aget-byte v4, v0, v1

    if-nez v4, :cond_2

    .line 224
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_2

    .line 220
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    .end local v1    # "i":I
    :cond_3
    :goto_3
    array-length v1, v0

    sub-int/2addr v1, p3

    sub-int/2addr v1, v3

    aput-byte v2, v0, v1

    .line 230
    array-length v1, v0

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    return-object v1

    .line 196
    .end local v0    # "block":[B
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private useStrict()Z
    .locals 3

    .line 97
    const-string v0, "org.bouncycastle.pkcs1.not_strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 99
    return v2

    .line 102
    :cond_0
    const-string v0, "org.bouncycastle.pkcs1.strict"

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 148
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 150
    add-int/lit8 v1, v0, -0xa

    return v1

    .line 154
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 162
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 164
    return v0

    .line 168
    :cond_0
    add-int/lit8 v1, v0, -0xa

    return v1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "param"
        }
    .end annotation

    .line 116
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 118
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 120
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 121
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 122
    .local v0, "kParam":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 125
    .end local v0    # "kParam":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 126
    .restart local v0    # "kParam":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 128
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 132
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 134
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 135
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 136
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 138
    iget v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "encoder requires random"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_3
    :goto_1
    return-void
.end method

.method public processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 178
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
