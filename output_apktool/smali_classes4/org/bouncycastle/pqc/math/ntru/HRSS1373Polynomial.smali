.class public Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;
.super Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
.source "HRSS1373Polynomial.java"


# static fields
.field private static final K:I = 0x56

.field private static final L:I = 0x560

.field private static final M:I = 0x158


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

    .line 14
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V

    .line 15
    return-void
.end method


# virtual methods
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

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    mul-int/lit8 v5, v0, 0x7

    add-int/2addr v5, v2

    aget-byte v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    int-to-short v2, v2

    aput-short v2, v1, v4

    .line 70
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x6

    mul-int/lit8 v5, v0, 0x7

    add-int/2addr v5, v3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xf

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v1, v2

    .line 71
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, v3

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v1, v2

    .line 72
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v3, v4, 0x2

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_1

    .line 78
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    mul-int/lit8 v5, v0, 0x7

    add-int/2addr v5, v2

    aget-byte v5, p1, v5

    mul-int/lit8 v6, v0, 0x7

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 79
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    ushr-int/lit8 v5, v5, 0x6

    mul-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    aget-byte v6, p1, v6

    int-to-short v6, v6

    shl-int/lit8 v3, v6, 0x2

    or-int/2addr v3, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v3, v5

    int-to-short v3, v3

    aput-short v3, v1, v4

    .line 82
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput-short v2, v1, v3

    .line 83
    return-void
.end method

.method public sqToBytes(I)[B
    .locals 12
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 20
    new-array v0, p1, [B

    .line 22
    .local v0, "r":[B
    const/4 v1, 0x4

    new-array v2, v1, [S

    .line 24
    .local v2, "t":[S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v4

    div-int/2addr v4, v1

    const v5, 0xffff

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v3, v4, :cond_1

    .line 26
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 28
    iget-object v10, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v11, v3, 0x4

    add-int/2addr v11, v4

    aget-short v10, v10, v11

    and-int/2addr v10, v5

    iget-object v11, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v11

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->modQ(II)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, v2, v4

    .line 26
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 40
    :cond_0
    mul-int/lit8 v5, v3, 0x7

    add-int/2addr v5, v7

    aget-short v10, v2, v7

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v0, v5

    .line 41
    mul-int/lit8 v5, v3, 0x7

    add-int/2addr v5, v9

    aget-short v7, v2, v7

    ushr-int/lit8 v7, v7, 0x8

    aget-short v10, v2, v9

    and-int/2addr v10, v6

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 42
    mul-int/lit8 v5, v3, 0x7

    add-int/2addr v5, v8

    aget-short v7, v2, v9

    ushr-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 43
    mul-int/lit8 v5, v3, 0x7

    add-int/2addr v5, v6

    aget-short v7, v2, v9

    ushr-int/lit8 v7, v7, 0xa

    aget-short v9, v2, v8

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v1

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 44
    mul-int/lit8 v5, v3, 0x7

    add-int/2addr v5, v1

    aget-short v7, v2, v8

    ushr-int/2addr v7, v1

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 45
    mul-int/lit8 v5, v3, 0x7

    add-int/lit8 v5, v5, 0x5

    aget-short v7, v2, v8

    ushr-int/lit8 v7, v7, 0xc

    aget-short v9, v2, v6

    and-int/lit8 v9, v9, 0x3f

    shl-int/lit8 v8, v9, 0x2

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 46
    mul-int/lit8 v5, v3, 0x7

    add-int/lit8 v5, v5, 0x6

    aget-short v6, v2, v6

    ushr-int/lit8 v6, v6, 0x6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 50
    .end local v4    # "j":I
    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v4

    rem-int/2addr v4, v1

    if-ne v4, v8, :cond_2

    .line 52
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v4

    sub-int/2addr v4, v8

    aget-short v1, v1, v4

    and-int/2addr v1, v5

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->modQ(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v2, v7

    .line 53
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v4

    sub-int/2addr v4, v9

    aget-short v1, v1, v4

    and-int/2addr v1, v5

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v4

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->modQ(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v2, v9

    .line 54
    mul-int/lit8 v1, v3, 0x7

    add-int/2addr v1, v7

    aget-short v4, v2, v7

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 55
    mul-int/lit8 v1, v3, 0x7

    add-int/2addr v1, v9

    aget-short v4, v2, v7

    ushr-int/lit8 v4, v4, 0x8

    aget-short v5, v2, v9

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 56
    mul-int/lit8 v1, v3, 0x7

    add-int/2addr v1, v8

    aget-short v4, v2, v9

    ushr-int/2addr v4, v8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 57
    mul-int/lit8 v1, v3, 0x7

    add-int/2addr v1, v6

    aget-short v4, v2, v9

    ushr-int/lit8 v4, v4, 0xa

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 60
    :cond_2
    return-object v0
.end method
