.class public Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
.super Lorg/bouncycastle/pqc/math/ntru/Polynomial;
.source "HRSSPolynomial.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V
    .locals 0
    .param p1, "params"    # Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    .line 11
    return-void
.end method


# virtual methods
.method public lift(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 12
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    array-length v0, v0

    .line 120
    .local v0, "n":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v1

    .line 131
    .local v1, "b":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    rem-int/lit8 v2, v0, 0x3

    rsub-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    .line 132
    .local v2, "t":S
    iget-object v3, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v5, 0x0

    aget-short v4, v4, v5

    rsub-int/lit8 v6, v2, 0x2

    mul-int v4, v4, v6

    iget-object v6, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v7, 0x1

    aget-short v6, v6, v7

    mul-int/lit8 v6, v6, 0x0

    add-int/2addr v4, v6

    iget-object v6, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v8, 0x2

    aget-short v6, v6, v8

    mul-int v6, v6, v2

    add-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, v3, v5

    .line 133
    iget-object v3, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v4, v7

    rsub-int/lit8 v6, v2, 0x2

    mul-int v4, v4, v6

    iget-object v6, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v6, v6, v8

    mul-int/lit8 v6, v6, 0x0

    add-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, v3, v7

    .line 134
    iget-object v3, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v4, v4, v8

    rsub-int/lit8 v6, v2, 0x2

    mul-int v4, v4, v6

    int-to-short v4, v4

    aput-short v4, v3, v8

    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, "zj":S
    const/4 v4, 0x3

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 139
    iget-object v6, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v6, v5

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v10, v10, v4

    mul-int/lit8 v11, v2, 0x2

    add-int/2addr v11, v3

    mul-int v10, v10, v11

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v6, v5

    .line 140
    iget-object v6, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v6, v7

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v10, v10, v4

    add-int v11, v3, v2

    mul-int v10, v10, v11

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v6, v7

    .line 141
    iget-object v6, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v6, v8

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v10, v10, v4

    mul-int v10, v10, v3

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v6, v8

    .line 142
    add-int v6, v3, v2

    rem-int/lit8 v6, v6, 0x3

    int-to-short v3, v6

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v6, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v6, v7

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v10, v10, v5

    add-int v11, v3, v2

    mul-int v10, v10, v11

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v6, v7

    .line 145
    iget-object v6, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v6, v8

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v10, v10, v5

    mul-int v10, v10, v3

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v6, v8

    .line 146
    iget-object v6, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v6, v8

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v10, v7

    add-int v10, v3, v2

    mul-int v7, v7, v10

    add-int/2addr v9, v7

    int-to-short v7, v9

    aput-short v7, v6, v8

    .line 147
    const/4 v4, 0x3

    :goto_1
    if-ge v4, v0, :cond_1

    .line 149
    iget-object v6, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v7, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v9, v4, -0x3

    aget-short v7, v7, v9

    iget-object v9, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v9, v4

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v4, -0x1

    aget-short v10, v10, v11

    add-int/2addr v9, v10

    iget-object v10, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v11, v4, -0x2

    aget-short v10, v10, v11

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v6, v4

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3PhiN()V

    .line 156
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    .line 159
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v7, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v7, v5

    neg-int v7, v7

    int-to-short v7, v7

    aput-short v7, v6, v5

    .line 160
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_2

    .line 162
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v6, v4, 0x1

    iget-object v7, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v7, v4

    iget-object v8, v1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v9, v4, 0x1

    aget-short v8, v8, v9

    sub-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v5, v6

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 164
    :cond_2
    return-void
.end method

.method public sqFromBytes([B)V
    .locals 6
    .param p1, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, v2

    mul-int/lit8 v4, v0, 0xd

    add-int/2addr v4, v2

    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    int-to-short v2, v2

    aput-short v2, v1, v3

    .line 82
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0xd

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x5

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0xb

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 83
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0xd

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit8 v4, v4, 0x7f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 84
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v0, 0xd

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x7

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x9

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 85
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0xd

    add-int/lit8 v3, v3, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit8 v4, v4, 0x1

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 86
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, v0, 0xd

    add-int/lit8 v3, v3, 0x8

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 87
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v0, 0xd

    add-int/lit8 v3, v3, 0x9

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x6

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0xa

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0xb

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit8 v4, v4, 0x7

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 88
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x7

    mul-int/lit8 v3, v0, 0xd

    add-int/lit8 v3, v3, 0xb

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0xc

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 95
    :pswitch_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, v2

    mul-int/lit8 v4, v0, 0xd

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 97
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 98
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x7

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x9

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 99
    goto :goto_1

    .line 103
    :pswitch_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, v2

    mul-int/lit8 v4, v0, 0xd

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 104
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 109
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput-short v2, v1, v3

    .line 110
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sqToBytes(I)[B
    .locals 18
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 16
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-array v2, v1, [B

    .line 18
    .local v2, "r":[B
    const/16 v3, 0x8

    new-array v4, v3, [S

    .line 20
    .local v4, "t":[S
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v6

    div-int/2addr v6, v3

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-ge v5, v6, :cond_1

    .line 22
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v3, :cond_0

    .line 24
    const v16, 0xffff

    iget-object v7, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v17, v5, 0x8

    add-int v17, v17, v6

    aget-short v7, v7, v17

    and-int v7, v7, v16

    const/16 v17, 0x6

    iget-object v8, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v8

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->modQ(II)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v4, v6

    .line 22
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 27
    :cond_0
    const/16 v17, 0x6

    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v12

    aget-short v8, v4, v12

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 28
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v15

    aget-short v8, v4, v12

    ushr-int/2addr v8, v3

    aget-short v12, v4, v15

    and-int/2addr v12, v11

    shl-int/2addr v12, v9

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 29
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v13

    aget-short v8, v4, v15

    ushr-int/2addr v8, v14

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 30
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v14

    aget-short v8, v4, v15

    ushr-int/lit8 v8, v8, 0xb

    aget-short v12, v4, v13

    and-int/lit8 v12, v12, 0x3f

    shl-int/2addr v12, v13

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 31
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v10

    aget-short v8, v4, v13

    ushr-int/lit8 v8, v8, 0x6

    aget-short v12, v4, v14

    and-int/2addr v12, v15

    shl-int/2addr v12, v11

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 32
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v9

    aget-short v8, v4, v14

    ushr-int/2addr v8, v15

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 33
    mul-int/lit8 v7, v5, 0xd

    add-int/lit8 v7, v7, 0x6

    aget-short v8, v4, v14

    ushr-int/lit8 v8, v8, 0x9

    aget-short v12, v4, v10

    and-int/lit8 v12, v12, 0xf

    shl-int/2addr v12, v10

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 34
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v11

    aget-short v8, v4, v10

    ushr-int/2addr v8, v10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 35
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v3

    aget-short v8, v4, v10

    ushr-int/lit8 v8, v8, 0xc

    aget-short v10, v4, v9

    and-int/lit8 v10, v10, 0x7f

    shl-int/2addr v10, v15

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 36
    mul-int/lit8 v7, v5, 0xd

    add-int/lit8 v7, v7, 0x9

    aget-short v8, v4, v9

    ushr-int/2addr v8, v11

    aget-short v10, v4, v17

    and-int/2addr v10, v14

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 37
    mul-int/lit8 v7, v5, 0xd

    add-int/lit8 v7, v7, 0xa

    aget-short v8, v4, v17

    ushr-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 38
    mul-int/lit8 v7, v5, 0xd

    add-int/lit8 v7, v7, 0xb

    aget-short v8, v4, v17

    ushr-int/lit8 v8, v8, 0xa

    aget-short v10, v4, v11

    and-int/lit8 v10, v10, 0x1f

    shl-int/2addr v10, v14

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 39
    mul-int/lit8 v7, v5, 0xd

    add-int/lit8 v7, v7, 0xc

    aget-short v8, v4, v11

    ushr-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 20
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 42
    .end local v6    # "j":I
    :cond_1
    const v16, 0xffff

    const/16 v17, 0x6

    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    iget-object v7, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v7

    mul-int/lit8 v8, v5, 0x8

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    .line 44
    iget-object v7, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v6

    aget-short v7, v7, v8

    and-int v7, v7, v16

    iget-object v8, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v8

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->modQ(II)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v4, v6

    .line 42
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 46
    :cond_2
    :goto_3
    if-ge v6, v3, :cond_3

    .line 48
    aput-short v12, v4, v6

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 51
    :cond_3
    iget-object v7, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v7

    iget-object v8, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v8

    div-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0x8

    sub-int/2addr v7, v8

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 55
    :pswitch_1
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v12

    aget-short v8, v4, v12

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 56
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v15

    aget-short v8, v4, v12

    ushr-int/2addr v8, v3

    aget-short v16, v4, v15

    and-int/lit8 v16, v16, 0x7

    shl-int/lit8 v16, v16, 0x5

    or-int v8, v8, v16

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 57
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v13

    aget-short v8, v4, v15

    ushr-int/2addr v8, v14

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 58
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v14

    aget-short v8, v4, v15

    ushr-int/lit8 v8, v8, 0xb

    aget-short v16, v4, v13

    and-int/lit8 v16, v16, 0x3f

    shl-int/lit8 v16, v16, 0x2

    or-int v8, v8, v16

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 59
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v10

    aget-short v8, v4, v13

    ushr-int/lit8 v8, v8, 0x6

    aget-short v16, v4, v14

    and-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x7

    or-int v8, v8, v16

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 60
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v9

    aget-short v8, v4, v14

    ushr-int/2addr v8, v15

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 61
    mul-int/lit8 v7, v5, 0xd

    add-int/lit8 v7, v7, 0x6

    aget-short v8, v4, v14

    ushr-int/lit8 v8, v8, 0x9

    aget-short v16, v4, v10

    and-int/lit8 v16, v16, 0xf

    shl-int/lit8 v10, v16, 0x4

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 65
    :pswitch_2
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v12

    aget-short v8, v4, v12

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 66
    mul-int/lit8 v7, v5, 0xd

    add-int/2addr v7, v15

    aget-short v8, v4, v12

    ushr-int/lit8 v3, v8, 0x8

    aget-short v8, v4, v15

    and-int/2addr v8, v11

    shl-int/2addr v8, v9

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    .line 67
    mul-int/lit8 v3, v5, 0xd

    add-int/2addr v3, v13

    aget-short v7, v4, v15

    ushr-int/2addr v7, v14

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 68
    mul-int/lit8 v3, v5, 0xd

    add-int/2addr v3, v14

    aget-short v7, v4, v15

    ushr-int/lit8 v7, v7, 0xb

    aget-short v8, v4, v13

    and-int/lit8 v8, v8, 0x3f

    shl-int/2addr v8, v13

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 72
    :goto_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
