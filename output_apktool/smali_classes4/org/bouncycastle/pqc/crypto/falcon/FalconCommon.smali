.class Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
.super Ljava/lang/Object;
.source "FalconCommon.java"


# static fields
.field static final l2bound:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 267
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x18c7a
        0x32f4a
        0x68b41
        0xd9c87
        0x1c4518
        0x3aa246
        0x7974b6
        0xfb49c0
        0x2075426
        0x430299a
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method hash_to_point_ct(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII[SI)V
    .locals 22
    .param p1, "sc"    # Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .param p2, "srcx"    # [S
    .param p3, "x"    # I
    .param p4, "logn"    # I
    .param p5, "srctmp"    # [S
    .param p6, "tmp"    # I
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
            "sc",
            "srcx",
            "x",
            "logn",
            "srctmp",
            "tmp"
        }
    .end annotation

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    .line 93
    .local v0, "overtab":[S
    const/16 v1, 0x3f

    new-array v1, v1, [S

    .line 101
    .local v1, "tt2":[S
    const/4 v2, 0x1

    shl-int v3, v2, p4

    .line 102
    .local v3, "n":I
    shl-int/lit8 v4, v3, 0x1

    .line 103
    .local v4, "n2":I
    aget-short v5, v0, p4

    .line 104
    .local v5, "over":I
    add-int v6, v3, v5

    .line 105
    .local v6, "m":I
    move/from16 v7, p6

    .line 106
    .local v7, "tt1":I
    const/4 v8, 0x0

    .local v8, "u":I
    :goto_0
    const/4 v9, 0x2

    if-ge v8, v6, :cond_2

    .line 108
    new-array v9, v9, [B

    .line 111
    .local v9, "buf":[B
    array-length v10, v9

    const/4 v11, 0x0

    move-object/from16 v12, p1

    invoke-virtual {v12, v9, v11, v10}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    .line 112
    aget-byte v10, v9, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    aget-byte v11, v9, v2

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 113
    .local v10, "w":I
    add-int/lit16 v11, v10, -0x6002

    ushr-int/lit8 v11, v11, 0x1f

    sub-int/2addr v11, v2

    and-int/lit16 v11, v11, 0x6002

    sub-int v11, v10, v11

    .line 114
    .local v11, "wr":I
    add-int/lit16 v13, v11, -0x6002

    ushr-int/lit8 v13, v13, 0x1f

    sub-int/2addr v13, v2

    and-int/lit16 v13, v13, 0x6002

    sub-int/2addr v11, v13

    .line 115
    add-int/lit16 v13, v11, -0x3001

    ushr-int/lit8 v13, v13, 0x1f

    sub-int/2addr v13, v2

    and-int/lit16 v13, v13, 0x3001

    sub-int/2addr v11, v13

    .line 116
    const v13, 0xf005

    sub-int v13, v10, v13

    ushr-int/lit8 v13, v13, 0x1f

    sub-int/2addr v13, v2

    or-int/2addr v11, v13

    .line 117
    if-ge v8, v3, :cond_0

    .line 119
    add-int v13, p3, v8

    int-to-short v14, v11

    aput-short v14, p2, v13

    goto :goto_1

    .line 121
    :cond_0
    if-ge v8, v4, :cond_1

    .line 123
    add-int v13, v7, v8

    sub-int/2addr v13, v3

    int-to-short v14, v11

    aput-short v14, p5, v13

    goto :goto_1

    .line 127
    :cond_1
    sub-int v13, v8, v4

    int-to-short v14, v11

    aput-short v14, v1, v13

    .line 106
    .end local v9    # "buf":[B
    .end local v10    # "w":I
    .end local v11    # "wr":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 140
    :cond_2
    move-object/from16 v12, p1

    const/4 v10, 0x1

    .local v10, "p":I
    :goto_2
    if-gt v10, v5, :cond_d

    .line 157
    const/4 v11, 0x0

    .line 158
    .local v11, "v":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_c

    .line 164
    if-ge v8, v3, :cond_3

    .line 166
    const/4 v13, 0x1

    .line 167
    .local v13, "sp":I
    add-int v14, p3, v8

    .line 168
    .local v14, "s":I
    aget-short v15, p2, v14

    .local v15, "sv":I
    goto :goto_4

    .line 170
    .end local v13    # "sp":I
    .end local v14    # "s":I
    .end local v15    # "sv":I
    :cond_3
    if-ge v8, v4, :cond_4

    .line 172
    const/4 v13, 0x2

    .line 173
    .restart local v13    # "sp":I
    add-int v14, v7, v8

    sub-int/2addr v14, v3

    .line 174
    .restart local v14    # "s":I
    aget-short v15, p5, v14

    .restart local v15    # "sv":I
    goto :goto_4

    .line 178
    .end local v13    # "sp":I
    .end local v14    # "s":I
    .end local v15    # "sv":I
    :cond_4
    const/4 v13, 0x3

    .line 179
    .restart local v13    # "sp":I
    sub-int v14, v8, v4

    .line 180
    .restart local v14    # "s":I
    aget-short v15, v1, v14

    .line 187
    .restart local v15    # "sv":I
    :goto_4
    sub-int v16, v8, v11

    .line 195
    .local v16, "j":I
    ushr-int/lit8 v17, v15, 0xf

    add-int/lit8 v17, v17, -0x1

    .line 196
    .local v17, "mk":I
    sub-int v11, v11, v17

    .line 202
    if-ge v8, v10, :cond_5

    .line 204
    move-object/from16 v17, v0

    goto/16 :goto_7

    .line 210
    :cond_5
    sub-int v9, v8, v10

    if-ge v9, v3, :cond_6

    .line 212
    const/4 v9, 0x1

    .line 213
    .local v9, "dp":I
    add-int v19, p3, v8

    sub-int v19, v19, v10

    .line 214
    .local v19, "d":I
    aget-short v20, p2, v19

    .local v20, "dv":I
    goto :goto_5

    .line 216
    .end local v9    # "dp":I
    .end local v19    # "d":I
    .end local v20    # "dv":I
    :cond_6
    sub-int v9, v8, v10

    if-ge v9, v4, :cond_7

    .line 218
    const/4 v9, 0x2

    .line 219
    .restart local v9    # "dp":I
    sub-int v19, v8, v10

    add-int v19, v7, v19

    sub-int v19, v19, v3

    .line 220
    .restart local v19    # "d":I
    aget-short v20, p5, v19

    .restart local v20    # "dv":I
    goto :goto_5

    .line 224
    .end local v9    # "dp":I
    .end local v19    # "d":I
    .end local v20    # "dv":I
    :cond_7
    const/4 v9, 0x3

    .line 225
    .restart local v9    # "dp":I
    sub-int v19, v8, v10

    sub-int v19, v19, v4

    .line 226
    .restart local v19    # "d":I
    aget-short v20, v1, v19

    .line 233
    .restart local v20    # "dv":I
    :goto_5
    and-int v2, v16, v10

    add-int/lit16 v2, v2, 0x1ff

    shr-int/lit8 v2, v2, 0x9

    neg-int v2, v2

    and-int v2, v17, v2

    .line 234
    .end local v17    # "mk":I
    .local v2, "mk":I
    move-object/from16 v17, v0

    const/4 v0, 0x1

    .end local v0    # "overtab":[S
    .local v17, "overtab":[S
    if-ne v13, v0, :cond_8

    .line 236
    xor-int v0, v15, v20

    and-int/2addr v0, v2

    xor-int/2addr v0, v15

    int-to-short v0, v0

    aput-short v0, p2, v14

    goto :goto_6

    .line 238
    :cond_8
    const/4 v0, 0x2

    if-ne v13, v0, :cond_9

    .line 240
    xor-int v0, v15, v20

    and-int/2addr v0, v2

    xor-int/2addr v0, v15

    int-to-short v0, v0

    aput-short v0, p5, v14

    goto :goto_6

    .line 244
    :cond_9
    xor-int v0, v15, v20

    and-int/2addr v0, v2

    xor-int/2addr v0, v15

    int-to-short v0, v0

    aput-short v0, v1, v14

    .line 246
    :goto_6
    const/4 v0, 0x1

    if-ne v9, v0, :cond_a

    .line 248
    xor-int v21, v15, v20

    and-int v21, v2, v21

    xor-int v0, v20, v21

    int-to-short v0, v0

    aput-short v0, p2, v19

    goto :goto_7

    .line 250
    :cond_a
    const/4 v0, 0x2

    if-ne v9, v0, :cond_b

    .line 252
    xor-int v18, v15, v20

    and-int v18, v2, v18

    xor-int v0, v20, v18

    int-to-short v0, v0

    aput-short v0, p5, v19

    goto :goto_7

    .line 256
    :cond_b
    xor-int v0, v15, v20

    and-int/2addr v0, v2

    xor-int v0, v20, v0

    int-to-short v0, v0

    aput-short v0, v1, v19

    .line 158
    .end local v2    # "mk":I
    .end local v9    # "dp":I
    .end local v13    # "sp":I
    .end local v14    # "s":I
    .end local v15    # "sv":I
    .end local v16    # "j":I
    .end local v19    # "d":I
    .end local v20    # "dv":I
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v17

    const/4 v2, 0x1

    const/4 v9, 0x2

    goto/16 :goto_3

    .end local v17    # "overtab":[S
    .restart local v0    # "overtab":[S
    :cond_c
    move-object/from16 v17, v0

    .line 140
    .end local v0    # "overtab":[S
    .end local v11    # "v":I
    .restart local v17    # "overtab":[S
    shl-int/lit8 v10, v10, 0x1

    const/4 v2, 0x1

    const/4 v9, 0x2

    goto/16 :goto_2

    .line 260
    .end local v17    # "overtab":[S
    .restart local v0    # "overtab":[S
    :cond_d
    return-void

    :array_0
    .array-data 2
        0x0s
        0x41s
        0x43s
        0x47s
        0x4ds
        0x56s
        0x64s
        0x7as
        0x9as
        0xcds
        0x11fs
    .end array-data
.end method

.method hash_to_point_vartime(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII)V
    .locals 6
    .param p1, "sc"    # Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .param p2, "srcx"    # [S
    .param p3, "x"    # I
    .param p4, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sc",
            "srcx",
            "x",
            "logn"
        }
    .end annotation

    .line 24
    const/4 v0, 0x1

    shl-int v1, v0, p4

    .line 25
    .local v1, "n":I
    :goto_0
    if-lez v1, :cond_2

    .line 27
    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 31
    .local v3, "buf":[B
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    .line 32
    aget-byte v2, v3, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 33
    .local v2, "w":I
    const v4, 0xf005

    if-ge v2, v4, :cond_1

    .line 35
    :goto_1
    const/16 v4, 0x3001

    if-lt v2, v4, :cond_0

    .line 37
    add-int/lit16 v2, v2, -0x3001

    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "x":I
    .local v4, "x":I
    int-to-short v5, v2

    aput-short v5, p2, p3

    .line 40
    add-int/lit8 v1, v1, -0x1

    move p3, v4

    .line 42
    .end local v2    # "w":I
    .end local v3    # "buf":[B
    .end local v4    # "x":I
    .restart local p3    # "x":I
    :cond_1
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method is_short([SI[SII)I
    .locals 10
    .param p1, "srcs1"    # [S
    .param p2, "s1"    # I
    .param p3, "srcs2"    # [S
    .param p4, "s2"    # I
    .param p5, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcs1",
            "s1",
            "srcs2",
            "s2",
            "logn"
        }
    .end annotation

    .line 293
    const/4 v0, 0x1

    shl-int v1, v0, p5

    .line 294
    .local v1, "n":I
    const/4 v2, 0x0

    .line 295
    .local v2, "s":I
    const/4 v3, 0x0

    .line 296
    .local v3, "ng":I
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 300
    add-int v5, p2, v4

    aget-short v5, p1, v5

    .line 301
    .local v5, "z":I
    mul-int v6, v5, v5

    add-int/2addr v2, v6

    .line 302
    or-int/2addr v3, v2

    .line 303
    add-int v6, p4, v4

    aget-short v5, p3, v6

    .line 304
    mul-int v6, v5, v5

    add-int/2addr v2, v6

    .line 305
    or-int/2addr v3, v2

    .line 296
    .end local v5    # "z":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 307
    :cond_0
    ushr-int/lit8 v5, v3, 0x1f

    neg-int v5, v5

    or-int/2addr v2, v5

    .line 309
    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    sget-object v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    aget v7, v7, p5

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-gtz v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method is_short_half(I[SII)I
    .locals 9
    .param p1, "sqn"    # I
    .param p2, "srcs2"    # [S
    .param p3, "s2"    # I
    .param p4, "logn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sqn",
            "srcs2",
            "s2",
            "logn"
        }
    .end annotation

    .line 319
    const/4 v0, 0x1

    shl-int v1, v0, p4

    .line 320
    .local v1, "n":I
    ushr-int/lit8 v2, p1, 0x1f

    neg-int v2, v2

    .line 321
    .local v2, "ng":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 325
    add-int v4, p3, v3

    aget-short v4, p2, v4

    .line 326
    .local v4, "z":I
    mul-int v5, v4, v4

    add-int/2addr p1, v5

    .line 327
    or-int/2addr v2, p1

    .line 321
    .end local v4    # "z":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :cond_0
    ushr-int/lit8 v4, v2, 0x1f

    neg-int v4, v4

    or-int/2addr p1, v4

    .line 331
    int-to-long v4, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    sget-object v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    aget v6, v6, p4

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
