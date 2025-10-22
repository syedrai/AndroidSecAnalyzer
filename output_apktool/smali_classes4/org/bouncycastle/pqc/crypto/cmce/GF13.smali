.class final Lorg/bouncycastle/pqc/crypto/cmce/GF13;
.super Lorg/bouncycastle/pqc/crypto/cmce/GF;
.source "GF13.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/cmce/GF;-><init>()V

    .line 10
    return-void
.end method

.method private gf_mul_ext_par(SSSS)I
    .locals 9
    .param p1, "in0"    # S
    .param p2, "in1"    # S
    .param p3, "in2"    # S
    .param p4, "in3"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in0",
            "in1",
            "in2",
            "in3"
        }
    .end annotation

    .line 125
    move v0, p1

    .local v0, "x0":I
    move v1, p2

    .local v1, "y0":I
    move v2, p3

    .local v2, "x1":I
    move v3, p4

    .line 127
    .local v3, "y1":I
    and-int/lit8 v4, v1, 0x1

    mul-int v4, v4, v0

    .line 128
    .local v4, "z0":I
    and-int/lit8 v5, v3, 0x1

    mul-int v5, v5, v2

    .line 130
    .local v5, "z1":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    const/16 v7, 0xd

    if-ge v6, v7, :cond_0

    .line 132
    const/4 v7, 0x1

    shl-int v8, v7, v6

    and-int/2addr v8, v1

    mul-int v8, v8, v0

    xor-int/2addr v4, v8

    .line 133
    shl-int/2addr v7, v6

    and-int/2addr v7, v3

    mul-int v7, v7, v2

    xor-int/2addr v5, v7

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 136
    .end local v6    # "i":I
    :cond_0
    xor-int v6, v4, v5

    return v6
.end method

.method private gf_sq2(S)S
    .locals 3
    .param p1, "in"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result v0

    .line 171
    .local v0, "z1":I
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result p1

    .line 172
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result v1

    .line 173
    .local v1, "z2":I
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result v2

    return v2
.end method

.method private gf_sq2mul(SS)S
    .locals 18
    .param p1, "in"    # S
    .param p2, "m"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "m"
        }
    .end annotation

    .line 205
    move/from16 v0, p1

    int-to-long v1, v0

    .line 206
    .local v1, "t0":J
    move/from16 v3, p2

    int-to-long v4, v3

    .line 208
    .local v4, "t1":J
    const/16 v6, 0x12

    shl-long v7, v4, v6

    const-wide/16 v9, 0x40

    and-long/2addr v9, v1

    mul-long v7, v7, v9

    .line 210
    .local v7, "x":J
    const/16 v9, 0x15

    shl-long v9, v1, v9

    xor-long/2addr v1, v9

    .line 212
    const/4 v9, 0x0

    shl-long v9, v4, v9

    const-wide/32 v11, 0x10000001

    and-long/2addr v11, v1

    mul-long v9, v9, v11

    xor-long/2addr v7, v9

    .line 213
    const/4 v9, 0x3

    shl-long v9, v4, v9

    const-wide/32 v11, 0x20000002

    and-long/2addr v11, v1

    mul-long v9, v9, v11

    xor-long/2addr v7, v9

    .line 214
    const/4 v9, 0x6

    shl-long v9, v4, v9

    const-wide/32 v11, 0x40000004

    and-long/2addr v11, v1

    mul-long v9, v9, v11

    xor-long/2addr v7, v9

    .line 215
    const/16 v9, 0x9

    shl-long v9, v4, v9

    const-wide v11, 0x80000008L

    and-long/2addr v11, v1

    mul-long v9, v9, v11

    xor-long/2addr v7, v9

    .line 216
    const/16 v9, 0xc

    shl-long v9, v4, v9

    const-wide v11, 0x100000010L

    and-long/2addr v11, v1

    mul-long v9, v9, v11

    xor-long/2addr v7, v9

    .line 217
    const/16 v9, 0xf

    shl-long v9, v4, v9

    const-wide v11, 0x200000020L

    and-long/2addr v11, v1

    mul-long v9, v9, v11

    xor-long/2addr v7, v9

    .line 220
    const-wide v9, 0x1ffff80000000000L

    and-long/2addr v9, v7

    .line 221
    .local v9, "t":J
    ushr-long v11, v9, v6

    const/16 v13, 0x14

    ushr-long v14, v9, v13

    xor-long/2addr v11, v14

    const/16 v14, 0x18

    ushr-long v15, v9, v14

    xor-long/2addr v11, v15

    const/16 v15, 0x1a

    ushr-long v16, v9, v15

    xor-long v11, v11, v16

    xor-long/2addr v7, v11

    .line 223
    const-wide v11, 0x7fffc000000L

    and-long v9, v7, v11

    .line 224
    ushr-long v11, v9, v6

    ushr-long v16, v9, v13

    xor-long v11, v11, v16

    ushr-long v13, v9, v14

    xor-long/2addr v11, v13

    ushr-long v13, v9, v15

    xor-long/2addr v11, v13

    xor-long/2addr v7, v11

    .line 226
    long-to-int v6, v7

    const v11, 0x3ffffff

    and-int/2addr v6, v11

    move-object/from16 v11, p0

    invoke-virtual {v11, v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result v6

    return v6
.end method

.method private gf_sqmul(SS)S
    .locals 12
    .param p1, "in"    # S
    .param p2, "m"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "m"
        }
    .end annotation

    .line 180
    int-to-long v0, p1

    .line 181
    .local v0, "t0":J
    int-to-long v2, p2

    .line 183
    .local v2, "t1":J
    const/4 v4, 0x6

    shl-long v4, v2, v4

    const-wide/16 v6, 0x40

    and-long/2addr v6, v0

    mul-long v4, v4, v6

    .line 185
    .local v4, "x":J
    const/4 v6, 0x7

    shl-long v6, v0, v6

    xor-long/2addr v0, v6

    .line 187
    const/4 v6, 0x0

    shl-long v6, v2, v6

    const-wide/16 v8, 0x4001

    and-long/2addr v8, v0

    mul-long v6, v6, v8

    xor-long/2addr v4, v6

    .line 188
    const/4 v6, 0x1

    shl-long v6, v2, v6

    const-wide/32 v8, 0x8002

    and-long/2addr v8, v0

    mul-long v6, v6, v8

    xor-long/2addr v4, v6

    .line 189
    const/4 v6, 0x2

    shl-long v6, v2, v6

    const-wide/32 v8, 0x10004

    and-long/2addr v8, v0

    mul-long v6, v6, v8

    xor-long/2addr v4, v6

    .line 190
    const/4 v6, 0x3

    shl-long v6, v2, v6

    const-wide/32 v8, 0x20008

    and-long/2addr v8, v0

    mul-long v6, v6, v8

    xor-long/2addr v4, v6

    .line 191
    const/4 v6, 0x4

    shl-long v6, v2, v6

    const-wide/32 v8, 0x40010

    and-long/2addr v8, v0

    mul-long v6, v6, v8

    xor-long/2addr v4, v6

    .line 192
    const/4 v6, 0x5

    shl-long v6, v2, v6

    const-wide/32 v8, 0x80020

    and-long/2addr v8, v0

    mul-long v6, v6, v8

    xor-long/2addr v4, v6

    .line 195
    const-wide v6, 0x1ffc000000L

    and-long/2addr v6, v4

    .line 196
    .local v6, "t":J
    const/16 v8, 0x12

    ushr-long v8, v6, v8

    const/16 v10, 0x14

    ushr-long v10, v6, v10

    xor-long/2addr v8, v10

    const/16 v10, 0x18

    ushr-long v10, v6, v10

    xor-long/2addr v8, v10

    const/16 v10, 0x1a

    ushr-long v10, v6, v10

    xor-long/2addr v8, v10

    xor-long/2addr v4, v8

    .line 198
    long-to-int v8, v4

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result v8

    return v8
.end method


# virtual methods
.method protected gf_frac(SS)S
    .locals 4
    .param p1, "den"    # S
    .param p2, "num"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "den",
            "num"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sqmul(SS)S

    move-result v0

    .line 82
    .local v0, "tmp_11":S
    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2mul(SS)S

    move-result v1

    .line 83
    .local v1, "tmp_1111":S
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2(S)S

    move-result v2

    .line 84
    .local v2, "out":S
    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2mul(SS)S

    move-result v2

    .line 85
    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2(S)S

    move-result v2

    .line 86
    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq2mul(SS)S

    move-result v2

    .line 88
    invoke-direct {p0, v2, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sqmul(SS)S

    move-result v3

    return v3
.end method

.method protected gf_inv(S)S
    .locals 1
    .param p1, "den"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "den"
        }
    .end annotation

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_frac(SS)S

    move-result v0

    return v0
.end method

.method protected gf_mul(SS)S
    .locals 5
    .param p1, "in0"    # S
    .param p2, "in1"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in0",
            "in1"
        }
    .end annotation

    .line 98
    move v0, p1

    .line 99
    .local v0, "x":I
    move v1, p2

    .line 101
    .local v1, "y":I
    and-int/lit8 v2, v1, 0x1

    mul-int v2, v2, v0

    .line 102
    .local v2, "z":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xd

    if-ge v3, v4, :cond_0

    .line 104
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    and-int/2addr v4, v1

    mul-int v4, v4, v0

    xor-int/2addr v2, v4

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result v3

    return v3
.end method

.method protected gf_mul_ext(SS)I
    .locals 5
    .param p1, "in0"    # S
    .param p2, "in1"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in0",
            "in1"
        }
    .end annotation

    .line 112
    move v0, p1

    .local v0, "x":I
    move v1, p2

    .line 114
    .local v1, "y":I
    and-int/lit8 v2, v1, 0x1

    mul-int v2, v2, v0

    .line 115
    .local v2, "z":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xd

    if-ge v3, v4, :cond_0

    .line 117
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    and-int/2addr v4, v1

    mul-int v4, v4, v0

    xor-int/2addr v2, v4

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "i":I
    :cond_0
    return v2
.end method

.method protected gf_mul_poly(I[I[S[S[S[I)V
    .locals 9
    .param p1, "length"    # I
    .param p2, "poly"    # [I
    .param p3, "out"    # [S
    .param p4, "left"    # [S
    .param p5, "right"    # [S
    .param p6, "temp"    # [I
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
            "length",
            "poly",
            "out",
            "left",
            "right",
            "temp"
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    aget-short v1, p4, v0

    aget-short v2, p5, v0

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_mul_ext(SS)I

    move-result v1

    aput v1, p6, v0

    .line 16
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 18
    add-int v2, v1, v1

    add-int/lit8 v2, v2, -0x1

    aput v0, p6, v2

    .line 20
    aget-short v2, p4, v1

    .line 21
    .local v2, "left_i":S
    aget-short v3, p5, v1

    .line 23
    .local v3, "right_i":S
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 25
    add-int v5, v1, v4

    aget v6, p6, v5

    aget-short v7, p5, v4

    aget-short v8, p4, v4

    invoke-direct {p0, v2, v7, v8, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_mul_ext_par(SSSS)I

    move-result v7

    xor-int/2addr v6, v7

    aput v6, p6, v5

    .line 23
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 28
    .end local v4    # "j":I
    :cond_0
    add-int v4, v1, v1

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_mul_ext(SS)I

    move-result v5

    aput v5, p6, v4

    .line 16
    .end local v2    # "left_i":S
    .end local v3    # "right_i":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x2

    .local v0, "i":I
    :goto_2
    if-lt v0, p1, :cond_3

    .line 33
    aget v1, p6, v0

    .line 35
    .local v1, "temp_i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 37
    sub-int v3, v0, p1

    aget v4, p2, v2

    add-int/2addr v3, v4

    aget v4, p6, v3

    xor-int/2addr v4, v1

    aput v4, p6, v3

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 31
    .end local v1    # "temp_i":I
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 41
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, p1, :cond_4

    .line 43
    aget v1, p6, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result v1

    aput-short v1, p3, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 45
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method protected gf_reduce(I)S
    .locals 7
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 143
    and-int/lit16 v0, p1, 0x1fff

    .line 144
    .local v0, "u0":I
    ushr-int/lit8 v1, p1, 0xd

    .line 146
    .local v1, "u1":I
    shl-int/lit8 v2, v1, 0x4

    shl-int/lit8 v3, v1, 0x3

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x1

    xor-int/2addr v2, v3

    .line 148
    .local v2, "t2":I
    ushr-int/lit8 v3, v2, 0xd

    .line 149
    .local v3, "u2":I
    and-int/lit16 v4, v2, 0x1fff

    .line 150
    .local v4, "u3":I
    shl-int/lit8 v5, v3, 0x4

    shl-int/lit8 v6, v3, 0x3

    xor-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x1

    xor-int/2addr v5, v6

    .line 152
    .local v5, "u4":I
    xor-int v6, v0, v1

    xor-int/2addr v6, v3

    xor-int/2addr v6, v4

    xor-int/2addr v6, v5

    int-to-short v6, v6

    return v6
.end method

.method protected gf_sq(S)S
    .locals 2
    .param p1, "input"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 157
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result v0

    .line 158
    .local v0, "z":I
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result v1

    return v1
.end method

.method protected gf_sq_ext(S)I
    .locals 1
    .param p1, "input"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 163
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result v0

    return v0
.end method

.method protected gf_sqr_poly(I[I[S[S[I)V
    .locals 5
    .param p1, "length"    # I
    .param p2, "poly"    # [I
    .param p3, "out"    # [S
    .param p4, "input"    # [S
    .param p5, "temp"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "length",
            "poly",
            "out",
            "input",
            "temp"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    aget-short v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq_ext(S)I

    move-result v1

    aput v1, p5, v0

    .line 51
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 53
    add-int v2, v1, v1

    add-int/lit8 v2, v2, -0x1

    aput v0, p5, v2

    .line 54
    add-int v2, v1, v1

    aget-short v3, p4, v1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_sq_ext(S)I

    move-result v3

    aput v3, p5, v2

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x2

    .local v0, "i":I
    :goto_1
    if-lt v0, p1, :cond_2

    .line 59
    aget v1, p5, v0

    .line 61
    .local v1, "temp_i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 63
    sub-int v3, v0, p1

    aget v4, p2, v2

    add-int/2addr v3, v4

    aget v4, p5, v3

    xor-int/2addr v4, v1

    aput v4, p5, v3

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 57
    .end local v1    # "temp_i":I
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 67
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_3

    .line 69
    aget v1, p5, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;->gf_reduce(I)S

    move-result v1

    aput-short v1, p3, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 71
    .end local v0    # "i":I
    :cond_3
    return-void
.end method
