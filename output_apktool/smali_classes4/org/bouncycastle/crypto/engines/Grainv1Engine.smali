.class public Lorg/bouncycastle/crypto/engines/Grainv1Engine;
.super Ljava/lang/Object;
.source "Grainv1Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_SIZE:I = 0x5


# instance fields
.field private index:I

.field private initialised:Z

.field private lfsr:[I

.field private nfsr:[I

.field private out:[B

.field private output:I

.field private workingIV:[B

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    return-void
.end method

.method private getKeyStream()B
    .locals 3

    .line 294
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 296
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->oneRound()V

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private getOutput()I
    .locals 15

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    ushr-int/2addr v0, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v3, v3, v2

    shl-int/lit8 v3, v3, 0xf

    or-int/2addr v0, v3

    .line 174
    .local v0, "b1":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v3, v3, v1

    const/4 v4, 0x2

    ushr-int/2addr v3, v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v5, v5, v2

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v3, v5

    .line 175
    .local v3, "b2":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v5, v5, v1

    const/4 v6, 0x4

    ushr-int/2addr v5, v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v7, v7, v2

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v5, v7

    .line 176
    .local v5, "b4":I
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v7, v7, v1

    ushr-int/lit8 v7, v7, 0xa

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v8, v8, v2

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    .line 177
    .local v7, "b10":I
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v8, v8, v2

    ushr-int/lit8 v8, v8, 0xf

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v9, v9, v4

    shl-int/2addr v9, v2

    or-int/2addr v8, v9

    .line 178
    .local v8, "b31":I
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v9, v9, v4

    ushr-int/lit8 v9, v9, 0xb

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0x5

    or-int/2addr v9, v10

    .line 179
    .local v9, "b43":I
    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v10, v10, v11

    ushr-int/lit8 v10, v10, 0x8

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v12, v12, v6

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    .line 180
    .local v10, "b56":I
    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v12, v12, v11

    ushr-int/lit8 v12, v12, 0xf

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v13, v13, v6

    shl-int/2addr v13, v2

    or-int/2addr v12, v13

    .line 181
    .local v12, "b63":I
    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v1, v13, v1

    ushr-int/2addr v1, v11

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v13, v13, v2

    shl-int/lit8 v13, v13, 0xd

    or-int/2addr v1, v13

    .line 182
    .local v1, "s3":I
    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v2, v13, v2

    ushr-int/lit8 v2, v2, 0x9

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v13, v13, v4

    shl-int/lit8 v13, v13, 0x7

    or-int/2addr v2, v13

    .line 183
    .local v2, "s25":I
    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v13, v13, v4

    ushr-int/lit8 v13, v13, 0xe

    iget-object v14, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v11, v14, v11

    shl-int/lit8 v4, v11, 0x2

    or-int/2addr v4, v13

    .line 184
    .local v4, "s46":I
    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v6, v11, v6

    .line 186
    .local v6, "s64":I
    xor-int v11, v2, v12

    and-int v13, v1, v6

    xor-int/2addr v11, v13

    and-int v13, v4, v6

    xor-int/2addr v11, v13

    and-int v13, v6, v12

    xor-int/2addr v11, v13

    and-int v13, v1, v2

    and-int/2addr v13, v4

    xor-int/2addr v11, v13

    and-int v13, v1, v4

    and-int/2addr v13, v6

    xor-int/2addr v11, v13

    and-int v13, v1, v4

    and-int/2addr v13, v12

    xor-int/2addr v11, v13

    and-int v13, v2, v4

    and-int/2addr v13, v12

    xor-int/2addr v11, v13

    and-int v13, v4, v6

    and-int/2addr v13, v12

    xor-int/2addr v11, v13

    xor-int/2addr v11, v0

    xor-int/2addr v11, v3

    xor-int/2addr v11, v5

    xor-int/2addr v11, v7

    xor-int/2addr v11, v8

    xor-int/2addr v11, v9

    xor-int/2addr v11, v10

    const v13, 0xffff

    and-int/2addr v11, v13

    return v11
.end method

.method private getOutputLFSR()I
    .locals 9

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 157
    .local v0, "s0":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v1, v2, v1

    ushr-int/lit8 v1, v1, 0xd

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v4, 0x3

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    .line 158
    .local v1, "s13":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0x7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    shl-int/lit8 v3, v3, 0x9

    or-int/2addr v2, v3

    .line 159
    .local v2, "s23":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v3, v3, v5

    ushr-int/lit8 v3, v3, 0x6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v6, v6, v4

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v3, v6

    .line 160
    .local v3, "s38":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v6, v6, v4

    ushr-int/2addr v6, v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v8, 0x4

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0xd

    or-int/2addr v6, v7

    .line 161
    .local v6, "s51":I
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v4, v7, v4

    ushr-int/lit8 v4, v4, 0xe

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v7, v7, v8

    shl-int/lit8 v5, v7, 0x2

    or-int/2addr v4, v5

    .line 163
    .local v4, "s62":I
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    xor-int/2addr v5, v3

    xor-int/2addr v5, v6

    xor-int/2addr v5, v4

    const v7, 0xffff

    and-int/2addr v5, v7

    return v5
.end method

.method private getOutputNFSR()I
    .locals 18

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 128
    .local v1, "b0":I
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v3, v3, v2

    ushr-int/lit8 v3, v3, 0x9

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    .line 129
    .local v3, "b9":I
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v4, v4, v2

    ushr-int/lit8 v4, v4, 0xe

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v6, v6, v5

    const/4 v7, 0x2

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    .line 130
    .local v4, "b14":I
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v2, v6, v2

    ushr-int/lit8 v2, v2, 0xf

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v6, v6, v5

    shl-int/2addr v6, v5

    or-int/2addr v2, v6

    .line 131
    .local v2, "b15":I
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v6, v6, v5

    ushr-int/lit8 v6, v6, 0x5

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v8, v8, v7

    shl-int/lit8 v8, v8, 0xb

    or-int/2addr v6, v8

    .line 132
    .local v6, "b21":I
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v8, v8, v5

    ushr-int/lit8 v8, v8, 0xc

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v9, v9, v7

    const/4 v10, 0x4

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    .line 133
    .local v8, "b28":I
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v9, v9, v7

    ushr-int/2addr v9, v5

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0xf

    or-int/2addr v9, v11

    .line 134
    .local v9, "b33":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v11, v11, v7

    ushr-int/lit8 v11, v11, 0x5

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v13, v13, v12

    shl-int/lit8 v13, v13, 0xb

    or-int/2addr v11, v13

    .line 135
    .local v11, "b37":I
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v13, v13, v7

    ushr-int/lit8 v13, v13, 0xd

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v14, v14, v12

    shl-int/2addr v14, v12

    or-int/2addr v13, v14

    .line 136
    .local v13, "b45":I
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v14, v14, v12

    ushr-int/2addr v14, v10

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v15, v15, v10

    shl-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    .line 137
    .local v14, "b52":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v15, v15, v12

    ushr-int/lit8 v15, v15, 0xc

    const/16 v16, 0x1

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v5, v5, v10

    shl-int/2addr v5, v10

    or-int/2addr v5, v15

    .line 138
    .local v5, "b60":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v15, v15, v12

    ushr-int/lit8 v15, v15, 0xe

    const/16 v17, 0x2

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v7, v7, v10

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v15

    .line 139
    .local v7, "b62":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v12, v15, v12

    ushr-int/lit8 v12, v12, 0xf

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v10, v15, v10

    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v10, v12

    .line 141
    .local v10, "b63":I
    xor-int v12, v7, v5

    xor-int/2addr v12, v14

    xor-int/2addr v12, v13

    xor-int/2addr v12, v11

    xor-int/2addr v12, v9

    xor-int/2addr v12, v8

    xor-int/2addr v12, v6

    xor-int/2addr v12, v4

    xor-int/2addr v12, v3

    xor-int/2addr v12, v1

    and-int v15, v10, v5

    xor-int/2addr v12, v15

    and-int v15, v11, v9

    xor-int/2addr v12, v15

    and-int v15, v2, v3

    xor-int/2addr v12, v15

    and-int v15, v5, v14

    and-int/2addr v15, v13

    xor-int/2addr v12, v15

    and-int v15, v9, v8

    and-int/2addr v15, v6

    xor-int/2addr v12, v15

    and-int v15, v10, v13

    and-int/2addr v15, v8

    and-int/2addr v15, v3

    xor-int/2addr v12, v15

    and-int v15, v5, v14

    and-int/2addr v15, v11

    and-int/2addr v15, v9

    xor-int/2addr v12, v15

    and-int v15, v10, v5

    and-int/2addr v15, v6

    and-int/2addr v15, v2

    xor-int/2addr v12, v15

    and-int v15, v10, v5

    and-int/2addr v15, v14

    and-int/2addr v15, v13

    and-int/2addr v15, v11

    xor-int/2addr v12, v15

    and-int v15, v9, v8

    and-int/2addr v15, v6

    and-int/2addr v15, v2

    and-int/2addr v15, v3

    xor-int/2addr v12, v15

    and-int v15, v14, v13

    and-int/2addr v15, v11

    and-int/2addr v15, v9

    and-int/2addr v15, v8

    and-int/2addr v15, v6

    xor-int/2addr v12, v15

    const v15, 0xffff

    and-int/2addr v12, v15

    return v12
.end method

.method private initGrain()V
    .locals 5

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutput()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    .line 114
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputNFSR()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    xor-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    .line 115
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputLFSR()I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    xor-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    .line 118
    return-void
.end method

.method private oneRound()V
    .locals 4

    .line 274
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutput()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    .line 275
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 278
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputNFSR()I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v2, v3, v2

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputLFSR()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    .line 280
    return-void
.end method

.method private setKey([B[B)V
    .locals 7
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyBytes",
            "ivBytes"
        }
    .end annotation

    .line 217
    const/16 v0, 0x8

    const/4 v1, -0x1

    aput-byte v1, p2, v0

    .line 218
    const/16 v2, 0x9

    aput-byte v1, p2, v2

    .line 219
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    .line 220
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 228
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    shl-int/2addr v4, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    aput v4, v3, v2

    .line 229
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v4, v4, v6

    shl-int/2addr v4, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    and-int/2addr v4, v5

    aput v4, v3, v2

    .line 230
    add-int/lit8 v1, v1, 0x2

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private shift([II)[I
    .locals 3
    .param p1, "array"    # [I
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "val"
        }
    .end annotation

    .line 200
    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 201
    const/4 v1, 0x2

    aget v2, p1, v1

    aput v2, p1, v0

    .line 202
    const/4 v0, 0x3

    aget v2, p1, v0

    aput v2, p1, v1

    .line 203
    const/4 v1, 0x4

    aget v2, p1, v1

    aput v2, p1, v0

    .line 204
    aput p2, p1, v1

    .line 206
    return-object p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "Grain v1"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 58
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 64
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 66
    .local v0, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 68
    .local v1, "iv":[B
    if-eqz v1, :cond_2

    array-length v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 74
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 81
    .local v2, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 82
    .local v3, "keyBytes":[B
    array-length v4, v3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 91
    array-length v4, v3

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    .line 92
    array-length v4, v3

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    .line 93
    const/4 v4, 0x5

    new-array v5, v4, [I

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    .line 94
    new-array v4, v4, [I

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    .line 95
    const/4 v4, 0x2

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    .line 97
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    array-length v5, v3

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    new-instance v4, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 101
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x50

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v7

    invoke-direct {v4, v5, v6, p2, v7}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 100
    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 103
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->reset()V

    .line 104
    return-void

    .line 84
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Grain v1 key must be 80 bits long"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    .end local v2    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v3    # "keyBytes":[B
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Grain v1 init parameters must include a key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Grain v1 requires exactly 8 bytes of IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    .end local v0    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "iv":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain v1 init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 238
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    if-eqz v0, :cond_3

    .line 244
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 249
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 256
    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getKeyStream()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_0
    return p3

    .line 251
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 264
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    .line 265
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->setKey([B[B)V

    .line 266
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initGrain()V

    .line 267
    return-void
.end method

.method public returnByte(B)B
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getKeyStream()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
