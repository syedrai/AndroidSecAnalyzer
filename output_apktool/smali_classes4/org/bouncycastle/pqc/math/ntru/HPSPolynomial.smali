.class public Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
.super Lorg/bouncycastle/pqc/math/ntru/Polynomial;
.source "HPSPolynomial.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V
    .locals 0
    .param p1, "params"    # Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;
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
    .locals 4
    .param p1, "a"    # Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    array-length v0, v0

    .line 112
    .local v0, "n":I
    iget-object v1, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->z3ToZq()V

    .line 114
    return-void
.end method

.method public sqFromBytes([B)V
    .locals 7
    .param p1, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    array-length v0, v0

    .line 76
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 78
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    mul-int/lit8 v5, v1, 0xb

    add-int/2addr v5, v3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v3, v5, 0x0

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    int-to-short v3, v3

    aput-short v3, v2, v4

    .line 79
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v1, 0xb

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x3

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x5

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 80
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0xb

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x6

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 81
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v1, 0xb

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 82
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v1, 0xb

    add-int/lit8 v4, v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 83
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x5

    mul-int/lit8 v4, v1, 0xb

    add-int/lit8 v4, v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x7

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x9

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 84
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x6

    mul-int/lit8 v4, v1, 0xb

    add-int/lit8 v4, v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x9

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 85
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x7

    mul-int/lit8 v4, v1, 0xb

    add-int/lit8 v4, v4, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 88
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 92
    :pswitch_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    mul-int/lit8 v5, v1, 0xb

    add-int/2addr v5, v3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v3

    mul-int/lit8 v6, v1, 0xb

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v2, v4

    .line 93
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x3

    mul-int/lit8 v6, v1, 0xb

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v2, v4

    .line 94
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x6

    mul-int/lit8 v6, v1, 0xb

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0xb

    add-int/lit8 v6, v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    and-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v2, v4

    .line 95
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x3

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v1, 0xb

    add-int/lit8 v6, v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v2, v4

    .line 96
    goto :goto_1

    .line 100
    :pswitch_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    mul-int/lit8 v5, v1, 0xb

    add-int/2addr v5, v3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v3

    mul-int/lit8 v6, v1, 0xb

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v2, v4

    .line 101
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v1, 0xb

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x3

    mul-int/lit8 v6, v1, 0xb

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v2, v4

    .line 105
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    add-int/lit8 v4, v0, -0x1

    aput-short v3, v2, v4

    .line 106
    return-void

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

    .line 19
    .local v2, "r":[B
    const/16 v3, 0x8

    new-array v4, v3, [S

    .line 20
    .local v4, "t":[S
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v6

    div-int/2addr v6, v3

    const/4 v9, 0x7

    const/4 v10, 0x4

    const/4 v11, 0x5

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

    iget-object v7, v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v17, v5, 0x8

    add-int v17, v17, v6

    aget-short v7, v7, v17

    and-int v7, v7, v16

    const/16 v17, 0x6

    iget-object v8, v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v8

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->modQ(II)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v4, v6

    .line 22
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 26
    :cond_0
    const/16 v17, 0x6

    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v12

    aget-short v8, v4, v12

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 27
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v15

    aget-short v8, v4, v12

    ushr-int/2addr v8, v3

    aget-short v12, v4, v15

    and-int/lit8 v12, v12, 0x1f

    shl-int/2addr v12, v14

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 28
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v13

    aget-short v8, v4, v15

    ushr-int/2addr v8, v11

    aget-short v12, v4, v13

    and-int/2addr v12, v14

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 29
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v14

    aget-short v8, v4, v13

    ushr-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 30
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v10

    aget-short v8, v4, v13

    ushr-int/lit8 v8, v8, 0xa

    aget-short v12, v4, v14

    and-int/lit8 v12, v12, 0x7f

    shl-int/2addr v12, v15

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 31
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v11

    aget-short v8, v4, v14

    ushr-int/2addr v8, v9

    aget-short v12, v4, v10

    and-int/lit8 v12, v12, 0xf

    shl-int/2addr v12, v10

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 32
    mul-int/lit8 v7, v5, 0xb

    add-int/lit8 v7, v7, 0x6

    aget-short v8, v4, v10

    ushr-int/2addr v8, v10

    aget-short v10, v4, v11

    and-int/2addr v10, v15

    shl-int/2addr v10, v9

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 33
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v9

    aget-short v8, v4, v11

    ushr-int/2addr v8, v15

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 34
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v3

    aget-short v8, v4, v11

    ushr-int/lit8 v8, v8, 0x9

    aget-short v10, v4, v17

    and-int/lit8 v10, v10, 0x3f

    shl-int/2addr v10, v13

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 35
    mul-int/lit8 v7, v5, 0xb

    add-int/lit8 v7, v7, 0x9

    aget-short v8, v4, v17

    ushr-int/lit8 v8, v8, 0x6

    aget-short v10, v4, v9

    and-int/2addr v10, v9

    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 36
    mul-int/lit8 v7, v5, 0xb

    add-int/lit8 v7, v7, 0xa

    aget-short v8, v4, v9

    ushr-int/2addr v8, v14

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 20
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 39
    .end local v6    # "j":I
    :cond_1
    const v16, 0xffff

    const/16 v17, 0x6

    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    iget-object v7, v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v7

    mul-int/lit8 v8, v5, 0x8

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    .line 41
    iget-object v7, v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    mul-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v6

    aget-short v7, v7, v8

    and-int v7, v7, v16

    iget-object v8, v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v8

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->modQ(II)I

    move-result v7

    int-to-short v7, v7

    aput-short v7, v4, v6

    .line 39
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 43
    :cond_2
    :goto_3
    if-ge v6, v3, :cond_3

    .line 45
    aput-short v12, v4, v6

    .line 43
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 48
    :cond_3
    iget-object v7, v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v7

    and-int/2addr v7, v9

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 52
    :pswitch_1
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v12

    aget-short v8, v4, v12

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 53
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v15

    aget-short v8, v4, v12

    ushr-int/lit8 v3, v8, 0x8

    aget-short v8, v4, v15

    and-int/lit8 v8, v8, 0x1f

    shl-int/2addr v8, v14

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    .line 54
    mul-int/lit8 v3, v5, 0xb

    add-int/2addr v3, v13

    aget-short v7, v4, v15

    ushr-int/2addr v7, v11

    aget-short v8, v4, v13

    and-int/2addr v8, v14

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 55
    mul-int/lit8 v3, v5, 0xb

    add-int/2addr v3, v14

    aget-short v7, v4, v13

    ushr-int/2addr v7, v13

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 56
    mul-int/lit8 v3, v5, 0xb

    add-int/2addr v3, v10

    aget-short v7, v4, v13

    ushr-int/lit8 v7, v7, 0xa

    aget-short v8, v4, v14

    and-int/lit8 v8, v8, 0x7f

    shl-int/2addr v8, v15

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 57
    mul-int/lit8 v3, v5, 0xb

    add-int/2addr v3, v11

    aget-short v7, v4, v14

    ushr-int/2addr v7, v9

    aget-short v8, v4, v10

    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v10

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 58
    goto :goto_4

    .line 62
    :pswitch_2
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v12

    aget-short v8, v4, v12

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 63
    mul-int/lit8 v7, v5, 0xb

    add-int/2addr v7, v15

    aget-short v8, v4, v12

    ushr-int/lit8 v3, v8, 0x8

    aget-short v8, v4, v15

    and-int/lit8 v8, v8, 0x1f

    shl-int/2addr v8, v14

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    .line 64
    mul-int/lit8 v3, v5, 0xb

    add-int/2addr v3, v13

    aget-short v7, v4, v15

    ushr-int/2addr v7, v11

    aget-short v8, v4, v13

    and-int/2addr v8, v14

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 68
    :goto_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
