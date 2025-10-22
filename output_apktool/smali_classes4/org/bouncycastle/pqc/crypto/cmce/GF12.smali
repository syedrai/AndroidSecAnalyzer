.class final Lorg/bouncycastle/pqc/crypto/cmce/GF12;
.super Lorg/bouncycastle/pqc/crypto/cmce/GF;
.source "GF12.java"


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
    .param p1, "left0"    # S
    .param p2, "right0"    # S
    .param p3, "left1"    # S
    .param p4, "right1"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left0",
            "right0",
            "left1",
            "right1"
        }
    .end annotation

    .line 145
    move v0, p1

    .local v0, "x0":I
    move v1, p2

    .local v1, "y0":I
    move v2, p3

    .local v2, "x1":I
    move v3, p4

    .line 147
    .local v3, "y1":I
    and-int/lit8 v4, v1, 0x1

    mul-int v4, v4, v0

    .line 148
    .local v4, "z0":I
    and-int/lit8 v5, v3, 0x1

    mul-int v5, v5, v2

    .line 150
    .local v5, "z1":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    const/16 v7, 0xc

    if-ge v6, v7, :cond_0

    .line 152
    const/4 v7, 0x1

    shl-int v8, v7, v6

    and-int/2addr v8, v1

    mul-int v8, v8, v0

    xor-int/2addr v4, v8

    .line 153
    shl-int/2addr v7, v6

    and-int/2addr v7, v3

    mul-int v7, v7, v2

    xor-int/2addr v5, v7

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 156
    .end local v6    # "i":I
    :cond_0
    xor-int v6, v4, v5

    return v6
.end method


# virtual methods
.method protected gf_frac(SS)S
    .locals 1
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

    .line 83
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_inv(S)S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    return v0
.end method

.method protected gf_inv(S)S
    .locals 4
    .param p1, "input"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 91
    move v0, p1

    .line 93
    .local v0, "out":S
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 94
    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v1

    .line 96
    .local v1, "tmp_11":S
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 97
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 98
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v2

    .line 100
    .local v2, "tmp_1111":S
    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 101
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 102
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 103
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 104
    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    .line 106
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 107
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 108
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v0

    .line 111
    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul(SS)S

    move-result v0

    .line 113
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq(S)S

    move-result v3

    return v3
.end method

.method protected gf_mul(SS)S
    .locals 5
    .param p1, "left"    # S
    .param p2, "right"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 118
    move v0, p1

    .line 119
    .local v0, "x":I
    move v1, p2

    .line 121
    .local v1, "y":I
    and-int/lit8 v2, v1, 0x1

    mul-int v2, v2, v0

    .line 122
    .local v2, "z":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    .line 124
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    and-int/2addr v4, v1

    mul-int v4, v4, v0

    xor-int/2addr v2, v4

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result v3

    return v3
.end method

.method protected gf_mul_ext(SS)I
    .locals 5
    .param p1, "left"    # S
    .param p2, "right"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 132
    move v0, p1

    .local v0, "x":I
    move v1, p2

    .line 134
    .local v1, "y":I
    and-int/lit8 v2, v1, 0x1

    mul-int v2, v2, v0

    .line 135
    .local v2, "z":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    .line 137
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    and-int/2addr v4, v1

    mul-int v4, v4, v0

    xor-int/2addr v2, v4

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
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

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul_ext(SS)I

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

    invoke-direct {p0, v2, v7, v8, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul_ext_par(SSSS)I

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

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_mul_ext(SS)I

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

    add-int/lit8 v3, v3, -0x1

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

    .line 41
    .end local v2    # "j":I
    :cond_2
    sub-int v2, v0, p1

    aget v3, p6, v2

    shl-int/lit8 v4, v1, 0x1

    xor-int/2addr v3, v4

    aput v3, p6, v2

    .line 31
    .end local v1    # "temp_i":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 45
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, p1, :cond_4

    .line 47
    aget v1, p6, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result v1

    aput-short v1, p3, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 49
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method protected gf_reduce(I)S
    .locals 6
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 163
    and-int/lit16 v0, p1, 0xfff

    .line 164
    .local v0, "u0":I
    ushr-int/lit8 v1, p1, 0xc

    .line 165
    .local v1, "u1":I
    const v2, 0x1ff000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x9

    .line 166
    .local v2, "u2":I
    const/high16 v3, 0xe00000

    and-int/2addr v3, p1

    ushr-int/lit8 v3, v3, 0x12

    .line 167
    .local v3, "u3":I
    ushr-int/lit8 v4, p1, 0x15

    .line 169
    .local v4, "u4":I
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    xor-int/2addr v5, v3

    xor-int/2addr v5, v4

    int-to-short v5, v5

    return v5
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

    .line 174
    invoke-static {p1}, Lorg/bouncycastle/math/raw/Interleave;->expand16to32(I)I

    move-result v0

    .line 175
    .local v0, "z":I
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

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

    .line 180
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

    .line 53
    const/4 v0, 0x0

    aget-short v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq_ext(S)I

    move-result v1

    aput v1, p5, v0

    .line 55
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 57
    add-int v2, v1, v1

    add-int/lit8 v2, v2, -0x1

    aput v0, p5, v2

    .line 58
    add-int v2, v1, v1

    aget-short v3, p4, v1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_sq_ext(S)I

    move-result v3

    aput v3, p5, v2

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x2

    .local v0, "i":I
    :goto_1
    if-lt v0, p1, :cond_2

    .line 63
    aget v1, p5, v0

    .line 65
    .local v1, "temp_i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 67
    sub-int v3, v0, p1

    aget v4, p2, v2

    add-int/2addr v3, v4

    aget v4, p5, v3

    xor-int/2addr v4, v1

    aput v4, p5, v3

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 71
    .end local v2    # "j":I
    :cond_1
    sub-int v2, v0, p1

    aget v3, p5, v2

    shl-int/lit8 v4, v1, 0x1

    xor-int/2addr v3, v4

    aput v3, p5, v2

    .line 61
    .end local v1    # "temp_i":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 75
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_3

    .line 77
    aget v1, p5, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;->gf_reduce(I)S

    move-result v1

    aput-short v1, p3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 79
    .end local v0    # "i":I
    :cond_3
    return-void
.end method
