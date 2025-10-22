.class abstract Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;
.super Ljava/lang/Object;
.source "Kangaroo.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/crypto/Xof;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Kangaroo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "KangarooBase"
.end annotation


# static fields
.field private static final BLKSIZE:I = 0x2000

.field private static final FINAL:[B

.field private static final FIRST:[B

.field private static final INTERMEDIATE:[B

.field private static final SINGLE:[B


# instance fields
.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private final singleByte:[B

.field private squeezing:Z

.field private final theChainLen:I

.field private theCurrNode:I

.field private final theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

.field private thePersonal:[B

.field private theProcessed:I

.field private final theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 166
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    sput-object v1, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->SINGLE:[B

    .line 171
    new-array v0, v0, [B

    const/16 v1, 0xb

    aput-byte v1, v0, v2

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->INTERMEDIATE:[B

    .line 176
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FINAL:[B

    .line 181
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FIRST:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(IIILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "pStrength"    # I
    .param p2, "pRounds"    # I
    .param p3, "pLength"    # I
    .param p4, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "pStrength",
            "pRounds",
            "pLength",
            "purpose"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->singleByte:[B

    .line 238
    new-instance v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;-><init>(II)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    .line 239
    new-instance v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;-><init>(II)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    .line 240
    shr-int/lit8 v0, p1, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->buildPersonal([B)V

    .line 244
    iput-object p4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 246
    invoke-static {p0, p1, p4}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 248
    return-void
.end method

.method private buildPersonal([B)V
    .locals 5
    .param p1, "pPersonal"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pPersonal"
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    .line 259
    .local v1, "myLen":I
    :goto_0
    int-to-long v2, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->lengthEncode(J)[B

    move-result-object v2

    .line 260
    .local v2, "myEnc":[B
    if-nez p1, :cond_1

    .line 261
    array-length v3, v2

    add-int/2addr v3, v1

    new-array v3, v3, [B

    goto :goto_1

    .line 262
    :cond_1
    array-length v3, v2

    add-int/2addr v3, v1

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->thePersonal:[B

    .line 263
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->thePersonal:[B

    array-length v4, v2

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    return-void
.end method

.method private static lengthEncode(J)[B
    .locals 9
    .param p0, "strLen"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "strLen"
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "n":B
    move-wide v1, p0

    .line 513
    .local v1, "v":J
    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_0

    .line 515
    const/4 v0, 0x1

    .line 516
    :goto_0
    shr-long v6, v1, v3

    move-wide v1, v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    .line 518
    add-int/lit8 v6, v0, 0x1

    int-to-byte v0, v6

    goto :goto_0

    .line 523
    :cond_0
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [B

    .line 524
    .local v4, "b":[B
    aput-byte v0, v4, v0

    .line 527
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 529
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x8

    shr-long v6, p0, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v4, v5

    .line 527
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 533
    .end local v5    # "i":I
    :cond_1
    return-object v4
.end method

.method private processData([BII)V
    .locals 7
    .param p1, "pIn"    # [B
    .param p2, "pInOffSet"    # I
    .param p3, "pLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pIn",
            "pInOffSet",
            "pLen"
        }
    .end annotation

    .line 361
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->squeezing:Z

    if-nez v0, :cond_5

    .line 367
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    .line 370
    .local v0, "mySponge":Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    const/16 v2, 0x2000

    rsub-int v1, v1, 0x2000

    .line 373
    .local v1, "mySpace":I
    if-lt v1, p3, :cond_1

    .line 376
    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 377
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    .line 378
    return-void

    .line 382
    :cond_1
    if-lez v1, :cond_2

    .line 384
    invoke-static {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 385
    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    .line 389
    :cond_2
    move v3, v1

    .line 390
    .local v3, "myProcessed":I
    :goto_1
    if-ge v3, p3, :cond_4

    .line 393
    iget v4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    if-ne v4, v2, :cond_3

    .line 395
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchLeaf(Z)V

    .line 399
    :cond_3
    sub-int v4, p3, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 400
    .local v4, "myDataLen":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    add-int v6, p2, v3

    invoke-static {v5, p1, v6, v4}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 401
    iget v5, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    .line 402
    add-int/2addr v3, v4

    .line 403
    .end local v4    # "myDataLen":I
    goto :goto_1

    .line 404
    :cond_4
    return-void

    .line 363
    .end local v0    # "mySponge":Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;
    .end local v1    # "mySpace":I
    .end local v3    # "myProcessed":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private switchFinal()V
    .locals 5

    .line 489
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchLeaf(Z)V

    .line 492
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->lengthEncode(J)[B

    move-result-object v1

    .line 493
    .local v1, "myLength":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    array-length v3, v1

    invoke-static {v2, v1, v0, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 496
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    sget-object v3, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FINAL:[B

    sget-object v4, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FINAL:[B

    array-length v4, v4

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 499
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mpadAndSwitchToSqueezingPhase(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    .line 500
    return-void
.end method

.method private switchLeaf(Z)V
    .locals 4
    .param p1, "pMoreToCome"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pMoreToCome"
        }
    .end annotation

    .line 423
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    sget-object v2, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FIRST:[B

    sget-object v3, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FIRST:[B

    array-length v3, v3

    invoke-static {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    sget-object v2, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->INTERMEDIATE:[B

    sget-object v3, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->INTERMEDIATE:[B

    array-length v3, v3

    invoke-static {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 436
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    new-array v0, v0, [B

    .line 437
    .local v0, "myHash":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    invoke-static {v2, v0, v1, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$msqueeze(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 438
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    invoke-static {v2, v0, v1, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 441
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$minitSponge(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    .line 445
    .end local v0    # "myHash":[B
    :goto_0
    if-eqz p1, :cond_1

    .line 447
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    .line 449
    :cond_1
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    .line 450
    return-void
.end method

.method private switchSingle()V
    .locals 4

    .line 477
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    sget-object v1, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->SINGLE:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mabsorb(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 480
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$mpadAndSwitchToSqueezingPhase(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    .line 481
    return-void
.end method

.method private switchToSqueezing()V
    .locals 3

    .line 458
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->thePersonal:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->thePersonal:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->processData([BII)V

    .line 461
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchSingle()V

    goto :goto_0

    .line 467
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchFinal()V

    .line 469
    :goto_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "pOut"    # [B
    .param p2, "pOutOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pOut",
            "pOutOffset"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->getDigestSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->doFinal([BII)I

    move-result v0

    return v0
.end method

.method public doFinal([BII)I
    .locals 2
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

    .line 315
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->squeezing:Z

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->doOutput([BII)I

    move-result v0

    .line 324
    .local v0, "length":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->reset()V

    .line 325
    return v0

    .line 317
    .end local v0    # "length":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already outputting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doOutput([BII)I
    .locals 2
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

    .line 333
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->squeezing:Z

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchToSqueezing()V

    .line 339
    :cond_0
    if-ltz p3, :cond_1

    .line 345
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$msqueeze(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    .line 346
    return p3

    .line 341
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteLength()I
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$fgettheRateBytes(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 273
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;)V
    .locals 1
    .param p1, "pParams"    # Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pParams"
        }
    .end annotation

    .line 284
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;->getPersonalisation()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->buildPersonal([B)V

    .line 287
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->reset()V

    .line 288
    return-void
.end method

.method public reset()V
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$minitSponge(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    .line 409
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->-$$Nest$minitSponge(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    .line 411
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    .line 412
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->squeezing:Z

    .line 413
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "pIn"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pIn"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 293
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->singleByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->update([BII)V

    .line 294
    return-void
.end method

.method public update([BII)V
    .locals 0
    .param p1, "pIn"    # [B
    .param p2, "pInOff"    # I
    .param p3, "pLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pIn",
            "pInOff",
            "pLen"
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->processData([BII)V

    .line 301
    return-void
.end method
