.class abstract Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;
.super Ljava/lang/Object;
.source "ScalarUtil.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addShifted_NP(II[I[I[I[I)V
    .locals 24
    .param p0, "last"    # I
    .param p1, "s"    # I
    .param p2, "Nu"    # [I
    .param p3, "Nv"    # [I
    .param p4, "p"    # [I
    .param p5, "t"    # [I
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
            "last",
            "s",
            "Nu",
            "Nv",
            "p",
            "t"
        }
    .end annotation

    .line 11
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-wide/16 v4, 0x0

    .line 12
    .local v4, "cc_p":J
    const-wide/16 v6, 0x0

    .line 14
    .local v6, "cc_Nu":J
    const/16 v8, 0x20

    const-wide v9, 0xffffffffL

    if-nez v1, :cond_1

    .line 16
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-gt v11, v0, :cond_0

    .line 18
    aget v12, v2, v11

    .line 20
    .local v12, "p_i":I
    aget v13, p2, v11

    int-to-long v13, v13

    and-long/2addr v13, v9

    add-long/2addr v6, v13

    .line 21
    int-to-long v13, v12

    and-long/2addr v13, v9

    add-long/2addr v6, v13

    .line 23
    int-to-long v13, v12

    and-long/2addr v13, v9

    add-long/2addr v4, v13

    .line 24
    aget v13, p3, v11

    int-to-long v13, v13

    and-long/2addr v13, v9

    add-long/2addr v4, v13

    .line 25
    long-to-int v12, v4

    ushr-long/2addr v4, v8

    .line 26
    aput v12, v2, v11

    .line 28
    int-to-long v13, v12

    and-long/2addr v13, v9

    add-long/2addr v6, v13

    .line 29
    long-to-int v13, v6

    aput v13, p2, v11

    ushr-long/2addr v6, v8

    .line 16
    .end local v12    # "p_i":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v11    # "i":I
    :cond_0
    goto/16 :goto_4

    .line 32
    :cond_1
    if-ge v1, v8, :cond_3

    .line 34
    const/4 v11, 0x0

    .line 35
    .local v11, "prev_p":I
    const/4 v12, 0x0

    .line 36
    .local v12, "prev_q":I
    const/4 v13, 0x0

    .line 38
    .local v13, "prev_v":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-gt v14, v0, :cond_2

    .line 40
    aget v15, v2, v14

    .line 41
    .local v15, "p_i":I
    shl-int v16, v15, v1

    const/16 v17, 0x20

    neg-int v8, v1

    ushr-int v8, v11, v8

    or-int v8, v16, v8

    .line 42
    .local v8, "p_s":I
    move v11, v15

    .line 44
    move-wide/from16 v18, v9

    aget v9, p2, v14

    int-to-long v9, v9

    and-long v9, v9, v18

    add-long/2addr v6, v9

    .line 45
    int-to-long v9, v8

    and-long v9, v9, v18

    add-long/2addr v6, v9

    .line 47
    aget v9, p3, v14

    .line 48
    .local v9, "next_v":I
    shl-int v10, v9, v1

    move-wide/from16 v20, v4

    .end local v4    # "cc_p":J
    .local v20, "cc_p":J
    neg-int v4, v1

    ushr-int v4, v13, v4

    or-int/2addr v4, v10

    .line 49
    .local v4, "v_s":I
    move v13, v9

    .line 51
    move-wide/from16 v22, v6

    .end local v6    # "cc_Nu":J
    .local v22, "cc_Nu":J
    int-to-long v5, v15

    and-long v5, v5, v18

    add-long v5, v20, v5

    .line 52
    .end local v20    # "cc_p":J
    .local v5, "cc_p":J
    move-wide/from16 v20, v5

    .end local v5    # "cc_p":J
    .restart local v20    # "cc_p":J
    int-to-long v5, v4

    and-long v5, v5, v18

    add-long v5, v20, v5

    .line 53
    .end local v20    # "cc_p":J
    .restart local v5    # "cc_p":J
    long-to-int v7, v5

    .end local v15    # "p_i":I
    .local v7, "p_i":I
    ushr-long v5, v5, v17

    .line 54
    aput v7, v2, v14

    .line 56
    shl-int v10, v7, v1

    neg-int v15, v1

    ushr-int v15, v12, v15

    or-int/2addr v10, v15

    .line 57
    .local v10, "q_s":I
    move v12, v7

    .line 59
    move v15, v4

    move-wide/from16 v20, v5

    .end local v4    # "v_s":I
    .end local v5    # "cc_p":J
    .local v15, "v_s":I
    .restart local v20    # "cc_p":J
    int-to-long v4, v10

    and-long v4, v4, v18

    add-long v4, v22, v4

    .line 60
    .end local v22    # "cc_Nu":J
    .local v4, "cc_Nu":J
    long-to-int v6, v4

    aput v6, p2, v14

    ushr-long v6, v4, v17

    .line 38
    .end local v4    # "cc_Nu":J
    .end local v7    # "p_i":I
    .end local v8    # "p_s":I
    .end local v9    # "next_v":I
    .end local v10    # "q_s":I
    .end local v15    # "v_s":I
    .restart local v6    # "cc_Nu":J
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v9, v18

    move-wide/from16 v4, v20

    const/16 v8, 0x20

    goto :goto_1

    .end local v20    # "cc_p":J
    .local v4, "cc_p":J
    :cond_2
    move-wide/from16 v20, v4

    .line 62
    .end local v4    # "cc_p":J
    .end local v11    # "prev_p":I
    .end local v12    # "prev_q":I
    .end local v13    # "prev_v":I
    .end local v14    # "i":I
    .restart local v20    # "cc_p":J
    goto/16 :goto_4

    .line 66
    .end local v20    # "cc_p":J
    .restart local v4    # "cc_p":J
    :cond_3
    move-wide/from16 v18, v9

    const/16 v17, 0x20

    const/4 v8, 0x0

    invoke-static {v2, v8, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    ushr-int/lit8 v8, v1, 0x5

    .local v8, "sWords":I
    and-int/lit8 v9, v1, 0x1f

    .line 69
    .local v9, "sBits":I
    if-nez v9, :cond_5

    .line 71
    move v10, v8

    .local v10, "i":I
    :goto_2
    if-gt v10, v0, :cond_4

    .line 73
    aget v11, p2, v10

    int-to-long v11, v11

    and-long v11, v11, v18

    add-long/2addr v6, v11

    .line 74
    sub-int v11, v10, v8

    aget v11, v3, v11

    int-to-long v11, v11

    and-long v11, v11, v18

    add-long/2addr v6, v11

    .line 76
    aget v11, v2, v10

    int-to-long v11, v11

    and-long v11, v11, v18

    add-long/2addr v4, v11

    .line 77
    sub-int v11, v10, v8

    aget v11, p3, v11

    int-to-long v11, v11

    and-long v11, v11, v18

    add-long/2addr v4, v11

    .line 78
    long-to-int v11, v4

    aput v11, v2, v10

    ushr-long v4, v4, v17

    .line 80
    sub-int v11, v10, v8

    aget v11, v2, v11

    int-to-long v11, v11

    and-long v11, v11, v18

    add-long/2addr v6, v11

    .line 81
    long-to-int v11, v6

    aput v11, p2, v10

    ushr-long v6, v6, v17

    .line 71
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v10    # "i":I
    :cond_4
    goto :goto_4

    .line 86
    :cond_5
    const/4 v10, 0x0

    .line 87
    .local v10, "prev_t":I
    const/4 v11, 0x0

    .line 88
    .local v11, "prev_q":I
    const/4 v12, 0x0

    .line 90
    .local v12, "prev_v":I
    move v13, v8

    .local v13, "i":I
    :goto_3
    if-gt v13, v0, :cond_6

    .line 92
    sub-int v14, v13, v8

    aget v14, v3, v14

    .line 93
    .local v14, "next_t":I
    shl-int v15, v14, v9

    neg-int v0, v9

    ushr-int v0, v10, v0

    or-int/2addr v0, v15

    .line 94
    .local v0, "t_s":I
    move v10, v14

    .line 96
    aget v15, p2, v13

    int-to-long v1, v15

    and-long v1, v1, v18

    add-long/2addr v6, v1

    .line 97
    int-to-long v1, v0

    and-long v1, v1, v18

    add-long/2addr v6, v1

    .line 99
    sub-int v1, v13, v8

    aget v1, p3, v1

    .line 100
    .local v1, "next_v":I
    shl-int v2, v1, v9

    neg-int v15, v9

    ushr-int v15, v12, v15

    or-int/2addr v2, v15

    .line 101
    .local v2, "v_s":I
    move v12, v1

    .line 103
    aget v15, p4, v13

    move/from16 v16, v0

    move/from16 v20, v1

    .end local v0    # "t_s":I
    .end local v1    # "next_v":I
    .local v16, "t_s":I
    .local v20, "next_v":I
    int-to-long v0, v15

    and-long v0, v0, v18

    add-long/2addr v4, v0

    .line 104
    int-to-long v0, v2

    and-long v0, v0, v18

    add-long/2addr v4, v0

    .line 105
    long-to-int v0, v4

    aput v0, p4, v13

    ushr-long v4, v4, v17

    .line 107
    sub-int v0, v13, v8

    aget v0, p4, v0

    .line 108
    .local v0, "next_q":I
    shl-int v1, v0, v9

    neg-int v15, v9

    ushr-int v15, v11, v15

    or-int/2addr v1, v15

    .line 109
    .local v1, "q_s":I
    move v11, v0

    .line 111
    move v15, v2

    .end local v2    # "v_s":I
    .restart local v15    # "v_s":I
    int-to-long v2, v1

    and-long v2, v2, v18

    add-long/2addr v6, v2

    .line 112
    long-to-int v2, v6

    aput v2, p2, v13

    ushr-long v6, v6, v17

    .line 90
    .end local v0    # "next_q":I
    .end local v1    # "q_s":I
    .end local v14    # "next_t":I
    .end local v15    # "v_s":I
    .end local v16    # "t_s":I
    .end local v20    # "next_v":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    goto :goto_3

    .line 116
    .end local v8    # "sWords":I
    .end local v9    # "sBits":I
    .end local v10    # "prev_t":I
    .end local v11    # "prev_q":I
    .end local v12    # "prev_v":I
    .end local v13    # "i":I
    :cond_6
    :goto_4
    return-void
.end method

.method static addShifted_UV(II[I[I[I[I)V
    .locals 19
    .param p0, "last"    # I
    .param p1, "s"    # I
    .param p2, "u0"    # [I
    .param p3, "u1"    # [I
    .param p4, "v0"    # [I
    .param p5, "v1"    # [I
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
            "last",
            "s",
            "u0",
            "u1",
            "v0",
            "v1"
        }
    .end annotation

    .line 120
    move/from16 v0, p0

    ushr-int/lit8 v1, p1, 0x5

    .local v1, "sWords":I
    and-int/lit8 v2, p1, 0x1f

    .line 122
    .local v2, "sBits":I
    const-wide/16 v3, 0x0

    .line 123
    .local v3, "cc_u0":J
    const-wide/16 v5, 0x0

    .line 125
    .local v5, "cc_u1":J
    const/16 v7, 0x20

    const-wide v8, 0xffffffffL

    if-nez v2, :cond_1

    .line 127
    move v10, v1

    .local v10, "i":I
    :goto_0
    if-gt v10, v0, :cond_0

    .line 129
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v8

    add-long/2addr v3, v11

    .line 130
    aget v11, p3, v10

    int-to-long v11, v11

    and-long/2addr v11, v8

    add-long/2addr v5, v11

    .line 131
    sub-int v11, v10, v1

    aget v11, p4, v11

    int-to-long v11, v11

    and-long/2addr v11, v8

    add-long/2addr v3, v11

    .line 132
    sub-int v11, v10, v1

    aget v11, p5, v11

    int-to-long v11, v11

    and-long/2addr v11, v8

    add-long/2addr v5, v11

    .line 133
    long-to-int v11, v3

    aput v11, p2, v10

    ushr-long/2addr v3, v7

    .line 134
    long-to-int v11, v5

    aput v11, p3, v10

    ushr-long/2addr v5, v7

    .line 127
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move v15, v1

    .end local v10    # "i":I
    goto :goto_2

    .line 139
    :cond_1
    const/4 v10, 0x0

    .line 140
    .local v10, "prev_v0":I
    const/4 v11, 0x0

    .line 142
    .local v11, "prev_v1":I
    move v12, v1

    .local v12, "i":I
    :goto_1
    if-gt v12, v0, :cond_2

    .line 144
    sub-int v13, v12, v1

    aget v13, p4, v13

    .line 145
    .local v13, "next_v0":I
    sub-int v14, v12, v1

    aget v14, p5, v14

    .line 146
    .local v14, "next_v1":I
    shl-int v15, v13, v2

    const/16 v16, 0x20

    neg-int v7, v2

    ushr-int v7, v10, v7

    or-int/2addr v7, v15

    .line 147
    .local v7, "v0_s":I
    shl-int v15, v14, v2

    move-wide/from16 v17, v8

    neg-int v8, v2

    ushr-int v8, v11, v8

    or-int/2addr v8, v15

    .line 148
    .local v8, "v1_s":I
    move v10, v13

    .line 149
    move v11, v14

    .line 151
    aget v9, p2, v12

    move v15, v1

    .end local v1    # "sWords":I
    .local v15, "sWords":I
    int-to-long v0, v9

    and-long v0, v0, v17

    add-long/2addr v3, v0

    .line 152
    aget v0, p3, v12

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v5, v0

    .line 153
    int-to-long v0, v7

    and-long v0, v0, v17

    add-long/2addr v3, v0

    .line 154
    int-to-long v0, v8

    and-long v0, v0, v17

    add-long/2addr v5, v0

    .line 155
    long-to-int v0, v3

    aput v0, p2, v12

    ushr-long v3, v3, v16

    .line 156
    long-to-int v0, v5

    aput v0, p3, v12

    ushr-long v5, v5, v16

    .line 142
    .end local v7    # "v0_s":I
    .end local v8    # "v1_s":I
    .end local v13    # "next_v0":I
    .end local v14    # "next_v1":I
    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x20

    move/from16 v0, p0

    move v1, v15

    move-wide/from16 v8, v17

    goto :goto_1

    .end local v15    # "sWords":I
    .restart local v1    # "sWords":I
    :cond_2
    move v15, v1

    .line 159
    .end local v1    # "sWords":I
    .end local v10    # "prev_v0":I
    .end local v11    # "prev_v1":I
    .end local v12    # "i":I
    .restart local v15    # "sWords":I
    :goto_2
    return-void
.end method

.method static getBitLength(I[I)I
    .locals 4
    .param p0, "last"    # I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "last",
            "x"
        }
    .end annotation

    .line 163
    move v0, p0

    .line 164
    .local v0, "i":I
    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x1f

    .line 165
    .local v1, "sign":I
    :goto_0
    if-lez v0, :cond_0

    aget v2, p1, v0

    if-ne v2, v1, :cond_0

    .line 167
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 169
    :cond_0
    mul-int/lit8 v2, v0, 0x20

    add-int/lit8 v2, v2, 0x20

    aget v3, p1, v0

    xor-int/2addr v3, v1

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method static getBitLengthPositive(I[I)I
    .locals 3
    .param p0, "last"    # I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "last",
            "x"
        }
    .end annotation

    .line 174
    move v0, p0

    .line 175
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    aget v1, p1, v0

    if-nez v1, :cond_0

    .line 177
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 179
    :cond_0
    mul-int/lit8 v1, v0, 0x20

    add-int/lit8 v1, v1, 0x20

    aget v2, p1, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method static lessThan(I[I[I)Z
    .locals 4
    .param p0, "last"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "last",
            "x",
            "y"
        }
    .end annotation

    .line 184
    move v0, p0

    .line 187
    .local v0, "i":I
    :cond_0
    aget v1, p1, v0

    const/high16 v2, -0x80000000

    add-int/2addr v1, v2

    .line 188
    .local v1, "x_i":I
    aget v3, p2, v0

    add-int/2addr v3, v2

    .line 189
    .local v3, "y_i":I
    if-ge v1, v3, :cond_1

    .line 190
    const/4 v2, 0x1

    return v2

    .line 191
    :cond_1
    const/4 v2, 0x0

    if-le v1, v3, :cond_2

    .line 192
    return v2

    .line 194
    .end local v1    # "x_i":I
    .end local v3    # "y_i":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 195
    return v2
.end method

.method static subShifted_NP(II[I[I[I[I)V
    .locals 24
    .param p0, "last"    # I
    .param p1, "s"    # I
    .param p2, "Nu"    # [I
    .param p3, "Nv"    # [I
    .param p4, "p"    # [I
    .param p5, "t"    # [I
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
            "last",
            "s",
            "Nu",
            "Nv",
            "p",
            "t"
        }
    .end annotation

    .line 200
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-wide/16 v4, 0x0

    .line 201
    .local v4, "cc_p":J
    const-wide/16 v6, 0x0

    .line 203
    .local v6, "cc_Nu":J
    const/16 v8, 0x20

    const-wide v9, 0xffffffffL

    if-nez v1, :cond_1

    .line 205
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-gt v11, v0, :cond_0

    .line 207
    aget v12, v2, v11

    .line 209
    .local v12, "p_i":I
    aget v13, p2, v11

    int-to-long v13, v13

    and-long/2addr v13, v9

    add-long/2addr v6, v13

    .line 210
    int-to-long v13, v12

    and-long/2addr v13, v9

    sub-long/2addr v6, v13

    .line 212
    int-to-long v13, v12

    and-long/2addr v13, v9

    add-long/2addr v4, v13

    .line 213
    aget v13, p3, v11

    int-to-long v13, v13

    and-long/2addr v13, v9

    sub-long/2addr v4, v13

    .line 214
    long-to-int v12, v4

    shr-long/2addr v4, v8

    .line 215
    aput v12, v2, v11

    .line 217
    int-to-long v13, v12

    and-long/2addr v13, v9

    sub-long/2addr v6, v13

    .line 218
    long-to-int v13, v6

    aput v13, p2, v11

    shr-long/2addr v6, v8

    .line 205
    .end local v12    # "p_i":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v11    # "i":I
    :cond_0
    goto/16 :goto_4

    .line 221
    :cond_1
    if-ge v1, v8, :cond_3

    .line 223
    const/4 v11, 0x0

    .line 224
    .local v11, "prev_p":I
    const/4 v12, 0x0

    .line 225
    .local v12, "prev_q":I
    const/4 v13, 0x0

    .line 227
    .local v13, "prev_v":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-gt v14, v0, :cond_2

    .line 229
    aget v15, v2, v14

    .line 230
    .local v15, "p_i":I
    shl-int v16, v15, v1

    const/16 v17, 0x20

    neg-int v8, v1

    ushr-int v8, v11, v8

    or-int v8, v16, v8

    .line 231
    .local v8, "p_s":I
    move v11, v15

    .line 233
    move-wide/from16 v18, v9

    aget v9, p2, v14

    int-to-long v9, v9

    and-long v9, v9, v18

    add-long/2addr v6, v9

    .line 234
    int-to-long v9, v8

    and-long v9, v9, v18

    sub-long/2addr v6, v9

    .line 236
    aget v9, p3, v14

    .line 237
    .local v9, "next_v":I
    shl-int v10, v9, v1

    move-wide/from16 v20, v4

    .end local v4    # "cc_p":J
    .local v20, "cc_p":J
    neg-int v4, v1

    ushr-int v4, v13, v4

    or-int/2addr v4, v10

    .line 238
    .local v4, "v_s":I
    move v13, v9

    .line 240
    move-wide/from16 v22, v6

    .end local v6    # "cc_Nu":J
    .local v22, "cc_Nu":J
    int-to-long v5, v15

    and-long v5, v5, v18

    add-long v5, v20, v5

    .line 241
    .end local v20    # "cc_p":J
    .local v5, "cc_p":J
    move-wide/from16 v20, v5

    .end local v5    # "cc_p":J
    .restart local v20    # "cc_p":J
    int-to-long v5, v4

    and-long v5, v5, v18

    sub-long v5, v20, v5

    .line 242
    .end local v20    # "cc_p":J
    .restart local v5    # "cc_p":J
    long-to-int v7, v5

    .end local v15    # "p_i":I
    .local v7, "p_i":I
    shr-long v5, v5, v17

    .line 243
    aput v7, v2, v14

    .line 245
    shl-int v10, v7, v1

    neg-int v15, v1

    ushr-int v15, v12, v15

    or-int/2addr v10, v15

    .line 246
    .local v10, "q_s":I
    move v12, v7

    .line 248
    move v15, v4

    move-wide/from16 v20, v5

    .end local v4    # "v_s":I
    .end local v5    # "cc_p":J
    .local v15, "v_s":I
    .restart local v20    # "cc_p":J
    int-to-long v4, v10

    and-long v4, v4, v18

    sub-long v4, v22, v4

    .line 249
    .end local v22    # "cc_Nu":J
    .local v4, "cc_Nu":J
    long-to-int v6, v4

    aput v6, p2, v14

    shr-long v6, v4, v17

    .line 227
    .end local v4    # "cc_Nu":J
    .end local v7    # "p_i":I
    .end local v8    # "p_s":I
    .end local v9    # "next_v":I
    .end local v10    # "q_s":I
    .end local v15    # "v_s":I
    .restart local v6    # "cc_Nu":J
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v9, v18

    move-wide/from16 v4, v20

    const/16 v8, 0x20

    goto :goto_1

    .end local v20    # "cc_p":J
    .local v4, "cc_p":J
    :cond_2
    move-wide/from16 v20, v4

    .line 251
    .end local v4    # "cc_p":J
    .end local v11    # "prev_p":I
    .end local v12    # "prev_q":I
    .end local v13    # "prev_v":I
    .end local v14    # "i":I
    .restart local v20    # "cc_p":J
    goto/16 :goto_4

    .line 255
    .end local v20    # "cc_p":J
    .restart local v4    # "cc_p":J
    :cond_3
    move-wide/from16 v18, v9

    const/16 v17, 0x20

    const/4 v8, 0x0

    invoke-static {v2, v8, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    ushr-int/lit8 v8, v1, 0x5

    .local v8, "sWords":I
    and-int/lit8 v9, v1, 0x1f

    .line 258
    .local v9, "sBits":I
    if-nez v9, :cond_5

    .line 260
    move v10, v8

    .local v10, "i":I
    :goto_2
    if-gt v10, v0, :cond_4

    .line 262
    aget v11, p2, v10

    int-to-long v11, v11

    and-long v11, v11, v18

    add-long/2addr v6, v11

    .line 263
    sub-int v11, v10, v8

    aget v11, v3, v11

    int-to-long v11, v11

    and-long v11, v11, v18

    sub-long/2addr v6, v11

    .line 265
    aget v11, v2, v10

    int-to-long v11, v11

    and-long v11, v11, v18

    add-long/2addr v4, v11

    .line 266
    sub-int v11, v10, v8

    aget v11, p3, v11

    int-to-long v11, v11

    and-long v11, v11, v18

    sub-long/2addr v4, v11

    .line 267
    long-to-int v11, v4

    aput v11, v2, v10

    shr-long v4, v4, v17

    .line 269
    sub-int v11, v10, v8

    aget v11, v2, v11

    int-to-long v11, v11

    and-long v11, v11, v18

    sub-long/2addr v6, v11

    .line 270
    long-to-int v11, v6

    aput v11, p2, v10

    shr-long v6, v6, v17

    .line 260
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v10    # "i":I
    :cond_4
    goto :goto_4

    .line 275
    :cond_5
    const/4 v10, 0x0

    .line 276
    .local v10, "prev_t":I
    const/4 v11, 0x0

    .line 277
    .local v11, "prev_q":I
    const/4 v12, 0x0

    .line 279
    .local v12, "prev_v":I
    move v13, v8

    .local v13, "i":I
    :goto_3
    if-gt v13, v0, :cond_6

    .line 281
    sub-int v14, v13, v8

    aget v14, v3, v14

    .line 282
    .local v14, "next_t":I
    shl-int v15, v14, v9

    neg-int v0, v9

    ushr-int v0, v10, v0

    or-int/2addr v0, v15

    .line 283
    .local v0, "t_s":I
    move v10, v14

    .line 285
    aget v15, p2, v13

    int-to-long v1, v15

    and-long v1, v1, v18

    add-long/2addr v6, v1

    .line 286
    int-to-long v1, v0

    and-long v1, v1, v18

    sub-long/2addr v6, v1

    .line 288
    sub-int v1, v13, v8

    aget v1, p3, v1

    .line 289
    .local v1, "next_v":I
    shl-int v2, v1, v9

    neg-int v15, v9

    ushr-int v15, v12, v15

    or-int/2addr v2, v15

    .line 290
    .local v2, "v_s":I
    move v12, v1

    .line 292
    aget v15, p4, v13

    move/from16 v16, v0

    move/from16 v20, v1

    .end local v0    # "t_s":I
    .end local v1    # "next_v":I
    .local v16, "t_s":I
    .local v20, "next_v":I
    int-to-long v0, v15

    and-long v0, v0, v18

    add-long/2addr v4, v0

    .line 293
    int-to-long v0, v2

    and-long v0, v0, v18

    sub-long/2addr v4, v0

    .line 294
    long-to-int v0, v4

    aput v0, p4, v13

    shr-long v4, v4, v17

    .line 296
    sub-int v0, v13, v8

    aget v0, p4, v0

    .line 297
    .local v0, "next_q":I
    shl-int v1, v0, v9

    neg-int v15, v9

    ushr-int v15, v11, v15

    or-int/2addr v1, v15

    .line 298
    .local v1, "q_s":I
    move v11, v0

    .line 300
    move v15, v2

    .end local v2    # "v_s":I
    .restart local v15    # "v_s":I
    int-to-long v2, v1

    and-long v2, v2, v18

    sub-long/2addr v6, v2

    .line 301
    long-to-int v2, v6

    aput v2, p2, v13

    shr-long v6, v6, v17

    .line 279
    .end local v0    # "next_q":I
    .end local v1    # "q_s":I
    .end local v14    # "next_t":I
    .end local v15    # "v_s":I
    .end local v16    # "t_s":I
    .end local v20    # "next_v":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    goto :goto_3

    .line 305
    .end local v8    # "sWords":I
    .end local v9    # "sBits":I
    .end local v10    # "prev_t":I
    .end local v11    # "prev_q":I
    .end local v12    # "prev_v":I
    .end local v13    # "i":I
    :cond_6
    :goto_4
    return-void
.end method

.method static subShifted_UV(II[I[I[I[I)V
    .locals 19
    .param p0, "last"    # I
    .param p1, "s"    # I
    .param p2, "u0"    # [I
    .param p3, "u1"    # [I
    .param p4, "v0"    # [I
    .param p5, "v1"    # [I
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
            "last",
            "s",
            "u0",
            "u1",
            "v0",
            "v1"
        }
    .end annotation

    .line 309
    move/from16 v0, p0

    ushr-int/lit8 v1, p1, 0x5

    .local v1, "sWords":I
    and-int/lit8 v2, p1, 0x1f

    .line 311
    .local v2, "sBits":I
    const-wide/16 v3, 0x0

    .line 312
    .local v3, "cc_u0":J
    const-wide/16 v5, 0x0

    .line 314
    .local v5, "cc_u1":J
    const/16 v7, 0x20

    const-wide v8, 0xffffffffL

    if-nez v2, :cond_1

    .line 316
    move v10, v1

    .local v10, "i":I
    :goto_0
    if-gt v10, v0, :cond_0

    .line 318
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v8

    add-long/2addr v3, v11

    .line 319
    aget v11, p3, v10

    int-to-long v11, v11

    and-long/2addr v11, v8

    add-long/2addr v5, v11

    .line 320
    sub-int v11, v10, v1

    aget v11, p4, v11

    int-to-long v11, v11

    and-long/2addr v11, v8

    sub-long/2addr v3, v11

    .line 321
    sub-int v11, v10, v1

    aget v11, p5, v11

    int-to-long v11, v11

    and-long/2addr v11, v8

    sub-long/2addr v5, v11

    .line 322
    long-to-int v11, v3

    aput v11, p2, v10

    shr-long/2addr v3, v7

    .line 323
    long-to-int v11, v5

    aput v11, p3, v10

    shr-long/2addr v5, v7

    .line 316
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move v15, v1

    .end local v10    # "i":I
    goto :goto_2

    .line 328
    :cond_1
    const/4 v10, 0x0

    .line 329
    .local v10, "prev_v0":I
    const/4 v11, 0x0

    .line 331
    .local v11, "prev_v1":I
    move v12, v1

    .local v12, "i":I
    :goto_1
    if-gt v12, v0, :cond_2

    .line 333
    sub-int v13, v12, v1

    aget v13, p4, v13

    .line 334
    .local v13, "next_v0":I
    sub-int v14, v12, v1

    aget v14, p5, v14

    .line 335
    .local v14, "next_v1":I
    shl-int v15, v13, v2

    const/16 v16, 0x20

    neg-int v7, v2

    ushr-int v7, v10, v7

    or-int/2addr v7, v15

    .line 336
    .local v7, "v0_s":I
    shl-int v15, v14, v2

    move-wide/from16 v17, v8

    neg-int v8, v2

    ushr-int v8, v11, v8

    or-int/2addr v8, v15

    .line 337
    .local v8, "v1_s":I
    move v10, v13

    .line 338
    move v11, v14

    .line 340
    aget v9, p2, v12

    move v15, v1

    .end local v1    # "sWords":I
    .local v15, "sWords":I
    int-to-long v0, v9

    and-long v0, v0, v17

    add-long/2addr v3, v0

    .line 341
    aget v0, p3, v12

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v5, v0

    .line 342
    int-to-long v0, v7

    and-long v0, v0, v17

    sub-long/2addr v3, v0

    .line 343
    int-to-long v0, v8

    and-long v0, v0, v17

    sub-long/2addr v5, v0

    .line 344
    long-to-int v0, v3

    aput v0, p2, v12

    shr-long v3, v3, v16

    .line 345
    long-to-int v0, v5

    aput v0, p3, v12

    shr-long v5, v5, v16

    .line 331
    .end local v7    # "v0_s":I
    .end local v8    # "v1_s":I
    .end local v13    # "next_v0":I
    .end local v14    # "next_v1":I
    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x20

    move/from16 v0, p0

    move v1, v15

    move-wide/from16 v8, v17

    goto :goto_1

    .end local v15    # "sWords":I
    .restart local v1    # "sWords":I
    :cond_2
    move v15, v1

    .line 348
    .end local v1    # "sWords":I
    .end local v10    # "prev_v0":I
    .end local v11    # "prev_v1":I
    .end local v12    # "i":I
    .restart local v15    # "sWords":I
    :goto_2
    return-void
.end method
