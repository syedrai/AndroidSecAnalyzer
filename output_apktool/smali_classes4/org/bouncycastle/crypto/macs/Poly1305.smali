.class public Lorg/bouncycastle/crypto/macs/Poly1305;
.super Ljava/lang/Object;
.source "Poly1305.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field private static final BLOCK_SIZE:I = 0x10


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private final currentBlock:[B

.field private currentBlockOffset:I

.field private h0:I

.field private h1:I

.field private h2:I

.field private h3:I

.field private h4:I

.field private k0:I

.field private k1:I

.field private k2:I

.field private k3:I

.field private r0:I

.field private r1:I

.field private r2:I

.field private r3:I

.field private r4:I

.field private s1:I

.field private s2:I

.field private s3:I

.field private s4:I

.field private final singleByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->singleByte:[B

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->singleByte:[B

    .line 48
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 69
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 73
    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 74
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a 128 bit block cipher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final mul32x32_64(II)J
    .locals 4
    .param p0, "i1"    # I
    .param p1, "i2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i1",
            "i2"
        }
    .end annotation

    .line 311
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private processBlock()V
    .locals 26

    .line 207
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    .line 209
    iget-object v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    iget v4, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/4 v5, 0x1

    aput-byte v5, v1, v4

    .line 210
    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/2addr v1, v5

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 212
    iget-object v4, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    aput-byte v2, v4, v1

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    int-to-long v1, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    .line 217
    .local v1, "t0":J
    iget-object v6, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    .line 218
    .local v6, "t1":J
    iget-object v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    int-to-long v10, v8

    and-long/2addr v10, v4

    .line 219
    .local v10, "t2":J
    iget-object v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v12, 0xc

    invoke-static {v8, v12}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    int-to-long v12, v8

    and-long/2addr v4, v12

    .line 221
    .local v4, "t3":J
    iget v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    int-to-long v12, v8

    const-wide/32 v14, 0x3ffffff

    and-long v16, v1, v14

    add-long v12, v12, v16

    long-to-int v8, v12

    iput v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    .line 222
    iget v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    int-to-long v12, v8

    const/16 v8, 0x20

    shl-long v16, v6, v8

    or-long v16, v16, v1

    const/16 v18, 0x1a

    ushr-long v16, v16, v18

    and-long v16, v16, v14

    add-long v12, v12, v16

    long-to-int v13, v12

    iput v13, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    .line 223
    iget v12, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    int-to-long v12, v12

    shl-long v16, v10, v8

    or-long v16, v16, v6

    const/16 v19, 0x14

    ushr-long v16, v16, v19

    and-long v16, v16, v14

    add-long v12, v12, v16

    long-to-int v13, v12

    iput v13, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    .line 224
    iget v12, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    int-to-long v12, v12

    shl-long v16, v4, v8

    or-long v16, v16, v10

    const/16 v8, 0xe

    ushr-long v16, v16, v8

    and-long v14, v16, v14

    add-long/2addr v12, v14

    long-to-int v8, v12

    iput v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    .line 225
    iget v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    int-to-long v12, v8

    ushr-long v8, v4, v9

    add-long/2addr v12, v8

    long-to-int v8, v12

    iput v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    .line 227
    iget v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    if-ne v8, v3, :cond_1

    .line 229
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    const/high16 v8, 0x1000000

    add-int/2addr v3, v8

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    .line 232
    :cond_1
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v8

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v12, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    invoke-static {v3, v12}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v12

    add-long/2addr v8, v12

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v12, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s3:I

    invoke-static {v3, v12}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v12

    add-long/2addr v8, v12

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v12, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s2:I

    invoke-static {v3, v12}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v12

    add-long/2addr v8, v12

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v12, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s1:I

    invoke-static {v3, v12}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 233
    .local v8, "tp0":J
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v12, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    invoke-static {v3, v12}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v12

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v14, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v3, v14}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v14

    add-long/2addr v12, v14

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v14, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    invoke-static {v3, v14}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v14

    add-long/2addr v12, v14

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v14, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s3:I

    invoke-static {v3, v14}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v14

    add-long/2addr v12, v14

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v14, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s2:I

    invoke-static {v3, v14}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v14

    add-long/2addr v12, v14

    .line 234
    .local v12, "tp1":J
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v14, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    invoke-static {v3, v14}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v14

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    move-wide/from16 v16, v1

    .end local v1    # "t0":J
    .local v16, "t0":J
    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long/2addr v14, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v2, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long/2addr v14, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v2, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long/2addr v14, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v2, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s3:I

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long/2addr v14, v1

    .line 235
    .local v14, "tp2":J
    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v2, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r3:I

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    move-wide/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long v1, v19, v1

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    move-wide/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long v1, v19, v1

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    move-wide/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long v1, v19, v1

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    move-wide/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long v1, v19, v1

    .line 236
    .local v1, "tp3":J
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    move-wide/from16 v19, v1

    .end local v1    # "tp3":J
    .local v19, "tp3":J
    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r4:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    move-wide/from16 v21, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r3:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long v1, v21, v1

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    move-wide/from16 v21, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long v1, v21, v1

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    move-wide/from16 v21, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long v1, v21, v1

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    move-wide/from16 v21, v1

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v3, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v1

    add-long v1, v21, v1

    .line 238
    .local v1, "tp4":J
    long-to-int v3, v8

    const v21, 0x3ffffff

    and-int v3, v3, v21

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    ushr-long v22, v8, v18

    add-long v12, v12, v22

    .line 239
    long-to-int v3, v12

    and-int v3, v3, v21

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    ushr-long v22, v12, v18

    add-long v14, v14, v22

    .line 240
    long-to-int v3, v14

    and-int v3, v3, v21

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    ushr-long v22, v14, v18

    move-wide/from16 v24, v1

    .end local v1    # "tp4":J
    .local v24, "tp4":J
    add-long v1, v19, v22

    .line 241
    .end local v19    # "tp3":J
    .local v1, "tp3":J
    long-to-int v3, v1

    and-int v3, v3, v21

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    ushr-long v19, v1, v18

    move-wide/from16 v22, v1

    .end local v1    # "tp3":J
    .local v22, "tp3":J
    add-long v1, v24, v19

    .line 242
    .end local v24    # "tp4":J
    .local v1, "tp4":J
    long-to-int v3, v1

    and-int v3, v3, v21

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    .line 243
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    move-wide/from16 v19, v1

    .end local v1    # "tp4":J
    .local v19, "tp4":J
    ushr-long v1, v19, v18

    long-to-int v2, v1

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v3, v2

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    .line 244
    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v2, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    ushr-int/lit8 v2, v2, 0x1a

    add-int/2addr v1, v2

    iput v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    and-int v1, v1, v21

    iput v1, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    .line 245
    return-void
.end method

.method private setKey([B[B)V
    .locals 10
    .param p1, "key"    # [B
    .param p2, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "nonce"
        }
    .end annotation

    .line 115
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/16 v1, 0x10

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a 128 bit IV."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    .line 126
    .local v2, "t0":I
    const/4 v3, 0x4

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 127
    .local v3, "t1":I
    const/16 v4, 0x8

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 128
    .local v4, "t2":I
    const/16 v5, 0xc

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 131
    .local v5, "t3":I
    const v6, 0x3ffffff

    and-int/2addr v6, v2

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    .line 132
    ushr-int/lit8 v6, v2, 0x1a

    shl-int/lit8 v7, v3, 0x6

    or-int/2addr v6, v7

    const v7, 0x3ffff03

    and-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    .line 133
    ushr-int/lit8 v6, v3, 0x14

    shl-int/lit8 v7, v4, 0xc

    or-int/2addr v6, v7

    const v7, 0x3ffc0ff

    and-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    .line 134
    ushr-int/lit8 v6, v4, 0xe

    shl-int/lit8 v7, v5, 0x12

    or-int/2addr v6, v7

    const v7, 0x3f03fff

    and-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r3:I

    .line 135
    ushr-int/lit8 v6, v5, 0x8

    const v7, 0xfffff

    and-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r4:I

    .line 138
    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s1:I

    .line 139
    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s2:I

    .line 140
    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r3:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s3:I

    .line 141
    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r4:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    .line 146
    iget-object v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    if-nez v6, :cond_2

    .line 148
    move-object v0, p1

    .line 149
    .local v0, "kBytes":[B
    const/16 v1, 0x10

    .local v1, "kOff":I
    goto :goto_1

    .line 154
    .end local v0    # "kBytes":[B
    .end local v1    # "kOff":I
    :cond_2
    new-array v6, v1, [B

    .line 155
    .local v6, "kBytes":[B
    const/4 v7, 0x0

    .line 157
    .local v7, "kOff":I
    iget-object v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v9, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v9, p1, v1, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    const/4 v1, 0x1

    invoke-interface {v8, v1, v9}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 158
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p2, v0, v6, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-object v0, v6

    move v1, v7

    .line 161
    .end local v6    # "kBytes":[B
    .end local v7    # "kOff":I
    .restart local v0    # "kBytes":[B
    .restart local v1    # "kOff":I
    :goto_1
    add-int/lit8 v6, v1, 0x0

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k0:I

    .line 162
    add-int/lit8 v6, v1, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k1:I

    .line 163
    add-int/lit8 v6, v1, 0x8

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k2:I

    .line 164
    add-int/lit8 v6, v1, 0xc

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iput v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k3:I

    .line 165
    return-void

    .line 117
    .end local v0    # "kBytes":[B
    .end local v1    # "kOff":I
    .end local v2    # "t0":I
    .end local v3    # "t1":I
    .end local v4    # "t2":I
    .end local v5    # "t3":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 key must be 256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 22
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, 0x10

    array-length v4, v1

    if-gt v3, v4, :cond_1

    .line 256
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    if-lez v3, :cond_0

    .line 259
    invoke-direct {v0}, Lorg/bouncycastle/crypto/macs/Poly1305;->processBlock()V

    .line 262
    :cond_0
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v4, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    ushr-int/lit8 v4, v4, 0x1a

    add-int/2addr v3, v4

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    const v4, 0x3ffffff

    and-int/2addr v3, v4

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    .line 263
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v5, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    ushr-int/lit8 v5, v5, 0x1a

    add-int/2addr v3, v5

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    and-int/2addr v3, v4

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    .line 264
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v5, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    ushr-int/lit8 v5, v5, 0x1a

    add-int/2addr v3, v5

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    and-int/2addr v3, v4

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    .line 265
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v5, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    ushr-int/lit8 v5, v5, 0x1a

    add-int/2addr v3, v5

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    and-int/2addr v3, v4

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    .line 266
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v5, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    ushr-int/lit8 v5, v5, 0x1a

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v3, v5

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    and-int/2addr v3, v4

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    .line 267
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v5, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    ushr-int/lit8 v5, v5, 0x1a

    add-int/2addr v3, v5

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    and-int/2addr v3, v4

    iput v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    .line 270
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    add-int/lit8 v3, v3, 0x5

    .local v3, "g0":I
    ushr-int/lit8 v5, v3, 0x1a

    .local v5, "b":I
    and-int/2addr v3, v4

    .line 271
    iget v6, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    add-int/2addr v6, v5

    .local v6, "g1":I
    ushr-int/lit8 v5, v6, 0x1a

    and-int/2addr v6, v4

    .line 272
    iget v7, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    add-int/2addr v7, v5

    .local v7, "g2":I
    ushr-int/lit8 v5, v7, 0x1a

    and-int/2addr v7, v4

    .line 273
    iget v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    add-int/2addr v8, v5

    .local v8, "g3":I
    ushr-int/lit8 v5, v8, 0x1a

    and-int/2addr v4, v8

    .line 274
    .end local v8    # "g3":I
    .local v4, "g3":I
    iget v8, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    add-int/2addr v8, v5

    const/high16 v9, 0x4000000

    sub-int/2addr v8, v9

    .line 276
    .local v8, "g4":I
    ushr-int/lit8 v9, v8, 0x1f

    add-int/lit8 v9, v9, -0x1

    .line 277
    .end local v5    # "b":I
    .local v9, "b":I
    not-int v5, v9

    .line 278
    .local v5, "nb":I
    iget v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    and-int/2addr v10, v5

    and-int v11, v3, v9

    or-int/2addr v10, v11

    iput v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    .line 279
    iget v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    and-int/2addr v10, v5

    and-int v11, v6, v9

    or-int/2addr v10, v11

    iput v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    .line 280
    iget v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    and-int/2addr v10, v5

    and-int v11, v7, v9

    or-int/2addr v10, v11

    iput v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    .line 281
    iget v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    and-int/2addr v10, v5

    and-int v11, v4, v9

    or-int/2addr v10, v11

    iput v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    .line 282
    iget v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    and-int/2addr v10, v5

    and-int v11, v8, v9

    or-int/2addr v10, v11

    iput v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    .line 285
    iget v10, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v11, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    shl-int/lit8 v11, v11, 0x1a

    or-int/2addr v10, v11

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iget v14, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->k0:I

    int-to-long v14, v14

    and-long/2addr v14, v12

    add-long/2addr v10, v14

    .line 286
    .local v10, "f0":J
    iget v14, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    ushr-int/lit8 v14, v14, 0x6

    iget v15, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    shl-int/lit8 v15, v15, 0x14

    or-int/2addr v14, v15

    int-to-long v14, v14

    and-long/2addr v14, v12

    move-wide/from16 v16, v12

    iget v12, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->k1:I

    int-to-long v12, v12

    and-long v12, v12, v16

    add-long/2addr v14, v12

    .line 287
    .local v14, "f1":J
    iget v12, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    ushr-int/lit8 v12, v12, 0xc

    iget v13, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    shl-int/lit8 v13, v13, 0xe

    or-int/2addr v12, v13

    int-to-long v12, v12

    and-long v12, v12, v16

    move/from16 v18, v3

    .end local v3    # "g0":I
    .local v18, "g0":I
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->k2:I

    move/from16 v19, v4

    .end local v4    # "g3":I
    .local v19, "g3":I
    int-to-long v3, v3

    and-long v3, v3, v16

    add-long/2addr v12, v3

    .line 288
    .local v12, "f2":J
    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    ushr-int/lit8 v3, v3, 0x12

    iget v4, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-long v3, v3

    and-long v3, v3, v16

    move-wide/from16 v20, v3

    iget v3, v0, Lorg/bouncycastle/crypto/macs/Poly1305;->k3:I

    int-to-long v3, v3

    and-long v3, v3, v16

    add-long v3, v20, v3

    .line 290
    .local v3, "f3":J
    long-to-int v0, v10

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 291
    const/16 v0, 0x20

    ushr-long v16, v10, v0

    add-long v14, v14, v16

    .line 292
    const/16 v16, 0x20

    long-to-int v0, v14

    add-int/lit8 v2, p2, 0x4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 293
    ushr-long v20, v14, v16

    add-long v12, v12, v20

    .line 294
    long-to-int v0, v12

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 295
    ushr-long v16, v12, v16

    add-long v3, v3, v16

    .line 296
    long-to-int v0, v3

    add-int/lit8 v2, p2, 0xc

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/macs/Poly1305;->reset()V

    .line 299
    const/16 v0, 0x10

    return v0

    .line 253
    .end local v3    # "f3":J
    .end local v5    # "nb":I
    .end local v6    # "g1":I
    .end local v7    # "g2":I
    .end local v8    # "g4":I
    .end local v9    # "b":I
    .end local v10    # "f0":J
    .end local v12    # "f2":J
    .end local v14    # "f1":J
    .end local v18    # "g0":I
    .end local v19    # "g3":I
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v2, "Output buffer is too short."

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    if-nez v0, :cond_0

    const-string v0, "Poly1305"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Poly1305-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 174
    const/16 v0, 0x10

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "nonce":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    if-eqz v1, :cond_1

    .line 91
    instance-of v1, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    .line 96
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 97
    .local v1, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 98
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_0

    .line 93
    .end local v1    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Poly1305 requires an IV when used with a block cipher."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1
    :goto_0
    instance-of v1, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_2

    .line 106
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 108
    .local v1, "keyParams":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/macs/Poly1305;->setKey([B[B)V

    .line 110
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/Poly1305;->reset()V

    .line 111
    return-void

    .line 103
    .end local v1    # "keyParams":Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Poly1305 requires a key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 306
    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    .line 307
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 181
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->singleByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/macs/Poly1305;->update([BII)V

    .line 182
    return-void
.end method

.method public update([BII)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "copied":I
    :goto_0
    if-le p3, v0, :cond_1

    .line 191
    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 193
    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/Poly1305;->processBlock()V

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 197
    :cond_0
    sub-int v1, p3, v0

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 198
    .local v1, "toCopy":I
    add-int v2, v0, p2

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    add-int/2addr v0, v1

    .line 200
    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 201
    .end local v1    # "toCopy":I
    goto :goto_0

    .line 203
    :cond_1
    return-void
.end method
