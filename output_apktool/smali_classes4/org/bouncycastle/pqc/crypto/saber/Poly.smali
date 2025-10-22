.class Lorg/bouncycastle/pqc/crypto/saber/Poly;
.super Ljava/lang/Object;
.source "Poly.java"


# static fields
.field private static final KARATSUBA_N:I = 0x40

.field private static SCHB_N:I


# instance fields
.field private final N_RES:I

.field private final N_SB:I

.field private final N_SB_RES:I

.field private final SABER_L:I

.field private final SABER_N:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

.field private final utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/16 v0, 0x10

    sput v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SCHB_N:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V
    .locals 1
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_L()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    .line 26
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_N()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    .line 27
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_RES:I

    .line 28
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    .line 29
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getUtils()Lorg/bouncycastle/pqc/crypto/saber/Utils;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    .line 31
    return-void
.end method

.method private OVERFLOWING_MUL(II)S
    .locals 1
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

    .line 168
    mul-int v0, p1, p2

    int-to-short v0, v0

    return v0
.end method

.method private cbd([S[BI)V
    .locals 22
    .param p1, "s"    # [S
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "buf",
            "offset"
        }
    .end annotation

    .line 86
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x4

    new-array v3, v2, [I

    .local v3, "a":[I
    new-array v4, v2, [I

    .line 88
    .local v4, "b":[I
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_MU()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v5, v6, :cond_2

    .line 91
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/2addr v6, v2

    if-ge v5, v6, :cond_1

    .line 93
    mul-int/lit8 v6, v5, 0x3

    add-int v6, p3, v6

    invoke-direct {v0, v1, v6, v9}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->load_littleendian([BII)J

    move-result-wide v11

    long-to-int v6, v11

    .line 94
    .local v6, "t":I
    const/4 v11, 0x0

    .line 95
    .local v11, "d":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v9, :cond_0

    .line 96
    shr-int v13, v6, v12

    const v14, 0x249249

    and-int/2addr v13, v14

    add-int/2addr v11, v13

    .line 95
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 98
    :cond_0
    and-int/lit8 v13, v11, 0x7

    aput v13, v3, v8

    .line 99
    ushr-int/lit8 v13, v11, 0x3

    and-int/lit8 v13, v13, 0x7

    aput v13, v4, v8

    .line 100
    ushr-int/lit8 v13, v11, 0x6

    and-int/lit8 v13, v13, 0x7

    aput v13, v3, v10

    .line 101
    ushr-int/lit8 v13, v11, 0x9

    and-int/lit8 v13, v13, 0x7

    aput v13, v4, v10

    .line 102
    ushr-int/lit8 v13, v11, 0xc

    and-int/lit8 v13, v13, 0x7

    aput v13, v3, v7

    .line 103
    ushr-int/lit8 v13, v11, 0xf

    and-int/lit8 v13, v13, 0x7

    aput v13, v4, v7

    .line 104
    ushr-int/lit8 v13, v11, 0x12

    and-int/lit8 v13, v13, 0x7

    aput v13, v3, v9

    .line 105
    ushr-int/lit8 v13, v11, 0x15

    aput v13, v4, v9

    .line 107
    mul-int/lit8 v13, v5, 0x4

    add-int/2addr v13, v8

    aget v14, v3, v8

    aget v15, v4, v8

    sub-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, p1, v13

    .line 108
    mul-int/lit8 v13, v5, 0x4

    add-int/2addr v13, v10

    aget v14, v3, v10

    aget v15, v4, v10

    sub-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, p1, v13

    .line 109
    mul-int/lit8 v13, v5, 0x4

    add-int/2addr v13, v7

    aget v14, v3, v7

    aget v15, v4, v7

    sub-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, p1, v13

    .line 110
    mul-int/lit8 v13, v5, 0x4

    add-int/2addr v13, v9

    aget v14, v3, v9

    aget v15, v4, v9

    sub-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, p1, v13

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .end local v6    # "t":I
    .end local v11    # "d":I
    .end local v12    # "j":I
    :cond_1
    move-object/from16 v21, v3

    goto/16 :goto_6

    .line 113
    .end local v5    # "i":I
    :cond_2
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_MU()I

    move-result v5

    const/16 v6, 0x8

    const/16 v11, 0xf

    if-ne v5, v6, :cond_5

    .line 116
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/2addr v6, v2

    if-ge v5, v6, :cond_4

    .line 119
    mul-int/lit8 v6, v5, 0x4

    add-int v6, p3, v6

    invoke-direct {v0, v1, v6, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->load_littleendian([BII)J

    move-result-wide v12

    long-to-int v6, v12

    .line 120
    .restart local v6    # "t":I
    const/4 v12, 0x0

    .line 121
    .local v12, "d":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v2, :cond_3

    .line 122
    ushr-int v14, v6, v13

    const v15, 0x11111111

    and-int/2addr v14, v15

    add-int/2addr v12, v14

    .line 121
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 124
    :cond_3
    and-int/lit8 v14, v12, 0xf

    aput v14, v3, v8

    .line 125
    ushr-int/lit8 v14, v12, 0x4

    and-int/2addr v14, v11

    aput v14, v4, v8

    .line 126
    ushr-int/lit8 v14, v12, 0x8

    and-int/2addr v14, v11

    aput v14, v3, v10

    .line 127
    ushr-int/lit8 v14, v12, 0xc

    and-int/2addr v14, v11

    aput v14, v4, v10

    .line 128
    ushr-int/lit8 v14, v12, 0x10

    and-int/2addr v14, v11

    aput v14, v3, v7

    .line 129
    ushr-int/lit8 v14, v12, 0x14

    and-int/2addr v14, v11

    aput v14, v4, v7

    .line 130
    ushr-int/lit8 v14, v12, 0x18

    and-int/2addr v14, v11

    aput v14, v3, v9

    .line 131
    ushr-int/lit8 v14, v12, 0x1c

    aput v14, v4, v9

    .line 133
    mul-int/lit8 v14, v5, 0x4

    add-int/2addr v14, v8

    aget v15, v3, v8

    aget v16, v4, v8

    sub-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, p1, v14

    .line 134
    mul-int/lit8 v14, v5, 0x4

    add-int/2addr v14, v10

    aget v15, v3, v10

    aget v16, v4, v10

    sub-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, p1, v14

    .line 135
    mul-int/lit8 v14, v5, 0x4

    add-int/2addr v14, v7

    aget v15, v3, v7

    aget v16, v4, v7

    sub-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, p1, v14

    .line 136
    mul-int/lit8 v14, v5, 0x4

    add-int/2addr v14, v9

    aget v15, v3, v9

    aget v16, v4, v9

    sub-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, p1, v14

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 138
    .end local v6    # "t":I
    .end local v12    # "d":I
    .end local v13    # "j":I
    :cond_4
    move-object/from16 v21, v3

    goto/16 :goto_6

    .line 139
    .end local v5    # "i":I
    :cond_5
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_MU()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 142
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/2addr v12, v2

    if-ge v5, v12, :cond_7

    .line 144
    mul-int/lit8 v12, v5, 0x5

    add-int v12, p3, v12

    const/4 v13, 0x5

    invoke-direct {v0, v1, v12, v13}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->load_littleendian([BII)J

    move-result-wide v14

    .line 145
    .local v14, "t":J
    const-wide/16 v16, 0x0

    .line 146
    .local v16, "d":J
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_5
    if-ge v12, v13, :cond_6

    .line 147
    ushr-long v18, v14, v12

    const-wide v20, 0x842108421L

    and-long v18, v18, v20

    add-long v16, v16, v18

    .line 146
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 149
    :cond_6
    const-wide/16 v18, 0x1f

    move-object/from16 v21, v3

    .end local v3    # "a":[I
    .local v21, "a":[I
    and-long v2, v16, v18

    long-to-int v3, v2

    aput v3, v21, v8

    .line 150
    ushr-long v2, v16, v13

    and-long v2, v2, v18

    long-to-int v3, v2

    aput v3, v4, v8

    .line 151
    ushr-long v2, v16, v6

    and-long v2, v2, v18

    long-to-int v3, v2

    aput v3, v21, v10

    .line 152
    ushr-long v2, v16, v11

    and-long v2, v2, v18

    long-to-int v3, v2

    aput v3, v4, v10

    .line 153
    const/16 v2, 0x14

    ushr-long v2, v16, v2

    and-long v2, v2, v18

    long-to-int v3, v2

    aput v3, v21, v7

    .line 154
    const/16 v2, 0x19

    ushr-long v2, v16, v2

    and-long v2, v2, v18

    long-to-int v3, v2

    aput v3, v4, v7

    .line 155
    const/16 v2, 0x1e

    ushr-long v2, v16, v2

    and-long v2, v2, v18

    long-to-int v3, v2

    aput v3, v21, v9

    .line 156
    const/16 v2, 0x23

    ushr-long v2, v16, v2

    long-to-int v3, v2

    aput v3, v4, v9

    .line 158
    mul-int/lit8 v2, v5, 0x4

    add-int/2addr v2, v8

    aget v3, v21, v8

    aget v13, v4, v8

    sub-int/2addr v3, v13

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 159
    mul-int/lit8 v2, v5, 0x4

    add-int/2addr v2, v10

    aget v3, v21, v10

    aget v13, v4, v10

    sub-int/2addr v3, v13

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 160
    mul-int/lit8 v2, v5, 0x4

    add-int/2addr v2, v7

    aget v3, v21, v7

    aget v13, v4, v7

    sub-int/2addr v3, v13

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 161
    mul-int/lit8 v2, v5, 0x4

    add-int/2addr v2, v9

    aget v3, v21, v9

    aget v13, v4, v9

    sub-int/2addr v3, v13

    int-to-short v3, v3

    aput-short v3, p1, v2

    .line 142
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v21

    const/4 v2, 0x4

    goto/16 :goto_4

    .end local v12    # "j":I
    .end local v14    # "t":J
    .end local v16    # "d":J
    .end local v21    # "a":[I
    .restart local v3    # "a":[I
    :cond_7
    move-object/from16 v21, v3

    .end local v3    # "a":[I
    .restart local v21    # "a":[I
    goto :goto_6

    .line 139
    .end local v5    # "i":I
    .end local v21    # "a":[I
    .restart local v3    # "a":[I
    :cond_8
    move-object/from16 v21, v3

    .line 164
    .end local v3    # "a":[I
    .restart local v21    # "a":[I
    :goto_6
    return-void
.end method

.method private karatsuba_simple([I[I[I)V
    .locals 24
    .param p1, "a_1"    # [I
    .param p2, "b_1"    # [I
    .param p3, "result_final"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a_1",
            "b_1",
            "result_final"
        }
    .end annotation

    .line 173
    move-object/from16 v0, p0

    const/16 v1, 0x1f

    new-array v2, v1, [I

    .line 174
    .local v2, "d01":[I
    new-array v3, v1, [I

    .line 175
    .local v3, "d0123":[I
    new-array v4, v1, [I

    .line 176
    .local v4, "d23":[I
    const/16 v5, 0x3f

    new-array v6, v5, [I

    .line 181
    .local v6, "result_d01":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 183
    aget v9, p1, v7

    .line 184
    .local v9, "acc1":I
    add-int/lit8 v10, v7, 0x10

    aget v10, p1, v10

    .line 185
    .local v10, "acc2":I
    add-int/lit8 v11, v7, 0x20

    aget v11, p1, v11

    .line 186
    .local v11, "acc3":I
    add-int/lit8 v12, v7, 0x30

    aget v12, p1, v12

    .line 187
    .local v12, "acc4":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v8, :cond_0

    .line 190
    aget v14, p2, v13

    .line 191
    .local v14, "acc5":I
    add-int/lit8 v15, v13, 0x10

    aget v15, p2, v15

    .line 193
    .local v15, "acc6":I
    add-int v16, v7, v13

    add-int/lit8 v16, v16, 0x0

    add-int v17, v7, v13

    add-int/lit8 v17, v17, 0x0

    aget v17, p3, v17

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v18

    add-int v17, v17, v18

    aput v17, p3, v16

    .line 194
    add-int v16, v7, v13

    add-int/lit8 v16, v16, 0x20

    add-int v17, v7, v13

    add-int/lit8 v17, v17, 0x20

    aget v17, p3, v17

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v18

    add-int v17, v17, v18

    aput v17, p3, v16

    .line 196
    add-int v8, v14, v15

    .line 197
    .local v8, "acc7":I
    add-int v5, v9, v10

    .line 198
    .local v5, "acc8":I
    add-int v18, v7, v13

    add-int v19, v7, v13

    aget v1, v2, v19

    move-object/from16 v19, v2

    .end local v2    # "d01":[I
    .local v19, "d01":[I
    int-to-long v1, v1

    move-wide/from16 v20, v1

    int-to-long v1, v8

    move-wide/from16 v22, v1

    int-to-long v1, v5

    mul-long v1, v1, v22

    add-long v1, v20, v1

    long-to-int v2, v1

    aput v2, v19, v18

    .line 201
    add-int/lit8 v1, v13, 0x20

    aget v1, p2, v1

    .line 202
    .end local v8    # "acc7":I
    .local v1, "acc7":I
    add-int/lit8 v2, v13, 0x30

    aget v2, p2, v2

    .line 203
    .end local v5    # "acc8":I
    .local v2, "acc8":I
    add-int v5, v7, v13

    add-int/lit8 v5, v5, 0x40

    add-int v8, v7, v13

    add-int/lit8 v8, v8, 0x40

    aget v8, p3, v8

    .line 205
    invoke-direct {v0, v1, v11}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v18

    add-int v8, v8, v18

    aput v8, p3, v5

    .line 207
    add-int v5, v7, v13

    add-int/lit8 v5, v5, 0x60

    add-int v8, v7, v13

    add-int/lit8 v8, v8, 0x60

    aget v8, p3, v8

    .line 209
    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v18

    add-int v8, v8, v18

    aput v8, p3, v5

    .line 211
    add-int v5, v11, v12

    .line 212
    .local v5, "acc9":I
    add-int v8, v1, v2

    .line 213
    .local v8, "acc10":I
    add-int v18, v7, v13

    add-int v20, v7, v13

    aget v20, v4, v20

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v21

    add-int v20, v20, v21

    aput v20, v4, v18

    .line 216
    add-int/2addr v14, v1

    .line 217
    add-int v1, v9, v11

    .line 218
    add-int v18, v7, v13

    add-int/lit8 v18, v18, 0x0

    add-int v20, v7, v13

    add-int/lit8 v20, v20, 0x0

    aget v20, v6, v20

    .line 220
    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v21

    add-int v20, v20, v21

    aput v20, v6, v18

    .line 222
    add-int/2addr v15, v2

    .line 223
    add-int v2, v10, v12

    .line 224
    add-int v18, v7, v13

    add-int/lit8 v18, v18, 0x20

    add-int v20, v7, v13

    add-int/lit8 v20, v20, 0x20

    aget v20, v6, v20

    .line 226
    invoke-direct {v0, v15, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v21

    add-int v20, v20, v21

    aput v20, v6, v18

    .line 228
    add-int/2addr v14, v15

    .line 229
    add-int/2addr v1, v2

    .line 230
    add-int v18, v7, v13

    add-int v20, v7, v13

    aget v20, v3, v20

    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v21

    add-int v20, v20, v21

    aput v20, v3, v18

    .line 187
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v19

    const/16 v1, 0x1f

    const/16 v5, 0x3f

    const/16 v8, 0x10

    goto/16 :goto_1

    .line 181
    .end local v1    # "acc7":I
    .end local v5    # "acc9":I
    .end local v8    # "acc10":I
    .end local v14    # "acc5":I
    .end local v15    # "acc6":I
    .end local v19    # "d01":[I
    .local v2, "d01":[I
    :cond_0
    move-object/from16 v19, v2

    .end local v2    # "d01":[I
    .restart local v19    # "d01":[I
    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x1f

    const/16 v5, 0x3f

    goto/16 :goto_0

    .line 236
    .end local v9    # "acc1":I
    .end local v10    # "acc2":I
    .end local v11    # "acc3":I
    .end local v12    # "acc4":I
    .end local v13    # "j":I
    .end local v19    # "d01":[I
    .restart local v2    # "d01":[I
    :cond_1
    move-object/from16 v19, v2

    .end local v2    # "d01":[I
    .restart local v19    # "d01":[I
    const/4 v1, 0x0

    .end local v7    # "i":I
    .local v1, "i":I
    :goto_2
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_2

    .line 238
    aget v2, v3, v1

    add-int/lit8 v5, v1, 0x0

    aget v5, v6, v5

    sub-int/2addr v2, v5

    add-int/lit8 v5, v1, 0x20

    aget v5, v6, v5

    sub-int/2addr v2, v5

    aput v2, v3, v1

    .line 239
    aget v2, v19, v1

    add-int/lit8 v5, v1, 0x0

    aget v5, p3, v5

    sub-int/2addr v2, v5

    add-int/lit8 v5, v1, 0x20

    aget v5, p3, v5

    sub-int/2addr v2, v5

    aput v2, v19, v1

    .line 240
    aget v2, v4, v1

    add-int/lit8 v5, v1, 0x40

    aget v5, p3, v5

    sub-int/2addr v2, v5

    add-int/lit8 v5, v1, 0x60

    aget v5, p3, v5

    sub-int/2addr v2, v5

    aput v2, v4, v1

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 243
    :cond_2
    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x1f

    if-ge v1, v2, :cond_3

    .line 245
    add-int/lit8 v5, v1, 0x10

    add-int/lit8 v7, v1, 0x10

    aget v7, v6, v7

    aget v8, v3, v1

    add-int/2addr v7, v8

    aput v7, v6, v5

    .line 246
    add-int/lit8 v5, v1, 0x10

    add-int/lit8 v7, v1, 0x10

    aget v7, p3, v7

    aget v8, v19, v1

    add-int/2addr v7, v8

    aput v7, p3, v5

    .line 247
    add-int/lit8 v5, v1, 0x50

    add-int/lit8 v7, v1, 0x50

    aget v7, p3, v7

    aget v8, v4, v1

    add-int/2addr v7, v8

    aput v7, p3, v5

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 251
    :cond_3
    const/4 v1, 0x0

    :goto_4
    const/16 v2, 0x3f

    if-ge v1, v2, :cond_4

    .line 253
    aget v2, v6, v1

    aget v5, p3, v1

    sub-int/2addr v2, v5

    add-int/lit8 v5, v1, 0x40

    aget v5, p3, v5

    sub-int/2addr v2, v5

    aput v2, v6, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 256
    :cond_4
    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x3f

    if-ge v1, v2, :cond_5

    .line 258
    add-int/lit8 v5, v1, 0x20

    add-int/lit8 v7, v1, 0x20

    aget v7, p3, v7

    aget v8, v6, v1

    add-int/2addr v7, v8

    aput v7, p3, v5

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 261
    :cond_5
    return-void
.end method

.method private load_littleendian([BII)J
    .locals 6
    .param p1, "x"    # [B
    .param p2, "offset"    # I
    .param p3, "bytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "offset",
            "bytes"
        }
    .end annotation

    .line 76
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 77
    .local v0, "r":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 79
    add-int v3, p2, v2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-wide v0
.end method

.method private poly_mul_acc([S[S[S)V
    .locals 6
    .param p1, "a"    # [S
    .param p2, "b"    # [S
    .param p3, "res"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "res"
        }
    .end annotation

    .line 401
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 403
    .local v0, "c":[S
    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->toom_cook_4way([S[S[S)V

    .line 406
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 408
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    sub-int v2, v1, v2

    aget-short v3, p3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    sub-int v4, v1, v4

    aget-short v4, v0, v4

    aget-short v5, v0, v1

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p3, v2

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method private toom_cook_4way([S[S[S)V
    .locals 39
    .param p1, "a1"    # [S
    .param p2, "b1"    # [S
    .param p3, "result"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a1",
            "b1",
            "result"
        }
    .end annotation

    .line 266
    move-object/from16 v0, p0

    const v1, 0xaaab

    .local v1, "inv3":I
    const v2, 0x8e39

    .local v2, "inv9":I
    const v3, 0xeeef

    .line 268
    .local v3, "inv15":I
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v4, v4, [I

    .line 269
    .local v4, "aw1":[I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v5, v5, [I

    .line 270
    .local v5, "aw2":[I
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v6, v6, [I

    .line 271
    .local v6, "aw3":[I
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v7, v7, [I

    .line 272
    .local v7, "aw4":[I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v8, v8, [I

    .line 273
    .local v8, "aw5":[I
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v9, v9, [I

    .line 274
    .local v9, "aw6":[I
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v10, v10, [I

    .line 276
    .local v10, "aw7":[I
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v11, v11, [I

    .line 277
    .local v11, "bw1":[I
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v12, v12, [I

    .line 278
    .local v12, "bw2":[I
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v13, v13, [I

    .line 279
    .local v13, "bw3":[I
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v14, v14, [I

    .line 280
    .local v14, "bw4":[I
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v15, v15, [I

    .line 281
    .local v15, "bw5":[I
    move/from16 v16, v1

    .end local v1    # "inv3":I
    .local v16, "inv3":I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v1, v1, [I

    .line 282
    .local v1, "bw6":[I
    move/from16 v17, v2

    .end local v2    # "inv9":I
    .local v17, "inv9":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v2, v2, [I

    .line 284
    .local v2, "bw7":[I
    move/from16 v18, v3

    .end local v3    # "inv15":I
    .local v18, "inv15":I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v3, v3, [I

    .line 285
    .local v3, "w1":[I
    move-object/from16 v19, v2

    .end local v2    # "bw7":[I
    .local v19, "bw7":[I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v2, v2, [I

    .line 286
    .local v2, "w2":[I
    move-object/from16 v20, v10

    .end local v10    # "aw7":[I
    .local v20, "aw7":[I
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v10, v10, [I

    .line 287
    .local v10, "w3":[I
    move-object/from16 v21, v1

    .end local v1    # "bw6":[I
    .local v21, "bw6":[I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v1, v1, [I

    .line 288
    .local v1, "w4":[I
    move-object/from16 v22, v9

    .end local v9    # "aw6":[I
    .local v22, "aw6":[I
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v9, v9, [I

    .line 289
    .local v9, "w5":[I
    move-object/from16 v23, v8

    .end local v8    # "aw5":[I
    .local v23, "aw5":[I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v8, v8, [I

    .line 290
    .local v8, "w6":[I
    move-object/from16 v24, v8

    .end local v8    # "w6":[I
    .local v24, "w6":[I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v8, v8, [I

    .line 294
    .local v8, "w7":[I
    move-object/from16 v25, p3

    .line 299
    .local v25, "C":[S
    const/16 v26, 0x0

    move-object/from16 v27, v8

    move/from16 v8, v26

    .local v8, "j":I
    .local v27, "w7":[I
    :goto_0
    move-object/from16 v26, v9

    .end local v9    # "w5":[I
    .local v26, "w5":[I
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    if-ge v8, v9, :cond_0

    .line 301
    aget-short v9, p1, v8

    .line 302
    .local v9, "r0":I
    move/from16 v28, v8

    .end local v8    # "j":I
    .local v28, "j":I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    add-int v8, v28, v8

    aget-short v8, p1, v8

    .line 303
    .local v8, "r1":I
    move/from16 v29, v8

    .end local v8    # "r1":I
    .local v29, "r1":I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    mul-int/lit8 v8, v8, 0x2

    add-int v8, v28, v8

    aget-short v8, p1, v8

    .line 304
    .local v8, "r2":I
    move/from16 v30, v8

    .end local v8    # "r2":I
    .local v30, "r2":I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    mul-int/lit8 v8, v8, 0x3

    add-int v8, v28, v8

    aget-short v8, p1, v8

    .line 305
    .local v8, "r3":I
    move/from16 v31, v8

    .end local v8    # "r3":I
    .local v31, "r3":I
    add-int v8, v9, v30

    int-to-short v8, v8

    .line 306
    .local v8, "r4":I
    move/from16 v32, v8

    .end local v8    # "r4":I
    .local v32, "r4":I
    add-int v8, v29, v31

    int-to-short v8, v8

    .line 307
    .local v8, "r5":I
    move/from16 v33, v8

    .end local v8    # "r5":I
    .local v33, "r5":I
    add-int v8, v32, v33

    int-to-short v8, v8

    .line 308
    .local v8, "r6":I
    move/from16 v34, v8

    .end local v8    # "r6":I
    .local v34, "r6":I
    sub-int v8, v32, v33

    int-to-short v8, v8

    .line 309
    .local v8, "r7":I
    aput v34, v6, v28

    .line 310
    aput v8, v7, v28

    .line 311
    shl-int/lit8 v35, v9, 0x2

    add-int v35, v35, v30

    move/from16 v36, v8

    .end local v8    # "r7":I
    .local v36, "r7":I
    shl-int/lit8 v8, v35, 0x1

    int-to-short v8, v8

    .line 312
    .end local v32    # "r4":I
    .local v8, "r4":I
    shl-int/lit8 v32, v29, 0x2

    move/from16 v35, v8

    .end local v8    # "r4":I
    .local v35, "r4":I
    add-int v8, v32, v31

    int-to-short v8, v8

    .line 313
    .end local v33    # "r5":I
    .local v8, "r5":I
    move/from16 v32, v8

    .end local v8    # "r5":I
    .local v32, "r5":I
    add-int v8, v35, v32

    int-to-short v8, v8

    .line 314
    .end local v34    # "r6":I
    .local v8, "r6":I
    move/from16 v33, v8

    .end local v8    # "r6":I
    .local v33, "r6":I
    sub-int v8, v35, v32

    int-to-short v8, v8

    .line 315
    .end local v36    # "r7":I
    .local v8, "r7":I
    aput v33, v23, v28

    .line 316
    aput v8, v22, v28

    .line 317
    shl-int/lit8 v34, v31, 0x3

    shl-int/lit8 v36, v30, 0x2

    add-int v34, v34, v36

    shl-int/lit8 v36, v29, 0x1

    add-int v34, v34, v36

    move/from16 v36, v8

    .end local v8    # "r7":I
    .restart local v36    # "r7":I
    add-int v8, v34, v9

    int-to-short v8, v8

    .line 318
    .end local v35    # "r4":I
    .local v8, "r4":I
    aput v8, v5, v28

    .line 319
    aput v9, v20, v28

    .line 320
    aput v31, v4, v28

    .line 299
    add-int/lit8 v28, v28, 0x1

    move-object/from16 v9, v26

    move/from16 v8, v28

    goto :goto_0

    .line 322
    .end local v9    # "r0":I
    .end local v28    # "j":I
    .end local v29    # "r1":I
    .end local v30    # "r2":I
    .end local v31    # "r3":I
    .end local v32    # "r5":I
    .end local v33    # "r6":I
    .end local v36    # "r7":I
    .local v8, "j":I
    :cond_0
    move/from16 v28, v8

    .end local v8    # "j":I
    .restart local v28    # "j":I
    const/4 v8, 0x0

    .end local v28    # "j":I
    .restart local v8    # "j":I
    :goto_1
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    if-ge v8, v9, :cond_1

    .line 324
    aget-short v9, p2, v8

    .line 325
    .restart local v9    # "r0":I
    move/from16 v28, v8

    .end local v8    # "j":I
    .restart local v28    # "j":I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    add-int v8, v28, v8

    aget-short v8, p2, v8

    .line 326
    .local v8, "r1":I
    move/from16 v29, v8

    .end local v8    # "r1":I
    .restart local v29    # "r1":I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    mul-int/lit8 v8, v8, 0x2

    add-int v8, v28, v8

    aget-short v8, p2, v8

    .line 327
    .local v8, "r2":I
    move/from16 v30, v8

    .end local v8    # "r2":I
    .restart local v30    # "r2":I
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    mul-int/lit8 v8, v8, 0x3

    add-int v8, v28, v8

    aget-short v8, p2, v8

    .line 328
    .local v8, "r3":I
    add-int v31, v9, v30

    .line 329
    .local v31, "r4":I
    add-int v32, v29, v8

    .line 330
    .restart local v32    # "r5":I
    add-int v33, v31, v32

    .line 331
    .restart local v33    # "r6":I
    sub-int v34, v31, v32

    .line 332
    .local v34, "r7":I
    aput v33, v13, v28

    .line 333
    aput v34, v14, v28

    .line 334
    shl-int/lit8 v35, v9, 0x2

    add-int v35, v35, v30

    shl-int/lit8 v31, v35, 0x1

    .line 335
    shl-int/lit8 v35, v29, 0x2

    add-int v35, v35, v8

    .line 336
    .end local v32    # "r5":I
    .local v35, "r5":I
    add-int v32, v31, v35

    .line 337
    .end local v33    # "r6":I
    .local v32, "r6":I
    sub-int v33, v31, v35

    .line 338
    .end local v34    # "r7":I
    .local v33, "r7":I
    aput v32, v15, v28

    .line 339
    aput v33, v21, v28

    .line 340
    shl-int/lit8 v34, v8, 0x3

    shl-int/lit8 v36, v30, 0x2

    add-int v34, v34, v36

    shl-int/lit8 v36, v29, 0x1

    add-int v34, v34, v36

    add-int v34, v34, v9

    .line 341
    .end local v31    # "r4":I
    .local v34, "r4":I
    aput v34, v12, v28

    .line 342
    aput v9, v19, v28

    .line 343
    aput v8, v11, v28

    .line 322
    add-int/lit8 v28, v28, 0x1

    move/from16 v8, v28

    goto :goto_1

    .line 348
    .end local v9    # "r0":I
    .end local v28    # "j":I
    .end local v29    # "r1":I
    .end local v30    # "r2":I
    .end local v32    # "r6":I
    .end local v33    # "r7":I
    .end local v34    # "r4":I
    .end local v35    # "r5":I
    .local v8, "j":I
    :cond_1
    move/from16 v28, v8

    .end local v8    # "j":I
    .restart local v28    # "j":I
    invoke-direct {v0, v4, v11, v3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    .line 349
    invoke-direct {v0, v5, v12, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    .line 350
    invoke-direct {v0, v6, v13, v10}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    .line 351
    invoke-direct {v0, v7, v14, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    .line 352
    move-object/from16 v8, v23

    move-object/from16 v9, v26

    .end local v23    # "aw5":[I
    .end local v26    # "w5":[I
    .local v8, "aw5":[I
    .local v9, "w5":[I
    invoke-direct {v0, v8, v15, v9}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    .line 353
    move-object/from16 v23, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v23

    move-object/from16 v23, v1

    move-object/from16 v1, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v24

    .end local v24    # "w6":[I
    .local v1, "aw6":[I
    .local v2, "bw6":[I
    .local v3, "w6":[I
    .local v21, "w2":[I
    .local v22, "w1":[I
    .local v23, "w4":[I
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    .line 354
    move-object/from16 v24, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v24

    move-object/from16 v24, v1

    move-object/from16 v1, v20

    move-object/from16 v20, v3

    move-object/from16 v3, v27

    .end local v27    # "w7":[I
    .local v1, "aw7":[I
    .local v2, "bw7":[I
    .local v3, "w7":[I
    .local v19, "bw6":[I
    .local v20, "w6":[I
    .local v24, "aw6":[I
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    .line 357
    const/16 v26, 0x0

    move-object/from16 v27, v1

    move/from16 v1, v26

    .local v1, "i":I
    .local v27, "aw7":[I
    :goto_2
    move-object/from16 v26, v2

    .end local v2    # "bw7":[I
    .local v26, "bw7":[I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    if-ge v1, v2, :cond_2

    .line 359
    aget v2, v22, v1

    .line 360
    .local v2, "r0":I
    aget v29, v21, v1

    .line 361
    .restart local v29    # "r1":I
    aget v30, v10, v1

    .line 362
    .restart local v30    # "r2":I
    aget v31, v23, v1

    .line 363
    .local v31, "r3":I
    aget v32, v9, v1

    .line 364
    .local v32, "r4":I
    aget v33, v20, v1

    .line 365
    .local v33, "r5":I
    aget v34, v3, v1

    .line 368
    .local v34, "r6":I
    add-int v29, v29, v32

    .line 369
    sub-int v33, v33, v32

    .line 370
    const v35, 0xffff

    and-int v36, v31, v35

    and-int v37, v30, v35

    sub-int v36, v36, v37

    ushr-int/lit8 v31, v36, 0x1

    .line 371
    sub-int v32, v32, v2

    .line 372
    shl-int/lit8 v36, v34, 0x6

    sub-int v32, v32, v36

    .line 373
    shl-int/lit8 v36, v32, 0x1

    add-int v36, v36, v33

    .line 374
    .end local v32    # "r4":I
    .local v36, "r4":I
    add-int v30, v30, v31

    .line 375
    shl-int/lit8 v32, v30, 0x6

    sub-int v32, v29, v32

    sub-int v32, v32, v30

    .line 376
    .end local v29    # "r1":I
    .local v32, "r1":I
    sub-int v30, v30, v34

    .line 377
    sub-int v30, v30, v2

    .line 378
    mul-int/lit8 v29, v30, 0x2d

    add-int v32, v32, v29

    .line 379
    and-int v29, v36, v35

    shl-int/lit8 v37, v30, 0x3

    sub-int v29, v29, v37

    mul-int v29, v29, v16

    shr-int/lit8 v29, v29, 0x3

    .line 380
    .end local v36    # "r4":I
    .local v29, "r4":I
    add-int v33, v33, v32

    .line 381
    and-int v36, v32, v35

    and-int v37, v31, v35

    shl-int/lit8 v37, v37, 0x4

    add-int v36, v36, v37

    mul-int v36, v36, v17

    shr-int/lit8 v32, v36, 0x1

    .line 382
    add-int v0, v31, v32

    neg-int v0, v0

    .line 383
    .end local v31    # "r3":I
    .local v0, "r3":I
    and-int v31, v32, v35

    mul-int/lit8 v31, v31, 0x1e

    and-int v36, v33, v35

    sub-int v31, v31, v36

    mul-int v31, v31, v18

    shr-int/lit8 v31, v31, 0x2

    .line 384
    .end local v33    # "r5":I
    .local v31, "r5":I
    sub-int v30, v30, v29

    .line 385
    sub-int v32, v32, v31

    .line 387
    aget-short v33, v25, v1

    and-int v36, v34, v35

    move/from16 v37, v0

    .end local v0    # "r3":I
    .local v37, "r3":I
    add-int v0, v33, v36

    int-to-short v0, v0

    aput-short v0, v25, v1

    .line 388
    add-int/lit8 v0, v1, 0x40

    aget-short v33, v25, v0

    and-int v36, v31, v35

    move/from16 v38, v0

    add-int v0, v33, v36

    int-to-short v0, v0

    aput-short v0, v25, v38

    .line 389
    add-int/lit16 v0, v1, 0x80

    aget-short v33, v25, v0

    and-int v36, v29, v35

    move/from16 v38, v0

    add-int v0, v33, v36

    int-to-short v0, v0

    aput-short v0, v25, v38

    .line 390
    add-int/lit16 v0, v1, 0xc0

    aget-short v33, v25, v0

    and-int v36, v37, v35

    move/from16 v38, v0

    add-int v0, v33, v36

    int-to-short v0, v0

    aput-short v0, v25, v38

    .line 391
    add-int/lit16 v0, v1, 0x100

    aget-short v33, v25, v0

    and-int v36, v30, v35

    move/from16 v38, v0

    add-int v0, v33, v36

    int-to-short v0, v0

    aput-short v0, v25, v38

    .line 392
    add-int/lit16 v0, v1, 0x140

    aget-short v33, v25, v0

    and-int v36, v32, v35

    move/from16 v38, v0

    add-int v0, v33, v36

    int-to-short v0, v0

    aput-short v0, v25, v38

    .line 393
    add-int/lit16 v0, v1, 0x180

    aget-short v33, v25, v0

    and-int v35, v2, v35

    move/from16 v36, v0

    add-int v0, v33, v35

    int-to-short v0, v0

    aput-short v0, v25, v36

    .line 357
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v26

    goto/16 :goto_2

    .line 395
    .end local v2    # "r0":I
    .end local v29    # "r4":I
    .end local v30    # "r2":I
    .end local v31    # "r5":I
    .end local v32    # "r1":I
    .end local v34    # "r6":I
    .end local v37    # "r3":I
    :cond_2
    return-void
.end method


# virtual methods
.method public GenMatrix([[[S[B)V
    .locals 5
    .param p1, "A"    # [[[S
    .param p2, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "A",
            "seed"
        }
    .end annotation

    .line 35
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYVECBYTES()I

    move-result v1

    mul-int v0, v0, v1

    new-array v0, v0, [B

    .line 38
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_SEEDBYTES()I

    move-result v2

    array-length v3, v0

    invoke-virtual {v1, v0, p2, v2, v3}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->prf([B[BII)V

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v1, v2, :cond_0

    .line 42
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYVECBYTES()I

    move-result v3

    mul-int v3, v3, v1

    aget-object v4, p1, v1

    invoke-virtual {v2, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECq([BI[[S)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public GenSecret([[S[B)V
    .locals 6
    .param p1, "s"    # [[S
    .param p2, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "seed"
        }
    .end annotation

    .line 48
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v1

    mul-int v0, v0, v1

    new-array v0, v0, [B

    .line 51
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_NOISE_SEEDBYTES()I

    move-result v2

    array-length v3, v0

    invoke-virtual {v1, v0, p2, v2, v3}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->prf([B[BII)V

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v1, v2, :cond_2

    .line 55
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    iget-boolean v2, v2, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->usingEffectiveMasking:Z

    if-nez v2, :cond_0

    .line 57
    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v3

    mul-int v3, v3, v1

    invoke-direct {p0, v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->cbd([S[BI)V

    goto :goto_2

    .line 61
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/lit8 v3, v3, 0x4

    if-ge v2, v3, :cond_1

    .line 63
    aget-object v3, p1, v1

    mul-int/lit8 v4, v2, 0x4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v5

    mul-int v5, v5, v1

    add-int/2addr v5, v2

    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0x3

    xor-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 64
    aget-object v3, p1, v1

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v5

    mul-int v5, v5, v1

    add-int/2addr v5, v2

    aget-byte v5, v0, v5

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3

    xor-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 65
    aget-object v3, p1, v1

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v5

    mul-int v5, v5, v1

    add-int/2addr v5, v2

    aget-byte v5, v0, v5

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3

    xor-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 66
    aget-object v3, p1, v1

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v5

    mul-int v5, v5, v1

    add-int/2addr v5, v2

    aget-byte v5, v0, v5

    ushr-int/lit8 v5, v5, 0x6

    and-int/lit8 v5, v5, 0x3

    xor-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v2    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 71
    :cond_2
    return-void
.end method

.method public InnerProd([[S[[S[S)V
    .locals 3
    .param p1, "b"    # [[S
    .param p2, "s"    # [[S
    .param p3, "res"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "s",
            "res"
        }
    .end annotation

    .line 434
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v0, v1, :cond_0

    .line 436
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2, p3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->poly_mul_acc([S[S[S)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    return-void
.end method

.method public MatrixVectorMul([[[S[[S[[SI)V
    .locals 5
    .param p1, "A"    # [[[S
    .param p2, "s"    # [[S
    .param p3, "res"    # [[S
    .param p4, "transpose"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "A",
            "s",
            "res",
            "transpose"
        }
    .end annotation

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v0, v1, :cond_2

    .line 417
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v1, v2, :cond_1

    .line 419
    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    .line 421
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    aget-object v3, p2, v1

    aget-object v4, p3, v0

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->poly_mul_acc([S[S[S)V

    goto :goto_2

    .line 425
    :cond_0
    aget-object v2, p1, v0

    aget-object v2, v2, v1

    aget-object v3, p2, v1

    aget-object v4, p3, v0

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->poly_mul_acc([S[S[S)V

    .line 417
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 415
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "j":I
    :cond_2
    return-void
.end method
