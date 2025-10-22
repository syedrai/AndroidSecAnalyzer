.class public Lorg/bouncycastle/crypto/engines/XoodyakEngine;
.super Ljava/lang/Object;
.source "XoodyakEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;
    }
.end annotation


# instance fields
.field private K:[B

.field private final MAXROUNDS:I

.field private final NCOLUMS:I

.field private final NLANES:I

.field private final NROWS:I

.field private final PhaseDown:I

.field private final PhaseUp:I

.field private final RC:[I

.field private Rabsorb:I

.field final Rkin:I

.field private final Rkout:I

.field private final TAGLEN:I

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private aadFinished:Z

.field private encrypted:Z

.field private final f_bPrime:I

.field private forEncryption:Z

.field private initialised:Z

.field private iv:[B

.field private final message:Ljava/io/ByteArrayOutputStream;

.field private mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

.field private phase:I

.field private state:[B

.field private tag:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->f_bPrime:I

    .line 33
    const/16 v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rkout:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->PhaseDown:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->PhaseUp:I

    .line 38
    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->NLANES:I

    .line 39
    const/4 v1, 0x3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->NROWS:I

    .line 40
    const/4 v1, 0x4

    iput v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->NCOLUMS:I

    .line 41
    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->MAXROUNDS:I

    .line 42
    const/16 v1, 0x10

    iput v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->TAGLEN:I

    .line 43
    const/16 v1, 0x2c

    iput v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rkin:I

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->RC:[I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    .line 51
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    return-void

    :array_0
    .array-data 4
        0x58
        0x38
        0x3c0
        0xd0
        0x120
        0x14
        0x60
        0x2c
        0x380
        0xf0
        0x1a0
        0x12
    .end array-data
.end method

.method private AbsorbAny([BIIII)V
    .locals 2
    .param p1, "X"    # [B
    .param p2, "Xoff"    # I
    .param p3, "XLen"    # I
    .param p4, "r"    # I
    .param p5, "Cd"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "Xoff",
            "XLen",
            "r",
            "Cd"
        }
    .end annotation

    .line 312
    nop

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 314
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    .line 316
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 317
    .local v0, "splitLen":I
    invoke-virtual {p0, p1, p2, v0, p5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Down([BIII)V

    .line 318
    const/4 p5, 0x0

    .line 319
    add-int/2addr p2, v0

    .line 320
    sub-int/2addr p3, v0

    .line 322
    if-nez p3, :cond_0

    .line 323
    return-void
.end method

.method private ROTL32(II)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "offset"
        }
    .end annotation

    .line 408
    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    rsub-int/lit8 v1, p2, 0x20

    and-int/lit8 v1, v1, 0x1f

    ushr-int v1, p1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private Up([BII)V
    .locals 18
    .param p1, "Yi"    # [B
    .param p2, "YiLen"    # I
    .param p3, "Cu"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "Yi",
            "YiLen",
            "Cu"
        }
    .end annotation

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    sget-object v3, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeHash:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    if-eq v2, v3, :cond_0

    .line 329
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v3, 0x2f

    aget-byte v4, v2, v3

    xor-int v4, v4, p3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 331
    :cond_0
    const/16 v2, 0xc

    new-array v3, v2, [I

    .line 332
    .local v3, "a":[I
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 334
    new-array v4, v2, [I

    .line 335
    .local v4, "b":[I
    const/4 v5, 0x4

    new-array v7, v5, [I

    .line 336
    .local v7, "p":[I
    new-array v8, v5, [I

    .line 337
    .local v8, "e":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v10, 0x2

    if-ge v9, v2, :cond_9

    .line 340
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    const/4 v12, 0x1

    if-ge v11, v5, :cond_1

    .line 342
    invoke-direct {v0, v11, v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v13

    aget v13, v3, v13

    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v12

    aget v12, v3, v12

    xor-int/2addr v12, v13

    invoke-direct {v0, v11, v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v13

    aget v13, v3, v13

    xor-int/2addr v12, v13

    aput v12, v7, v11

    .line 340
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 344
    :cond_1
    const/4 v11, 0x0

    :goto_2
    const/4 v13, 0x3

    if-ge v11, v5, :cond_2

    .line 346
    add-int/lit8 v14, v11, 0x3

    and-int/2addr v13, v14

    aget v13, v7, v13

    .line 347
    .local v13, "y":I
    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v14

    const/16 v15, 0xe

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v15

    xor-int/2addr v14, v15

    aput v14, v8, v11

    .line 344
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 349
    .end local v13    # "y":I
    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v5, :cond_4

    .line 351
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_4
    if-ge v14, v13, :cond_3

    .line 353
    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v15

    aget v16, v3, v15

    aget v17, v8, v11

    xor-int v16, v16, v17

    aput v16, v3, v15

    .line 351
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 349
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 357
    .end local v14    # "y":I
    :cond_4
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v5, :cond_5

    .line 359
    invoke-direct {v0, v11, v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v14

    invoke-direct {v0, v11, v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    .line 360
    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v14

    add-int/lit8 v15, v11, 0x3

    invoke-direct {v0, v15, v12}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    .line 361
    invoke-direct {v0, v11, v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v14

    invoke-direct {v0, v11, v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v15

    aget v15, v3, v15

    const/16 v2, 0xb

    invoke-direct {v0, v15, v2}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v2

    aput v2, v4, v14

    .line 357
    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0xc

    goto :goto_5

    .line 364
    :cond_5
    aget v2, v4, v6

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->RC:[I

    aget v14, v14, v9

    xor-int/2addr v2, v14

    aput v2, v4, v6

    .line 366
    const/4 v2, 0x0

    .end local v11    # "x":I
    .local v2, "x":I
    :goto_6
    if-ge v2, v5, :cond_7

    .line 368
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_7
    if-ge v11, v13, :cond_6

    .line 370
    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v14

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v15

    aget v15, v4, v15

    add-int/lit8 v13, v11, 0x1

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v13

    aget v13, v4, v13

    not-int v13, v13

    add-int/lit8 v10, v11, 0x2

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v10

    aget v10, v4, v10

    and-int/2addr v10, v13

    xor-int/2addr v10, v15

    aput v10, v3, v14

    .line 368
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_7

    .line 366
    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_6

    .line 374
    .end local v11    # "y":I
    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v5, :cond_8

    .line 376
    invoke-direct {v0, v2, v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v10

    invoke-direct {v0, v2, v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v11

    aget v11, v3, v11

    aput v11, v4, v10

    .line 377
    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v10

    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v11

    aget v11, v3, v11

    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v11

    aput v11, v4, v10

    .line 378
    const/4 v10, 0x2

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v11

    add-int/lit8 v13, v2, 0x2

    invoke-direct {v0, v13, v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v13

    aget v10, v3, v13

    const/16 v13, 0x8

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v10

    aput v10, v4, v11

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 380
    :cond_8
    const/16 v10, 0xc

    invoke-static {v4, v6, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0xc

    goto/16 :goto_0

    .line 382
    .end local v2    # "x":I
    .end local v9    # "i":I
    :cond_9
    array-length v2, v3

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    invoke-static {v3, v6, v2, v5, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 383
    const/4 v10, 0x2

    iput v10, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    .line 384
    if-eqz v1, :cond_a

    .line 386
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    move/from16 v5, p2

    invoke-static {v2, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 384
    :cond_a
    move/from16 v5, p2

    .line 388
    :goto_9
    return-void
.end method

.method private encrypt([BII[BI)I
    .locals 10
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
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
            "input",
            "inOff",
            "len",
            "output",
            "outOff"
        }
    .end annotation

    .line 178
    move v0, p3

    .line 180
    .local v0, "IOLen":I
    const/16 v1, 0x18

    new-array v2, v1, [B

    .line 181
    .local v2, "P":[B
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x80

    .line 182
    .local v3, "Cu":I
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    if-nez v5, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    return p3

    .line 184
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 185
    .local v5, "splitLen":I
    iget-boolean v6, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v6, :cond_3

    .line 187
    invoke-static {p1, p2, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    :cond_3
    const/4 v6, 0x0

    invoke-direct {p0, v6, v4, v3}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    .line 191
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_4

    .line 193
    add-int v7, p5, v6

    add-int/lit8 v8, p2, 0x1

    .end local p2    # "inOff":I
    .local v8, "inOff":I
    aget-byte p2, p1, p2

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    aget-byte v9, v9, v6

    xor-int/2addr p2, v9

    int-to-byte p2, p2

    aput-byte p2, p4, v7

    .line 191
    add-int/lit8 v6, v6, 0x1

    move p2, v8

    goto :goto_2

    .line 195
    .end local v6    # "i":I
    .end local v8    # "inOff":I
    .restart local p2    # "inOff":I
    :cond_4
    iget-boolean v6, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v6, :cond_5

    .line 197
    invoke-virtual {p0, v2, v4, v5, v4}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Down([BIII)V

    goto :goto_3

    .line 201
    :cond_5
    invoke-virtual {p0, p4, p5, v5, v4}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Down([BIII)V

    .line 203
    :goto_3
    const/4 v3, 0x0

    .line 204
    add-int/2addr p5, v5

    .line 205
    sub-int/2addr v0, v5

    .line 206
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    goto :goto_0
.end method

.method private index(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 403
    rem-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method private processAAD()V
    .locals 7

    .line 133
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 136
    .local v2, "ad":[B
    array-length v4, v2

    iget v5, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rabsorb:I

    const/4 v6, 0x3

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->AbsorbAny([BIIII)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    goto :goto_0

    .line 133
    .end local v2    # "ad":[B
    :cond_0
    move-object v1, p0

    .line 139
    :goto_0
    return-void
.end method

.method private reset(Z)V
    .locals 10
    .param p1, "clearMac"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearMac"
        }
    .end annotation

    .line 285
    if-eqz p1, :cond_0

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 290
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    .line 291
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    .line 292
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    .line 293
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 294
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 296
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    array-length v0, v0

    .line 297
    .local v0, "KLen":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    array-length v2, v2

    .line 298
    .local v2, "IDLen":I
    const/16 v3, 0x2c

    new-array v5, v3, [B

    .line 299
    .local v5, "KID":[B
    sget-object v4, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeKeyed:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    .line 300
    iput v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rabsorb:I

    .line 301
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    invoke-static {v3, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    invoke-static {v3, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    add-int v1, v0, v2

    int-to-byte v3, v2

    aput-byte v3, v5, v1

    .line 304
    add-int v1, v0, v2

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rabsorb:I

    const/4 v9, 0x2

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->AbsorbAny([BIIII)V

    .line 305
    return-void
.end method


# virtual methods
.method Down([BIII)V
    .locals 6
    .param p1, "Xi"    # [B
    .param p2, "XiOff"    # I
    .param p3, "XiLen"    # I
    .param p4, "Cd"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "Xi",
            "XiOff",
            "XiLen",
            "Cd"
        }
    .end annotation

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 394
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    aget-byte v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "XiOff":I
    .local v3, "XiOff":I
    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    .line 392
    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    .line 396
    .end local v0    # "i":I
    .end local v3    # "XiOff":I
    .restart local p2    # "XiOff":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    aget-byte v1, v0, p3

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 397
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v1, 0x2f

    aget-byte v3, v0, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    sget-object v5, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeHash:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    if-ne v4, v5, :cond_1

    and-int/lit8 v4, p4, 0x1

    goto :goto_1

    :cond_1
    move v4, p4

    :goto_1
    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 398
    iput v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    .line 399
    return-void
.end method

.method public doFinal([BI)I
    .locals 10
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 220
    .local v2, "blocks":[B
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    .line 221
    .local v4, "len":I
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, v4, 0x10

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-nez v0, :cond_2

    add-int/lit8 v0, v4, -0x10

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->processAAD()V

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "rv":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/16 v9, 0x10

    if-eqz v1, :cond_3

    .line 229
    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    .end local p1    # "output":[B
    .end local p2    # "outOff":I
    .local v5, "output":[B
    .local v6, "outOff":I
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypt([BII[BI)I

    .line 230
    move p1, v4

    .end local v4    # "len":I
    .local p1, "len":I
    add-int p2, v6, p1

    .line 231
    .end local v6    # "outOff":I
    .restart local p2    # "outOff":I
    new-array v3, v9, [B

    iput-object v3, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    .line 232
    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    invoke-direct {p0, v3, v9, v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    .line 233
    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    invoke-static {v3, v7, v5, p2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    add-int/lit8 v4, p1, 0x10

    .end local v0    # "rv":I
    .local v4, "rv":I
    goto :goto_2

    .line 238
    .end local v5    # "output":[B
    .restart local v0    # "rv":I
    .local v4, "len":I
    .local p1, "output":[B
    :cond_3
    move-object v1, p0

    move-object v5, p1

    move v6, p2

    move p1, v4

    .end local v4    # "len":I
    .end local p2    # "outOff":I
    .restart local v5    # "output":[B
    .restart local v6    # "outOff":I
    .local p1, "len":I
    add-int/lit8 v4, p1, -0x10

    .line 239
    .local v4, "inOff":I
    move p2, v4

    .line 240
    .end local v0    # "rv":I
    .local p2, "rv":I
    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypt([BII[BI)I

    .line 241
    new-array v0, v9, [B

    iput-object v0, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    .line 242
    iget-object v0, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    invoke-direct {p0, v0, v9, v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v9, :cond_5

    .line 245
    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    aget-byte v3, v3, v0

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "inOff":I
    .local v8, "inOff":I
    aget-byte v4, v2, v4

    if-ne v3, v4, :cond_4

    .line 243
    add-int/lit8 v0, v0, 0x1

    move v4, v8

    goto :goto_1

    .line 247
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Mac does not match"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    .end local v8    # "inOff":I
    .restart local v4    # "inOff":I
    :cond_5
    move v4, p2

    move p2, v6

    .line 251
    .end local v0    # "i":I
    .end local v6    # "outOff":I
    .local v4, "rv":I
    .local p2, "outOff":I
    :goto_2
    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->reset(Z)V

    .line 252
    return v4

    .line 217
    .end local v2    # "blocks":[B
    .end local v4    # "rv":I
    .end local v5    # "output":[B
    .local p1, "output":[B
    :cond_6
    move-object v5, p1

    move v6, p2

    .end local p1    # "output":[B
    .end local p2    # "outOff":I
    .restart local v5    # "output":[B
    .restart local v6    # "outOff":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need call init function before encryption/decryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "Xoodyak AEAD"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 413
    const/16 v0, 0x18

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    .line 423
    const/16 v0, 0x10

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    .line 418
    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 270
    add-int/lit8 v0, p1, 0x10

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 0
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 264
    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
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

    .line 63
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    .line 64
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 68
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 69
    .local v0, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    .line 70
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 74
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 79
    .local v1, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    .line 80
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    array-length v3, v3

    if-ne v3, v2, :cond_0

    .line 84
    new-instance v3, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 85
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v3, v4, v5, p2, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 84
    invoke-static {v3}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 86
    const/16 v3, 0x30

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    .line 87
    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    .line 89
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->reset()V

    .line 90
    return-void

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Xoodyak key must be 128 bits long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    .end local v1    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Xoodyak init parameters must include a key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Xoodyak requires exactly 16 bytes of IV"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    .end local v0    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Xoodyak init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .locals 5
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v1

    .line 104
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v2, :cond_0

    const-string v2, "encryption"

    goto :goto_0

    :cond_0
    const-string v2, "decryption"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AAD cannot be added after reading a full block("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes) of input for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 107
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "len"
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v1

    .line 115
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v2, :cond_0

    const-string v2, "encryption"

    goto :goto_0

    :cond_0
    const-string v2, "decryption"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AAD cannot be added after reading a full block("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes) of input for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 121
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 122
    return-void

    .line 119
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processByte(B[BI)I
    .locals 7
    .param p1, "input"    # B
    .param p2, "output"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    .end local p2    # "output":[B
    .end local p3    # "outOff":I
    .local v5, "output":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->processBytes([BII[BI)I

    move-result p2

    return p2
.end method

.method public processBytes([BII[BI)I
    .locals 8
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
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
            "input",
            "inOff",
            "len",
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 145
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    if-eqz v0, :cond_5

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    sget-object v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeKeyed:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    if-ne v0, v1, :cond_4

    .line 153
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    sub-int/2addr v0, v1

    .line 159
    .local v0, "blockLen":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 161
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 162
    .local v3, "blocks":[B
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v1

    div-int v1, v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v2

    mul-int v5, v1, v2

    .line 163
    .end local p3    # "len":I
    .local v5, "len":I
    add-int p3, v5, p5

    array-length v1, p4

    if-gt p3, v1, :cond_1

    .line 167
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->processAAD()V

    .line 168
    const/4 v4, 0x0

    move-object v2, p0

    move-object v6, p4

    move v7, p5

    .end local p4    # "output":[B
    .end local p5    # "outOff":I
    .local v6, "output":[B
    .local v7, "outOff":I
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypt([BII[BI)I

    .line 169
    move-object p4, v2

    iget-object p3, p4, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 170
    iget-object p3, p4, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    array-length p5, v3

    sub-int/2addr p5, v5

    invoke-virtual {p3, v3, v5, p5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 171
    return v5

    .line 165
    .end local v6    # "output":[B
    .end local v7    # "outOff":I
    .restart local p4    # "output":[B
    .restart local p5    # "outOff":I
    :cond_1
    move v7, p5

    .end local p5    # "outOff":I
    .restart local v7    # "outOff":I
    new-instance p3, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p5, "output buffer is too short"

    invoke-direct {p3, p5}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 173
    .end local v3    # "blocks":[B
    .end local v5    # "len":I
    .end local v7    # "outOff":I
    .restart local p3    # "len":I
    .restart local p5    # "outOff":I
    :cond_2
    return v2

    .line 155
    .end local v0    # "blockLen":I
    :cond_3
    move v7, p5

    .end local p5    # "outOff":I
    .restart local v7    # "outOff":I
    new-instance p5, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v0, "input buffer too short"

    invoke-direct {p5, v0}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p5

    .line 151
    .end local v7    # "outOff":I
    .restart local p5    # "outOff":I
    :cond_4
    move v7, p5

    .end local p5    # "outOff":I
    .restart local v7    # "outOff":I
    new-instance p5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Xoodyak has not been initialised"

    invoke-direct {p5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p5

    .line 147
    .end local v7    # "outOff":I
    .restart local p5    # "outOff":I
    :cond_5
    move v7, p5

    .end local p5    # "outOff":I
    .restart local v7    # "outOff":I
    new-instance p5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Need call init function before encryption/decryption"

    invoke-direct {p5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p5
.end method

.method public reset()V
    .locals 2

    .line 276
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->reset(Z)V

    .line 281
    return-void

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
