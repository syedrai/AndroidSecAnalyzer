.class public Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;
.super Ljava/lang/Object;
.source "ISO9796d2Signer.java"

# interfaces
.implements Lorg/bouncycastle/crypto/SignerWithRecovery;


# static fields
.field public static final TRAILER_IMPLICIT:I = 0xbc

.field public static final TRAILER_RIPEMD128:I = 0x32cc

.field public static final TRAILER_RIPEMD160:I = 0x31cc

.field public static final TRAILER_SHA1:I = 0x33cc

.field public static final TRAILER_SHA256:I = 0x34cc

.field public static final TRAILER_SHA384:I = 0x36cc

.field public static final TRAILER_SHA512:I = 0x35cc

.field public static final TRAILER_WHIRLPOOL:I = 0x37cc


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private fullMessage:Z

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private preBlock:[B

.field private preSig:[B

.field private recoveredMessage:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest"
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V
    .locals 5
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "implicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest",
            "implicit"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 62
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 64
    if-eqz p3, :cond_0

    .line 66
    const/16 v0, 0xbc

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v0

    .line 72
    .local v0, "trailerObj":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    .line 81
    .end local v0    # "trailerObj":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 78
    .restart local v0    # "trailerObj":Ljava/lang/Integer;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no valid trailer for digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "block"
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 171
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private isSameAs([B[B)Z
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 127
    const/4 v0, 0x1

    .line 129
    .local v0, "isOkay":Z
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    array-length v2, p2

    if-le v1, v2, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 136
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-eq v1, v2, :cond_2

    .line 138
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    .line 140
    const/4 v0, 0x0

    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 146
    :cond_3
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 148
    const/4 v0, 0x0

    .line 151
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p2

    if-eq v1, v2, :cond_6

    .line 153
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_5

    .line 155
    const/4 v0, 0x0

    .line 151
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    .end local v1    # "i":I
    :cond_6
    :goto_2
    return v0
.end method

.method private returnFalse([B)Z
    .locals 2
    .param p1, "block"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "block"
        }
    .end annotation

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 601
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 602
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 604
    return v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 340
    .local v0, "digSize":I
    const/4 v1, 0x0

    .line 341
    .local v1, "t":I
    const/4 v2, 0x0

    .line 343
    .local v2, "delta":I
    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v4, 0xbc

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 345
    const/16 v1, 0x8

    .line 346
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v5

    .line 347
    .end local v2    # "delta":I
    .local v3, "delta":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 348
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v4, v4

    sub-int/2addr v4, v5

    const/16 v6, -0x44

    aput-byte v6, v2, v4

    goto :goto_0

    .line 352
    .end local v3    # "delta":I
    .restart local v2    # "delta":I
    :cond_0
    const/16 v1, 0x10

    .line 353
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x2

    .line 354
    .end local v2    # "delta":I
    .restart local v3    # "delta":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 355
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 356
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v4, v4

    sub-int/2addr v4, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 359
    :goto_0
    const/4 v2, 0x0

    .line 360
    .local v2, "header":B
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x4

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    sub-int/2addr v4, v6

    .line 362
    .local v4, "x":I
    const/4 v6, 0x0

    if-lez v4, :cond_1

    .line 364
    iget v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v8, v4, 0x7

    div-int/lit8 v8, v8, 0x8

    sub-int/2addr v7, v8

    .line 365
    .local v7, "mR":I
    const/16 v2, 0x60

    .line 367
    sub-int/2addr v3, v7

    .line 369
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-static {v8, v6, v9, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    new-array v8, v7, [B

    iput-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 372
    .end local v7    # "mR":I
    goto :goto_1

    .line 375
    :cond_1
    const/16 v2, 0x40

    .line 376
    iget v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int/2addr v3, v7

    .line 378
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    invoke-static {v7, v6, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iget v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 383
    :goto_1
    add-int/lit8 v7, v3, -0x1

    if-lez v7, :cond_3

    .line 385
    add-int/lit8 v7, v3, -0x1

    .local v7, "i":I
    :goto_2
    if-eqz v7, :cond_2

    .line 387
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, -0x45

    aput-byte v9, v8, v7

    .line 385
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 389
    .end local v7    # "i":I
    :cond_2
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    add-int/lit8 v8, v3, -0x1

    aget-byte v9, v7, v8

    xor-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 390
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v8, 0xb

    aput-byte v8, v7, v6

    .line 391
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v8, v7, v6

    or-int/2addr v8, v2

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    goto :goto_3

    .line 395
    :cond_3
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v8, 0xa

    aput-byte v8, v7, v6

    .line 396
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v8, v7, v6

    or-int/2addr v8, v2

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    .line 399
    :goto_3
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    invoke-interface {v7, v8, v6, v9}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v7

    .line 401
    .local v7, "b":[B
    and-int/lit8 v8, v2, 0x20

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 402
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v9, v9

    invoke-static {v5, v6, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iput v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 406
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 407
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 409
    return-object v7
.end method

.method public getRecoveredMessage()[B
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .locals 1

    .line 615
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "param"
        }
    .end annotation

    .line 100
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 102
    .local v0, "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 104
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    .line 106
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    .line 108
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v2, 0xbc

    if-ne v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    .line 117
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->reset()V

    .line 118
    return-void
.end method

.method public reset()V
    .locals 2

    .line 311
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 313
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 315
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 320
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 321
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 323
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-eqz v0, :cond_1

    .line 325
    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 326
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 327
    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 329
    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 279
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    aput-byte p1, v0, v1

    .line 284
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 285
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "off",
            "len"
        }
    .end annotation

    .line 295
    nop

    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 297
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->update(B)V

    .line 298
    add-int/lit8 p2, p2, 0x1

    .line 299
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 303
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 304
    return-void
.end method

.method public updateWithRecoveredMessage([B)V
    .locals 8
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 180
    .local v0, "block":[B
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xc0

    xor-int/lit8 v1, v1, 0x40

    const-string v3, "malformed signature"

    if-nez v1, :cond_9

    .line 185
    array-length v1, v0

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    xor-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_8

    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "delta":I
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    xor-int/lit16 v3, v3, 0xbc

    if-nez v3, :cond_0

    .line 194
    const/4 v1, 0x1

    goto :goto_1

    .line 198
    :cond_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    array-length v5, v0

    sub-int/2addr v5, v4

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    .line 199
    .local v3, "sigTrail":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v5}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v5

    .line 201
    .local v5, "trailerObj":Ljava/lang/Integer;
    if-eqz v5, :cond_7

    .line 203
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 204
    .local v6, "trailer":I
    if-eq v3, v6, :cond_2

    .line 206
    const/16 v7, 0x3acc

    if-ne v6, v7, :cond_1

    const/16 v7, 0x40cc

    if-ne v3, v7, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "signer initialised with wrong digest for trailer "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    .end local v6    # "trailer":I
    :cond_2
    :goto_0
    nop

    .line 217
    const/4 v1, 0x2

    .line 223
    .end local v3    # "sigTrail":I
    .end local v5    # "trailerObj":Ljava/lang/Integer;
    :goto_1
    const/4 v3, 0x0

    .line 225
    .local v3, "mStart":I
    const/4 v3, 0x0

    :goto_2
    array-length v5, v0

    if-eq v3, v5, :cond_4

    .line 227
    aget-byte v5, v0, v3

    and-int/lit8 v5, v5, 0xf

    xor-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_3

    .line 229
    goto :goto_3

    .line 225
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 233
    :cond_4
    :goto_3
    add-int/2addr v3, v4

    .line 235
    array-length v5, v0

    sub-int/2addr v5, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    sub-int/2addr v5, v6

    .line 240
    .local v5, "off":I
    sub-int v6, v5, v3

    if-lez v6, :cond_6

    .line 248
    aget-byte v6, v0, v2

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_5

    .line 250
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 252
    sub-int v4, v5, v3

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 253
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v6, v6

    invoke-static {v0, v3, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 257
    :cond_5
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 259
    sub-int v4, v5, v3

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 260
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v6, v6

    invoke-static {v0, v3, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    :goto_4
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 264
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 266
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v7, v7

    invoke-interface {v4, v6, v2, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 267
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v4, v4

    iput v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 268
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v7, v7

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    return-void

    .line 242
    :cond_6
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v4, "malformed block"

    invoke-direct {v2, v4}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .local v3, "sigTrail":I
    .local v5, "trailerObj":Ljava/lang/Integer;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "unrecognised hash in signature"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    .end local v1    # "delta":I
    .end local v3    # "sigTrail":I
    .end local v5    # "trailerObj":Ljava/lang/Integer;
    :cond_8
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_9
    new-instance v1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public verifySignature([B)Z
    .locals 12
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, "block":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 425
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v0    # "block":[B
    .local v1, "block":[B
    goto :goto_0

    .line 427
    .end local v1    # "block":[B
    .restart local v0    # "block":[B
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    return v2

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    invoke-static {v1, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 439
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 441
    .end local v0    # "block":[B
    .local v1, "block":[B
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 442
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 445
    :goto_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xc0

    xor-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 447
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v0

    return v0

    .line 450
    :cond_1
    array-length v0, v1

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0xf

    xor-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_2

    .line 452
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v0

    return v0

    .line 455
    :cond_2
    const/4 v0, 0x0

    .line 457
    .local v0, "delta":I
    array-length v4, v1

    sub-int/2addr v4, v3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    xor-int/lit16 v4, v4, 0xbc

    if-nez v4, :cond_3

    .line 459
    const/4 v0, 0x1

    goto :goto_2

    .line 463
    :cond_3
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    array-length v5, v1

    sub-int/2addr v5, v3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 464
    .local v4, "sigTrail":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v5}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v5

    .line 466
    .local v5, "trailerObj":Ljava/lang/Integer;
    if-eqz v5, :cond_12

    .line 468
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 469
    .local v6, "trailer":I
    if-eq v4, v6, :cond_5

    .line 471
    const/16 v7, 0x3acc

    if-ne v6, v7, :cond_4

    const/16 v7, 0x40cc

    if-ne v4, v7, :cond_4

    goto :goto_1

    .line 473
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "signer initialised with wrong digest for trailer "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    .end local v6    # "trailer":I
    :cond_5
    :goto_1
    nop

    .line 482
    const/4 v0, 0x2

    .line 488
    .end local v4    # "sigTrail":I
    .end local v5    # "trailerObj":Ljava/lang/Integer;
    :goto_2
    const/4 v4, 0x0

    .line 490
    .local v4, "mStart":I
    const/4 v4, 0x0

    :goto_3
    array-length v5, v1

    if-eq v4, v5, :cond_7

    .line 492
    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0xf

    xor-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_6

    .line 494
    goto :goto_4

    .line 490
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 498
    :cond_7
    :goto_4
    add-int/2addr v4, v3

    .line 503
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    .line 505
    .local v5, "hash":[B
    array-length v6, v1

    sub-int/2addr v6, v0

    array-length v7, v5

    sub-int/2addr v6, v7

    .line 510
    .local v6, "off":I
    sub-int v7, v6, v4

    if-gtz v7, :cond_8

    .line 512
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v2

    return v2

    .line 518
    :cond_8
    aget-byte v7, v1, v2

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_d

    .line 520
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 523
    iget v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int v8, v6, v4

    if-le v7, v8, :cond_9

    .line 525
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v2

    return v2

    .line 528
    :cond_9
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 529
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    sub-int v8, v6, v4

    invoke-interface {v7, v1, v4, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 530
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v5, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 532
    const/4 v7, 0x1

    .line 534
    .local v7, "isOkay":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    array-length v9, v5

    if-eq v8, v9, :cond_b

    .line 536
    add-int v9, v6, v8

    aget-byte v10, v1, v9

    aget-byte v11, v5, v8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 537
    add-int v9, v6, v8

    aget-byte v9, v1, v9

    if-eqz v9, :cond_a

    .line 539
    const/4 v7, 0x0

    .line 534
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 543
    .end local v8    # "i":I
    :cond_b
    if-nez v7, :cond_c

    .line 545
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v2

    return v2

    .line 548
    :cond_c
    sub-int v8, v6, v4

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 549
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v9, v9

    invoke-static {v1, v4, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    .end local v7    # "isOkay":Z
    goto :goto_7

    .line 553
    :cond_d
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 555
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v5, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 557
    const/4 v7, 0x1

    .line 559
    .restart local v7    # "isOkay":Z
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    array-length v9, v5

    if-eq v8, v9, :cond_f

    .line 561
    add-int v9, v6, v8

    aget-byte v10, v1, v9

    aget-byte v11, v5, v8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 562
    add-int v9, v6, v8

    aget-byte v9, v1, v9

    if-eqz v9, :cond_e

    .line 564
    const/4 v7, 0x0

    .line 559
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 568
    .end local v8    # "i":I
    :cond_f
    if-nez v7, :cond_10

    .line 570
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v2

    return v2

    .line 573
    :cond_10
    sub-int v8, v6, v4

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 574
    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v9, v9

    invoke-static {v1, v4, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    .end local v7    # "isOkay":Z
    :goto_7
    iget v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    if-eqz v7, :cond_11

    .line 583
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->isSameAs([B[B)Z

    move-result v7

    if-nez v7, :cond_11

    .line 585
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v2

    return v2

    .line 589
    :cond_11
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 590
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 592
    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 594
    return v3

    .line 479
    .end local v6    # "off":I
    .local v4, "sigTrail":I
    .local v5, "trailerObj":Ljava/lang/Integer;
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unrecognised hash in signature"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    .end local v1    # "block":[B
    .end local v4    # "sigTrail":I
    .end local v5    # "trailerObj":Ljava/lang/Integer;
    .local v0, "block":[B
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
