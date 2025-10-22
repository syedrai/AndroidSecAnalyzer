.class public Lorg/bouncycastle/crypto/digests/Blake2xsDigest;
.super Ljava/lang/Object;
.source "Blake2xsDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Xof;


# static fields
.field private static final DIGEST_LENGTH:I = 0x20

.field private static final MAX_NUMBER_BLOCKS:J = 0x100000000L

.field public static final UNKNOWN_DIGEST_LENGTH:I = 0xffff


# instance fields
.field private blockPos:J

.field private buf:[B

.field private bufPos:I

.field private digestLength:I

.field private digestPos:I

.field private h0:[B

.field private hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

.field private nodeOffset:J

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    const v0, 0xffff

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "digestBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestBytes"
        }
    .end annotation

    .line 104
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 105
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 6
    .param p1, "digestBytes"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestBytes",
            "purpose"
        }
    .end annotation

    .line 100
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    .end local p1    # "digestBytes":I
    .end local p2    # "purpose":Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .local v1, "digestBytes":I
    .local v5, "purpose":Lorg/bouncycastle/crypto/CryptoServicePurpose;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;-><init>(I[B[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 101
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 6
    .param p1, "digestBytes"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestBytes",
            "key"
        }
    .end annotation

    .line 115
    const/4 v4, 0x0

    sget-object v5, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .end local p1    # "digestBytes":I
    .end local p2    # "key":[B
    .local v1, "digestBytes":I
    .local v2, "key":[B
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;-><init>(I[B[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 116
    return-void
.end method

.method public constructor <init>(I[B[B[BLorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 10
    .param p1, "digestBytes"    # I
    .param p2, "key"    # [B
    .param p3, "salt"    # [B
    .param p4, "personalization"    # [B
    .param p5, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestBytes",
            "key",
            "salt",
            "personalization",
            "purpose"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    .line 58
    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    .line 63
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    .line 128
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 134
    iput p1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    .line 135
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->computeNodeOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    .line 136
    iput-object p5, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 137
    new-instance v2, Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    const/16 v3, 0x20

    iget-wide v7, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    .end local p2    # "key":[B
    .end local p3    # "salt":[B
    .end local p4    # "personalization":[B
    .end local p5    # "purpose":Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .local v4, "key":[B
    .local v5, "salt":[B
    .local v6, "personalization":[B
    .local v9, "purpose":Lorg/bouncycastle/crypto/CryptoServicePurpose;
    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(I[B[B[BJLorg/bouncycastle/crypto/CryptoServicePurpose;)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    .line 138
    return-void

    .line 128
    .end local v4    # "key":[B
    .end local v5    # "salt":[B
    .end local v6    # "personalization":[B
    .end local v9    # "purpose":Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .restart local p2    # "key":[B
    .restart local p3    # "salt":[B
    .restart local p4    # "personalization":[B
    .restart local p5    # "purpose":Lorg/bouncycastle/crypto/CryptoServicePurpose;
    :cond_0
    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    .line 130
    .end local p2    # "key":[B
    .end local p3    # "salt":[B
    .end local p4    # "personalization":[B
    .end local p5    # "purpose":Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .restart local v4    # "key":[B
    .restart local v5    # "salt":[B
    .restart local v6    # "personalization":[B
    .restart local v9    # "purpose":Lorg/bouncycastle/crypto/CryptoServicePurpose;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "BLAKE2xs digest length must be between 1 and 2^16-1"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Blake2xsDigest;)V
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/crypto/digests/Blake2xsDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    .line 58
    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    .line 63
    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    .line 142
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    .line 143
    new-instance v0, Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    iget-object v1, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(Lorg/bouncycastle/crypto/digests/Blake2sDigest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    .line 144
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    .line 145
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    .line 146
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    .line 147
    iget v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    .line 148
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    .line 149
    iget-wide v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    .line 150
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    .line 151
    return-void
.end method

.method private computeNodeOffset()J
    .locals 4

    .line 332
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    int-to-long v0, v0

    const-wide v2, 0x100000000L

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private computeStepLength()I
    .locals 3

    .line 322
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    const v1, 0xffff

    const/16 v2, 0x20

    if-ne v0, v1, :cond_0

    .line 324
    return v2

    .line 327
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOffset"
        }
    .end annotation

    .line 241
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->doFinal([BII)I

    move-result v0

    return v0
.end method

.method public doFinal([BII)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 254
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->doOutput([BII)I

    move-result v0

    .line 256
    .local v0, "ret":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->reset()V

    .line 258
    return v0
.end method

.method public doOutput([BII)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 272
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_6

    .line 277
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    .line 280
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->doFinal([BI)I

    .line 283
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    const v2, 0xffff

    if-eq v0, v2, :cond_2

    .line 285
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    add-int/2addr v0, p3

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    if-gt v0, v2, :cond_1

    goto :goto_0

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output length is above the digest length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_2
    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    const/4 v0, 0x5

    shl-long/2addr v2, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->getUnknownMaxLength()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    .line 297
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_4

    .line 299
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    .line 301
    new-instance v2, Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->computeStepLength()I

    move-result v4

    iget-wide v5, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    invoke-direct {v2, v4, v3, v5, v6}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;-><init>(IIJ)V

    .line 302
    .local v2, "h":Lorg/bouncycastle/crypto/digests/Blake2sDigest;
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    .line 304
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 305
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->doFinal([BI)I

    .line 306
    iput v1, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    .line 307
    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    .line 308
    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    .line 310
    .end local v2    # "h":Lorg/bouncycastle/crypto/digests/Blake2sDigest;
    :cond_3
    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v2

    .line 311
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    .line 312
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 315
    .end local v0    # "i":I
    :cond_4
    return p3

    .line 293
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum length is 2^32 blocks of 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_6
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 160
    const-string v0, "BLAKE2xs"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 170
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestLength:I

    return v0
.end method

.method public getUnknownMaxLength()J
    .locals 2

    .line 192
    const-wide v0, 0x2000000000L

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 223
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->reset()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->h0:[B

    .line 226
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->bufPos:I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->digestPos:I

    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->blockPos:J

    .line 229
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->computeNodeOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->nodeOffset:J

    .line 230
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update(B)V

    .line 203
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Blake2xsDigest;->hash:Lorg/bouncycastle/crypto/digests/Blake2sDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Blake2sDigest;->update([BII)V

    .line 215
    return-void
.end method
