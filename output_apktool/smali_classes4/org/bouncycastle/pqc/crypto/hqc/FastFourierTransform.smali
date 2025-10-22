.class Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;
.super Ljava/lang/Object;
.source "FastFourierTransform.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeFFTBetas([II)V
    .locals 3
    .param p0, "betas"    # [I
    .param p1, "m"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "betas",
            "m"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    .line 58
    add-int/lit8 v1, p1, -0x1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    shl-int v1, v2, v1

    aput v1, p0, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static computeFFTRec([I[IIII[III)V
    .locals 24
    .param p0, "output"    # [I
    .param p1, "func"    # [I
    .param p2, "noCoeffs"    # I
    .param p3, "noOfBetas"    # I
    .param p4, "noCoeffsPlus"    # I
    .param p5, "betaSet"    # [I
    .param p6, "fft"    # I
    .param p7, "m"    # I
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
            "output",
            "func",
            "noCoeffs",
            "noOfBetas",
            "noCoeffsPlus",
            "betaSet",
            "fft",
            "m"
        }
    .end annotation

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p6

    add-int/lit8 v5, v11, -0x2

    const/4 v6, 0x1

    shl-int v13, v6, v5

    .line 165
    .local v13, "fftSize":I
    add-int/lit8 v5, p7, -0x2

    shl-int v14, v6, v5

    .line 167
    .local v14, "mSize":I
    new-array v5, v13, [I

    .line 168
    .local v5, "fx0":[I
    new-array v15, v13, [I

    .line 169
    .local v15, "fx1":[I
    add-int/lit8 v7, p7, -0x2

    new-array v7, v7, [I

    .line 170
    .local v7, "gammaSet":[I
    add-int/lit8 v8, p7, -0x2

    new-array v10, v8, [I

    .line 171
    .local v10, "deltaSet":[I
    const/16 v16, 0x1

    .line 172
    .local v16, "k":I
    new-array v8, v14, [I

    .line 173
    .local v8, "gammaSumSet":[I
    new-array v9, v14, [I

    .line 174
    .local v9, "uSet":[I
    new-array v12, v14, [I

    .line 175
    .local v12, "vSet":[I
    sub-int v17, p7, v11

    const/16 v18, 0x1

    add-int/lit8 v6, v17, 0x1

    new-array v6, v6, [I

    .line 177
    .local v6, "tempSet":[I
    const/16 v17, 0x0

    .line 178
    .local v17, "x":I
    move/from16 v19, v13

    .end local v13    # "fftSize":I
    .local v19, "fftSize":I
    const/4 v13, 0x1

    const/16 v20, 0x0

    if-ne v4, v13, :cond_3

    .line 180
    const/16 v18, 0x0

    move/from16 v13, v18

    const/16 v21, 0x1

    .local v13, "i":I
    :goto_0
    if-ge v13, v3, :cond_0

    .line 182
    move-object/from16 v22, v6

    .end local v6    # "tempSet":[I
    .local v22, "tempSet":[I
    aget v6, p5, v13

    move-object/from16 v23, v9

    .end local v9    # "uSet":[I
    .local v23, "uSet":[I
    aget v9, v1, v21

    invoke-static {v6, v9}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    aput v6, v22, v13

    .line 180
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v22

    move-object/from16 v9, v23

    const/16 v21, 0x1

    goto :goto_0

    .end local v22    # "tempSet":[I
    .end local v23    # "uSet":[I
    .restart local v6    # "tempSet":[I
    .restart local v9    # "uSet":[I
    :cond_0
    move-object/from16 v22, v6

    move-object/from16 v23, v9

    .line 185
    .end local v6    # "tempSet":[I
    .end local v9    # "uSet":[I
    .end local v13    # "i":I
    .restart local v22    # "tempSet":[I
    .restart local v23    # "uSet":[I
    aget v6, v1, v20

    aput v6, v0, v20

    .line 186
    const/4 v6, 0x1

    .line 187
    .end local v17    # "x":I
    .local v6, "x":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v3, :cond_2

    .line 189
    const/4 v13, 0x0

    .local v13, "t":I
    :goto_2
    if-ge v13, v6, :cond_1

    .line 191
    add-int v17, v6, v13

    aget v18, v0, v13

    aget v20, v22, v9

    xor-int v18, v18, v20

    aput v18, v0, v17

    .line 189
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 193
    .end local v13    # "t":I
    :cond_1
    shl-int/lit8 v6, v6, 0x1

    .line 187
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 195
    .end local v9    # "j":I
    :cond_2
    return-void

    .line 198
    .end local v22    # "tempSet":[I
    .end local v23    # "uSet":[I
    .local v6, "tempSet":[I
    .local v9, "uSet":[I
    .restart local v17    # "x":I
    :cond_3
    move-object/from16 v22, v6

    move-object/from16 v23, v9

    .end local v6    # "tempSet":[I
    .end local v9    # "uSet":[I
    .restart local v22    # "tempSet":[I
    .restart local v23    # "uSet":[I
    add-int/lit8 v6, v3, -0x1

    aget v6, p5, v6

    const/4 v13, 0x1

    if-eq v6, v13, :cond_5

    .line 200
    const/4 v6, 0x1

    .line 201
    .local v6, "betaMPow":I
    const/4 v9, 0x1

    .line 202
    .end local v17    # "x":I
    .local v9, "x":I
    shl-int/2addr v9, v4

    .line 203
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_3
    if-ge v13, v9, :cond_4

    .line 205
    add-int/lit8 v17, v3, -0x1

    aget v3, p5, v17

    invoke-static {v6, v3}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    .line 206
    aget v3, v1, v13

    invoke-static {v6, v3}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v3

    aput v3, v1, v13

    .line 203
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p3

    goto :goto_3

    :cond_4
    move/from16 v17, v9

    .line 210
    .end local v6    # "betaMPow":I
    .end local v9    # "x":I
    .end local v13    # "i":I
    .restart local v17    # "x":I
    :cond_5
    invoke-static {v5, v15, v1, v4, v11}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    .line 212
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    add-int/lit8 v6, p3, -0x1

    if-ge v3, v6, :cond_6

    .line 214
    aget v6, p5, v3

    add-int/lit8 v9, p3, -0x1

    aget v9, p5, v9

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->inverse(I)I

    move-result v9

    invoke-static {v6, v9}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    aput v6, v7, v3

    .line 215
    aget v6, v7, v3

    aget v9, v7, v3

    invoke-static {v6, v9}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    aget v9, v7, v3

    xor-int/2addr v6, v9

    aput v6, v10, v3

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 218
    .end local v3    # "i":I
    :cond_6
    add-int/lit8 v3, p3, -0x1

    invoke-static {v8, v7, v3}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeSubsetSum([I[II)V

    .line 220
    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v3, v3, 0x2

    move-object v6, v8

    .end local v8    # "gammaSumSet":[I
    .local v6, "gammaSumSet":[I
    add-int/lit8 v8, p3, -0x1

    add-int/lit8 v9, v4, -0x1

    move-object v13, v7

    move v7, v3

    move-object v3, v13

    move-object v13, v6

    move-object/from16 v18, v12

    move/from16 v12, p7

    move-object v6, v5

    move-object/from16 v5, v23

    .end local v7    # "gammaSet":[I
    .end local v12    # "vSet":[I
    .end local v23    # "uSet":[I
    .local v3, "gammaSet":[I
    .local v5, "uSet":[I
    .local v6, "fx0":[I
    .local v13, "gammaSumSet":[I
    .local v18, "vSet":[I
    invoke-static/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    .line 222
    move-object/from16 v21, v6

    .end local v5    # "uSet":[I
    .end local v6    # "fx0":[I
    .local v21, "fx0":[I
    .restart local v23    # "uSet":[I
    const/4 v5, 0x1

    .line 223
    .end local v16    # "k":I
    .local v5, "k":I
    add-int/lit8 v6, p3, -0x1

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v5, v6

    .line 224
    const/4 v6, 0x3

    if-gt v2, v6, :cond_8

    .line 226
    aget v6, v23, v20

    aput v6, v0, v20

    .line 227
    aget v6, v23, v20

    aget v7, v15, v20

    xor-int/2addr v6, v7

    aput v6, v0, v5

    .line 228
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_5
    if-ge v6, v5, :cond_7

    .line 230
    aget v7, v23, v6

    aget v8, v13, v6

    aget v9, v15, v20

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, v0, v6

    .line 231
    add-int v7, v5, v6

    aget v8, v0, v6

    aget v9, v15, v20

    xor-int/2addr v8, v9

    aput v8, v0, v7

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    move-object v6, v15

    move v15, v5

    move-object/from16 v5, v18

    .end local v6    # "i":I
    goto :goto_7

    .line 236
    :cond_8
    div-int/lit8 v7, v2, 0x2

    add-int/lit8 v8, p3, -0x1

    add-int/lit8 v9, v4, -0x1

    move/from16 v11, p6

    move/from16 v12, p7

    move-object v6, v15

    move v15, v5

    move-object/from16 v5, v18

    .end local v18    # "vSet":[I
    .local v5, "vSet":[I
    .local v6, "fx1":[I
    .local v15, "k":I
    invoke-static/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    .line 241
    const/4 v7, 0x0

    invoke-static {v5, v7, v0, v15, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    aget v8, v23, v7

    aput v8, v0, v7

    .line 244
    aget v8, v0, v15

    aget v7, v23, v7

    xor-int/2addr v7, v8

    aput v7, v0, v15

    .line 245
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_6
    if-ge v7, v15, :cond_9

    .line 247
    aget v8, v23, v7

    aget v9, v13, v7

    aget v11, v5, v7

    invoke-static {v9, v11}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v0, v7

    .line 248
    add-int v8, v15, v7

    aget v9, v0, v8

    aget v11, v0, v7

    xor-int/2addr v9, v11

    aput v9, v0, v8

    .line 245
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 253
    .end local v7    # "i":I
    :cond_9
    :goto_7
    return-void
.end method

.method static computeRadix([I[I[III)V
    .locals 16
    .param p0, "f0"    # [I
    .param p1, "f1"    # [I
    .param p2, "f"    # [I
    .param p3, "mf"    # I
    .param p4, "fft"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "f0",
            "f1",
            "f",
            "mf",
            "fft"
        }
    .end annotation

    .line 77
    const/4 v0, 0x4

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    packed-switch p3, :pswitch_data_0

    .line 123
    invoke-static/range {p0 .. p4}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadixBig([I[I[III)V

    .line 126
    return-void

    .line 80
    :pswitch_0
    const/16 v8, 0x8

    aget v8, p2, v8

    const/16 v9, 0xc

    aget v10, p2, v9

    xor-int/2addr v8, v10

    aput v8, p0, v0

    .line 81
    aget v8, p2, v9

    const/16 v10, 0xe

    aget v11, p2, v10

    xor-int/2addr v8, v11

    aput v8, p0, v2

    .line 82
    aget v8, p2, v10

    const/16 v11, 0xf

    aget v12, p2, v11

    xor-int/2addr v8, v12

    aput v8, p0, v1

    .line 83
    const/16 v8, 0xb

    aget v12, p2, v8

    const/16 v13, 0xd

    aget v14, p2, v13

    xor-int/2addr v12, v14

    aput v12, p1, v3

    .line 84
    aget v12, p2, v13

    aget v14, p2, v10

    xor-int/2addr v12, v14

    aput v12, p1, v2

    .line 85
    aget v12, p2, v11

    aput v12, p1, v1

    .line 86
    const/16 v12, 0xa

    aget v14, p2, v12

    aget v9, p2, v9

    xor-int/2addr v9, v14

    aget v14, p1, v3

    xor-int/2addr v9, v14

    aput v9, p0, v3

    .line 87
    const/16 v9, 0x9

    aget v14, p2, v9

    aget v15, p2, v13

    xor-int/2addr v14, v15

    aget v15, p0, v3

    xor-int/2addr v14, v15

    aput v14, p1, v0

    .line 89
    aget v14, p2, v5

    aput v14, p0, v5

    .line 90
    aget v1, p2, v1

    aget v8, p2, v8

    xor-int/2addr v1, v8

    aget v8, p2, v11

    xor-int/2addr v1, v8

    aput v1, p1, v6

    .line 91
    aget v1, p2, v2

    aget v2, p2, v12

    xor-int/2addr v1, v2

    aget v2, p2, v10

    xor-int/2addr v1, v2

    aget v2, p1, v6

    xor-int/2addr v1, v2

    aput v1, p0, v6

    .line 92
    aget v1, p2, v0

    aget v0, p0, v0

    xor-int/2addr v0, v1

    aget v1, p0, v6

    xor-int/2addr v0, v1

    aget v1, p1, v6

    xor-int/2addr v0, v1

    aput v0, p0, v4

    .line 93
    aget v0, p2, v6

    aget v1, p2, v3

    xor-int/2addr v0, v1

    aget v1, p2, v9

    xor-int/2addr v0, v1

    aget v1, p2, v13

    xor-int/2addr v0, v1

    aget v1, p1, v6

    xor-int/2addr v0, v1

    aput v0, p1, v7

    .line 94
    aget v0, p2, v6

    aget v1, p1, v7

    xor-int/2addr v0, v1

    aget v1, p0, v6

    xor-int/2addr v0, v1

    aput v0, p1, v4

    .line 95
    aget v0, p2, v4

    aget v1, p0, v4

    xor-int/2addr v0, v1

    aget v1, p1, v7

    xor-int/2addr v0, v1

    aput v0, p0, v7

    .line 96
    aget v0, p2, v7

    aget v1, p0, v7

    xor-int/2addr v0, v1

    aput v0, p1, v5

    .line 97
    return-void

    .line 100
    :pswitch_1
    aget v8, p2, v5

    aput v8, p0, v5

    .line 101
    aget v0, p2, v0

    aget v8, p2, v2

    xor-int/2addr v0, v8

    aput v0, p0, v4

    .line 102
    aget v0, p2, v2

    aget v8, p2, v1

    xor-int/2addr v0, v8

    aput v0, p0, v6

    .line 103
    aget v0, p2, v6

    aget v8, p2, v3

    xor-int/2addr v0, v8

    aget v8, p2, v1

    xor-int/2addr v0, v8

    aput v0, p1, v7

    .line 104
    aget v0, p2, v3

    aget v2, p2, v2

    xor-int/2addr v0, v2

    aput v0, p1, v4

    .line 105
    aget v0, p2, v1

    aput v0, p1, v6

    .line 106
    aget v0, p2, v4

    aget v1, p0, v4

    xor-int/2addr v0, v1

    aget v1, p1, v7

    xor-int/2addr v0, v1

    aput v0, p0, v7

    .line 107
    aget v0, p2, v7

    aget v1, p0, v7

    xor-int/2addr v0, v1

    aput v0, p1, v5

    .line 108
    return-void

    .line 111
    :pswitch_2
    aget v0, p2, v5

    aput v0, p0, v5

    .line 112
    aget v0, p2, v4

    aget v1, p2, v6

    xor-int/2addr v0, v1

    aput v0, p0, v7

    .line 113
    aget v0, p2, v7

    aget v1, p0, v7

    xor-int/2addr v0, v1

    aput v0, p1, v5

    .line 114
    aget v0, p2, v6

    aput v0, p1, v7

    .line 115
    return-void

    .line 118
    :pswitch_3
    aget v0, p2, v5

    aput v0, p0, v5

    .line 119
    aget v0, p2, v7

    aput v0, p1, v5

    .line 120
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static computeRadixBig([I[I[III)V
    .locals 17
    .param p0, "f0"    # [I
    .param p1, "f1"    # [I
    .param p2, "f"    # [I
    .param p3, "mf"    # I
    .param p4, "fft"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "f0",
            "f1",
            "f",
            "mf",
            "fft"
        }
    .end annotation

    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x1

    .line 131
    .local v4, "n":I
    add-int/lit8 v5, p3, -0x2

    shl-int/2addr v4, v5

    .line 132
    add-int/lit8 v5, v3, -0x2

    const/4 v6, 0x1

    shl-int v5, v6, v5

    .line 134
    .local v5, "fftSize":I
    mul-int/lit8 v6, v5, 0x2

    new-array v6, v6, [I

    .line 135
    .local v6, "Q":[I
    mul-int/lit8 v7, v5, 0x2

    new-array v7, v7, [I

    .line 137
    .local v7, "R":[I
    new-array v8, v5, [I

    .line 138
    .local v8, "Q0":[I
    new-array v9, v5, [I

    .line 139
    .local v9, "Q1":[I
    new-array v10, v5, [I

    .line 140
    .local v10, "R0":[I
    new-array v11, v5, [I

    .line 143
    .local v11, "R1":[I
    mul-int/lit8 v12, v4, 0x3

    mul-int/lit8 v13, v4, 0x2

    const/4 v14, 0x0

    invoke-static {v2, v12, v6, v14, v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    .line 144
    mul-int/lit8 v12, v4, 0x3

    mul-int/lit8 v13, v4, 0x2

    invoke-static {v2, v12, v6, v4, v13}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    .line 145
    mul-int/lit8 v12, v4, 0x4

    invoke-static {v2, v14, v7, v14, v12}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    .line 147
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v4, :cond_0

    .line 149
    aget v13, v6, v12

    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v15, v12

    aget v15, v2, v15

    xor-int/2addr v13, v15

    aput v13, v6, v12

    .line 150
    add-int v13, v4, v12

    aget v15, v7, v13

    aget v16, v6, v12

    xor-int v15, v15, v16

    aput v15, v7, v13

    .line 147
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 153
    .end local v12    # "i":I
    :cond_0
    add-int/lit8 v12, p3, -0x1

    invoke-static {v8, v9, v6, v12, v3}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    .line 154
    add-int/lit8 v12, p3, -0x1

    invoke-static {v10, v11, v7, v12, v3}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    .line 156
    mul-int/lit8 v12, v4, 0x2

    invoke-static {v10, v14, v0, v14, v12}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    .line 157
    mul-int/lit8 v12, v4, 0x2

    invoke-static {v8, v14, v0, v4, v12}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    .line 158
    mul-int/lit8 v12, v4, 0x2

    invoke-static {v11, v14, v1, v14, v12}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    .line 159
    mul-int/lit8 v12, v4, 0x2

    invoke-static {v9, v14, v1, v4, v12}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    .line 160
    return-void
.end method

.method static computeSubsetSum([I[II)V
    .locals 5
    .param p0, "subsetSum"    # [I
    .param p1, "set"    # [I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subsetSum",
            "set",
            "size"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 68
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x1

    shl-int v3, v2, v0

    if-ge v1, v3, :cond_0

    .line 70
    shl-int/2addr v2, v0

    add-int/2addr v2, v1

    aget v3, p1, v0

    aget v4, p0, v1

    xor-int/2addr v3, v4

    aput v3, p0, v2

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static fastFourierTransform([I[III)V
    .locals 18
    .param p0, "output"    # [I
    .param p1, "elements"    # [I
    .param p2, "noCoefs"    # I
    .param p3, "fft"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "elements",
            "noCoefs",
            "fft"
        }
    .end annotation

    .line 7
    move-object/from16 v0, p0

    move/from16 v7, p3

    const/16 v8, 0x8

    .line 8
    .local v8, "m":I
    const/16 v9, 0x80

    .line 10
    .local v9, "mSize":I
    const/4 v10, 0x1

    shl-int v11, v10, v7

    .line 12
    .local v11, "fftSize":I
    new-array v2, v11, [I

    .line 13
    .local v2, "f0":[I
    new-array v12, v11, [I

    .line 14
    .local v12, "f1":[I
    add-int/lit8 v1, v8, -0x1

    new-array v6, v1, [I

    .line 15
    .local v6, "deltas":[I
    new-array v1, v9, [I

    .line 16
    .local v1, "u":[I
    new-array v13, v9, [I

    .line 19
    .local v13, "v":[I
    add-int/lit8 v3, v8, -0x1

    new-array v14, v3, [I

    .line 20
    .local v14, "betas":[I
    new-array v15, v9, [I

    .line 22
    .local v15, "betaSum":[I
    invoke-static {v14, v8}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTBetas([II)V

    .line 23
    add-int/lit8 v3, v8, -0x1

    invoke-static {v15, v14, v3}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeSubsetSum([I[II)V

    .line 26
    move-object/from16 v3, p1

    invoke-static {v2, v12, v3, v7, v7}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    .line 29
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v8, -0x1

    if-ge v4, v5, :cond_0

    .line 31
    aget v5, v14, v4

    const/16 v16, 0x1

    aget v10, v14, v4

    invoke-static {v5, v10}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v5

    aget v10, v14, v4

    xor-int/2addr v5, v10

    aput v5, v6, v4

    .line 29
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x1

    .line 35
    .end local v4    # "i":I
    add-int/lit8 v4, p2, 0x1

    div-int/lit8 v4, v4, 0x2

    move v3, v4

    add-int/lit8 v4, v8, -0x1

    add-int/lit8 v5, v7, -0x1

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    .line 36
    move-object/from16 v17, v1

    move-object v10, v2

    .end local v1    # "u":[I
    .end local v2    # "f0":[I
    .local v10, "f0":[I
    .local v17, "u":[I
    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, v8, -0x1

    add-int/lit8 v5, p3, -0x1

    move/from16 v7, p3

    move-object v2, v12

    move-object v1, v13

    .end local v12    # "f1":[I
    .end local v13    # "v":[I
    .local v1, "v":[I
    .local v2, "f1":[I
    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    .line 39
    const/4 v3, 0x1

    .line 40
    .local v3, "k":I
    add-int/lit8 v4, v8, -0x1

    shl-int v3, v16, v4

    .line 42
    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    aget v5, v17, v4

    aput v5, v0, v4

    .line 45
    aget v5, v0, v3

    aget v4, v17, v4

    xor-int/2addr v4, v5

    aput v4, v0, v3

    .line 47
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 49
    aget v5, v17, v4

    aget v7, v15, v4

    aget v12, v1, v4

    invoke-static {v7, v12}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v7

    xor-int/2addr v5, v7

    aput v5, v0, v4

    .line 50
    add-int v5, v3, v4

    aget v7, v0, v5

    aget v12, v0, v4

    xor-int/2addr v7, v12

    aput v7, v0, v5

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method static fastFourierTransformGetError([B[II[I)V
    .locals 9
    .param p0, "errorSet"    # [B
    .param p1, "input"    # [I
    .param p2, "mSize"    # I
    .param p3, "logArrays"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorSet",
            "input",
            "mSize",
            "logArrays"
        }
    .end annotation

    .line 257
    const/16 v0, 0x8

    .line 258
    .local v0, "m":I
    const/16 v1, 0xff

    .line 260
    .local v1, "gfMulOrder":I
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [I

    .line 261
    .local v2, "gammaSet":[I
    new-array v3, p2, [I

    .line 262
    .local v3, "gammaSumSet":[I
    move v4, p2

    .line 264
    .local v4, "k":I
    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTBetas([II)V

    .line 265
    add-int/lit8 v5, v0, -0x1

    invoke-static {v3, v2, v5}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeSubsetSum([I[II)V

    .line 267
    const/4 v5, 0x0

    aget-byte v6, p0, v5

    aget v7, p1, v5

    neg-int v7, v7

    shr-int/lit8 v7, v7, 0xf

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->toUnsigned16Bits(I)I

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p0, v5

    .line 268
    aget-byte v6, p0, v5

    aget v7, p1, v4

    neg-int v7, v7

    shr-int/lit8 v7, v7, 0xf

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->toUnsigned16Bits(I)I

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p0, v5

    .line 270
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 272
    aget v6, v3, v5

    aget v6, p3, v6

    sub-int v6, v1, v6

    .line 273
    .local v6, "tmp":I
    aget-byte v7, p0, v6

    aget v8, p1, v5

    neg-int v8, v8

    shr-int/lit8 v8, v8, 0xf

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p0, v6

    .line 275
    aget v7, v3, v5

    xor-int/lit8 v7, v7, 0x1

    aget v7, p3, v7

    sub-int v6, v1, v7

    .line 276
    aget-byte v7, p0, v6

    add-int v8, v4, v5

    aget v8, p1, v8

    neg-int v8, v8

    shr-int/lit8 v8, v8, 0xf

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p0, v6

    .line 270
    .end local v6    # "tmp":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 278
    .end local v5    # "i":I
    :cond_0
    return-void
.end method
