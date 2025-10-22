.class Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;
.super Ljava/lang/Object;
.source "FalconCodec.java"


# instance fields
.field final max_FG_bits:[B

.field final max_fg_bits:[B

.field final max_sig_bits:[B


# direct methods
.method constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    const/16 v0, 0xb

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    .line 549
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    .line 591
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_sig_bits:[B

    .line 8
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x5t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method


# virtual methods
.method comp_decode([SII[BII)I
    .locals 14
    .param p1, "srcx"    # [S
    .param p2, "x"    # I
    .param p3, "logn"    # I
    .param p4, "srcin"    # [B
    .param p5, "in"    # I
    .param p6, "max_in_len"    # I
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
            "srcx",
            "x",
            "logn",
            "srcin",
            "in",
            "max_in_len"
        }
    .end annotation

    .line 431
    move/from16 v0, p6

    const/4 v1, 0x1

    shl-int v2, v1, p3

    .line 432
    .local v2, "n":I
    move/from16 v3, p5

    .line 433
    .local v3, "buf":I
    const/4 v4, 0x0

    .line 434
    .local v4, "acc":I
    const/4 v5, 0x0

    .line 435
    .local v5, "acc_len":I
    const/4 v6, 0x0

    .line 436
    .local v6, "v":I
    const/4 v7, 0x0

    .local v7, "u":I
    :goto_0
    const/4 v8, 0x0

    if-ge v7, v2, :cond_7

    .line 444
    if-lt v6, v0, :cond_0

    .line 446
    return v8

    .line 448
    :cond_0
    shl-int/lit8 v9, v4, 0x8

    add-int v10, v3, v6

    aget-byte v10, p4, v10

    and-int/lit16 v10, v10, 0xff

    or-int v4, v9, v10

    .line 449
    add-int/lit8 v6, v6, 0x1

    .line 450
    ushr-int v9, v4, v5

    .line 451
    .local v9, "b":I
    and-int/lit16 v10, v9, 0x80

    .line 452
    .local v10, "s":I
    and-int/lit8 v11, v9, 0x7f

    .line 459
    .local v11, "m":I
    :cond_1
    if-nez v5, :cond_3

    .line 461
    if-lt v6, v0, :cond_2

    .line 463
    return v8

    .line 465
    :cond_2
    shl-int/lit8 v12, v4, 0x8

    add-int v13, v3, v6

    aget-byte v13, p4, v13

    and-int/lit16 v13, v13, 0xff

    or-int v4, v12, v13

    .line 466
    add-int/lit8 v6, v6, 0x1

    .line 467
    const/16 v5, 0x8

    .line 469
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 470
    ushr-int v12, v4, v5

    and-int/2addr v12, v1

    if-eqz v12, :cond_6

    .line 472
    nop

    .line 484
    if-eqz v10, :cond_4

    if-nez v11, :cond_4

    .line 486
    return v8

    .line 489
    :cond_4
    add-int v8, p2, v7

    if-eqz v10, :cond_5

    neg-int v12, v11

    goto :goto_1

    :cond_5
    move v12, v11

    :goto_1
    int-to-short v12, v12

    aput-short v12, p1, v8

    .line 436
    .end local v9    # "b":I
    .end local v10    # "s":I
    .end local v11    # "m":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 474
    .restart local v9    # "b":I
    .restart local v10    # "s":I
    .restart local v11    # "m":I
    :cond_6
    add-int/lit16 v11, v11, 0x80

    .line 475
    const/16 v12, 0x7ff

    if-le v11, v12, :cond_1

    .line 477
    return v8

    .line 495
    .end local v9    # "b":I
    .end local v10    # "s":I
    .end local v11    # "m":I
    :cond_7
    shl-int v9, v1, v5

    sub-int/2addr v9, v1

    and-int v1, v4, v9

    if-eqz v1, :cond_8

    .line 497
    return v8

    .line 500
    :cond_8
    return v6
.end method

.method comp_encode([BII[SII)I
    .locals 13
    .param p1, "srcout"    # [B
    .param p2, "out"    # I
    .param p3, "max_out_len"    # I
    .param p4, "srcx"    # [S
    .param p5, "x"    # I
    .param p6, "logn"    # I
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
            "srcout",
            "out",
            "max_out_len",
            "srcx",
            "x",
            "logn"
        }
    .end annotation

    .line 325
    move/from16 v0, p3

    const/4 v1, 0x1

    shl-int v2, v1, p6

    .line 326
    .local v2, "n":I
    move v3, p2

    .line 331
    .local v3, "buf":I
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_2

    .line 333
    add-int v6, p5, v4

    aget-short v6, p4, v6

    const/16 v7, -0x7ff

    if-lt v6, v7, :cond_1

    add-int v6, p5, v4

    aget-short v6, p4, v6

    const/16 v7, 0x7ff

    if-le v6, v7, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 335
    :cond_1
    :goto_1
    return v5

    .line 339
    :cond_2
    const/4 v6, 0x0

    .line 340
    .local v6, "acc":I
    const/4 v7, 0x0

    .line 341
    .local v7, "acc_len":I
    const/4 v8, 0x0

    .line 342
    .local v8, "v":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_7

    .line 351
    shl-int/lit8 v6, v6, 0x1

    .line 352
    add-int v9, p5, v4

    aget-short v9, p4, v9

    .line 353
    .local v9, "t":I
    if-gez v9, :cond_3

    .line 355
    neg-int v9, v9

    .line 356
    or-int/lit8 v6, v6, 0x1

    .line 358
    :cond_3
    move v10, v9

    .line 363
    .local v10, "w":I
    shl-int/lit8 v6, v6, 0x7

    .line 364
    and-int/lit8 v11, v10, 0x7f

    or-int/2addr v6, v11

    .line 365
    ushr-int/lit8 v10, v10, 0x7

    .line 370
    add-int/lit8 v7, v7, 0x8

    .line 380
    add-int/lit8 v11, v10, 0x1

    shl-int/2addr v6, v11

    .line 381
    or-int/2addr v6, v1

    .line 382
    add-int/lit8 v11, v10, 0x1

    add-int/2addr v7, v11

    .line 387
    :goto_3
    const/16 v11, 0x8

    if-lt v7, v11, :cond_6

    .line 389
    add-int/lit8 v7, v7, -0x8

    .line 390
    if-eqz p1, :cond_5

    .line 392
    if-lt v8, v0, :cond_4

    .line 394
    return v5

    .line 396
    :cond_4
    add-int v11, v3, v8

    ushr-int v12, v6, v7

    int-to-byte v12, v12

    aput-byte v12, p1, v11

    .line 398
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 342
    .end local v9    # "t":I
    .end local v10    # "w":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 405
    :cond_7
    if-lez v7, :cond_a

    .line 407
    if-eqz p1, :cond_9

    .line 409
    if-lt v8, v0, :cond_8

    .line 411
    return v5

    .line 413
    :cond_8
    add-int v1, v3, v8

    rsub-int/lit8 v5, v7, 0x8

    shl-int v5, v6, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 415
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 418
    :cond_a
    return v8
.end method

.method modq_decode([SII[BII)I
    .locals 12
    .param p1, "srcx"    # [S
    .param p2, "x"    # I
    .param p3, "logn"    # I
    .param p4, "srcin"    # [B
    .param p5, "in"    # I
    .param p6, "max_in_len"    # I
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
            "srcx",
            "x",
            "logn",
            "srcin",
            "in",
            "max_in_len"
        }
    .end annotation

    .line 67
    const/4 v0, 0x1

    shl-int v1, v0, p3

    .line 68
    .local v1, "n":I
    mul-int/lit8 v2, v1, 0xe

    add-int/lit8 v2, v2, 0x7

    shr-int/lit8 v2, v2, 0x3

    .line 69
    .local v2, "in_len":I
    const/4 v3, 0x0

    move/from16 v4, p6

    if-le v2, v4, :cond_0

    .line 71
    return v3

    .line 73
    :cond_0
    move/from16 v5, p5

    .line 74
    .local v5, "buf":I
    const/4 v6, 0x0

    .line 75
    .local v6, "acc":I
    const/4 v7, 0x0

    .line 76
    .local v7, "acc_len":I
    const/4 v8, 0x0

    .line 77
    .local v8, "u":I
    :goto_0
    if-ge v8, v1, :cond_3

    .line 79
    shl-int/lit8 v9, v6, 0x8

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "buf":I
    .local v10, "buf":I
    aget-byte v5, p4, v5

    and-int/lit16 v5, v5, 0xff

    or-int v6, v9, v5

    .line 80
    add-int/lit8 v7, v7, 0x8

    .line 81
    const/16 v5, 0xe

    if-lt v7, v5, :cond_2

    .line 85
    add-int/lit8 v7, v7, -0xe

    .line 86
    ushr-int v5, v6, v7

    and-int/lit16 v5, v5, 0x3fff

    .line 87
    .local v5, "w":I
    const/16 v9, 0x3001

    if-lt v5, v9, :cond_1

    .line 89
    return v3

    .line 91
    :cond_1
    add-int v9, p2, v8

    int-to-short v11, v5

    aput-short v11, p1, v9

    .line 92
    nop

    .end local v5    # "w":I
    add-int/lit8 v8, v8, 0x1

    .line 93
    move v5, v10

    goto :goto_0

    .line 81
    :cond_2
    move v5, v10

    goto :goto_0

    .line 95
    .end local v10    # "buf":I
    .local v5, "buf":I
    :cond_3
    shl-int v9, v0, v7

    sub-int/2addr v9, v0

    and-int v0, v6, v9

    if-eqz v0, :cond_4

    .line 97
    return v3

    .line 99
    :cond_4
    return v2
.end method

.method modq_encode([BII[SII)I
    .locals 9
    .param p1, "srcout"    # [B
    .param p2, "out"    # I
    .param p3, "max_out_len"    # I
    .param p4, "srcx"    # [S
    .param p5, "x"    # I
    .param p6, "logn"    # I
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
            "srcout",
            "out",
            "max_out_len",
            "srcx",
            "x",
            "logn"
        }
    .end annotation

    .line 20
    const/4 v0, 0x1

    shl-int/2addr v0, p6

    .line 21
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    const/4 v2, 0x0

    const v3, 0xffff

    if-ge v1, v0, :cond_1

    .line 23
    add-int v4, p5, v1

    aget-short v4, p4, v4

    and-int/2addr v3, v4

    const/16 v4, 0x3001

    if-lt v3, v4, :cond_0

    .line 25
    return v2

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_1
    mul-int/lit8 v4, v0, 0xe

    add-int/lit8 v4, v4, 0x7

    shr-int/lit8 v4, v4, 0x3

    .line 29
    .local v4, "out_len":I
    if-nez p1, :cond_2

    .line 31
    return v4

    .line 33
    :cond_2
    if-le v4, p3, :cond_3

    .line 35
    return v2

    .line 37
    :cond_3
    move v2, p2

    .line 38
    .local v2, "buf":I
    const/4 v5, 0x0

    .line 39
    .local v5, "acc":I
    const/4 v6, 0x0

    .line 40
    .local v6, "acc_len":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 42
    shl-int/lit8 v7, v5, 0xe

    add-int v8, p5, v1

    aget-short v8, p4, v8

    and-int/2addr v8, v3

    or-int v5, v7, v8

    .line 43
    add-int/lit8 v6, v6, 0xe

    .line 44
    :goto_2
    const/16 v7, 0x8

    if-lt v6, v7, :cond_4

    .line 46
    add-int/lit8 v6, v6, -0x8

    .line 47
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "buf":I
    .local v7, "buf":I
    shr-int v8, v5, v6

    int-to-byte v8, v8

    aput-byte v8, p1, v2

    move v2, v7

    goto :goto_2

    .line 40
    .end local v7    # "buf":I
    .restart local v2    # "buf":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    :cond_5
    if-lez v6, :cond_6

    .line 52
    rsub-int/lit8 v3, v6, 0x8

    shl-int v3, v5, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 54
    :cond_6
    return v4
.end method

.method trim_i16_decode([SIII[BII)I
    .locals 15
    .param p1, "srcx"    # [S
    .param p2, "x"    # I
    .param p3, "logn"    # I
    .param p4, "bits"    # I
    .param p5, "srcin"    # [B
    .param p6, "in"    # I
    .param p7, "max_in_len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcx",
            "x",
            "logn",
            "bits",
            "srcin",
            "in",
            "max_in_len"
        }
    .end annotation

    .line 164
    move/from16 v0, p4

    const/4 v1, 0x1

    shl-int v2, v1, p3

    .line 165
    .local v2, "n":I
    mul-int v3, v2, v0

    add-int/lit8 v3, v3, 0x7

    shr-int/lit8 v3, v3, 0x3

    .line 166
    .local v3, "in_len":I
    const/4 v4, 0x0

    move/from16 v5, p7

    if-le v3, v5, :cond_0

    .line 168
    return v4

    .line 170
    :cond_0
    move/from16 v6, p6

    .line 171
    .local v6, "buf":I
    const/4 v7, 0x0

    .line 172
    .local v7, "u":I
    const/4 v8, 0x0

    .line 173
    .local v8, "acc":I
    const/4 v9, 0x0

    .line 174
    .local v9, "acc_len":I
    shl-int v10, v1, v0

    sub-int/2addr v10, v1

    .line 175
    .local v10, "mask1":I
    add-int/lit8 v11, v0, -0x1

    shl-int v11, v1, v11

    .line 176
    .local v11, "mask2":I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 178
    shl-int/lit8 v12, v8, 0x8

    add-int/lit8 v13, v6, 0x1

    .end local v6    # "buf":I
    .local v13, "buf":I
    aget-byte v6, p5, v6

    and-int/lit16 v6, v6, 0xff

    or-int v8, v12, v6

    .line 179
    add-int/lit8 v9, v9, 0x8

    .line 180
    :goto_1
    if-lt v9, v0, :cond_2

    if-ge v7, v2, :cond_2

    .line 184
    sub-int/2addr v9, v0

    .line 185
    ushr-int v6, v8, v9

    and-int/2addr v6, v10

    .line 186
    .local v6, "w":I
    and-int v12, v6, v11

    neg-int v12, v12

    or-int/2addr v6, v12

    .line 187
    neg-int v12, v11

    if-ne v6, v12, :cond_1

    .line 192
    return v4

    .line 194
    :cond_1
    and-int v12, v6, v11

    neg-int v12, v12

    or-int/2addr v6, v12

    .line 195
    add-int v12, p2, v7

    int-to-short v14, v6

    aput-short v14, p1, v12

    .line 196
    nop

    .end local v6    # "w":I
    add-int/lit8 v7, v7, 0x1

    .line 197
    goto :goto_1

    .line 176
    :cond_2
    move v6, v13

    goto :goto_0

    .line 199
    .end local v13    # "buf":I
    .local v6, "buf":I
    :cond_3
    shl-int v12, v1, v9

    sub-int/2addr v12, v1

    and-int v1, v8, v12

    if-eqz v1, :cond_4

    .line 204
    return v4

    .line 206
    :cond_4
    return v3
.end method

.method trim_i16_encode([BII[SIII)I
    .locals 11
    .param p1, "srcout"    # [B
    .param p2, "out"    # I
    .param p3, "max_out_len"    # I
    .param p4, "srcx"    # [S
    .param p5, "x"    # I
    .param p6, "logn"    # I
    .param p7, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcout",
            "out",
            "max_out_len",
            "srcx",
            "x",
            "logn",
            "bits"
        }
    .end annotation

    .line 113
    const/4 v0, 0x1

    shl-int v1, v0, p6

    .line 114
    .local v1, "n":I
    add-int/lit8 v2, p7, -0x1

    shl-int v2, v0, v2

    sub-int/2addr v2, v0

    .line 115
    .local v2, "maxv":I
    neg-int v3, v2

    .line 116
    .local v3, "minv":I
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_0
    const/4 v5, 0x0

    if-ge v4, v1, :cond_2

    .line 118
    add-int v6, p5, v4

    aget-short v6, p4, v6

    if-lt v6, v3, :cond_1

    add-int v6, p5, v4

    aget-short v6, p4, v6

    if-le v6, v2, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :cond_1
    :goto_1
    return v5

    .line 123
    :cond_2
    mul-int v6, v1, p7

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    .line 124
    .local v6, "out_len":I
    if-nez p1, :cond_3

    .line 126
    return v6

    .line 128
    :cond_3
    if-le v6, p3, :cond_4

    .line 130
    return v5

    .line 132
    :cond_4
    move v5, p2

    .line 133
    .local v5, "buf":I
    const/4 v7, 0x0

    .line 134
    .local v7, "acc":I
    const/4 v8, 0x0

    .line 135
    .local v8, "acc_len":I
    shl-int v9, v0, p7

    sub-int/2addr v9, v0

    .line 136
    .local v9, "mask":I
    const/4 v0, 0x0

    .end local v4    # "u":I
    .local v0, "u":I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 138
    shl-int v4, v7, p7

    add-int v10, p5, v0

    aget-short v10, p4, v10

    and-int/lit16 v10, v10, 0xfff

    and-int/2addr v10, v9

    or-int v7, v4, v10

    .line 139
    add-int v8, v8, p7

    .line 140
    :goto_3
    const/16 v4, 0x8

    if-lt v8, v4, :cond_5

    .line 142
    add-int/lit8 v8, v8, -0x8

    .line 143
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "buf":I
    .local v4, "buf":I
    shr-int v10, v7, v8

    int-to-byte v10, v10

    aput-byte v10, p1, v5

    move v5, v4

    goto :goto_3

    .line 136
    .end local v4    # "buf":I
    .restart local v5    # "buf":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_6
    if-lez v8, :cond_7

    .line 148
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "buf":I
    .restart local v4    # "buf":I
    rsub-int/lit8 v10, v8, 0x8

    shl-int v10, v7, v10

    int-to-byte v10, v10

    aput-byte v10, p1, v5

    move v5, v4

    .line 150
    .end local v4    # "buf":I
    .restart local v5    # "buf":I
    :cond_7
    return v6
.end method

.method trim_i8_decode([BIII[BII)I
    .locals 15
    .param p1, "srcx"    # [B
    .param p2, "x"    # I
    .param p3, "logn"    # I
    .param p4, "bits"    # I
    .param p5, "srcin"    # [B
    .param p6, "in"    # I
    .param p7, "max_in_len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcx",
            "x",
            "logn",
            "bits",
            "srcin",
            "in",
            "max_in_len"
        }
    .end annotation

    .line 271
    move/from16 v0, p4

    const/4 v1, 0x1

    shl-int v2, v1, p3

    .line 272
    .local v2, "n":I
    mul-int v3, v2, v0

    add-int/lit8 v3, v3, 0x7

    shr-int/lit8 v3, v3, 0x3

    .line 273
    .local v3, "in_len":I
    const/4 v4, 0x0

    move/from16 v5, p7

    if-le v3, v5, :cond_0

    .line 275
    return v4

    .line 277
    :cond_0
    move/from16 v6, p6

    .line 278
    .local v6, "buf":I
    const/4 v7, 0x0

    .line 279
    .local v7, "u":I
    const/4 v8, 0x0

    .line 280
    .local v8, "acc":I
    const/4 v9, 0x0

    .line 281
    .local v9, "acc_len":I
    shl-int v10, v1, v0

    sub-int/2addr v10, v1

    .line 282
    .local v10, "mask1":I
    add-int/lit8 v11, v0, -0x1

    shl-int v11, v1, v11

    .line 283
    .local v11, "mask2":I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 285
    shl-int/lit8 v12, v8, 0x8

    add-int/lit8 v13, v6, 0x1

    .end local v6    # "buf":I
    .local v13, "buf":I
    aget-byte v6, p5, v6

    and-int/lit16 v6, v6, 0xff

    or-int v8, v12, v6

    .line 286
    add-int/lit8 v9, v9, 0x8

    .line 287
    :goto_1
    if-lt v9, v0, :cond_2

    if-ge v7, v2, :cond_2

    .line 291
    sub-int/2addr v9, v0

    .line 292
    ushr-int v6, v8, v9

    and-int/2addr v6, v10

    .line 293
    .local v6, "w":I
    and-int v12, v6, v11

    neg-int v12, v12

    or-int/2addr v6, v12

    .line 294
    neg-int v12, v11

    if-ne v6, v12, :cond_1

    .line 299
    return v4

    .line 301
    :cond_1
    add-int v12, p2, v7

    int-to-byte v14, v6

    aput-byte v14, p1, v12

    .line 302
    nop

    .end local v6    # "w":I
    add-int/lit8 v7, v7, 0x1

    .line 303
    goto :goto_1

    .line 283
    :cond_2
    move v6, v13

    goto :goto_0

    .line 305
    .end local v13    # "buf":I
    .local v6, "buf":I
    :cond_3
    shl-int v12, v1, v9

    sub-int/2addr v12, v1

    and-int v1, v8, v12

    if-eqz v1, :cond_4

    .line 310
    return v4

    .line 312
    :cond_4
    return v3
.end method

.method trim_i8_encode([BII[BIII)I
    .locals 13
    .param p1, "srcout"    # [B
    .param p2, "out"    # I
    .param p3, "max_out_len"    # I
    .param p4, "srcx"    # [B
    .param p5, "x"    # I
    .param p6, "logn"    # I
    .param p7, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcout",
            "out",
            "max_out_len",
            "srcx",
            "x",
            "logn",
            "bits"
        }
    .end annotation

    .line 220
    const/4 v0, 0x1

    shl-int v1, v0, p6

    .line 221
    .local v1, "n":I
    add-int/lit8 v2, p7, -0x1

    shl-int v2, v0, v2

    sub-int/2addr v2, v0

    .line 222
    .local v2, "maxv":I
    neg-int v3, v2

    .line 223
    .local v3, "minv":I
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_0
    const/4 v5, 0x0

    if-ge v4, v1, :cond_2

    .line 225
    add-int v6, p5, v4

    aget-byte v6, p4, v6

    if-lt v6, v3, :cond_1

    add-int v6, p5, v4

    aget-byte v6, p4, v6

    if-le v6, v2, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 227
    :cond_1
    :goto_1
    return v5

    .line 230
    :cond_2
    mul-int v6, v1, p7

    add-int/lit8 v6, v6, 0x7

    shr-int/lit8 v6, v6, 0x3

    .line 231
    .local v6, "out_len":I
    if-nez p1, :cond_3

    .line 233
    return v6

    .line 235
    :cond_3
    move/from16 v7, p3

    if-le v6, v7, :cond_4

    .line 237
    return v5

    .line 239
    :cond_4
    move v5, p2

    .line 240
    .local v5, "buf":I
    const/4 v8, 0x0

    .line 241
    .local v8, "acc":I
    const/4 v9, 0x0

    .line 242
    .local v9, "acc_len":I
    shl-int v10, v0, p7

    sub-int/2addr v10, v0

    .line 243
    .local v10, "mask":I
    const/4 v0, 0x0

    .end local v4    # "u":I
    .local v0, "u":I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 245
    shl-int v4, v8, p7

    add-int v11, p5, v0

    aget-byte v11, p4, v11

    const v12, 0xffff

    and-int/2addr v11, v12

    and-int/2addr v11, v10

    or-int v8, v4, v11

    .line 246
    add-int v9, v9, p7

    .line 247
    :goto_3
    const/16 v4, 0x8

    if-lt v9, v4, :cond_5

    .line 249
    add-int/lit8 v9, v9, -0x8

    .line 250
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "buf":I
    .local v4, "buf":I
    ushr-int v11, v8, v9

    int-to-byte v11, v11

    aput-byte v11, p1, v5

    move v5, v4

    goto :goto_3

    .line 243
    .end local v4    # "buf":I
    .restart local v5    # "buf":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 253
    :cond_6
    if-lez v9, :cond_7

    .line 255
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "buf":I
    .restart local v4    # "buf":I
    rsub-int/lit8 v11, v9, 0x8

    shl-int v11, v8, v11

    int-to-byte v11, v11

    aput-byte v11, p1, v5

    move v5, v4

    .line 257
    .end local v4    # "buf":I
    .restart local v5    # "buf":I
    :cond_7
    return v6
.end method
