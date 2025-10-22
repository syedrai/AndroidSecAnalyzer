.class Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
.super Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SHA1Digest"
.end annotation


# static fields
.field private static final DIGEST_LENGTH:I = 0x14

.field private static final Y1:I = 0x5a827999

.field private static final Y2:I = 0x6ed9eba1

.field private static final Y3:I = -0x70e44324

.field private static final Y4:I = -0x359d3e2a


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;-><init>()V

    .line 171
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    .line 179
    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    .line 180
    return-void
.end method

.method private f(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "w"
        }
    .end annotation

    .line 272
    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private g(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "w"
        }
    .end annotation

    .line 288
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private h(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "w"
        }
    .end annotation

    .line 280
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->finish()V

    .line 228
    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 229
    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 230
    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 231
    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 232
    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 234
    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    .line 236
    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 184
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 189
    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .locals 12

    .line 296
    const/16 v0, 0x10

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x50

    if-ge v0, v1, :cond_0

    .line 298
    iget-object v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v2, v0, -0x3

    aget v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v3, v0, -0x8

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v3, v0, -0xe

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v3, v0, -0x10

    aget v2, v2, v3

    xor-int/2addr v1, v2

    .line 299
    .local v1, "t":I
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v1, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 296
    .end local v1    # "t":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 306
    .local v0, "A":I
    iget v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 307
    .local v1, "B":I
    iget v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 308
    .local v2, "C":I
    iget v3, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 309
    .local v3, "D":I
    iget v4, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 314
    .local v4, "E":I
    const/4 v5, 0x0

    .line 316
    .local v5, "idx":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 320
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "idx":I
    .local v9, "idx":I
    aget v5, v8, v5

    add-int/2addr v7, v5

    const v5, 0x5a827999

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    .line 321
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 323
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .local v10, "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v3, v7

    .line 324
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 326
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v2, v7

    .line 327
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 329
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v1, v7

    .line 330
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 332
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v0, v7

    .line 333
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v7, v2, 0x2

    or-int v2, v5, v7

    .line 316
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto/16 :goto_1

    .line 339
    .end local v6    # "j":I
    .end local v9    # "idx":I
    .restart local v5    # "idx":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    if-ge v6, v7, :cond_2

    .line 343
    shl-int/lit8 v8, v0, 0x5

    ushr-int/lit8 v9, v0, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "idx":I
    .restart local v10    # "idx":I
    aget v5, v9, v5

    add-int/2addr v8, v5

    const v5, 0x6ed9eba1

    add-int/2addr v8, v5

    add-int/2addr v4, v8

    .line 344
    shl-int/lit8 v8, v1, 0x1e

    ushr-int/lit8 v9, v1, 0x2

    or-int v1, v8, v9

    .line 346
    shl-int/lit8 v8, v4, 0x5

    ushr-int/lit8 v9, v4, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .local v11, "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 347
    shl-int/lit8 v8, v0, 0x1e

    ushr-int/lit8 v9, v0, 0x2

    or-int v0, v8, v9

    .line 349
    shl-int/lit8 v8, v3, 0x5

    ushr-int/lit8 v9, v3, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v2, v8

    .line 350
    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v9, v4, 0x2

    or-int v4, v8, v9

    .line 352
    shl-int/lit8 v8, v2, 0x5

    ushr-int/lit8 v9, v2, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v1, v8

    .line 353
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v9, v3, 0x2

    or-int v3, v8, v9

    .line 355
    shl-int/lit8 v8, v1, 0x5

    ushr-int/lit8 v9, v1, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v0, v8

    .line 356
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 339
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto/16 :goto_2

    .line 362
    .end local v6    # "j":I
    .end local v10    # "idx":I
    .restart local v5    # "idx":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    if-ge v6, v7, :cond_3

    .line 366
    shl-int/lit8 v8, v0, 0x5

    ushr-int/lit8 v9, v0, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "idx":I
    .restart local v10    # "idx":I
    aget v5, v9, v5

    add-int/2addr v8, v5

    const v5, -0x70e44324

    add-int/2addr v8, v5

    add-int/2addr v4, v8

    .line 367
    shl-int/lit8 v8, v1, 0x1e

    ushr-int/lit8 v9, v1, 0x2

    or-int v1, v8, v9

    .line 369
    shl-int/lit8 v8, v4, 0x5

    ushr-int/lit8 v9, v4, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 370
    shl-int/lit8 v8, v0, 0x1e

    ushr-int/lit8 v9, v0, 0x2

    or-int v0, v8, v9

    .line 372
    shl-int/lit8 v8, v3, 0x5

    ushr-int/lit8 v9, v3, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v2, v8

    .line 373
    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v9, v4, 0x2

    or-int v4, v8, v9

    .line 375
    shl-int/lit8 v8, v2, 0x5

    ushr-int/lit8 v9, v2, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v1, v8

    .line 376
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v9, v3, 0x2

    or-int v3, v8, v9

    .line 378
    shl-int/lit8 v8, v1, 0x5

    ushr-int/lit8 v9, v1, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v0, v8

    .line 379
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 362
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto/16 :goto_3

    .line 385
    .end local v6    # "j":I
    .end local v10    # "idx":I
    .restart local v5    # "idx":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    const/4 v7, 0x3

    if-gt v6, v7, :cond_4

    .line 389
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "idx":I
    .restart local v9    # "idx":I
    aget v5, v8, v5

    add-int/2addr v7, v5

    const v5, -0x359d3e2a    # -3715189.5f

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    .line 390
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 392
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v3, v7

    .line 393
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 395
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v2, v7

    .line 396
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 398
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v1, v7

    .line 399
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 401
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v0, v7

    .line 402
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v7, v2, 0x2

    or-int v2, v5, v7

    .line 385
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto/16 :goto_4

    .line 406
    .end local v6    # "j":I
    .end local v9    # "idx":I
    .restart local v5    # "idx":I
    :cond_4
    iget v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 407
    iget v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 408
    iget v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 409
    iget v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/2addr v6, v3

    iput v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 410
    iget v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 415
    const/4 v6, 0x0

    iput v6, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    .line 416
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    const/16 v8, 0x10

    if-ge v7, v8, :cond_5

    .line 418
    iget-object v8, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    aput v6, v8, v7

    .line 416
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 420
    .end local v7    # "i":I
    :cond_5
    return-void
.end method

.method protected processLength(J)V
    .locals 4
    .param p1, "bitLength"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitLength"
        }
    .end annotation

    .line 213
    iget v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    aput v3, v0, v1

    .line 219
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v2, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 220
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff"
        }
    .end annotation

    .line 198
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    .line 199
    .local v0, "n":I
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 200
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 201
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 202
    iget-object v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    iget v3, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    aput v0, v1, v3

    .line 204
    iget v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    if-ne v1, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    .line 208
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 244
    invoke-super {p0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->reset()V

    .line 246
    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 247
    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 248
    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 249
    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 250
    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 255
    iget-object v2, p0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    aput v0, v2, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
