.class public Lorg/bouncycastle/crypto/digests/Blake3Digest;
.super Ljava/lang/Object;
.source "Blake3Digest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;
.implements Lorg/bouncycastle/crypto/Xof;


# static fields
.field private static final BLOCKLEN:I = 0x40

.field private static final CHAINING0:I = 0x0

.field private static final CHAINING1:I = 0x1

.field private static final CHAINING2:I = 0x2

.field private static final CHAINING3:I = 0x3

.field private static final CHAINING4:I = 0x4

.field private static final CHAINING5:I = 0x5

.field private static final CHAINING6:I = 0x6

.field private static final CHAINING7:I = 0x7

.field private static final CHUNKEND:I = 0x2

.field private static final CHUNKLEN:I = 0x400

.field private static final CHUNKSTART:I = 0x1

.field private static final COUNT0:I = 0xc

.field private static final COUNT1:I = 0xd

.field private static final DATALEN:I = 0xe

.field private static final DERIVECONTEXT:I = 0x20

.field private static final DERIVEKEY:I = 0x40

.field private static final ERR_OUTPUTTING:Ljava/lang/String; = "Already outputting"

.field private static final FLAGS:I = 0xf

.field private static final IV:[I

.field private static final IV0:I = 0x8

.field private static final IV1:I = 0x9

.field private static final IV2:I = 0xa

.field private static final IV3:I = 0xb

.field private static final KEYEDHASH:I = 0x10

.field private static final NUMWORDS:I = 0x8

.field private static final PARENT:I = 0x4

.field private static final ROOT:I = 0x8

.field private static final ROUNDS:I = 0x7

.field private static final SIGMA:[B


# instance fields
.field private outputAvailable:J

.field private outputting:Z

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private final theBuffer:[B

.field private final theChaining:[I

.field private theCounter:J

.field private theCurrBytes:I

.field private final theDigestLen:I

.field private final theIndices:[B

.field private final theK:[I

.field private final theM:[I

.field private theMode:I

.field private theOutputDataLen:I

.field private theOutputMode:I

.field private thePos:I

.field private final theStack:Ljava/util/Stack;

.field private final theV:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->SIGMA:[B

    .line 171
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->IV:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x6t
        0x3t
        0xat
        0x7t
        0x0t
        0x4t
        0xdt
        0x1t
        0xbt
        0xct
        0x5t
        0x9t
        0xet
        0xft
        0x8t
    .end array-data

    :array_1
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 263
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;-><init>(I)V

    .line 264
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "pDigestSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pDigestSize"
        }
    .end annotation

    .line 276
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p1, 0x8

    :goto_0
    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 277
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 3
    .param p1, "pDigestSize"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "pDigestSize",
            "purpose"
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    .line 183
    const/16 v0, 0x8

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    .line 188
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    .line 193
    const/16 v1, 0x10

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    .line 198
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    .line 203
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theIndices:[B

    .line 208
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    .line 287
    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 288
    div-int/lit8 v1, p1, 0x8

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theDigestLen:I

    .line 290
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-static {p0, v1, p2}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->init(Lorg/bouncycastle/crypto/params/Blake3Parameters;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Blake3Digest;)V
    .locals 2
    .param p1, "pSource"    # Lorg/bouncycastle/crypto/digests/Blake3Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pSource"
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    .line 183
    const/16 v0, 0x8

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    .line 188
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    .line 193
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    .line 198
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    .line 203
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theIndices:[B

    .line 208
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    .line 303
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theDigestLen:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theDigestLen:I

    .line 304
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake3Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 307
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 308
    return-void
.end method

.method private adjustChaining()V
    .locals 6

    .line 726
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputting:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 729
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 731
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v3, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    add-int/lit8 v5, v0, 0x8

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v0

    .line 732
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    add-int/lit8 v3, v0, 0x8

    aget v4, v2, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    aget v5, v5, v0

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 737
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    goto :goto_2

    .line 744
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 746
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    add-int/lit8 v5, v0, 0x8

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, v2, v0

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 749
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private adjustStack()V
    .locals 8

    .line 605
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    .line 606
    .local v0, "myCount":J
    :goto_0
    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    .line 609
    const-wide/16 v2, 0x1

    and-long v5, v0, v2

    cmp-long v7, v5, v2

    if-nez v7, :cond_0

    .line 611
    goto :goto_1

    .line 615
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 616
    .local v2, "myLeft":[I
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    invoke-static {v3, v5, v6, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initParentBlock()V

    .line 621
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->compress()V

    .line 624
    const/4 v3, 0x1

    shr-long/2addr v0, v3

    .line 625
    .end local v2    # "myLeft":[I
    goto :goto_0

    .line 628
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    return-void
.end method

.method private compress()V
    .locals 2

    .line 676
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initIndices()V

    .line 679
    const/4 v0, 0x0

    .local v0, "round":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 682
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->performRound()V

    .line 683
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->permuteIndices()V

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "round":I
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->performRound()V

    .line 686
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->adjustChaining()V

    .line 687
    return-void
.end method

.method private compressBlock([BI)V
    .locals 2
    .param p1, "pMessage"    # [B
    .param p2, "pMsgPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pMessage",
            "pMsgPos"
        }
    .end annotation

    .line 588
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initChunkBlock(IZ)V

    .line 589
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initM([BI)V

    .line 590
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->compress()V

    .line 593
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    if-nez v0, :cond_0

    .line 595
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->adjustStack()V

    .line 597
    :cond_0
    return-void
.end method

.method private compressFinalBlock(I)V
    .locals 2
    .param p1, "pDataLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pDataLen"
        }
    .end annotation

    .line 639
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initChunkBlock(IZ)V

    .line 640
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initM([BI)V

    .line 641
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->compress()V

    .line 644
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->processStack()V

    .line 645
    return-void
.end method

.method private incrementBlockCount()V
    .locals 4

    .line 904
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    .line 905
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    .line 906
    return-void
.end method

.method private initChunkBlock(IZ)V
    .locals 5
    .param p1, "pDataLen"    # I
    .param p2, "pFinal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pDataLen",
            "pFinal"
        }
    .end annotation

    .line 841
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 842
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->IV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 843
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    long-to-int v1, v3

    const/16 v3, 0xc

    aput v1, v0, v3

    .line 844
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    const/16 v1, 0x20

    shr-long/2addr v3, v1

    long-to-int v1, v3

    const/16 v3, 0xd

    aput v1, v0, v3

    .line 845
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/16 v1, 0xe

    aput p1, v0, v1

    .line 846
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theMode:I

    .line 847
    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    .line 848
    const/4 v3, 0x2

    if-eqz p2, :cond_2

    const/4 v2, 0x2

    :cond_2
    add-int/2addr v1, v2

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 851
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    .line 852
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_3

    .line 854
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->incrementBlockCount()V

    .line 855
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v1, v0, v2

    or-int/2addr v1, v3

    aput v1, v0, v2

    .line 859
    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 861
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->setRoot()V

    .line 863
    :cond_4
    return-void
.end method

.method private initIndices()V
    .locals 2

    .line 785
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theIndices:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 787
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theIndices:[B

    aput-byte v0, v1, v0

    .line 785
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 789
    .end local v0    # "i":B
    :cond_0
    return-void
.end method

.method private initKey([B)V
    .locals 2
    .param p1, "pKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pKey"
        }
    .end annotation

    .line 818
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 819
    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theMode:I

    .line 820
    return-void
.end method

.method private initKeyFromContext()V
    .locals 4

    .line 827
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theMode:I

    .line 829
    return-void
.end method

.method private initM([BI)V
    .locals 1
    .param p1, "pMessage"    # [B
    .param p2, "pMsgPos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pMessage",
            "pMsgPos"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 718
    return-void
.end method

.method private initNullKey()V
    .locals 4

    .line 807
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->IV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    return-void
.end method

.method private initParentBlock()V
    .locals 5

    .line 871
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->IV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 874
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 875
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/16 v1, 0xe

    const/16 v2, 0x40

    aput v2, v0, v1

    .line 876
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theMode:I

    or-int/2addr v1, v4

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 877
    return-void
.end method

.method private mixG(IIIII)V
    .locals 7
    .param p1, "msgIdx"    # I
    .param p2, "posA"    # I
    .param p3, "posB"    # I
    .param p4, "posC"    # I
    .param p5, "posD"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "msgIdx",
            "posA",
            "posB",
            "posC",
            "posD"
        }
    .end annotation

    .line 767
    shl-int/lit8 v0, p1, 0x1

    .line 770
    .local v0, "msg":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v2, v1, p2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v3, v3, p3

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theIndices:[B

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "msg":I
    .local v6, "msg":I
    aget-byte v0, v5, v0

    aget v0, v4, v0

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    aput v2, v1, p2

    .line 771
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v1, v1, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v2, v2, p2

    xor-int/2addr v1, v2

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    aput v1, v0, p5

    .line 772
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v1, v0, p4

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v2, v2, p5

    add-int/2addr v1, v2

    aput v1, v0, p4

    .line 773
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v2, v2, p4

    xor-int/2addr v1, v2

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    aput v1, v0, p3

    .line 774
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v1, v0, p2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v2, v2, p3

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theIndices:[B

    aget-byte v4, v4, v6

    aget v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v0, p2

    .line 775
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v1, v1, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v2, v2, p2

    xor-int/2addr v1, v2

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    aput v1, v0, p5

    .line 776
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v1, v0, p4

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v2, v2, p5

    add-int/2addr v1, v2

    aput v1, v0, p4

    .line 777
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v2, v2, p4

    xor-int/2addr v1, v2

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    aput v1, v0, p3

    .line 778
    return-void
.end method

.method private nextOutputBlock()V
    .locals 5

    .line 885
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    .line 888
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    sget-object v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->IV:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 890
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    long-to-int v2, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 891
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    iget-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v2, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 892
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/16 v1, 0xe

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theOutputDataLen:I

    aput v2, v0, v1

    .line 893
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/16 v1, 0xf

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theOutputMode:I

    aput v2, v0, v1

    .line 896
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->compress()V

    .line 897
    return-void
.end method

.method private performRound()V
    .locals 12

    .line 695
    const/16 v4, 0x8

    const/16 v5, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->mixG(IIIII)V

    .line 696
    const/16 v10, 0x9

    const/16 v11, 0xd

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->mixG(IIIII)V

    .line 697
    const/16 v10, 0xa

    const/16 v11, 0xe

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x6

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->mixG(IIIII)V

    .line 698
    const/16 v10, 0xb

    const/16 v11, 0xf

    const/4 v7, 0x3

    const/4 v8, 0x3

    const/4 v9, 0x7

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->mixG(IIIII)V

    .line 701
    const/16 v10, 0xa

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->mixG(IIIII)V

    .line 702
    const/16 v10, 0xb

    const/16 v11, 0xc

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x6

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->mixG(IIIII)V

    .line 703
    const/16 v10, 0x8

    const/16 v11, 0xd

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x7

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->mixG(IIIII)V

    .line 704
    const/16 v10, 0x9

    const/16 v11, 0xe

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->mixG(IIIII)V

    .line 705
    return-void
.end method

.method private permuteIndices()V
    .locals 4

    .line 796
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theIndices:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 798
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theIndices:[B

    sget-object v2, Lorg/bouncycastle/crypto/digests/Blake3Digest;->SIGMA:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theIndices:[B

    aget-byte v3, v3, v0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 796
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 800
    .end local v0    # "i":B
    :cond_0
    return-void
.end method

.method private processStack()V
    .locals 5

    .line 653
    nop

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 657
    .local v0, "myLeft":[I
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    invoke-static {v1, v2, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initParentBlock()V

    .line 662
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->setRoot()V

    .line 666
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->compress()V

    .line 667
    .end local v0    # "myLeft":[I
    goto :goto_0

    .line 668
    :cond_1
    return-void
.end method

.method private resetBlockCount()V
    .locals 2

    .line 913
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    .line 914
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    .line 915
    return-void
.end method

.method private setRoot()V
    .locals 4

    .line 922
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/16 v1, 0xf

    aget v2, v0, v1

    const/16 v3, 0x8

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 923
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theOutputMode:I

    .line 924
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theOutputDataLen:I

    .line 925
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputting:Z

    .line 927
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputAvailable:J

    .line 928
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theV:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 575
    new-instance v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;-><init>(Lorg/bouncycastle/crypto/digests/Blake3Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 1
    .param p1, "pOutput"    # [B
    .param p2, "pOutOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pOutput",
            "pOutOffset"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->getDigestSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->doFinal([BII)I

    move-result v0

    return v0
.end method

.method public doFinal([BII)I
    .locals 1
    .param p1, "pOut"    # [B
    .param p2, "pOutOffset"    # I
    .param p3, "pOutLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pOut",
            "pOutOffset",
            "pOutLen"
        }
    .end annotation

    .line 464
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->doOutput([BII)I

    move-result v0

    .line 467
    .local v0, "length":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->reset()V

    .line 468
    return v0
.end method

.method public doOutput([BII)I
    .locals 6
    .param p1, "pOut"    # [B
    .param p2, "pOutOffset"    # I
    .param p3, "pOutLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pOut",
            "pOutOffset",
            "pOutLen"
        }
    .end annotation

    .line 475
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_5

    .line 481
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputting:Z

    if-nez v0, :cond_0

    .line 484
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->compressFinalBlock(I)V

    .line 488
    :cond_0
    if-ltz p3, :cond_4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputAvailable:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    int-to-long v0, p3

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputAvailable:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 495
    :cond_1
    move v0, p3

    .line 496
    .local v0, "dataLeft":I
    move v1, p2

    .line 497
    .local v1, "outPos":I
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 500
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    rsub-int/lit8 v2, v2, 0x40

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 501
    .local v2, "dataToCopy":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    invoke-static {v4, v5, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    .line 505
    add-int/2addr v1, v2

    .line 506
    sub-int/2addr v0, v2

    .line 510
    .end local v2    # "dataToCopy":I
    :cond_2
    :goto_0
    if-lez v0, :cond_3

    .line 513
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->nextOutputBlock()V

    .line 516
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 517
    .restart local v2    # "dataToCopy":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    .line 521
    add-int/2addr v1, v2

    .line 522
    sub-int/2addr v0, v2

    .line 523
    .end local v2    # "dataToCopy":I
    goto :goto_0

    .line 526
    :cond_3
    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputAvailable:J

    int-to-long v4, p3

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputAvailable:J

    .line 529
    return p3

    .line 491
    .end local v0    # "dataLeft":I
    .end local v1    # "outPos":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insufficient bytes remaining"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 317
    const-string v0, "BLAKE3"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 312
    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 322
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theDigestLen:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/params/Blake3Parameters;)V
    .locals 4
    .param p1, "pParams"    # Lorg/bouncycastle/crypto/params/Blake3Parameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pParams"
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Blake3Parameters;->getKey()[B

    move-result-object v1

    .line 334
    .local v1, "myKey":[B
    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Blake3Parameters;->getContext()[B

    move-result-object v0

    .line 337
    .local v0, "myContext":[B
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->reset()V

    .line 340
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 343
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initKey([B)V

    .line 344
    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    goto :goto_2

    .line 348
    :cond_2
    if-eqz v0, :cond_3

    .line 351
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initNullKey()V

    .line 352
    const/16 v3, 0x20

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theMode:I

    .line 355
    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->update([BII)V

    .line 356
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->doFinal([BI)I

    .line 357
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initKeyFromContext()V

    .line 358
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->reset()V

    goto :goto_2

    .line 364
    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->initNullKey()V

    .line 365
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theMode:I

    .line 367
    :goto_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 534
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->resetBlockCount()V

    .line 535
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    .line 536
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputting:Z

    .line 537
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 538
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 5
    .param p1, "pSource"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pSource"
        }
    .end annotation

    .line 543
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;

    .line 546
    .local v0, "mySource":Lorg/bouncycastle/crypto/digests/Blake3Digest;
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCounter:J

    .line 547
    iget v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theCurrBytes:I

    .line 548
    iget v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theMode:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theMode:I

    .line 551
    iget-boolean v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputting:Z

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputting:Z

    .line 552
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputAvailable:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputAvailable:J

    .line 553
    iget v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theOutputMode:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theOutputMode:I

    .line 554
    iget v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theOutputDataLen:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theOutputDataLen:I

    .line 557
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theChaining:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theK:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theM:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 563
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theStack:Ljava/util/Stack;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 569
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget v1, v0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    .line 571
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "b"
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputting:Z

    if-nez v0, :cond_1

    .line 378
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    array-length v0, v0

    .line 379
    .local v0, "blockLen":I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    sub-int v1, v0, v1

    .line 380
    .local v1, "remainingLength":I
    if-nez v1, :cond_0

    .line 383
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->compressBlock([BI)V

    .line 386
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 387
    iput v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    .line 391
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    aput-byte p1, v2, v3

    .line 392
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    .line 393
    return-void

    .line 374
    .end local v0    # "blockLen":I
    .end local v1    # "remainingLength":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already outputting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update([BII)V
    .locals 7
    .param p1, "pMessage"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pMessage",
            "pOffset",
            "pLen"
        }
    .end annotation

    .line 400
    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    .line 406
    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->outputting:Z

    if-nez v0, :cond_4

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "remainingLen":I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 416
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    rsub-int/lit8 v0, v1, 0x40

    .line 419
    if-lt v0, p3, :cond_1

    .line 422
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    .line 424
    return-void

    .line 428
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->compressBlock([BI)V

    .line 434
    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    .line 435
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 440
    :cond_2
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x40

    .line 441
    .local v1, "blockWiseLastPos":I
    add-int v3, p2, v0

    .local v3, "messagePos":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 444
    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/digests/Blake3Digest;->compressBlock([BI)V

    .line 441
    add-int/lit8 v3, v3, 0x40

    goto :goto_0

    .line 448
    :cond_3
    sub-int v4, p3, v3

    .line 449
    .local v4, "len":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->theBuffer:[B

    add-int v6, p2, v4

    invoke-static {p1, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    add-int v5, p2, v4

    add-int/2addr v2, v5

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake3Digest;->thePos:I

    .line 451
    return-void

    .line 408
    .end local v0    # "remainingLen":I
    .end local v1    # "blockWiseLastPos":I
    .end local v3    # "messagePos":I
    .end local v4    # "len":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already outputting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_5
    :goto_1
    return-void
.end method
