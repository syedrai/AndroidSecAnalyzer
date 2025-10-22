.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;
.super Ljava/lang/Object;
.source "LongPolynomial5.java"


# instance fields
.field private coeffs:[J

.field private numCoeffs:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 8
    .param p1, "p"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    .line 24
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    add-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "cIdx":I
    const/4 v1, 0x0

    .line 27
    .local v1, "shift":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    if-ge v2, v3, :cond_1

    .line 29
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v4, v3, v0

    iget-object v6, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v6, v6, v2

    int-to-long v6, v6

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 30
    add-int/lit8 v1, v1, 0xc

    .line 31
    const/16 v3, 0x3c

    if-lt v1, v3, :cond_0

    .line 33
    const/4 v1, 0x0

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0
    .param p1, "coeffs"    # [J
    .param p2, "numCoeffs"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coeffs",
            "numCoeffs"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    .line 42
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    .line 43
    return-void
.end method


# virtual methods
.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;
    .locals 26
    .param p1, "poly2"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly2"
        }
    .end annotation

    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v1, v1

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;->size()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    const/4 v4, 0x5

    div-int/2addr v2, v4

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v1, v5, v2

    const/4 v1, 0x0

    aput v4, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    .line 53
    .local v5, "prod":[[J
    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;->getOnes()[I

    move-result-object v6

    .line 54
    .local v6, "ones":[I
    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_0
    array-length v8, v6

    const-wide v9, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    if-eq v7, v8, :cond_1

    .line 56
    aget v8, v6, v7

    .line 57
    .local v8, "pIdx":I
    div-int/lit8 v11, v8, 0x5

    .line 58
    .local v11, "cIdx":I
    mul-int/lit8 v12, v11, 0x5

    sub-int v12, v8, v12

    .line 59
    .local v12, "m":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v14, v14

    if-ge v13, v14, :cond_0

    .line 61
    aget-object v14, v5, v12

    aget-object v15, v5, v12

    aget-wide v16, v15, v11

    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v18, v15, v13

    add-long v16, v16, v18

    and-long v16, v16, v9

    aput-wide v16, v14, v11

    .line 62
    add-int/lit8 v11, v11, 0x1

    .line 59
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 54
    .end local v8    # "pIdx":I
    .end local v11    # "cIdx":I
    .end local v12    # "m":I
    .end local v13    # "i":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 67
    .end local v7    # "idx":I
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;->getNegOnes()[I

    move-result-object v7

    .line 68
    .local v7, "negOnes":[I
    const/4 v8, 0x0

    .local v8, "idx":I
    :goto_2
    array-length v11, v7

    if-eq v8, v11, :cond_3

    .line 70
    aget v11, v7, v8

    .line 71
    .local v11, "pIdx":I
    div-int/lit8 v12, v11, 0x5

    .line 72
    .local v12, "cIdx":I
    mul-int/lit8 v13, v12, 0x5

    sub-int v13, v11, v13

    .line 73
    .local v13, "m":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v15, v15

    if-ge v14, v15, :cond_2

    .line 75
    aget-object v15, v5, v13

    aget-object v16, v5, v13

    aget-wide v17, v16, v12

    const-wide v19, 0x800800800800800L

    add-long v17, v17, v19

    const/16 v16, 0x0

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v19, v1, v14

    sub-long v17, v17, v19

    and-long v17, v17, v9

    aput-wide v17, v15, v12

    .line 76
    add-int/lit8 v12, v12, 0x1

    .line 73
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 68
    .end local v11    # "pIdx":I
    .end local v12    # "cIdx":I
    .end local v13    # "m":I
    .end local v14    # "i":I
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 81
    .end local v8    # "idx":I
    aget-object v1, v5, v16

    aget-object v8, v5, v16

    array-length v8, v8

    add-int/2addr v8, v2

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 82
    .local v1, "cCoeffs":[J
    const/4 v8, 0x1

    .local v8, "m":I
    :goto_4
    if-gt v8, v3, :cond_5

    .line 84
    mul-int/lit8 v11, v8, 0xc

    .line 85
    .local v11, "shift":I
    rsub-int/lit8 v12, v11, 0x3c

    .line 86
    .local v12, "shift60":I
    const-wide/16 v13, 0x1

    shl-long v15, v13, v12

    sub-long/2addr v15, v13

    .line 87
    .local v15, "mask":J
    aget-object v13, v5, v8

    array-length v13, v13

    .line 88
    .local v13, "pLen":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    if-ge v14, v13, :cond_4

    .line 91
    aget-object v17, v5, v8

    aget-wide v18, v17, v14

    shr-long v17, v18, v12

    .line 92
    .local v17, "upper":J
    aget-object v19, v5, v8

    aget-wide v20, v19, v14

    and-long v20, v20, v15

    .line 94
    .local v20, "lower":J
    aget-wide v22, v1, v14

    shl-long v24, v20, v11

    add-long v22, v22, v24

    and-long v22, v22, v9

    aput-wide v22, v1, v14

    .line 95
    add-int/lit8 v19, v14, 0x1

    .line 96
    .local v19, "nextIdx":I
    aget-wide v22, v1, v19

    add-long v22, v22, v17

    and-long v22, v22, v9

    aput-wide v22, v1, v19

    .line 88
    .end local v17    # "upper":J
    .end local v19    # "nextIdx":I
    .end local v20    # "lower":J
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 82
    .end local v11    # "shift":I
    .end local v12    # "shift60":I
    .end local v13    # "pLen":I
    .end local v14    # "i":I
    .end local v15    # "mask":J
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 101
    .end local v8    # "m":I
    :cond_5
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    rem-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0xc

    .line 102
    .local v3, "shift":I
    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v8, v8

    sub-int/2addr v8, v2

    .local v8, "cIdx":I
    :goto_6
    array-length v11, v1

    if-ge v8, v11, :cond_9

    .line 106
    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v11, v11

    sub-int/2addr v11, v2

    if-ne v8, v11, :cond_7

    .line 108
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    if-ne v11, v4, :cond_6

    const-wide/16 v11, 0x0

    goto :goto_7

    :cond_6
    aget-wide v11, v1, v8

    shr-long/2addr v11, v3

    .line 109
    .local v11, "iCoeff":J
    :goto_7
    const/4 v13, 0x0

    .local v13, "newIdx":I
    goto :goto_8

    .line 113
    .end local v11    # "iCoeff":J
    .end local v13    # "newIdx":I
    :cond_7
    aget-wide v11, v1, v8

    .line 114
    .restart local v11    # "iCoeff":J
    mul-int/lit8 v13, v8, 0x5

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    sub-int/2addr v13, v14

    .line 117
    .restart local v13    # "newIdx":I
    :goto_8
    div-int/lit8 v14, v13, 0x5

    .line 118
    .local v14, "base":I
    mul-int/lit8 v15, v14, 0x5

    sub-int v15, v13, v15

    .line 119
    .local v15, "m":I
    mul-int/lit8 v16, v15, 0xc

    shl-long v16, v11, v16

    .line 120
    .local v16, "lower":J
    rsub-int/lit8 v18, v15, 0x5

    mul-int/lit8 v18, v18, 0xc

    shr-long v18, v11, v18

    .line 121
    .local v18, "upper":J
    aget-wide v20, v1, v14

    add-long v20, v20, v16

    and-long v20, v20, v9

    aput-wide v20, v1, v14

    .line 122
    add-int/lit8 v2, v14, 0x1

    .line 123
    .local v2, "base1":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v4, v4

    if-ge v2, v4, :cond_8

    .line 125
    aget-wide v22, v1, v2

    add-long v22, v22, v18

    and-long v22, v22, v9

    aput-wide v22, v1, v2

    .line 102
    .end local v2    # "base1":I
    .end local v11    # "iCoeff":J
    .end local v13    # "newIdx":I
    .end local v14    # "base":I
    .end local v15    # "m":I
    .end local v16    # "lower":J
    .end local v18    # "upper":J
    :cond_8
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x5

    goto :goto_6

    .line 129
    .end local v8    # "cIdx":I
    :cond_9
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    invoke-direct {v2, v1, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;-><init>([JI)V

    return-object v2
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 8

    .line 134
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    new-array v0, v0, [I

    .line 135
    .local v0, "intCoeffs":[I
    const/4 v1, 0x0

    .line 136
    .local v1, "cIdx":I
    const/4 v2, 0x0

    .line 137
    .local v2, "shift":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    if-ge v3, v4, :cond_1

    .line 139
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v5, v4, v1

    shr-long v4, v5, v2

    const-wide/16 v6, 0x7ff

    and-long/2addr v4, v6

    long-to-int v5, v4

    aput v5, v0, v3

    .line 140
    add-int/lit8 v2, v2, 0xc

    .line 141
    const/16 v4, 0x3c

    if-lt v2, v4, :cond_0

    .line 143
    const/4 v2, 0x0

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 137
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v3
.end method
