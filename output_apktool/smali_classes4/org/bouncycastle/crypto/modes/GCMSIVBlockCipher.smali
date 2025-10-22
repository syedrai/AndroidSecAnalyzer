.class public Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;
.super Ljava/lang/Object;
.source "GCMSIVBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;,
        Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;
    }
.end annotation


# static fields
.field private static final ADD:B = -0x1ft

.field private static final AEAD_COMPLETE:I = 0x2

.field private static final BUFLEN:I = 0x10

.field private static final HALFBUFLEN:I = 0x8

.field private static final INIT:I = 0x1

.field private static final MASK:B = -0x80t

.field private static final MAX_DATALEN:I = 0x7fffffe7

.field private static final NONCELEN:I = 0xc


# instance fields
.field private forEncryption:Z

.field private macBlock:[B

.field private final theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private final theCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private final theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private theFlags:I

.field private final theGHash:[B

.field private theInitialAEAD:[B

.field private final theMultiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private theNonce:[B

.field private thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private final theReverse:[B


# direct methods
.method static bridge synthetic -$$Nest$fgettheReverse(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgHASH(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfillReverse([BII[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "pCipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pCipher"
        }
    .end annotation

    .line 154
    new-instance v0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2
    .param p1, "pCipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "pMultiplier"    # Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pCipher",
            "pMultiplier"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    .line 95
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    .line 138
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    .line 166
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 172
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 173
    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 176
    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    .line 177
    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    .line 178
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bufLength([B)I
    .locals 1
    .param p0, "pBuffer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pBuffer"
        }
    .end annotation

    .line 478
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method private calculateTag()[B
    .locals 5

    .line 610
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    .line 611
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->completePolyVal()[B

    move-result-object v0

    .line 614
    .local v0, "myPolyVal":[B
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 617
    .local v1, "myResult":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    .line 619
    aget-byte v3, v0, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 617
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v2    # "i":I
    :cond_0
    const/16 v2, 0xf

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, -0x81

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 626
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 627
    return-object v1
.end method

.method private checkAEADStatus(I)V
    .locals 6
    .param p1, "pLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pLen"
        }
    .end annotation

    .line 248
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 254
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    const v4, 0x7fffffe7

    sub-int/2addr v4, p1

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 265
    return-void

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AEAD byte count exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AEAD data cannot be processed after ordinary data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher is not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkBuffer([BIIZ)V
    .locals 5
    .param p0, "pBuffer"    # [B
    .param p1, "pOffset"    # I
    .param p2, "pLen"    # I
    .param p3, "pOutput"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pBuffer",
            "pOffset",
            "pLen",
            "pOutput"
        }
    .end annotation

    .line 494
    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->bufLength([B)I

    move-result v0

    .line 495
    .local v0, "myBufLen":I
    add-int v1, p1, p2

    .line 498
    .local v1, "myLast":I
    if-ltz p2, :cond_1

    if-ltz p1, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 499
    .local v2, "badLen":Z
    :goto_1
    if-nez v2, :cond_3

    if-le v1, v0, :cond_2

    goto :goto_2

    .line 505
    :cond_2
    return-void

    .line 501
    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    .line 502
    new-instance v3, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v4, "Output buffer too short."

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 503
    :cond_4
    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "Input buffer too short."

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    :goto_3
    throw v3
.end method

.method private checkStatus(I)V
    .locals 10
    .param p1, "pLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pLen"
        }
    .end annotation

    .line 274
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 280
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    .line 283
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    .line 287
    :cond_0
    const-wide/32 v0, 0x7fffffe7

    .line 288
    .local v0, "dataLimit":J
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v2

    int-to-long v2, v2

    .line 289
    .local v2, "currBytes":J
    iget-boolean v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-nez v4, :cond_1

    .line 291
    const-wide/16 v4, 0x10

    add-long/2addr v0, v4

    .line 292
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v4

    int-to-long v2, v4

    .line 294
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    add-long v6, v2, v4

    int-to-long v8, p1

    sub-long v8, v0, v8

    add-long/2addr v8, v4

    cmp-long v4, v6, v8

    if-gtz v4, :cond_2

    .line 299
    return-void

    .line 297
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "byte count exceeded"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    .end local v0    # "dataLimit":J
    .end local v2    # "currBytes":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher is not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private completePolyVal()[B
    .locals 4

    .line 637
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 638
    .local v1, "myResult":[B
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHashLengths()V

    .line 639
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    .line 640
    return-object v1
.end method

.method private decryptPlain()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v0

    .line 557
    .local v0, "mySrc":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v1

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    .line 560
    .local v1, "myRemaining":I
    if-ltz v1, :cond_2

    .line 566
    add-int/lit8 v3, v1, 0x10

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 567
    .local v3, "myExpected":[B
    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    .line 568
    .local v4, "myCounter":[B
    const/16 v5, 0xf

    aget-byte v6, v4, v5

    or-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 569
    new-array v5, v2, [B

    .line 570
    .local v5, "myMask":[B
    const/4 v6, 0x0

    .line 573
    .local v6, "myOff":I
    :goto_0
    const/4 v7, 0x0

    if-lez v1, :cond_0

    .line 576
    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v8, v4, v7, v5, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 579
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 580
    .local v8, "myLen":I
    invoke-static {v5, v0, v6, v8}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    .line 583
    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v9, v5, v7, v8}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    .line 584
    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v9, v5, v7, v8}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 587
    sub-int/2addr v1, v8

    .line 588
    add-int/2addr v6, v8

    .line 589
    invoke-static {v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    .line 590
    .end local v8    # "myLen":I
    goto :goto_0

    .line 593
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v2

    .line 594
    .local v2, "myTag":[B
    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 600
    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length v9, v9

    invoke-static {v2, v7, v8, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    return-void

    .line 596
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->reset()V

    .line 597
    new-instance v7, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v8, "mac check failed"

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 562
    .end local v2    # "myTag":[B
    .end local v3    # "myExpected":[B
    .end local v4    # "myCounter":[B
    .end local v5    # "myMask":[B
    .end local v6    # "myOff":I
    :cond_2
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "Data too short"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private deriveKeys(Lorg/bouncycastle/crypto/params/KeyParameter;)V
    .locals 11
    .param p1, "pKey"    # Lorg/bouncycastle/crypto/params/KeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pKey"
        }
    .end annotation

    .line 766
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 767
    .local v1, "myIn":[B
    new-array v2, v0, [B

    .line 768
    .local v2, "myOut":[B
    new-array v3, v0, [B

    .line 769
    .local v3, "myResult":[B
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v4

    new-array v4, v4, [B

    .line 772
    .local v4, "myEncKey":[B
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    const/4 v6, 0x4

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v6, 0x1

    invoke-interface {v5, v6, p1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 776
    const/4 v5, 0x0

    .line 777
    .local v5, "myOff":I
    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v1, v8, v2, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 778
    const/16 v7, 0x8

    invoke-static {v2, v8, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 780
    add-int/2addr v5, v7

    .line 781
    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 782
    invoke-static {v2, v8, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 786
    const/4 v5, 0x0

    .line 787
    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 788
    invoke-static {v2, v8, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 789
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 790
    add-int/2addr v5, v7

    .line 791
    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 792
    invoke-static {v2, v8, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    array-length v9, v4

    const/16 v10, 0x20

    if-ne v9, v10, :cond_0

    .line 798
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 799
    add-int/lit8 v5, v5, 0x8

    .line 800
    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 801
    invoke-static {v2, v8, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    aget-byte v9, v1, v8

    add-int/2addr v9, v6

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 803
    add-int/2addr v5, v7

    .line 804
    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v1, v8, v2, v8}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 805
    invoke-static {v2, v8, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    :cond_0
    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v9, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v9, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v7, v6, v9}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 812
    invoke-static {v3, v8, v0, v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    .line 813
    invoke-static {v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->mulX([B)V

    .line 814
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 815
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/2addr v0, v6

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    .line 816
    return-void
.end method

.method private encryptPlain([B[BI)I
    .locals 9
    .param p1, "pCounter"    # [B
    .param p2, "pTarget"    # [B
    .param p3, "pOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pCounter",
            "pTarget",
            "pOffset"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v0

    .line 520
    .local v0, "mySrc":[B
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    .line 521
    .local v1, "myCounter":[B
    const/16 v2, 0xf

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 522
    const/16 v2, 0x10

    new-array v3, v2, [B

    .line 523
    .local v3, "myMask":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v4

    .line 524
    .local v4, "myRemaining":I
    const/4 v5, 0x0

    .line 527
    .local v5, "myOff":I
    :goto_0
    if-lez v4, :cond_0

    .line 530
    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7, v3, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 533
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 534
    .local v6, "myLen":I
    invoke-static {v3, v0, v5, v6}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    .line 537
    add-int v8, p3, v5

    invoke-static {v3, v7, p2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    sub-int/2addr v4, v6

    .line 541
    add-int/2addr v5, v6

    .line 542
    invoke-static {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    .line 543
    .end local v6    # "myLen":I
    goto :goto_0

    .line 546
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v2

    return v2
.end method

.method private static fillReverse([BII[B)V
    .locals 3
    .param p0, "pInput"    # [B
    .param p1, "pOffset"    # I
    .param p2, "pLength"    # I
    .param p3, "pOutput"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pInput",
            "pOffset",
            "pLength",
            "pOutput"
        }
    .end annotation

    .line 680
    const/4 v0, 0x0

    .local v0, "i":I
    const/16 v1, 0xf

    .local v1, "j":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 683
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p3, v1

    .line 680
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 685
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method private gHASH([B)V
    .locals 2
    .param p1, "pNext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pNext"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[B)V

    .line 664
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 665
    return-void
.end method

.method private gHashLengths()V
    .locals 6

    .line 649
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 650
    .local v0, "myIn":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    mul-long v1, v1, v3

    const/4 v5, 0x0

    invoke-static {v1, v2, v0, v5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 651
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v1

    mul-long v1, v1, v3

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 654
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    .line 655
    return-void
.end method

.method private static incrementCounter([B)V
    .locals 2
    .param p0, "pCounter"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pCounter"
        }
    .end annotation

    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 730
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 732
    goto :goto_1

    .line 728
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private static mulX([B)V
    .locals 5
    .param p0, "pValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pValue"
        }
    .end annotation

    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "myMask":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 747
    aget-byte v2, p0, v1

    .line 748
    .local v2, "myValue":B
    shr-int/lit8 v4, v2, 0x1

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 749
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, -0x80

    :goto_1
    move v0, v3

    .line 745
    .end local v2    # "myValue":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 755
    aget-byte v1, p0, v3

    xor-int/lit8 v1, v1, -0x1f

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    .line 757
    :cond_2
    return-void
.end method

.method private resetStreams()V
    .locals 4

    .line 449
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->clearBuffer()V

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    .line 456
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    .line 459
    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    .line 460
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    .line 463
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    .line 464
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 465
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 469
    :cond_2
    return-void
.end method

.method private static xorBlock([B[B)V
    .locals 3
    .param p0, "pLeft"    # [B
    .param p1, "pRight"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pLeft",
            "pRight"
        }
    .end annotation

    .line 696
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 698
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static xorBlock([B[BII)V
    .locals 3
    .param p0, "pLeft"    # [B
    .param p1, "pRight"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pLeft",
            "pRight",
            "pOffset",
            "pLength"
        }
    .end annotation

    .line 715
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 717
    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .param p1, "pOutput"    # [B
    .param p2, "pOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pOutput",
            "pOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    .line 380
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->getOutputSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    .line 383
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 386
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v1

    .line 389
    .local v1, "myTag":[B
    invoke-direct {p0, v1, p1, p2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->encryptPlain([B[BI)I

    move-result v2

    const/16 v3, 0x10

    add-int/2addr v2, v3

    .line 392
    .local v2, "myDataLen":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v4

    add-int/2addr v4, p2

    invoke-static {v1, v0, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length v4, v4

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 398
    return v2

    .line 405
    .end local v1    # "myTag":[B
    .end local v2    # "myDataLen":I
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->decryptPlain()V

    .line 408
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v1

    .line 409
    .local v1, "myDataLen":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v2

    .line 410
    .local v2, "mySrc":[B
    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 414
    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 238
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-GCM-SIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "pLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pLen"
        }
    .end annotation

    .line 430
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, v1

    return v0

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    add-int/2addr v0, p1

    .line 435
    .local v0, "myCurr":I
    if-le v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x10

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .param p1, "pLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pLen"
        }
    .end annotation

    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "pEncrypt"    # Z
    .param p2, "cipherParameters"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pEncrypt",
            "cipherParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "myInitialAEAD":[B
    const/4 v1, 0x0

    .line 191
    .local v1, "myNonce":[B
    const/4 v2, 0x0

    .line 194
    .local v2, "myKey":Lorg/bouncycastle/crypto/params/KeyParameter;
    instance-of v3, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v3, :cond_0

    .line 196
    move-object v3, p2

    check-cast v3, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 197
    .local v3, "myAEAD":Lorg/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    .line 198
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    .line 199
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    .line 200
    .end local v3    # "myAEAD":Lorg/bouncycastle/crypto/params/AEADParameters;
    goto :goto_0

    .line 201
    :cond_0
    instance-of v3, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_4

    .line 203
    move-object v3, p2

    check-cast v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 204
    .local v3, "myParms":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 205
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 206
    .end local v3    # "myParms":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    nop

    .line 213
    :goto_0
    if-eqz v1, :cond_3

    array-length v3, v1

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    .line 219
    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 221
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 227
    :cond_1
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    .line 228
    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    .line 229
    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    .line 232
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->deriveKeys(Lorg/bouncycastle/crypto/params/KeyParameter;)V

    .line 233
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 234
    return-void

    .line 223
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid nonce"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid parameters passed to GCM-SIV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processAADByte(B)V
    .locals 1
    .param p1, "pByte"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pByte"
        }
    .end annotation

    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    .line 307
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    .line 308
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1
    .param p1, "pData"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pData",
            "pOffset",
            "pLen"
        }
    .end annotation

    .line 315
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    .line 318
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    .line 321
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 322
    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .param p1, "pByte"    # B
    .param p2, "pOutput"    # [B
    .param p3, "pOutOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pByte",
            "pOutput",
            "pOutOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    .line 332
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    .line 335
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    .line 343
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .param p1, "pData"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I
    .param p4, "pOutput"    # [B
    .param p5, "pOutOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pData",
            "pOffset",
            "pLen",
            "pOutput",
            "pOutOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 353
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    .line 356
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    .line 359
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    .line 362
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    .line 370
    :goto_0
    return v0
.end method

.method public reset()V
    .locals 0

    .line 440
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 441
    return-void
.end method
