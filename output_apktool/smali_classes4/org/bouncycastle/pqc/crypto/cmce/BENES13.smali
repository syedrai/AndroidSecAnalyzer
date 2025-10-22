.class Lorg/bouncycastle/pqc/crypto/cmce/BENES13;
.super Lorg/bouncycastle/pqc/crypto/cmce/BENES;
.source "BENES13.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "t"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "t",
            "m"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;-><init>(III)V

    .line 9
    return-void
.end method

.method static layer_ex([J[JI)V
    .locals 9
    .param p0, "data"    # [J
    .param p1, "bits"    # [J
    .param p2, "lgs"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "bits",
            "lgs"
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    .line 46
    .local v0, "bit_ptr":I
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    .line 48
    .local v1, "s":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    .line 50
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v4, v2, v1

    if-ge v3, v4, :cond_0

    .line 53
    add-int/lit8 v4, v3, 0x0

    aget-wide v4, p0, v4

    add-int v6, v3, v1

    aget-wide v6, p0, v6

    xor-long/2addr v4, v6

    .line 54
    .local v4, "d":J
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "bit_ptr":I
    .local v6, "bit_ptr":I
    aget-wide v7, p1, v0

    and-long/2addr v4, v7

    .line 55
    add-int/lit8 v0, v3, 0x0

    aget-wide v7, p0, v0

    xor-long/2addr v7, v4

    aput-wide v7, p0, v0

    .line 56
    add-int v0, v3, v1

    aget-wide v7, p0, v0

    xor-long/2addr v7, v4

    aput-wide v7, p0, v0

    .line 50
    add-int/lit8 v3, v3, 0x1

    move v0, v6

    goto :goto_1

    .line 48
    .end local v4    # "d":J
    .end local v6    # "bit_ptr":I
    .restart local v0    # "bit_ptr":I
    :cond_0
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v2, v4

    goto :goto_0

    .line 59
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method static layer_in([J[JI)V
    .locals 11
    .param p0, "data"    # [J
    .param p1, "bits"    # [J
    .param p2, "lgs"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "bits",
            "lgs"
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    .line 18
    .local v0, "bit_ptr":I
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    .line 20
    .local v1, "s":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 22
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v4, v2, v1

    if-ge v3, v4, :cond_0

    .line 25
    add-int/lit8 v4, v3, 0x0

    aget-wide v4, p0, v4

    add-int v6, v3, v1

    aget-wide v6, p0, v6

    xor-long/2addr v4, v6

    .line 26
    .local v4, "d":J
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "bit_ptr":I
    .local v6, "bit_ptr":I
    aget-wide v7, p1, v0

    and-long/2addr v4, v7

    .line 27
    add-int/lit8 v0, v3, 0x0

    aget-wide v7, p0, v0

    xor-long/2addr v7, v4

    aput-wide v7, p0, v0

    .line 28
    add-int v0, v3, v1

    aget-wide v7, p0, v0

    xor-long/2addr v7, v4

    aput-wide v7, p0, v0

    .line 30
    add-int/lit8 v0, v3, 0x40

    add-int/lit8 v0, v0, 0x0

    aget-wide v7, p0, v0

    add-int/lit8 v0, v3, 0x40

    add-int/2addr v0, v1

    aget-wide v9, p0, v0

    xor-long v4, v7, v9

    .line 31
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "bit_ptr":I
    .restart local v0    # "bit_ptr":I
    aget-wide v6, p1, v6

    and-long/2addr v4, v6

    .line 32
    add-int/lit8 v6, v3, 0x40

    add-int/lit8 v6, v6, 0x0

    aget-wide v7, p0, v6

    xor-long/2addr v7, v4

    aput-wide v7, p0, v6

    .line 33
    add-int/lit8 v6, v3, 0x40

    add-int/2addr v6, v1

    aget-wide v7, p0, v6

    xor-long/2addr v7, v4

    aput-wide v7, p0, v6

    .line 22
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 20
    .end local v4    # "d":J
    :cond_0
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v2, v4

    goto :goto_0

    .line 36
    .end local v3    # "j":I
    :cond_1
    return-void
.end method


# virtual methods
.method apply_benes([B[BI)V
    .locals 17
    .param p1, "r"    # [B
    .param p2, "bits"    # [B
    .param p3, "rev"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "bits",
            "rev"
        }
    .end annotation

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 70
    .local v3, "r_ptr":I
    const/4 v4, 0x0

    .line 76
    .local v4, "bits_ptr":I
    const/16 v5, 0x80

    new-array v6, v5, [J

    .line 77
    .local v6, "r_int_v":[J
    new-array v5, v5, [J

    .line 78
    .local v5, "r_int_h":[J
    const/16 v7, 0x40

    new-array v8, v7, [J

    .line 79
    .local v8, "b_int_v":[J
    new-array v9, v7, [J

    .line 83
    .local v9, "b_int_h":[J
    if-nez p3, :cond_0

    .line 85
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->SYS_T:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x28

    .line 86
    .end local v4    # "bits_ptr":I
    .local v10, "bits_ptr":I
    const/4 v4, 0x0

    .local v4, "inc":I
    goto :goto_0

    .line 91
    .end local v10    # "bits_ptr":I
    .local v4, "bits_ptr":I
    :cond_0
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->SYS_T:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x28

    add-int/lit16 v10, v10, 0x3000

    .line 92
    .end local v4    # "bits_ptr":I
    .restart local v10    # "bits_ptr":I
    const/16 v4, -0x400

    .line 95
    .local v4, "inc":I
    :goto_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/4 v12, 0x0

    if-ge v11, v7, :cond_1

    .line 97
    add-int/lit8 v13, v11, 0x0

    mul-int/lit8 v14, v11, 0x10

    add-int/2addr v14, v3

    add-int/2addr v14, v12

    invoke-static {v1, v14}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v14

    aput-wide v14, v6, v13

    .line 98
    add-int/lit8 v12, v11, 0x40

    mul-int/lit8 v13, v11, 0x10

    add-int/2addr v13, v3

    add-int/lit8 v13, v13, 0x8

    invoke-static {v1, v13}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v13

    aput-wide v13, v6, v12

    .line 95
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 101
    :cond_1
    invoke-static {v5, v6, v12}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    .line 102
    invoke-static {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    .line 104
    const/4 v13, 0x0

    .local v13, "iter":I
    :goto_2
    const/4 v14, 0x6

    if-gt v13, v14, :cond_3

    .line 106
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v7, :cond_2

    .line 108
    invoke-static {v2, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v14

    aput-wide v14, v8, v11

    .line 109
    add-int/lit8 v10, v10, 0x8

    .line 106
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 112
    :cond_2
    add-int/2addr v10, v4

    .line 114
    invoke-static {v9, v8}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[J)V

    .line 116
    invoke-static {v5, v9, v13}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->layer_ex([J[JI)V

    .line 104
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 119
    :cond_3
    invoke-static {v6, v5, v12}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    .line 120
    invoke-static {v6, v5, v7}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    .line 122
    const/4 v13, 0x0

    :goto_4
    const/4 v14, 0x5

    if-gt v13, v14, :cond_5

    .line 124
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v7, :cond_4

    .line 126
    invoke-static {v2, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v14

    aput-wide v14, v8, v11

    .line 127
    add-int/lit8 v10, v10, 0x8

    .line 124
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 129
    :cond_4
    add-int/2addr v10, v4

    .line 131
    invoke-static {v6, v8, v13}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->layer_in([J[JI)V

    .line 122
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 134
    :cond_5
    const/4 v13, 0x4

    :goto_6
    if-ltz v13, :cond_7

    .line 136
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v7, :cond_6

    .line 138
    invoke-static {v2, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v14

    aput-wide v14, v8, v11

    .line 139
    add-int/lit8 v10, v10, 0x8

    .line 136
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 141
    :cond_6
    add-int/2addr v10, v4

    .line 143
    invoke-static {v6, v8, v13}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->layer_in([J[JI)V

    .line 134
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 146
    :cond_7
    invoke-static {v5, v6, v12}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    .line 147
    invoke-static {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    .line 149
    const/4 v13, 0x6

    :goto_8
    if-ltz v13, :cond_9

    .line 151
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v7, :cond_8

    .line 153
    invoke-static {v2, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v14

    aput-wide v14, v8, v11

    .line 154
    add-int/lit8 v10, v10, 0x8

    .line 151
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 157
    :cond_8
    add-int/2addr v10, v4

    .line 159
    invoke-static {v9, v8}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[J)V

    .line 161
    invoke-static {v5, v9, v13}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->layer_ex([J[JI)V

    .line 149
    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    .line 164
    :cond_9
    invoke-static {v6, v5, v12}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    .line 165
    invoke-static {v6, v5, v7}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    .line 167
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v7, :cond_a

    .line 169
    mul-int/lit8 v14, v11, 0x10

    add-int/2addr v14, v3

    add-int/2addr v14, v12

    add-int/lit8 v15, v11, 0x0

    move-object/from16 v16, v8

    .end local v8    # "b_int_v":[J
    .local v16, "b_int_v":[J
    aget-wide v7, v6, v15

    invoke-static {v1, v14, v7, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    .line 170
    mul-int/lit8 v7, v11, 0x10

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v11, 0x40

    aget-wide v14, v6, v8

    invoke-static {v1, v7, v14, v15}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    .line 167
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v16

    const/16 v7, 0x40

    goto :goto_a

    .line 172
    .end local v16    # "b_int_v":[J
    .restart local v8    # "b_int_v":[J
    :cond_a
    return-void
.end method

.method public support_gen([S[B)V
    .locals 11
    .param p1, "s"    # [S
    .param p2, "c"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "c"
        }
    .end annotation

    .line 180
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    div-int/lit8 v1, v1, 0x8

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v2

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 182
    .local v0, "L":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    if-ge v3, v4, :cond_1

    .line 184
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    shl-int v5, v2, v5

    div-int/lit8 v5, v5, 0x8

    if-ge v4, v5, :cond_0

    .line 186
    aget-object v5, v0, v3

    aput-byte v1, v5, v4

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v4    # "j":I
    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    shl-int v4, v2, v4

    if-ge v3, v4, :cond_3

    .line 191
    int-to-short v4, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v4

    .line 193
    .local v4, "a":S
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    if-ge v5, v6, :cond_2

    .line 195
    aget-object v6, v0, v5

    div-int/lit8 v7, v3, 0x8

    aget-byte v8, v6, v7

    shr-int v9, v4, v5

    and-int/2addr v9, v2

    rem-int/lit8 v10, v3, 0x8

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 189
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 199
    .end local v4    # "a":S
    .end local v5    # "j":I
    :cond_3
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    if-ge v4, v5, :cond_4

    .line 201
    aget-object v5, v0, v4

    invoke-virtual {p0, v5, p2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->apply_benes([B[BI)V

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 203
    :cond_4
    const/4 v3, 0x0

    :goto_5
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->SYS_N:I

    if-ge v3, v5, :cond_6

    .line 205
    aput-short v1, p1, v3

    .line 206
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    sub-int/2addr v5, v2

    move v4, v5

    :goto_6
    if-ltz v4, :cond_5

    .line 208
    aget-short v5, p1, v3

    shl-int/2addr v5, v2

    int-to-short v5, v5

    aput-short v5, p1, v3

    .line 209
    aget-short v5, p1, v3

    aget-object v6, v0, v4

    div-int/lit8 v7, v3, 0x8

    aget-byte v6, v6, v7

    rem-int/lit8 v7, v3, 0x8

    shr-int/2addr v6, v7

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, p1, v3

    .line 206
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 203
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 212
    :cond_6
    return-void
.end method
