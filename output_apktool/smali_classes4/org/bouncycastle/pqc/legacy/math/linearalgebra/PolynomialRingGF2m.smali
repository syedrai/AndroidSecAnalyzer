.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;
.super Ljava/lang/Object;
.source "PolynomialRingGF2m.java"


# instance fields
.field private field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

.field private p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

.field protected sqMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

.field protected sqRootMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 0
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "p"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "p"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->computeSquaringMatrix()V

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->computeSquareRootMatrix()V

    .line 46
    return-void
.end method

.method private computeSquareRootMatrix()V
    .locals 9

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v0

    .line 97
    .local v0, "numColumns":I
    new-array v1, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 98
    .local v1, "tmpMatrix":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 100
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)V

    aput-object v3, v1, v2

    .line 98
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_0
    new-array v2, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 105
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 107
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;I)V

    aput-object v4, v3, v2

    .line 105
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 112
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_8

    .line 115
    aget-object v3, v1, v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v3

    if-nez v3, :cond_5

    .line 117
    const/4 v3, 0x0

    .line 119
    .local v3, "foundNonZero":Z
    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    :goto_3
    if-ge v4, v0, :cond_3

    .line 121
    aget-object v5, v1, v4

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    const/4 v3, 0x1

    .line 125
    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->swapColumns([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;II)V

    .line 126
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-static {v5, v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->swapColumns([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;II)V

    .line 128
    move v4, v0

    .line 119
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 133
    .end local v4    # "j":I
    :cond_3
    if-eqz v3, :cond_4

    goto :goto_4

    .line 136
    :cond_4
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "Squaring matrix is not invertible."

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    .end local v3    # "foundNonZero":Z
    :cond_5
    :goto_4
    aget-object v3, v1, v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v3

    .line 143
    .local v3, "coef":I
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v4

    .line 144
    .local v4, "invCoef":I
    aget-object v5, v1, v2

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multThisWithElement(I)V

    .line 145
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multThisWithElement(I)V

    .line 148
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    if-ge v5, v0, :cond_7

    .line 150
    if-eq v5, v2, :cond_6

    .line 152
    aget-object v6, v1, v5

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v3

    .line 153
    if-eqz v3, :cond_6

    .line 155
    aget-object v6, v1, v2

    .line 156
    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v6

    .line 157
    .local v6, "tmpSqColumn":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v7, v7, v2

    .line 158
    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v7

    .line 159
    .local v7, "tmpInvColumn":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    aget-object v8, v1, v5

    invoke-virtual {v8, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 160
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v8, v8, v5

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)V

    .line 148
    .end local v6    # "tmpSqColumn":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v7    # "tmpInvColumn":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 112
    .end local v3    # "coef":I
    .end local v4    # "invCoef":I
    .end local v5    # "j":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 165
    .end local v2    # "i":I
    :cond_8
    return-void
.end method

.method private computeSquaringMatrix()V
    .locals 7

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v0

    .line 71
    .local v0, "numColumns":I
    new-array v1, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 74
    shl-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 75
    .local v2, "monomCoeffs":[I
    shl-int/lit8 v4, v1, 0x1

    aput v3, v2, v4

    .line 76
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    aput-object v4, v3, v1

    .line 72
    .end local v2    # "monomCoeffs":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_0
    shr-int/lit8 v1, v0, 0x1

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 80
    shl-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 81
    .restart local v2    # "monomCoeffs":[I
    shl-int/lit8 v4, v1, 0x1

    aput v3, v2, v4

    .line 82
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    .line 84
    .local v4, "monomial":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->mod(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v6

    aput-object v6, v5, v1

    .line 78
    .end local v2    # "monomCoeffs":[I
    .end local v4    # "monomial":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static swapColumns([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;II)V
    .locals 2
    .param p0, "matrix"    # [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .param p1, "first"    # I
    .param p2, "second"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "first",
            "second"
        }
    .end annotation

    .line 170
    aget-object v0, p0, p1

    .line 171
    .local v0, "tmp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 172
    aput-object v0, p0, p2

    .line 173
    return-void
.end method


# virtual methods
.method public getSquareRootMatrix()[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getSquaringMatrix()[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method
