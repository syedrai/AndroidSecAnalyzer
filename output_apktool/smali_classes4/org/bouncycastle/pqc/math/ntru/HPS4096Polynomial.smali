.class public Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;
.super Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
.source "HPS4096Polynomial.java"


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

    .line 13
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public sqFromBytes([B)V
    .locals 5
    .param p1, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v2

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v2, v4, 0x0

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    int-to-short v2, v2

    aput-short v2, v1, v3

    .line 40
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput-short v2, v1, v3

    .line 43
    return-void
.end method

.method public sqToBytes(I)[B
    .locals 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 19
    new-array v0, p1, [B

    .line 20
    .local v0, "r":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v1

    .line 23
    .local v1, "q":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    .line 25
    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x0

    aget-short v4, v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-static {v4, v1}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 26
    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x0

    aget-short v4, v4, v6

    and-int/2addr v4, v5

    invoke-static {v4, v1}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x8

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v6, v6, v7

    and-int/2addr v6, v5

    invoke-static {v6, v1}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 27
    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-short v4, v4, v6

    and-int/2addr v4, v5

    invoke-static {v4, v1}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method
