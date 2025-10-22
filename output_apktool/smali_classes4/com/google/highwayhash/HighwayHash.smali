.class public final Lcom/google/highwayhash/HighwayHash;
.super Ljava/lang/Object;
.source "HighwayHash.java"


# instance fields
.field private done:Z

.field private final mul0:[J

.field private final mul1:[J

.field private final v0:[J

.field private final v1:[J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 2
    .param p1, "key0"    # J
    .param p3, "key1"    # J
    .param p5, "key2"    # J
    .param p7, "key3"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key0",
            "key1",
            "key2",
            "key3"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    .line 9
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    .line 10
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    .line 11
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/highwayhash/HighwayHash;->done:Z

    .line 21
    invoke-direct/range {p0 .. p8}, Lcom/google/highwayhash/HighwayHash;->reset(JJJJ)V

    .line 22
    return-void
.end method

.method public constructor <init>([J)V
    .locals 13
    .param p1, "key"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    .line 9
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    .line 10
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    .line 11
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    .line 12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/highwayhash/HighwayHash;->done:Z

    .line 28
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v0, :cond_0

    .line 31
    aget-wide v5, p1, v1

    aget-wide v7, p1, v3

    const/4 v0, 0x2

    aget-wide v9, p1, v0

    const/4 v0, 0x3

    aget-wide v11, p1, v0

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/google/highwayhash/HighwayHash;->reset(JJJJ)V

    .line 32
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "Key length (%s) must be 4"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hash128([BII[J)[J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "key"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "length",
            "key"
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/google/highwayhash/HighwayHash;

    invoke-direct {v0, p3}, Lcom/google/highwayhash/HighwayHash;-><init>([J)V

    .line 283
    .local v0, "h":Lcom/google/highwayhash/HighwayHash;
    invoke-direct {v0, p0, p1, p2}, Lcom/google/highwayhash/HighwayHash;->processAll([BII)V

    .line 284
    invoke-virtual {v0}, Lcom/google/highwayhash/HighwayHash;->finalize128()[J

    move-result-object v1

    return-object v1
.end method

.method public static hash256([BII[J)[J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "key"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "length",
            "key"
        }
    .end annotation

    .line 295
    new-instance v0, Lcom/google/highwayhash/HighwayHash;

    invoke-direct {v0, p3}, Lcom/google/highwayhash/HighwayHash;-><init>([J)V

    .line 296
    .local v0, "h":Lcom/google/highwayhash/HighwayHash;
    invoke-direct {v0, p0, p1, p2}, Lcom/google/highwayhash/HighwayHash;->processAll([BII)V

    .line 297
    invoke-virtual {v0}, Lcom/google/highwayhash/HighwayHash;->finalize256()[J

    move-result-object v1

    return-object v1
.end method

.method public static hash64([BII[J)J
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "key"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "length",
            "key"
        }
    .end annotation

    .line 269
    new-instance v0, Lcom/google/highwayhash/HighwayHash;

    invoke-direct {v0, p3}, Lcom/google/highwayhash/HighwayHash;-><init>([J)V

    .line 270
    .local v0, "h":Lcom/google/highwayhash/HighwayHash;
    invoke-direct {v0, p0, p1, p2}, Lcom/google/highwayhash/HighwayHash;->processAll([BII)V

    .line 271
    invoke-virtual {v0}, Lcom/google/highwayhash/HighwayHash;->finalize64()J

    move-result-wide v1

    return-wide v1
.end method

.method private modularReduction(JJJJ[JI)V
    .locals 11
    .param p1, "a3_unmasked"    # J
    .param p3, "a2"    # J
    .param p5, "a1"    # J
    .param p7, "a0"    # J
    .param p9, "hash"    # [J
    .param p10, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a3_unmasked",
            "a2",
            "a1",
            "a0",
            "hash",
            "pos"
        }
    .end annotation

    .line 252
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v0, p1

    .line 253
    .local v0, "a3":J
    add-int/lit8 v2, p10, 0x1

    const/4 v3, 0x1

    shl-long v4, v0, v3

    const/16 v6, 0x3f

    ushr-long v6, p3, v6

    or-long/2addr v4, v6

    xor-long v4, p5, v4

    const/4 v6, 0x2

    shl-long v7, v0, v6

    const/16 v9, 0x3e

    ushr-long v9, p3, v9

    or-long/2addr v7, v9

    xor-long/2addr v4, v7

    aput-wide v4, p9, v2

    .line 254
    add-int/lit8 v2, p10, 0x0

    shl-long v3, p3, v3

    xor-long v3, p7, v3

    shl-long v5, p3, v6

    xor-long/2addr v3, v5

    aput-wide v3, p9, v2

    .line 255
    return-void
.end method

.method private permuteAndUpdate()V
    .locals 15

    .line 244
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    const/4 v1, 0x2

    aget-wide v2, v0, v1

    const/16 v0, 0x20

    ushr-long/2addr v2, v0

    iget-object v4, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v5, v4, v1

    shl-long v4, v5, v0

    or-long v7, v2, v4

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    const/4 v2, 0x3

    aget-wide v3, v1, v2

    ushr-long/2addr v3, v0

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v5, v1, v2

    shl-long v1, v5, v0

    or-long v9, v3, v1

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    ushr-long/2addr v3, v0

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v5, v1, v2

    shl-long v1, v5, v0

    or-long v11, v3, v1

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    ushr-long/2addr v3, v0

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v5, v1, v2

    shl-long v0, v5, v0

    or-long v13, v3, v0

    move-object v6, p0

    invoke-virtual/range {v6 .. v14}, Lcom/google/highwayhash/HighwayHash;->update(JJJJ)V

    .line 248
    return-void
.end method

.method private processAll([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "length"
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, 0x20

    if-gt v1, p3, :cond_0

    .line 303
    add-int v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/google/highwayhash/HighwayHash;->updatePacket([BI)V

    .line 302
    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 305
    :cond_0
    and-int/lit8 v1, p3, 0x1f

    if-eqz v1, :cond_1

    .line 306
    add-int v1, p2, v0

    and-int/lit8 v2, p3, 0x1f

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/highwayhash/HighwayHash;->updateRemainder([BII)V

    .line 308
    :cond_1
    return-void
.end method

.method private read64([BI)J
    .locals 7
    .param p1, "src"    # [B
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "pos"
        }
    .end annotation

    .line 227
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private reset(JJJJ)V
    .locals 13
    .param p1, "key0"    # J
    .param p3, "key1"    # J
    .param p5, "key2"    # J
    .param p7, "key3"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key0",
            "key1",
            "key2",
            "key3"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    const-wide v1, -0x24192a2a01b331d1L    # -5.186743062011711E134

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 194
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    const-wide v1, -0x5bf6c7ddd660ce30L    # -4.337150463489065E-135

    const/4 v4, 0x1

    aput-wide v1, v0, v4

    .line 195
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    const-wide v1, 0x13198a2e03707344L    # 1.157604005429504E-216

    const/4 v5, 0x2

    aput-wide v1, v0, v5

    .line 196
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    const-wide v1, 0x243f6a8885a308d3L

    const/4 v6, 0x3

    aput-wide v1, v0, v6

    .line 197
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    const-wide v1, 0x3bd39e10cb0ef593L    # 1.6616621191949435E-20

    aput-wide v1, v0, v3

    .line 198
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    const-wide v1, -0x3f530e964a0e7574L    # -3704.706466243899

    aput-wide v1, v0, v4

    .line 199
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    const-wide v1, -0x41ab9930cb16f394L    # -1.900046991467318E-8

    aput-wide v1, v0, v5

    .line 200
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    const-wide v1, 0x452821e638d01377L    # 1.4587152304808107E25

    aput-wide v1, v0, v6

    .line 201
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v7, v1, v3

    xor-long v1, v7, p1

    aput-wide v1, v0, v3

    .line 202
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v7, v1, v4

    xor-long v1, v7, p3

    aput-wide v1, v0, v4

    .line 203
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v7, v1, v5

    xor-long v1, v7, p5

    aput-wide v1, v0, v5

    .line 204
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v7, v1, v6

    xor-long v1, v7, p7

    aput-wide v1, v0, v6

    .line 205
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v7, v1, v3

    const/16 v1, 0x20

    ushr-long v9, p1, v1

    shl-long v11, p1, v1

    or-long/2addr v9, v11

    xor-long/2addr v7, v9

    aput-wide v7, v0, v3

    .line 206
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    iget-object v2, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v7, v2, v4

    ushr-long v2, p3, v1

    shl-long v9, p3, v1

    or-long/2addr v2, v9

    xor-long/2addr v2, v7

    aput-wide v2, v0, v4

    .line 207
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    iget-object v2, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v3, v2, v5

    ushr-long v7, p5, v1

    shl-long v9, p5, v1

    or-long/2addr v7, v9

    xor-long/2addr v3, v7

    aput-wide v3, v0, v5

    .line 208
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    iget-object v2, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v3, v2, v6

    ushr-long v7, p7, v1

    shl-long v1, p7, v1

    or-long/2addr v1, v7

    xor-long/2addr v1, v3

    aput-wide v1, v0, v6

    .line 209
    return-void
.end method

.method private rotate32By(J[J)V
    .locals 16
    .param p1, "count"    # J
    .param p3, "lanes"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "lanes"
        }
    .end annotation

    .line 234
    move-wide/from16 v0, p1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 235
    aget-wide v3, p3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 236
    .local v3, "half0":J
    aget-wide v7, p3, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    and-long/2addr v7, v5

    .line 237
    .local v7, "half1":J
    long-to-int v10, v0

    shl-long v10, v3, v10

    and-long/2addr v10, v5

    const-wide/16 v12, 0x20

    sub-long v14, v12, v0

    long-to-int v15, v14

    ushr-long v14, v3, v15

    or-long/2addr v10, v14

    aput-wide v10, p3, v2

    .line 238
    aget-wide v10, p3, v2

    long-to-int v14, v0

    shl-long v14, v7, v14

    and-long/2addr v5, v14

    sub-long/2addr v12, v0

    long-to-int v13, v12

    ushr-long v12, v7, v13

    or-long/2addr v5, v12

    shl-long/2addr v5, v9

    or-long/2addr v5, v10

    aput-wide v5, p3, v2

    .line 234
    .end local v3    # "half0":J
    .end local v7    # "half1":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private zipperMerge0(JJ)J
    .locals 6
    .param p1, "v1"    # J
    .param p3, "v0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v0"
        }
    .end annotation

    .line 212
    const-wide v0, 0xff000000L

    and-long/2addr v0, p3

    const-wide v2, 0xff00000000L

    and-long/2addr v2, p1

    or-long/2addr v0, v2

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p3

    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, p1

    or-long/2addr v2, v4

    const/16 v4, 0x10

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p3

    or-long/2addr v0, v2

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p3

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p1

    const/16 v4, 0x8

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, p3, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private zipperMerge1(JJ)J
    .locals 6
    .param p1, "v1"    # J
    .param p3, "v0"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v0"
        }
    .end annotation

    .line 219
    const-wide v0, 0xff000000L

    and-long/2addr v0, p1

    const-wide v2, 0xff00000000L

    and-long/2addr v2, p3

    or-long/2addr v0, v2

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    const-wide/32 v3, 0xff0000

    and-long/2addr v3, p1

    or-long/2addr v0, v3

    const-wide v3, 0xff0000000000L

    and-long/2addr v3, p1

    const/16 v5, 0x10

    ushr-long/2addr v3, v5

    or-long/2addr v0, v3

    const-wide/32 v3, 0xff00

    and-long/2addr v3, p1

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v2, p3

    const/16 v4, 0x8

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p3

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public finalize128()[J
    .locals 9

    .line 153
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 154
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 155
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 156
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 157
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 158
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/highwayhash/HighwayHash;->done:Z

    .line 160
    const/4 v1, 0x2

    new-array v2, v1, [J

    .line 161
    .local v2, "hash":[J
    iget-object v3, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    iget-object v3, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v7, v3, v4

    add-long/2addr v5, v7

    iget-object v3, p0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v7, v3, v1

    add-long/2addr v5, v7

    iget-object v3, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v7, v3, v1

    add-long/2addr v5, v7

    aput-wide v5, v2, v4

    .line 162
    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v3, v1, v0

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v5, v1, v0

    add-long/2addr v3, v5

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    const/4 v5, 0x3

    aget-wide v6, v1, v5

    add-long/2addr v3, v6

    iget-object v1, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v5, v1, v5

    add-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 163
    return-object v2
.end method

.method public finalize256()[J
    .locals 16

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 173
    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 174
    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 175
    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 176
    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 177
    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 178
    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 179
    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 180
    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 181
    invoke-direct {v0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/highwayhash/HighwayHash;->done:Z

    .line 183
    const/4 v2, 0x4

    new-array v9, v2, [J

    .line 184
    .local v9, "hash":[J
    iget-object v2, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v3, v2, v1

    iget-object v2, v0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v5, v2, v1

    add-long/2addr v3, v5

    iget-object v2, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    const/4 v5, 0x0

    aget-wide v6, v2, v5

    iget-object v2, v0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v10, v2, v5

    add-long/2addr v6, v10

    iget-object v2, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v10, v2, v1

    iget-object v2, v0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v1, v2, v1

    add-long/2addr v10, v1

    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v12, v1, v5

    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v14, v1, v5

    add-long/2addr v12, v14

    move-wide v1, v3

    move-wide v3, v6

    move-wide v5, v10

    const/4 v10, 0x0

    move-wide v7, v12

    invoke-direct/range {v0 .. v10}, Lcom/google/highwayhash/HighwayHash;->modularReduction(JJJJ[JI)V

    .line 187
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    const/4 v2, 0x3

    aget-wide v3, v1, v2

    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v5, v1, v2

    add-long/2addr v3, v5

    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    const/4 v5, 0x2

    aget-wide v6, v1, v5

    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v10, v1, v5

    add-long/2addr v6, v10

    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v10, v1, v2

    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v12, v1, v2

    add-long/2addr v10, v12

    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v12, v1, v5

    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v14, v1, v5

    add-long/2addr v12, v14

    move-wide v1, v3

    move-wide v3, v6

    move-wide v5, v10

    const/4 v10, 0x2

    move-wide v7, v12

    invoke-direct/range {v0 .. v10}, Lcom/google/highwayhash/HighwayHash;->modularReduction(JJJJ[JI)V

    .line 190
    return-object v9
.end method

.method public finalize64()J
    .locals 6

    .line 139
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 140
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 141
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 142
    invoke-direct {p0}, Lcom/google/highwayhash/HighwayHash;->permuteAndUpdate()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/highwayhash/HighwayHash;->done:Z

    .line 144
    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public update(JJJJ)V
    .locals 16
    .param p1, "a0"    # J
    .param p3, "a1"    # J
    .param p5, "a2"    # J
    .param p7, "a3"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a0",
            "a1",
            "a2",
            "a3"
        }
    .end annotation

    .line 63
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/highwayhash/HighwayHash;->done:Z

    if-nez v1, :cond_1

    .line 66
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    iget-object v5, v0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v6, v5, v2

    add-long v6, v6, p1

    add-long/2addr v3, v6

    aput-wide v3, v1, v2

    .line 67
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    iget-object v6, v0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v7, v6, v3

    add-long v7, v7, p3

    add-long/2addr v4, v7

    aput-wide v4, v1, v3

    .line 68
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    const/4 v4, 0x2

    aget-wide v5, v1, v4

    iget-object v7, v0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v8, v7, v4

    add-long v8, v8, p5

    add-long/2addr v5, v8

    aput-wide v5, v1, v4

    .line 69
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    const/4 v5, 0x3

    aget-wide v6, v1, v5

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v9, v8, v5

    add-long v9, v9, p7

    add-long/2addr v6, v9

    aput-wide v6, v1, v5

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v1, v6, :cond_0

    .line 71
    iget-object v6, v0, Lcom/google/highwayhash/HighwayHash;->mul0:[J

    aget-wide v7, v6, v1

    iget-object v9, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v10, v9, v1

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iget-object v9, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v14, v9, v1

    const/16 v9, 0x20

    ushr-long/2addr v14, v9

    mul-long v10, v10, v14

    xor-long/2addr v7, v10

    aput-wide v7, v6, v1

    .line 72
    iget-object v6, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v7, v6, v1

    iget-object v10, v0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v14, v10, v1

    add-long/2addr v7, v14

    aput-wide v7, v6, v1

    .line 73
    iget-object v6, v0, Lcom/google/highwayhash/HighwayHash;->mul1:[J

    aget-wide v7, v6, v1

    iget-object v10, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v14, v10, v1

    and-long v10, v14, v12

    iget-object v12, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v13, v12, v1

    ushr-long v12, v13, v9

    mul-long v10, v10, v12

    xor-long/2addr v7, v10

    aput-wide v7, v6, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v6, v1, v2

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v9, v8, v3

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v11, v8, v2

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/google/highwayhash/HighwayHash;->zipperMerge0(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v1, v2

    .line 76
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v6, v1, v3

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v9, v8, v3

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v11, v8, v2

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/google/highwayhash/HighwayHash;->zipperMerge1(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v1, v3

    .line 77
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v6, v1, v4

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v9, v8, v5

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v11, v8, v4

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/google/highwayhash/HighwayHash;->zipperMerge0(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v1, v4

    .line 78
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v6, v1, v5

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v9, v8, v5

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v11, v8, v4

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/google/highwayhash/HighwayHash;->zipperMerge1(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v1, v5

    .line 79
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v6, v1, v2

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v9, v8, v3

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v11, v8, v2

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/google/highwayhash/HighwayHash;->zipperMerge0(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v1, v2

    .line 80
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v6, v1, v3

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v9, v8, v3

    iget-object v8, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v11, v8, v2

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/google/highwayhash/HighwayHash;->zipperMerge1(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v1, v3

    .line 81
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v2, v1, v4

    iget-object v6, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v7, v6, v5

    iget-object v6, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v9, v6, v4

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/google/highwayhash/HighwayHash;->zipperMerge0(JJ)J

    move-result-wide v6

    add-long/2addr v2, v6

    aput-wide v2, v1, v4

    .line 82
    iget-object v1, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    aget-wide v2, v1, v5

    iget-object v6, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v7, v6, v5

    iget-object v6, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v9, v6, v4

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/google/highwayhash/HighwayHash;->zipperMerge1(JJ)J

    move-result-wide v6

    add-long/2addr v2, v6

    aput-wide v2, v1, v5

    .line 83
    return-void

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can compute a hash only once per instance"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updatePacket([BI)V
    .locals 10
    .param p1, "packet"    # [B
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packet",
            "pos"
        }
    .end annotation

    .line 41
    if-ltz p2, :cond_1

    .line 44
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 47
    add-int/lit8 v0, p2, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/highwayhash/HighwayHash;->read64([BI)J

    move-result-wide v2

    .line 48
    .local v2, "a0":J
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lcom/google/highwayhash/HighwayHash;->read64([BI)J

    move-result-wide v4

    .line 49
    .local v4, "a1":J
    add-int/lit8 v0, p2, 0x10

    invoke-direct {p0, p1, v0}, Lcom/google/highwayhash/HighwayHash;->read64([BI)J

    move-result-wide v6

    .line 50
    .local v6, "a2":J
    add-int/lit8 v0, p2, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/highwayhash/HighwayHash;->read64([BI)J

    move-result-wide v8

    .line 51
    .local v8, "a3":J
    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/google/highwayhash/HighwayHash;->update(JJJJ)V

    .line 52
    return-void

    .line 45
    .end local v2    # "a0":J
    .end local v4    # "a1":J
    .end local v6    # "a2":J
    .end local v8    # "a3":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packet must have at least 32 bytes after pos"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Pos (%s) must be positive"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateRemainder([BII)V
    .locals 16
    .param p1, "bytes"    # [B
    .param p2, "pos"    # I
    .param p3, "size_mod32"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "pos",
            "size_mod32"
        }
    .end annotation

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz p2, :cond_7

    .line 99
    if-ltz v2, :cond_6

    const/16 v5, 0x20

    if-ge v2, v5, :cond_6

    .line 103
    add-int v4, p2, v2

    array-length v6, v1

    if-gt v4, v6, :cond_5

    .line 106
    and-int/lit8 v4, v2, 0x3

    .line 107
    .local v4, "size_mod4":I
    and-int/lit8 v6, v2, -0x4

    .line 108
    .local v6, "remainder":I
    new-array v7, v5, [B

    .line 109
    .local v7, "packet":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v9, 0x4

    if-ge v8, v9, :cond_0

    .line 110
    iget-object v9, v0, Lcom/google/highwayhash/HighwayHash;->v0:[J

    aget-wide v10, v9, v8

    int-to-long v12, v2

    shl-long/2addr v12, v5

    int-to-long v14, v2

    add-long/2addr v12, v14

    add-long/2addr v10, v12

    aput-wide v10, v9, v8

    .line 109
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 112
    .end local v8    # "i":I
    :cond_0
    int-to-long v10, v2

    iget-object v5, v0, Lcom/google/highwayhash/HighwayHash;->v1:[J

    invoke-direct {v0, v10, v11, v5}, Lcom/google/highwayhash/HighwayHash;->rotate32By(J[J)V

    .line 113
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 114
    add-int v8, p2, v5

    aget-byte v8, v1, v8

    aput-byte v8, v7, v5

    .line 113
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 116
    .end local v5    # "i":I
    :cond_1
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_3

    .line 117
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v9, :cond_2

    .line 118
    add-int/lit8 v8, v5, 0x1c

    add-int v10, p2, v6

    add-int/2addr v10, v5

    add-int/2addr v10, v4

    sub-int/2addr v10, v9

    aget-byte v10, v1, v10

    aput-byte v10, v7, v8

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    :cond_2
    goto :goto_3

    .line 121
    :cond_3
    if-eqz v4, :cond_4

    .line 122
    add-int v5, p2, v6

    add-int/2addr v5, v3

    aget-byte v5, v1, v5

    const/16 v8, 0x10

    aput-byte v5, v7, v8

    .line 123
    add-int v5, p2, v6

    ushr-int/lit8 v8, v4, 0x1

    add-int/2addr v5, v8

    aget-byte v5, v1, v5

    const/16 v8, 0x11

    aput-byte v5, v7, v8

    .line 124
    add-int v5, p2, v6

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v5, v8

    aget-byte v5, v1, v5

    const/16 v8, 0x12

    aput-byte v5, v7, v8

    .line 127
    :cond_4
    :goto_3
    invoke-virtual {v0, v7, v3}, Lcom/google/highwayhash/HighwayHash;->updatePacket([BI)V

    .line 128
    return-void

    .line 104
    .end local v4    # "size_mod4":I
    .end local v6    # "remainder":I
    .end local v7    # "packet":[B
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bytes must have at least size_mod32 bytes after pos"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    const-string/jumbo v3, "size_mod32 (%s) must be between 0 and 31"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    const-string v3, "Pos (%s) must be positive"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
