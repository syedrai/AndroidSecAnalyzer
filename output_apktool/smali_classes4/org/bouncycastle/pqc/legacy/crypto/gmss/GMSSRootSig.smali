.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;
.super Ljava/lang/Object;
.source "GMSSRootSig.java"


# instance fields
.field private big8:J

.field private checksum:I

.field private counter:I

.field private gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

.field private hash:[B

.field private height:I

.field private ii:I

.field private k:I

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[B

.field private r:I

.field private seed:[B

.field private sign:[B

.field private steps:I

.field private test:I

.field private test8:J

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;II)V
    .locals 5
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "w"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "w",
            "height"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 162
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 164
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    .line 165
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    .line 166
    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->height:I

    .line 168
    const/4 v0, 0x1

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    .line 170
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    .line 171
    .local v0, "mdsizeBit":I
    int-to-double v1, v0

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messagesize:I

    .line 172
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .locals 16
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "statByte"    # [[B
    .param p3, "statInt"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "statByte",
            "statInt"
        }
    .end annotation

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 105
    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 106
    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 108
    const/4 v2, 0x0

    aget v3, p3, v2

    iput v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    .line 109
    const/4 v3, 0x1

    aget v4, p3, v3

    iput v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    .line 110
    const/4 v4, 0x2

    aget v5, p3, v4

    iput v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    .line 111
    const/4 v5, 0x3

    aget v6, p3, v5

    iput v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    .line 112
    const/4 v6, 0x4

    aget v7, p3, v6

    iput v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->steps:I

    .line 113
    const/4 v7, 0x5

    aget v8, p3, v7

    iput v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->keysize:I

    .line 114
    const/4 v8, 0x6

    aget v9, p3, v8

    iput v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->height:I

    .line 115
    const/4 v9, 0x7

    aget v10, p3, v9

    iput v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    .line 116
    const/16 v10, 0x8

    aget v11, p3, v10

    iput v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    .line 118
    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v11}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v11

    iput v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    .line 120
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    shl-int v11, v3, v11

    sub-int/2addr v11, v3

    iput v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    .line 122
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/2addr v11, v5

    .line 123
    .local v11, "mdsizeBit":I
    int-to-double v12, v11

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    int-to-double v14, v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    iput v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messagesize:I

    .line 125
    aget-object v12, p2, v2

    iput-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 126
    aget-object v12, p2, v3

    iput-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->seed:[B

    .line 127
    aget-object v12, p2, v4

    iput-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    .line 129
    aget-object v12, p2, v5

    iput-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->sign:[B

    .line 131
    aget-object v12, p2, v6

    aget-byte v2, v12, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v12, v2

    aget-object v2, p2, v6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v10

    or-long/2addr v2, v12

    aget-object v12, p2, v6

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v12, v4

    const/16 v4, 0x10

    shl-long/2addr v12, v4

    or-long/2addr v2, v12

    aget-object v12, p2, v6

    aget-byte v5, v12, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v12, v5

    const/16 v5, 0x18

    shl-long/2addr v12, v5

    or-long/2addr v2, v12

    aget-object v12, p2, v6

    aget-byte v12, v12, v6

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    or-long/2addr v2, v12

    aget-object v12, p2, v6

    aget-byte v7, v12, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v12, v7

    const/16 v7, 0x28

    shl-long/2addr v12, v7

    or-long/2addr v2, v12

    aget-object v12, p2, v6

    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v12, v8

    const/16 v8, 0x30

    shl-long/2addr v12, v8

    or-long/2addr v2, v12

    aget-object v12, p2, v6

    aget-byte v9, v12, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v12, v9

    const/16 v9, 0x38

    shl-long/2addr v12, v9

    or-long/2addr v2, v12

    iput-wide v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    .line 140
    aget-object v2, p2, v6

    aget-byte v2, v2, v10

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    aget-object v12, p2, v6

    const/16 v13, 0x9

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    shl-long/2addr v12, v10

    or-long/2addr v2, v12

    aget-object v10, p2, v6

    const/16 v12, 0xa

    aget-byte v10, v10, v12

    and-int/lit16 v10, v10, 0xff

    int-to-long v12, v10

    shl-long/2addr v12, v4

    or-long/2addr v2, v12

    aget-object v4, p2, v6

    const/16 v10, 0xb

    aget-byte v4, v4, v10

    and-int/lit16 v4, v4, 0xff

    int-to-long v12, v4

    shl-long v4, v12, v5

    or-long/2addr v2, v4

    aget-object v4, p2, v6

    const/16 v5, 0xc

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v14

    or-long/2addr v2, v4

    aget-object v4, p2, v6

    const/16 v5, 0xd

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    aget-object v4, p2, v6

    const/16 v5, 0xe

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    aget-object v4, p2, v6

    const/16 v5, 0xf

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v9

    or-long/2addr v2, v4

    iput-wide v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    .line 148
    return-void
.end method

.method private oneStep()V
    .locals 11

    .line 389
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    const/16 v1, 0x8

    rem-int v0, v1, v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 391
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 397
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v0, v3, :cond_0

    .line 399
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v0, v0, v3

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    .line 400
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v4, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto :goto_0

    .line 404
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    .line 405
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    goto :goto_0

    .line 408
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    if-lez v0, :cond_2

    .line 411
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v4, v4

    invoke-interface {v0, v3, v2, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 412
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 413
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 414
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    .line 416
    :cond_2
    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_10

    .line 419
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->sign:[B

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int v4, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    .line 423
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    div-int/2addr v1, v2

    rem-int/2addr v0, v1

    if-nez v0, :cond_10

    .line 426
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    goto/16 :goto_9

    .line 432
    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    const-wide/16 v3, 0x0

    if-ge v0, v1, :cond_a

    .line 435
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_8

    .line 437
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v0, v1, :cond_6

    .line 440
    iput-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    .line 441
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    div-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_5

    .line 445
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    if-ge v0, v1, :cond_4

    .line 447
    iget-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v0, 0x3

    shl-int/2addr v1, v5

    int-to-long v5, v1

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    .line 448
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "j":I
    :cond_4
    goto :goto_3

    .line 453
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    rem-int/2addr v1, v3

    if-ge v0, v1, :cond_6

    .line 455
    iget-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v0, 0x3

    shl-int/2addr v1, v5

    int-to-long v5, v1

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    .line 456
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 460
    .end local v0    # "j":I
    :cond_6
    :goto_3
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messagesize:I

    if-ne v0, v1, :cond_7

    .line 462
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    .line 465
    :cond_7
    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v3, v3

    and-long/2addr v0, v3

    long-to-int v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    .line 467
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    goto :goto_4

    .line 471
    :cond_8
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    if-lez v0, :cond_9

    .line 474
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 475
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 476
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 477
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    .line 479
    :cond_9
    :goto_4
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_10

    .line 482
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->sign:[B

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    .line 485
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    goto/16 :goto_9

    .line 490
    :cond_a
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    const/16 v5, 0x39

    if-ge v0, v5, :cond_10

    .line 493
    iget-wide v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_e

    .line 496
    iput-wide v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    .line 497
    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    .line 498
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    rem-int/2addr v0, v1

    .line 499
    .local v0, "rest":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    ushr-int/lit8 v1, v1, 0x3

    .line 501
    .local v1, "s":I
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v1, v5, :cond_d

    .line 503
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v6, v6, 0x3

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_b

    .line 505
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    .line 506
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v5, v5, 0x3

    .local v5, "f":I
    goto :goto_5

    .line 510
    .end local v5    # "f":I
    :cond_b
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    .line 511
    .restart local v5    # "f":I
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    .line 515
    :goto_5
    move v6, v1

    .local v6, "i":I
    :goto_6
    if-ge v6, v5, :cond_c

    .line 517
    iget-wide v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    iget v10, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    shl-int/lit8 v10, v10, 0x3

    shl-int/2addr v9, v10

    int-to-long v9, v9

    xor-long/2addr v7, v9

    iput-wide v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    .line 518
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    .line 515
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 522
    .end local v6    # "i":I
    :cond_c
    iget-wide v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    ushr-long/2addr v6, v0

    iput-wide v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    .line 523
    iget-wide v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    iget v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v8, v8

    and-long/2addr v6, v8

    iput-wide v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    goto :goto_7

    .line 528
    .end local v5    # "f":I
    :cond_d
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v5, v6

    int-to-long v5, v5

    iput-wide v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    .line 529
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v5, v6

    iput v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    .line 532
    :goto_7
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 535
    .end local v0    # "rest":I
    .end local v1    # "s":I
    goto :goto_8

    .line 536
    :cond_e
    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_f

    .line 539
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v5, v5

    invoke-interface {v0, v1, v2, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 540
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 541
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 542
    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    const-wide/16 v5, 0x1

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    .line 544
    :cond_f
    :goto_8
    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_10

    .line 547
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->sign:[B

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    .line 553
    :cond_10
    :goto_9
    return-void
.end method


# virtual methods
.method public getLog(I)I
    .locals 2
    .param p1, "intValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intValue"
        }
    .end annotation

    .line 565
    const/4 v0, 0x1

    .line 566
    .local v0, "log":I
    const/4 v1, 0x2

    .line 567
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 569
    shl-int/lit8 v1, v1, 0x1

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_0
    return v0
.end method

.method public getSig()[B
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->sign:[B

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 5

    .line 583
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    const/4 v4, 0x5

    aput v4, v2, v0

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    .line 584
    .local v2, "statByte":[[B
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    aput-object v4, v2, v0

    .line 585
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->seed:[B

    aput-object v0, v2, v3

    .line 586
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    aput-object v0, v2, v1

    .line 587
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->sign:[B

    aput-object v1, v2, v0

    .line 588
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatLong()[B

    move-result-object v1

    aput-object v1, v2, v0

    .line 590
    return-object v2
.end method

.method public getStatInt()[I
    .locals 3

    .line 600
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 601
    .local v0, "statInt":[I
    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    aput v2, v0, v1

    .line 602
    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    aput v2, v0, v1

    .line 603
    const/4 v1, 0x2

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    aput v2, v0, v1

    .line 604
    const/4 v1, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    aput v2, v0, v1

    .line 605
    const/4 v1, 0x4

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->steps:I

    aput v2, v0, v1

    .line 606
    const/4 v1, 0x5

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->keysize:I

    aput v2, v0, v1

    .line 607
    const/4 v1, 0x6

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->height:I

    aput v2, v0, v1

    .line 608
    const/4 v1, 0x7

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    aput v2, v0, v1

    .line 609
    const/16 v1, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    aput v2, v0, v1

    .line 610
    return-object v0
.end method

.method public getStatLong()[B
    .locals 12

    .line 619
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 621
    .local v1, "bytes":[B
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 622
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v6, 0x8

    shr-long/2addr v2, v6

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 623
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v0

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 624
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v7, 0x18

    shr-long/2addr v2, v7

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 625
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v8, 0x20

    shr-long/2addr v2, v8

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    .line 626
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v9, 0x28

    shr-long/2addr v2, v9

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    .line 627
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v10, 0x30

    shr-long/2addr v2, v10

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    .line 628
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v11, 0x38

    shr-long/2addr v2, v11

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    .line 630
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v1, v6

    .line 631
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v6

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/16 v3, 0x9

    aput-byte v2, v1, v3

    .line 632
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v0

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/16 v2, 0xa

    aput-byte v0, v1, v2

    .line 633
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v7

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/16 v2, 0xb

    aput-byte v0, v1, v2

    .line 634
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v8

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/16 v2, 0xc

    aput-byte v0, v1, v2

    .line 635
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v9

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/16 v2, 0xd

    aput-byte v0, v1, v2

    .line 636
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v10

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/16 v2, 0xe

    aput-byte v0, v1, v2

    .line 637
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v11

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/16 v2, 0xf

    aput-byte v0, v1, v2

    .line 639
    return-object v1
.end method

.method public initSign([B[B)V
    .locals 19
    .param p1, "seed0"    # [B
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed0",
            "message"
        }
    .end annotation

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    .line 186
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 187
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    .line 188
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 191
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v2, v2, [B

    .line 192
    .local v2, "messPart":[B
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, "checkPart":I
    const/4 v5, 0x0

    .line 195
    .local v5, "sumH":I
    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getLog(I)I

    move-result v6

    .line 198
    .local v6, "checksumsize":I
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    const/16 v9, 0x8

    rem-int v8, v9, v8

    if-nez v8, :cond_3

    .line 200
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    div-int/2addr v9, v8

    .line 202
    .local v9, "dt":I
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_0
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v8, v10, :cond_1

    .line 205
    const/4 v10, 0x0

    .local v10, "b":I
    :goto_1
    if-ge v10, v9, :cond_0

    .line 207
    aget-byte v11, v2, v8

    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v11, v12

    add-int/2addr v5, v11

    .line 208
    aget-byte v11, v2, v8

    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v8

    .line 205
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 202
    .end local v10    # "b":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 212
    .end local v8    # "a":I
    :cond_1
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v8, v10

    sub-int/2addr v8, v5

    iput v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    .line 213
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    .line 215
    const/4 v8, 0x0

    .local v8, "b":I
    :goto_2
    if-ge v8, v6, :cond_2

    .line 217
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v10, v3

    add-int/2addr v5, v10

    .line 218
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v3, v10

    .line 215
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v8, v10

    goto :goto_2

    .line 220
    .end local v8    # "b":I
    .end local v9    # "dt":I
    :cond_2
    move-object/from16 v18, v2

    const/16 v16, 0x1

    goto/16 :goto_e

    .line 221
    :cond_3
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    if-ge v8, v9, :cond_a

    .line 224
    const/4 v8, 0x0

    .line 225
    .local v8, "ii":I
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    div-int/2addr v10, v11

    .line 228
    .local v10, "dt":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v10, :cond_6

    .line 230
    const-wide/16 v12, 0x0

    .line 231
    .local v12, "big8":J
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    if-ge v14, v15, :cond_4

    .line 233
    aget-byte v15, v2, v8

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v16, v14, 0x3

    shl-int v15, v15, v16

    move/from16 v17, v8

    const/16 v16, 0x1

    .end local v8    # "ii":I
    .local v17, "ii":I
    int-to-long v7, v15

    xor-long/2addr v12, v7

    .line 234
    add-int/lit8 v8, v17, 0x1

    .line 231
    .end local v17    # "ii":I
    .restart local v8    # "ii":I
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    move/from16 v17, v8

    const/16 v16, 0x1

    .line 237
    .end local v8    # "ii":I
    .end local v14    # "j":I
    .restart local v17    # "ii":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    if-ge v7, v9, :cond_5

    .line 239
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v14, v8

    and-long/2addr v14, v12

    long-to-int v8, v14

    add-int/2addr v5, v8

    .line 240
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v12, v8

    .line 237
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 228
    .end local v7    # "j":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v17

    const/4 v7, 0x1

    goto :goto_3

    .end local v12    # "big8":J
    .end local v17    # "ii":I
    .restart local v8    # "ii":I
    :cond_6
    const/16 v16, 0x1

    .line 244
    .end local v11    # "i":I
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    rem-int/2addr v7, v9

    .line 245
    .end local v10    # "dt":I
    .local v7, "dt":I
    const-wide/16 v9, 0x0

    .line 246
    .local v9, "big8":J
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_6
    if-ge v11, v7, :cond_7

    .line 248
    aget-byte v12, v2, v8

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v13, v11, 0x3

    shl-int/2addr v12, v13

    int-to-long v12, v12

    xor-long/2addr v9, v12

    .line 249
    add-int/lit8 v8, v8, 0x1

    .line 246
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 251
    .end local v11    # "j":I
    :cond_7
    shl-int/lit8 v7, v7, 0x3

    .line 253
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_7
    if-ge v11, v7, :cond_8

    .line 255
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v12, v12

    and-long/2addr v12, v9

    long-to-int v13, v12

    add-int/2addr v5, v13

    .line 256
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v9, v12

    .line 253
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v11, v12

    goto :goto_7

    .line 259
    .end local v11    # "j":I
    :cond_8
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v11, v12

    sub-int/2addr v11, v5

    iput v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    .line 260
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    .line 262
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8
    if-ge v11, v6, :cond_9

    .line 264
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v12, v3

    add-int/2addr v5, v12

    .line 265
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v3, v12

    .line 262
    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v11, v12

    goto :goto_8

    .line 267
    .end local v7    # "dt":I
    .end local v8    # "ii":I
    .end local v9    # "big8":J
    .end local v11    # "i":I
    :cond_9
    move-object/from16 v18, v2

    goto/16 :goto_e

    .line 268
    :cond_a
    const/16 v16, 0x1

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    const/16 v8, 0x39

    if-ge v7, v8, :cond_10

    .line 271
    const/4 v7, 0x0

    .line 276
    .local v7, "r":I
    :goto_9
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v8, v8, 0x3

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_c

    .line 278
    ushr-int/lit8 v8, v7, 0x3

    .line 279
    .local v8, "s":I
    rem-int/lit8 v9, v7, 0x8

    .line 280
    .local v9, "rest":I
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v7, v10

    .line 281
    add-int/lit8 v10, v7, 0x7

    ushr-int/lit8 v10, v10, 0x3

    .line 282
    .local v10, "f":I
    const-wide/16 v11, 0x0

    .line 283
    .local v11, "big8":J
    const/4 v13, 0x0

    .line 284
    .local v13, "ii":I
    move v14, v8

    .restart local v14    # "j":I
    :goto_a
    if-ge v14, v10, :cond_b

    .line 286
    aget-byte v15, v2, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v17, v13, 0x3

    shl-int v15, v15, v17

    move/from16 v18, v5

    .end local v5    # "sumH":I
    .local v18, "sumH":I
    int-to-long v4, v15

    xor-long/2addr v11, v4

    .line 287
    add-int/lit8 v13, v13, 0x1

    .line 284
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v18

    const/4 v4, 0x0

    goto :goto_a

    .end local v18    # "sumH":I
    .restart local v5    # "sumH":I
    :cond_b
    move/from16 v18, v5

    .line 289
    .end local v5    # "sumH":I
    .end local v14    # "j":I
    .restart local v18    # "sumH":I
    ushr-long v4, v11, v9

    .line 291
    .end local v11    # "big8":J
    .local v4, "big8":J
    move/from16 v11, v18

    .end local v18    # "sumH":I
    .local v11, "sumH":I
    int-to-long v14, v11

    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    move-object/from16 v18, v2

    .end local v2    # "messPart":[B
    .local v18, "messPart":[B
    int-to-long v1, v12

    and-long/2addr v1, v4

    add-long/2addr v14, v1

    long-to-int v1, v14

    move v5, v1

    move-object/from16 v2, v18

    const/4 v4, 0x0

    move-object/from16 v1, p2

    .end local v11    # "sumH":I
    .local v1, "sumH":I
    goto :goto_9

    .line 295
    .end local v1    # "sumH":I
    .end local v4    # "big8":J
    .end local v8    # "s":I
    .end local v9    # "rest":I
    .end local v10    # "f":I
    .end local v13    # "ii":I
    .end local v18    # "messPart":[B
    .restart local v2    # "messPart":[B
    .restart local v5    # "sumH":I
    :cond_c
    move-object/from16 v18, v2

    move v11, v5

    .end local v2    # "messPart":[B
    .end local v5    # "sumH":I
    .restart local v11    # "sumH":I
    .restart local v18    # "messPart":[B
    ushr-int/lit8 v1, v7, 0x3

    .line 296
    .local v1, "s":I
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v1, v2, :cond_e

    .line 298
    rem-int/lit8 v2, v7, 0x8

    .line 299
    .local v2, "rest":I
    const-wide/16 v4, 0x0

    .line 300
    .restart local v4    # "big8":J
    const/4 v8, 0x0

    .line 301
    .local v8, "ii":I
    move v9, v1

    .local v9, "j":I
    :goto_b
    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v9, v10, :cond_d

    .line 303
    aget-byte v10, v18, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v12, v8, 0x3

    shl-int/2addr v10, v12

    int-to-long v12, v10

    xor-long/2addr v4, v12

    .line 304
    add-int/lit8 v8, v8, 0x1

    .line 301
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 307
    .end local v9    # "j":I
    :cond_d
    ushr-long/2addr v4, v2

    .line 309
    int-to-long v9, v11

    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v12, v12

    and-long/2addr v12, v4

    add-long/2addr v9, v12

    long-to-int v10, v9

    move v5, v10

    .end local v11    # "sumH":I
    .local v10, "sumH":I
    goto :goto_c

    .line 296
    .end local v2    # "rest":I
    .end local v4    # "big8":J
    .end local v8    # "ii":I
    .end local v10    # "sumH":I
    .restart local v11    # "sumH":I
    :cond_e
    move v5, v11

    .line 312
    .end local v11    # "sumH":I
    .restart local v5    # "sumH":I
    :goto_c
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v2, v4

    sub-int/2addr v2, v5

    iput v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    .line 313
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->checksum:I

    .line 315
    .end local v3    # "checkPart":I
    .local v2, "checkPart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v6, :cond_f

    .line 317
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v4, v2

    add-int/2addr v5, v4

    .line 318
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v2, v4

    .line 315
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v3, v4

    goto :goto_d

    :cond_f
    move v3, v2

    goto :goto_e

    .line 268
    .end local v1    # "s":I
    .end local v7    # "r":I
    .end local v18    # "messPart":[B
    .local v2, "messPart":[B
    .local v3, "checkPart":I
    :cond_10
    move-object/from16 v18, v2

    .line 323
    .end local v2    # "messPart":[B
    .restart local v18    # "messPart":[B
    :goto_e
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->messagesize:I

    int-to-double v7, v6

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->w:I

    int-to-double v9, v2

    div-double/2addr v7, v9

    .line 324
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    add-int/2addr v1, v2

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->keysize:I

    .line 328
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->keysize:I

    add-int/2addr v1, v5

    int-to-double v1, v1

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->height:I

    shl-int v4, v16, v4

    int-to-double v7, v4

    div-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->steps:I

    .line 333
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->keysize:I

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int v1, v1, v2

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->sign:[B

    .line 334
    const/4 v1, 0x0

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    .line 335
    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test:I

    .line 336
    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->ii:I

    .line 337
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->test8:J

    .line 338
    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->r:I

    .line 340
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 342
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->seed:[B

    .line 343
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->seed:[B

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    move-object/from16 v4, p1

    const/4 v7, 0x0

    invoke-static {v4, v7, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 649
    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->big8:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "out":Ljava/lang/String;
    const/16 v1, 0x9

    new-array v2, v1, [I

    .line 651
    .local v2, "statInt":[I
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v2

    .line 652
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->mdsize:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    const/4 v5, 0x5

    aput v5, v4, v3

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .line 653
    .local v3, "statByte":[[B
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v3

    .line 654
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const-string v6, " "

    if-ge v4, v1, :cond_0

    .line 656
    aget v7, v2, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 658
    .end local v4    # "i":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 660
    new-instance v4, Ljava/lang/String;

    aget-object v7, v3, v1

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 663
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public updateSign()Z
    .locals 3

    .line 357
    const/4 v0, 0x0

    .local v0, "s":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->steps:I

    if-ge v0, v1, :cond_2

    .line 360
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->keysize:I

    if-ge v1, v2, :cond_0

    .line 363
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->oneStep()V

    .line 365
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->keysize:I

    if-ne v1, v2, :cond_1

    .line 367
    const/4 v1, 0x1

    return v1

    .line 357
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "s":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
