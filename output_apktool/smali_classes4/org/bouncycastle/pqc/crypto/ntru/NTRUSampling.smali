.class Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;
.super Ljava/lang/Object;
.source "NTRUSampling.java"


# instance fields
.field private final params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V
    .locals 0
    .param p1, "params"    # Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    .line 28
    return-void
.end method

.method private static mod3(I)I
    .locals 1
    .param p0, "a"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 196
    rem-int/lit8 v0, p0, 0x3

    return v0
.end method


# virtual methods
.method public sampleFg([B)Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;
    .locals 3
    .param p1, "uniformBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniformBytes"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIidPlus([B)Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    move-result-object v0

    .line 42
    .local v0, "f":Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIidPlus([B)Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    move-result-object v1

    .line 43
    .local v1, "g":Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;-><init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    return-object v2

    .line 45
    .end local v0    # "f":Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    .end local v1    # "g":Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    .line 49
    .local v0, "f":Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleFixedType([B)Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    move-result-object v1

    .line 50
    .local v1, "g":Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;-><init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    return-object v2

    .line 54
    .end local v0    # "f":Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    .end local v1    # "g":Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid polynomial type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleFixedType([B)Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    .locals 9
    .param p1, "uniformBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniformBytes"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    .line 110
    .local v0, "n":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    check-cast v1, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->weight()I

    move-result v1

    .line 111
    .local v1, "weight":I
    new-instance v2, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    check-cast v3, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    .line 112
    .local v2, "r":Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    add-int/lit8 v3, v0, -0x1

    new-array v3, v3, [I

    .line 115
    .local v3, "s":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v0, -0x1

    div-int/lit8 v5, v5, 0x4

    const/4 v6, 0x0

    if-ge v4, v5, :cond_0

    .line 117
    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v6

    mul-int/lit8 v7, v4, 0xf

    add-int/2addr v7, v6

    aget-byte v6, p1, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x12

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x1a

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 118
    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v4, 0x3

    add-int/lit8 v6, v6, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v6, v6, 0xc0

    shr-int/lit8 v6, v6, 0x4

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0xc

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0x6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x14

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x1c

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 119
    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v4, 0x7

    add-int/lit8 v6, v6, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0x8

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0x9

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0xe

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0xa

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x16

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0xb

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 120
    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x3

    mul-int/lit8 v6, v4, 0xf

    add-int/lit8 v6, v6, 0xb

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v6, v6, 0xfc

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0xc

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0xd

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0xf

    add-int/lit8 v7, v7, 0xe

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 124
    :cond_0
    add-int/lit8 v5, v0, -0x1

    add-int/lit8 v7, v0, -0x1

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x4

    if-le v5, v7, :cond_1

    .line 126
    add-int/lit8 v5, v0, -0x1

    div-int/lit8 v4, v5, 0x4

    .line 127
    mul-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v6

    mul-int/lit8 v7, v4, 0xf

    add-int/2addr v7, v6

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v4, 0xf

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xa

    add-int/2addr v7, v8

    mul-int/lit8 v8, v4, 0xf

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x12

    add-int/2addr v7, v8

    mul-int/lit8 v8, v4, 0xf

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x1a

    add-int/2addr v7, v8

    aput v7, v3, v5

    .line 128
    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v7, v7, 0xc0

    shr-int/lit8 v7, v7, 0x4

    mul-int/lit8 v8, v4, 0xf

    add-int/lit8 v8, v8, 0x4

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    mul-int/lit8 v8, v4, 0xf

    add-int/lit8 v8, v8, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xc

    add-int/2addr v7, v8

    mul-int/lit8 v8, v4, 0xf

    add-int/lit8 v8, v8, 0x6

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x14

    add-int/2addr v7, v8

    mul-int/lit8 v8, v4, 0xf

    add-int/lit8 v8, v8, 0x7

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x1c

    add-int/2addr v7, v8

    aput v7, v3, v5

    .line 131
    :cond_1
    const/4 v4, 0x0

    :goto_1
    div-int/lit8 v5, v1, 0x2

    if-ge v4, v5, :cond_2

    .line 133
    aget v5, v3, v4

    or-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 136
    :cond_2
    div-int/lit8 v4, v1, 0x2

    :goto_2
    if-ge v4, v1, :cond_3

    .line 138
    aget v5, v3, v4

    or-int/lit8 v5, v5, 0x2

    aput v5, v3, v4

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 141
    :cond_3
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 143
    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_4

    .line 145
    iget-object v5, v2, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    aget v7, v3, v4

    and-int/lit8 v7, v7, 0x3

    int-to-short v7, v7

    aput-short v7, v5, v4

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 148
    :cond_4
    iget-object v5, v2, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    add-int/lit8 v7, v0, -0x1

    aput-short v6, v5, v7

    .line 149
    return-object v2
.end method

.method public sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 4
    .param p1, "uniformBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniformBytes"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    .line 93
    .local v0, "r":Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 95
    iget-object v2, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->mod3(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-short v3, v1, v2

    .line 98
    return-object v0
.end method

.method public sampleIidPlus([B)Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    .locals 8
    .param p1, "uniformBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniformBytes"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v0

    .line 162
    .local v0, "n":I
    const/4 v1, 0x0

    .line 163
    .local v1, "s":S
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    .line 166
    .local v2, "r":Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_0

    .line 168
    iget-object v4, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v5, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v5, v5, v3

    iget-object v6, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v6, v6, v3

    ushr-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v4, v3

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_1

    .line 174
    iget-object v4, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v5, v3, 0x1

    aget-short v4, v4, v5

    iget-object v5, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v5, v5, v3

    mul-int v4, v4, v5

    int-to-short v4, v4

    add-int/2addr v4, v1

    int-to-short v1, v4

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    :cond_1
    const v4, 0xffff

    and-int v5, v1, v4

    ushr-int/lit8 v5, v5, 0xf

    neg-int v5, v5

    or-int/lit8 v5, v5, 0x1

    int-to-short v1, v5

    .line 180
    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_2

    .line 182
    iget-object v5, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v6, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v6, v6, v3

    mul-int v6, v6, v1

    int-to-short v6, v6

    aput-short v6, v5, v3

    .line 180
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 186
    :cond_2
    const/4 v3, 0x0

    :goto_3
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_3

    .line 188
    iget-object v5, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v6, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v6, v6, v3

    and-int/2addr v6, v4

    iget-object v7, v2, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v7, v7, v3

    and-int/2addr v7, v4

    ushr-int/lit8 v7, v7, 0xf

    xor-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x3

    int-to-short v6, v6

    aput-short v6, v5, v3

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 191
    :cond_3
    return-object v2
.end method

.method public sampleRm([B)Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;
    .locals 3
    .param p1, "uniformBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uniformBytes"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    .line 69
    .local v0, "r":Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    .line 70
    .local v1, "m":Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;-><init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    return-object v2

    .line 72
    .end local v0    # "r":Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    .end local v1    # "m":Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    .line 75
    .local v0, "r":Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleFixedType([B)Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    move-result-object v1

    .line 76
    .local v1, "m":Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;-><init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    return-object v2

    .line 80
    .end local v0    # "r":Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    .end local v1    # "m":Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid polynomial type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
