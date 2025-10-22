.class public Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;
.super Ljava/lang/Object;
.source "ISO9796d2PSSSigner.java"

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

.field private hLen:I

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private preBlock:[B

.field private preMStart:I

.field private preSig:[B

.field private preTLength:I

.field private random:Ljava/security/SecureRandom;

.field private recoveredMessage:[B

.field private saltLength:I

.field private standardSalt:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "saltLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest",
            "saltLength"
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IZ)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IZ)V
    .locals 5
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p3, "saltLength"    # I
    .param p4, "implicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "digest",
            "saltLength",
            "implicit"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 79
    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 80
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    .line 81
    iput p3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 83
    if-eqz p4, :cond_0

    .line 85
    const/16 v0, 0xbc

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    .local v0, "trailerObj":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    .line 100
    .end local v0    # "trailerObj":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 97
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

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "sp"
        }
    .end annotation

    .line 616
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    .line 617
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 618
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 619
    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 620
    return-void
.end method

.method private LtoOSP(J[B)V
    .locals 4
    .param p1, "l"    # J
    .param p3, "sp"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "l",
            "sp"
        }
    .end annotation

    .line 629
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x0

    aput-byte v0, p3, v1

    .line 630
    const/16 v0, 0x30

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p3, v2

    .line 631
    const/16 v0, 0x28

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, p3, v2

    .line 632
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, p3, v2

    .line 633
    const/16 v0, 0x18

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, p3, v2

    .line 634
    const/16 v0, 0x10

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, p3, v2

    .line 635
    const/16 v0, 0x8

    ushr-long v2, p1, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, p3, v2

    .line 636
    ushr-long v0, p1, v1

    long-to-int v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x7

    aput-byte v0, p3, v1

    .line 637
    return-void
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

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 217
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
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

    .line 191
    const/4 v0, 0x1

    .line 193
    .local v0, "isOkay":Z
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 198
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_2

    .line 200
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    .line 202
    const/4 v0, 0x0

    .line 198
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "Z",
            "zOff",
            "zLen",
            "length"
        }
    .end annotation

    .line 648
    new-array v0, p4, [B

    .line 649
    .local v0, "mask":[B
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v1, v1, [B

    .line 650
    .local v1, "hashBuf":[B
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 651
    .local v2, "C":[B
    const/4 v3, 0x0

    .line 653
    .local v3, "counter":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 655
    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    div-int v4, p4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 657
    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 659
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 660
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 661
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 663
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int v4, v4, v3

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 668
    :cond_0
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int v4, v4, v3

    if-ge v4, p4, :cond_1

    .line 670
    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 672
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 673
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 674
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 676
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int v4, v4, v3

    array-length v6, v0

    iget v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int v7, v7, v3

    sub-int/2addr v6, v7

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    :cond_1
    return-object v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    .line 392
    .local v1, "digSize":I
    new-array v2, v1, [B

    .line 394
    .local v2, "m2Hash":[B
    iget-object v3, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 396
    const/16 v3, 0x8

    new-array v5, v3, [B

    .line 397
    .local v5, "C":[B
    iget v6, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    mul-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    invoke-direct {v0, v6, v7, v5}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    .line 399
    iget-object v6, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v7, v5

    invoke-interface {v6, v5, v4, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 401
    iget-object v6, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget v8, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-interface {v6, v7, v4, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 403
    iget-object v6, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v7, v2

    invoke-interface {v6, v2, v4, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 407
    iget-object v6, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v6, :cond_0

    .line 409
    iget-object v6, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    .local v6, "salt":[B
    goto :goto_0

    .line 413
    .end local v6    # "salt":[B
    :cond_0
    iget v6, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    new-array v6, v6, [B

    .line 414
    .restart local v6    # "salt":[B
    iget-object v7, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 417
    :goto_0
    iget-object v7, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v6

    invoke-interface {v7, v6, v4, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 419
    iget-object v7, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    .line 421
    .local v7, "hash":[B
    iget-object v8, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v7, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 423
    const/4 v8, 0x2

    .line 424
    .local v8, "tLength":I
    iget v9, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v10, 0xbc

    if-ne v9, v10, :cond_1

    .line 426
    const/4 v8, 0x1

    .line 429
    :cond_1
    iget-object v9, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v9, v9

    iget v11, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    sub-int/2addr v9, v11

    array-length v11, v6

    sub-int/2addr v9, v11

    iget v11, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v9, v11

    sub-int/2addr v9, v8

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    .line 431
    .local v9, "off":I
    iget-object v12, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aput-byte v11, v12, v9

    .line 433
    iget-object v12, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v14, v9, 0x1

    iget v15, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-static {v12, v4, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iget-object v12, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v13, v9, 0x1

    iget v14, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/2addr v13, v14

    array-length v14, v6

    invoke-static {v6, v4, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    array-length v12, v7

    iget-object v13, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v13, v13

    iget v14, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v8

    invoke-direct {v0, v7, v4, v12, v13}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v12

    .line 437
    .local v12, "dbMask":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v14, v12

    if-eq v13, v14, :cond_2

    .line 439
    iget-object v14, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aget-byte v15, v14, v13

    aget-byte v16, v12, v13

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v14, v13

    .line 437
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 442
    .end local v13    # "i":I
    :cond_2
    iget-object v13, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v14, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v14, v14

    iget v15, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v14, v15

    sub-int/2addr v14, v8

    iget v15, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v7, v4, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    iget v13, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    if-ne v13, v10, :cond_3

    .line 446
    iget-object v3, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v10, v10

    sub-int/2addr v10, v11

    const/16 v13, -0x44

    aput-byte v13, v3, v10

    goto :goto_2

    .line 450
    :cond_3
    iget-object v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    iget v14, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    ushr-int/lit8 v3, v14, 0x8

    int-to-byte v3, v3

    aput-byte v3, v10, v13

    .line 451
    iget-object v3, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v10, v10

    sub-int/2addr v10, v11

    iget v13, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    int-to-byte v13, v13

    aput-byte v13, v3, v10

    .line 454
    :goto_2
    iget-object v3, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aget-byte v10, v3, v4

    and-int/lit8 v10, v10, 0x7f

    int-to-byte v10, v10

    aput-byte v10, v3, v4

    .line 456
    iget-object v3, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v13, v13

    invoke-interface {v3, v10, v4, v13}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v3

    .line 458
    .local v3, "b":[B
    iget v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    new-array v10, v10, [B

    iput-object v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 460
    iget v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v13, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v13, v13

    if-gt v10, v13, :cond_4

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    iput-boolean v11, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 461
    iget-object v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v11, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v13, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v13, v13

    invoke-static {v10, v4, v11, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    iget-object v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 464
    iget-object v10, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    invoke-direct {v0, v10}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 465
    iput v4, v0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 467
    return-object v3
.end method

.method public getRecoveredMessage()[B
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
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

    .line 133
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 135
    .local v0, "lengthOfSalt":I
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1

    .line 137
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 139
    .local v1, "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 140
    .local v2, "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    .line 144
    .end local v1    # "p":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    :cond_0
    goto :goto_0

    .line 145
    .end local v2    # "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    :cond_1
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithSalt;

    if-eqz v1, :cond_3

    .line 147
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithSalt;

    .line 149
    .local v1, "p":Lorg/bouncycastle/crypto/params/ParametersWithSalt;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 150
    .restart local v2    # "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->getSalt()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    .line 151
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v0, v3

    .line 152
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    if-ne v3, v4, :cond_2

    .line 156
    .end local v1    # "p":Lorg/bouncycastle/crypto/params/ParametersWithSalt;
    goto :goto_0

    .line 154
    .restart local v1    # "p":Lorg/bouncycastle/crypto/params/ParametersWithSalt;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Fixed salt is of wrong length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    .end local v1    # "p":Lorg/bouncycastle/crypto/params/ParametersWithSalt;
    .end local v2    # "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    :cond_3
    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 160
    .restart local v2    # "kParam":Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    if-eqz p1, :cond_4

    .line 162
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    .line 166
    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 168
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    .line 170
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    .line 172
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v3, 0xbc

    if-ne v1, v3, :cond_5

    .line 174
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v1, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    goto :goto_1

    .line 178
    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v1, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    .line 181
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->reset()V

    .line 182
    return-void
.end method

.method public reset()V
    .locals 3

    .line 363
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 365
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 369
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 372
    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 374
    :cond_1
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 375
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-eqz v0, :cond_2

    .line 377
    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    .line 378
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 379
    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    .line 381
    :cond_2
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    aput-byte p1, v0, v1

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 332
    :goto_0
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

    .line 342
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v0, :cond_0

    .line 344
    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 346
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->update(B)V

    .line 347
    add-int/lit8 p2, p2, 0x1

    .line 348
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 352
    :cond_0
    if-lez p3, :cond_1

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 356
    :cond_1
    return-void
.end method

.method public updateWithRecoveredMessage([B)V
    .locals 9
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

    .line 224
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 229
    .local v0, "block":[B
    array-length v1, v0

    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    if-ge v1, v3, :cond_0

    .line 231
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 233
    .local v1, "tmp":[B
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 235
    move-object v0, v1

    .line 240
    .end local v1    # "tmp":[B
    :cond_0
    array-length v1, v0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    xor-int/lit16 v1, v1, 0xbc

    if-nez v1, :cond_1

    .line 242
    const/4 v1, 0x1

    .local v1, "tLength":I
    goto :goto_1

    .line 246
    .end local v1    # "tLength":I
    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    array-length v4, v0

    sub-int/2addr v4, v3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 248
    .local v1, "sigTrail":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v4}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v4

    .line 250
    .local v4, "trailerObj":Ljava/lang/Integer;
    if-eqz v4, :cond_9

    .line 252
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 253
    .local v5, "trailer":I
    if-eq v1, v5, :cond_3

    .line 255
    const/16 v6, 0x3acc

    if-ne v5, v6, :cond_2

    const/16 v6, 0x40cc

    if-ne v1, v6, :cond_2

    goto :goto_0

    .line 257
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "signer initialised with wrong digest for trailer "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    .end local v5    # "trailer":I
    :cond_3
    :goto_0
    nop

    .line 266
    const/4 v5, 0x2

    move v1, v5

    .line 272
    .end local v4    # "trailerObj":Ljava/lang/Integer;
    .local v1, "tLength":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v4, v4, [B

    .line 273
    .local v4, "m2Hash":[B
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v4, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 278
    array-length v5, v0

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    array-length v7, v0

    iget v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v1

    invoke-direct {p0, v0, v5, v6, v7}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v5

    .line 279
    .local v5, "dbMask":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v5

    if-eq v6, v7, :cond_4

    .line 281
    aget-byte v7, v0, v6

    aget-byte v8, v5, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 279
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 284
    .end local v6    # "i":I
    :cond_4
    aget-byte v6, v0, v2

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 289
    const/4 v6, 0x0

    .line 290
    .local v6, "mStart":I
    :goto_3
    array-length v7, v0

    if-eq v6, v7, :cond_6

    .line 292
    aget-byte v7, v0, v6

    if-ne v7, v3, :cond_5

    .line 294
    goto :goto_4

    .line 290
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 298
    :cond_6
    :goto_4
    add-int/2addr v6, v3

    .line 300
    array-length v7, v0

    if-lt v6, v7, :cond_7

    .line 302
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 305
    :cond_7
    if-le v6, v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 307
    array-length v3, v5

    sub-int/2addr v3, v6

    iget v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    sub-int/2addr v3, v7

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 309
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v7, v7

    invoke-static {v0, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v8, v8

    invoke-static {v3, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    .line 313
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    .line 314
    iput v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preMStart:I

    .line 315
    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preTLength:I

    .line 316
    return-void

    .line 263
    .end local v5    # "dbMask":[B
    .end local v6    # "mStart":I
    .local v1, "sigTrail":I
    .local v4, "trailerObj":Ljava/lang/Integer;
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unrecognised hash in signature"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 480
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v0, v0, [B

    .line 481
    .local v0, "m2Hash":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 485
    const/4 v1, 0x0

    .line 487
    .local v1, "mStart":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v3, :cond_0

    .line 491
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->updateWithRecoveredMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    goto :goto_0

    .line 493
    :catch_0
    move-exception v3

    .line 495
    .local v3, "e":Ljava/lang/Exception;
    return v2

    .line 500
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    invoke-static {v3, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 506
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    .line 507
    .local v3, "block":[B
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preMStart:I

    .line 508
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preTLength:I

    .line 510
    .local v4, "tLength":I
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    .line 511
    iput-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    .line 516
    const/16 v5, 0x8

    new-array v6, v5, [B

    .line 517
    .local v6, "C":[B
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x8

    int-to-long v7, v7

    invoke-direct {p0, v7, v8, v6}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    .line 519
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v7, v6

    invoke-interface {v5, v6, v2, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 521
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v5, v5

    if-eqz v5, :cond_1

    .line 523
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v8, v8

    invoke-interface {v5, v7, v2, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 526
    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v7, v0

    invoke-interface {v5, v0, v2, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 529
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v5, :cond_2

    .line 531
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v8, v8

    invoke-interface {v5, v7, v2, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_1

    .line 535
    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v7, v7

    add-int/2addr v7, v1

    iget v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    invoke-interface {v5, v3, v7, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 538
    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    .line 539
    .local v5, "hash":[B
    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v5, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 541
    array-length v7, v3

    sub-int/2addr v7, v4

    array-length v8, v5

    sub-int/2addr v7, v8

    .line 543
    .local v7, "off":I
    const/4 v8, 0x1

    .line 545
    .local v8, "isOkay":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v10, v5

    if-eq v9, v10, :cond_4

    .line 547
    aget-byte v10, v5, v9

    add-int v11, v7, v9

    aget-byte v11, v3, v11

    if-eq v10, v11, :cond_3

    .line 549
    const/4 v8, 0x0

    .line 545
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 553
    .end local v9    # "i":I
    :cond_4
    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 554
    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 556
    if-nez v8, :cond_5

    .line 558
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 559
    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 560
    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v9}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 561
    return v2

    .line 568
    :cond_5
    iget v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    if-eqz v9, :cond_6

    .line 570
    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v10, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->isSameAs([B[B)Z

    move-result v9

    if-nez v9, :cond_6

    .line 572
    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 573
    iget-object v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v9}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 574
    return v2

    .line 579
    :cond_6
    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 581
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 582
    const/4 v2, 0x1

    return v2

    .line 502
    .end local v3    # "block":[B
    .end local v4    # "tLength":I
    .end local v5    # "hash":[B
    .end local v6    # "C":[B
    .end local v7    # "off":I
    .end local v8    # "isOkay":Z
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
