.class Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;
.super Ljava/lang/Object;
.source "GF2PolynomialCalculator.java"


# instance fields
.field private final PARAM_N:I

.field private final RED_MASK:J

.field private final VEC_N_SIZE_64:I


# direct methods
.method constructor <init>(IIJ)V
    .locals 0
    .param p1, "vec_n_size_64"    # I
    .param p2, "param_n"    # I
    .param p3, "red_mask"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vec_n_size_64",
            "param_n",
            "red_mask"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    .line 12
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    .line 13
    iput-wide p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->RED_MASK:J

    .line 14
    return-void
.end method

.method static addLongs([J[J[J)V
    .locals 5
    .param p0, "res"    # [J
    .param p1, "a"    # [J
    .param p2, "b"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "a",
            "b"
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 226
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private base_mul([JIJJ)V
    .locals 30
    .param p1, "c"    # [J
    .param p2, "cOffset"    # I
    .param p3, "a"    # J
    .param p5, "b"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "cOffset",
            "a",
            "b"
        }
    .end annotation

    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .local v0, "h":J
    const-wide/16 v2, 0x0

    .line 31
    .local v2, "l":J
    const/16 v4, 0x10

    new-array v5, v4, [J

    .line 32
    .local v5, "u":[J
    const/4 v6, 0x4

    new-array v7, v6, [J

    .line 35
    .local v7, "mask_tab":[J
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    aput-wide v8, v5, v10

    .line 36
    const-wide v8, 0xfffffffffffffffL

    and-long v8, p5, v8

    const/4 v11, 0x1

    aput-wide v8, v5, v11

    .line 37
    aget-wide v8, v5, v11

    shl-long/2addr v8, v11

    const/4 v12, 0x2

    aput-wide v8, v5, v12

    .line 38
    aget-wide v8, v5, v12

    aget-wide v13, v5, v11

    xor-long/2addr v8, v13

    const/4 v13, 0x3

    aput-wide v8, v5, v13

    .line 39
    aget-wide v8, v5, v12

    shl-long/2addr v8, v11

    aput-wide v8, v5, v6

    .line 40
    aget-wide v8, v5, v6

    aget-wide v14, v5, v11

    xor-long/2addr v8, v14

    const/4 v14, 0x5

    aput-wide v8, v5, v14

    .line 41
    aget-wide v8, v5, v13

    shl-long/2addr v8, v11

    const/4 v15, 0x6

    aput-wide v8, v5, v15

    .line 42
    aget-wide v8, v5, v15

    aget-wide v16, v5, v11

    xor-long v8, v8, v16

    const/16 v16, 0x7

    aput-wide v8, v5, v16

    .line 43
    aget-wide v8, v5, v6

    shl-long/2addr v8, v11

    const/16 v17, 0x8

    aput-wide v8, v5, v17

    .line 44
    aget-wide v8, v5, v17

    aget-wide v17, v5, v11

    xor-long v8, v8, v17

    const/16 v17, 0x9

    aput-wide v8, v5, v17

    .line 45
    aget-wide v8, v5, v14

    shl-long/2addr v8, v11

    const/16 v14, 0xa

    aput-wide v8, v5, v14

    .line 46
    aget-wide v8, v5, v14

    aget-wide v17, v5, v11

    xor-long v8, v8, v17

    const/16 v14, 0xb

    aput-wide v8, v5, v14

    .line 47
    aget-wide v8, v5, v15

    shl-long/2addr v8, v11

    const/16 v14, 0xc

    aput-wide v8, v5, v14

    .line 48
    aget-wide v8, v5, v14

    aget-wide v14, v5, v11

    xor-long/2addr v8, v14

    const/16 v14, 0xd

    aput-wide v8, v5, v14

    .line 49
    aget-wide v8, v5, v16

    shl-long/2addr v8, v11

    const/16 v14, 0xe

    aput-wide v8, v5, v14

    .line 50
    aget-wide v8, v5, v14

    aget-wide v14, v5, v11

    xor-long/2addr v8, v14

    const/16 v14, 0xf

    aput-wide v8, v5, v14

    .line 52
    const-wide/16 v8, 0x0

    .line 53
    .local v8, "g":J
    const-wide/16 v14, 0xf

    and-long v16, p3, v14

    .line 55
    .local v16, "tmp1":J
    const/16 v18, 0x0

    move/from16 v6, v18

    const/16 v18, 0x4

    .local v6, "i":I
    :goto_0
    const/16 v19, 0x3f

    const-wide/16 v20, 0x1

    if-ge v6, v4, :cond_0

    .line 57
    const/16 v22, 0x0

    const/16 v23, 0x1

    int-to-long v10, v6

    sub-long v10, v16, v10

    .line 58
    .local v10, "tmp2":J
    aget-wide v24, v5, v6

    const/16 v26, 0x2

    const/16 v27, 0x3

    neg-long v12, v10

    or-long/2addr v12, v10

    ushr-long v12, v12, v19

    sub-long v12, v20, v12

    neg-long v12, v12

    and-long v12, v24, v12

    xor-long/2addr v8, v12

    .line 55
    .end local v10    # "tmp2":J
    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x3

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v26, 0x2

    const/16 v27, 0x3

    .line 60
    .end local v6    # "i":I
    move-wide v2, v8

    .line 61
    const-wide/16 v0, 0x0

    .line 64
    const/4 v6, 0x4

    .local v6, "i":B
    :goto_1
    const/16 v10, 0x40

    if-ge v6, v10, :cond_2

    .line 66
    const-wide/16 v8, 0x0

    .line 67
    shr-long v10, p3, v6

    and-long/2addr v10, v14

    .line 68
    .local v10, "temp1":J
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    if-ge v12, v4, :cond_1

    .line 70
    move-object/from16 v24, v5

    .end local v5    # "u":[J
    .local v24, "u":[J
    int-to-long v4, v12

    sub-long v4, v10, v4

    .line 71
    .local v4, "tmp2":J
    aget-wide v28, v24, v12

    neg-long v13, v4

    or-long/2addr v13, v4

    ushr-long v13, v13, v19

    sub-long v13, v20, v13

    neg-long v13, v13

    and-long v13, v28, v13

    xor-long/2addr v8, v13

    .line 68
    .end local v4    # "tmp2":J
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v24

    const/16 v4, 0x10

    const-wide/16 v14, 0xf

    goto :goto_2

    .end local v24    # "u":[J
    .restart local v5    # "u":[J
    :cond_1
    move-object/from16 v24, v5

    .line 74
    .end local v5    # "u":[J
    .end local v12    # "j":I
    .restart local v24    # "u":[J
    shl-long v4, v8, v6

    xor-long/2addr v2, v4

    .line 75
    rsub-int/lit8 v4, v6, 0x40

    ushr-long v4, v8, v4

    xor-long/2addr v0, v4

    .line 64
    .end local v10    # "temp1":J
    add-int/lit8 v4, v6, 0x4

    int-to-byte v6, v4

    move-object/from16 v5, v24

    const/16 v4, 0x10

    const-wide/16 v14, 0xf

    goto :goto_1

    .end local v24    # "u":[J
    .restart local v5    # "u":[J
    :cond_2
    move-object/from16 v24, v5

    .line 79
    .end local v5    # "u":[J
    .end local v6    # "i":B
    .restart local v24    # "u":[J
    const/16 v4, 0x3c

    shr-long v5, p5, v4

    and-long v5, v5, v20

    neg-long v5, v5

    aput-wide v5, v7, v22

    .line 80
    const/16 v5, 0x3d

    shr-long v10, p5, v5

    and-long v10, v10, v20

    neg-long v10, v10

    aput-wide v10, v7, v23

    .line 81
    const/16 v6, 0x3e

    shr-long v10, p5, v6

    and-long v10, v10, v20

    neg-long v10, v10

    aput-wide v10, v7, v26

    .line 82
    shr-long v10, p5, v19

    and-long v10, v10, v20

    neg-long v10, v10

    aput-wide v10, v7, v27

    .line 84
    shl-long v10, p3, v4

    aget-wide v12, v7, v22

    and-long/2addr v10, v12

    xor-long/2addr v2, v10

    .line 85
    ushr-long v10, p3, v18

    aget-wide v12, v7, v22

    and-long/2addr v10, v12

    xor-long/2addr v0, v10

    .line 87
    shl-long v4, p3, v5

    aget-wide v10, v7, v23

    and-long/2addr v4, v10

    xor-long/2addr v2, v4

    .line 88
    ushr-long v4, p3, v27

    aget-wide v10, v7, v23

    and-long/2addr v4, v10

    xor-long/2addr v0, v4

    .line 90
    shl-long v4, p3, v6

    aget-wide v10, v7, v26

    and-long/2addr v4, v10

    xor-long/2addr v2, v4

    .line 91
    ushr-long v4, p3, v26

    aget-wide v10, v7, v26

    and-long/2addr v4, v10

    xor-long/2addr v0, v4

    .line 93
    shl-long v4, p3, v19

    aget-wide v10, v7, v27

    and-long/2addr v4, v10

    xor-long/2addr v2, v4

    .line 94
    ushr-long v4, p3, v23

    aget-wide v10, v7, v27

    and-long/2addr v4, v10

    xor-long/2addr v0, v4

    .line 96
    add-int/lit8 v4, p2, 0x0

    aput-wide v2, p1, v4

    .line 97
    add-int/lit8 v4, p2, 0x1

    aput-wide v0, p1, v4

    .line 98
    return-void
.end method

.method private karatsuba([JI[JI[JII[JI)V
    .locals 20
    .param p1, "o"    # [J
    .param p2, "oOffset"    # I
    .param p3, "a"    # [J
    .param p4, "aOffset"    # I
    .param p5, "b"    # [J
    .param p6, "bOffset"    # I
    .param p7, "size"    # I
    .param p8, "stack"    # [J
    .param p9, "stackOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "o",
            "oOffset",
            "a",
            "aOffset",
            "b",
            "bOffset",
            "size",
            "stack",
            "stackOffset"
        }
    .end annotation

    .line 161
    move/from16 v0, p7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 163
    add-int/lit8 v1, p4, 0x0

    aget-wide v5, p3, v1

    add-int/lit8 v1, p6, 0x0

    aget-wide v7, p5, v1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->base_mul([JIJJ)V

    .line 164
    return-void

    .line 167
    :cond_0
    div-int/lit8 v19, v0, 0x2

    .line 168
    .local v19, "size_h":I
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v16, v1, 0x2

    .line 171
    .local v16, "size_l":I
    move/from16 v1, p9

    .line 173
    .local v1, "alhOffset":I
    add-int v2, v1, v16

    .line 175
    .local v2, "blhOffset":I
    add-int v3, v2, v16

    .line 177
    .local v3, "tmp1Offset":I
    mul-int/lit8 v4, v16, 0x2

    add-int v4, p2, v4

    .line 179
    .local v4, "tmp2Offset":I
    mul-int/lit8 v5, v16, 0x4

    add-int v18, p9, v5

    .line 181
    .end local p9    # "stackOffset":I
    .local v18, "stackOffset":I
    add-int v5, p4, v16

    .line 182
    .local v5, "ahOffset":I
    add-int v6, p6, v16

    .line 184
    .local v6, "bhOffset":I
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v17, p8

    invoke-direct/range {v9 .. v18}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    .line 186
    move/from16 v7, v16

    .end local v16    # "size_l":I
    .local v7, "size_l":I
    move v11, v4

    move v13, v5

    move v15, v6

    move/from16 v16, v19

    .end local v4    # "tmp2Offset":I
    .end local v5    # "ahOffset":I
    .end local v6    # "bhOffset":I
    .end local v19    # "size_h":I
    .local v11, "tmp2Offset":I
    .local v13, "ahOffset":I
    .local v15, "bhOffset":I
    .local v16, "size_h":I
    invoke-direct/range {v9 .. v18}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    .line 188
    move v6, v13

    move v8, v15

    move/from16 v5, v18

    .end local v11    # "tmp2Offset":I
    .end local v13    # "ahOffset":I
    .end local v15    # "bhOffset":I
    .end local v18    # "stackOffset":I
    .restart local v4    # "tmp2Offset":I
    .local v5, "stackOffset":I
    .local v6, "ahOffset":I
    .local v8, "bhOffset":I
    move-object/from16 v12, p8

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v17, p6

    move-object/from16 v10, p8

    move v11, v1

    move v13, v2

    move/from16 v18, v7

    move-object/from16 v16, p5

    .end local v1    # "alhOffset":I
    .end local v2    # "blhOffset":I
    .end local v7    # "size_l":I
    .end local v16    # "size_h":I
    .local v11, "alhOffset":I
    .local v13, "blhOffset":I
    .local v18, "size_l":I
    .restart local v19    # "size_h":I
    invoke-direct/range {v9 .. v19}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba_add1([JI[JI[JI[JIII)V

    .line 190
    move/from16 v16, v18

    .end local v18    # "size_l":I
    .local v16, "size_l":I
    move-object/from16 v14, p8

    move-object/from16 v17, p8

    move/from16 v18, v5

    move v15, v13

    move v13, v11

    move v11, v3

    .end local v3    # "tmp1Offset":I
    .end local v5    # "stackOffset":I
    .local v11, "tmp1Offset":I
    .local v13, "alhOffset":I
    .local v15, "blhOffset":I
    .local v18, "stackOffset":I
    invoke-direct/range {v9 .. v18}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    .line 192
    move v1, v13

    move v2, v15

    .end local v13    # "alhOffset":I
    .end local v15    # "blhOffset":I
    .restart local v1    # "alhOffset":I
    .restart local v2    # "blhOffset":I
    move-object/from16 v14, p1

    move-object/from16 v10, p1

    move v15, v4

    move v13, v11

    move/from16 v17, v19

    move/from16 v11, p2

    .end local v4    # "tmp2Offset":I
    .end local v11    # "tmp1Offset":I
    .end local v19    # "size_h":I
    .local v13, "tmp1Offset":I
    .local v15, "tmp2Offset":I
    .local v17, "size_h":I
    invoke-direct/range {v9 .. v17}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba_add2([JI[JI[JIII)V

    .line 193
    move v11, v13

    move/from16 v7, v16

    move/from16 v16, v17

    .end local v13    # "tmp1Offset":I
    .end local v17    # "size_h":I
    .restart local v7    # "size_l":I
    .restart local v11    # "tmp1Offset":I
    .local v16, "size_h":I
    return-void
.end method

.method private karatsuba_add1([JI[JI[JI[JIII)V
    .locals 8
    .param p1, "alh"    # [J
    .param p2, "alhOffset"    # I
    .param p3, "blh"    # [J
    .param p4, "blhOffset"    # I
    .param p5, "a"    # [J
    .param p6, "aOffset"    # I
    .param p7, "b"    # [J
    .param p8, "bOffset"    # I
    .param p9, "size_l"    # I
    .param p10, "size_h"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alh",
            "alhOffset",
            "blh",
            "blhOffset",
            "a",
            "aOffset",
            "b",
            "bOffset",
            "size_l",
            "size_h"
        }
    .end annotation

    .line 109
    move/from16 v0, p9

    move/from16 v1, p10

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 111
    add-int v3, v2, p2

    add-int v4, v2, p6

    aget-wide v4, p5, v4

    add-int v6, v2, v0

    add-int/2addr v6, p6

    aget-wide v6, p5, v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    .line 112
    add-int v3, v2, p4

    add-int v4, v2, p8

    aget-wide v4, p7, v4

    add-int v6, v2, v0

    add-int v6, v6, p8

    aget-wide v6, p7, v6

    xor-long/2addr v4, v6

    aput-wide v4, p3, v3

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "i":I
    :cond_0
    if-ge v1, v0, :cond_1

    .line 117
    add-int v2, v1, p2

    add-int v3, v1, p6

    aget-wide v3, p5, v3

    aput-wide v3, p1, v2

    .line 118
    add-int v2, v1, p4

    add-int v3, v1, p8

    aget-wide v3, p7, v3

    aput-wide v3, p3, v2

    .line 120
    :cond_1
    return-void
.end method

.method private karatsuba_add2([JI[JI[JIII)V
    .locals 6
    .param p1, "o"    # [J
    .param p2, "oOffset"    # I
    .param p3, "tmp1"    # [J
    .param p4, "tmp1Offset"    # I
    .param p5, "tmp2"    # [J
    .param p6, "tmp2Offset"    # I
    .param p7, "size_l"    # I
    .param p8, "size_h"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "o",
            "oOffset",
            "tmp1",
            "tmp1Offset",
            "tmp2",
            "tmp2Offset",
            "size_l",
            "size_h"
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v1, p7, 0x2

    if-ge v0, v1, :cond_0

    .line 131
    add-int v1, v0, p4

    add-int v2, v0, p4

    aget-wide v2, p3, v2

    add-int v4, v0, p2

    aget-wide v4, p1, v4

    xor-long/2addr v2, v4

    aput-wide v2, p3, v1

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    mul-int/lit8 v1, p8, 0x2

    if-ge v0, v1, :cond_1

    .line 136
    add-int v1, v0, p4

    add-int v2, v0, p4

    aget-wide v2, p3, v2

    add-int v4, v0, p6

    aget-wide v4, p5, v4

    xor-long/2addr v2, v4

    aput-wide v2, p3, v1

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    mul-int/lit8 v1, p7, 0x2

    if-ge v0, v1, :cond_2

    .line 141
    add-int v1, v0, p7

    add-int/2addr v1, p2

    add-int v2, v0, p7

    add-int/2addr v2, p2

    aget-wide v2, p1, v2

    add-int v4, v0, p4

    aget-wide v4, p3, v4

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private reduce([J[J)V
    .locals 9
    .param p1, "o"    # [J
    .param p2, "a"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "a"
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    if-ge v0, v1, :cond_0

    .line 213
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    and-int/lit8 v3, v3, 0x3f

    ushr-long/2addr v1, v3

    .line 214
    .local v1, "r":J
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    add-int/2addr v3, v0

    aget-wide v3, p2, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3f

    and-long/2addr v5, v7

    const-wide/16 v7, 0x40

    sub-long/2addr v7, v5

    long-to-int v5, v7

    shl-long/2addr v3, v5

    .line 215
    .local v3, "carry":J
    aget-wide v5, p2, v0

    xor-long/2addr v5, v1

    xor-long/2addr v5, v3

    aput-wide v5, p1, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "r":J
    .end local v3    # "carry":J
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, p1, v1

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->RED_MASK:J

    and-long/2addr v2, v4

    aput-wide v2, p1, v1

    .line 218
    return-void
.end method


# virtual methods
.method protected multLongs([J[J[J)V
    .locals 11
    .param p1, "res"    # [J
    .param p2, "a"    # [J
    .param p3, "b"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "a",
            "b"
        }
    .end annotation

    .line 18
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    shl-int/lit8 v0, v0, 0x3

    new-array v9, v0, [J

    .line 19
    .local v9, "stack":[J
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [J

    .line 21
    .local v2, "o_karat":[J
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v6, p3

    .end local p2    # "a":[J
    .end local p3    # "b":[J
    .local v4, "a":[J
    .local v6, "b":[J
    invoke-direct/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    .line 22
    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->reduce([J[J)V

    .line 23
    return-void
.end method
