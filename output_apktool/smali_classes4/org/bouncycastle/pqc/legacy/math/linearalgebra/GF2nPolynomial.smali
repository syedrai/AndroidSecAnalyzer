.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
.super Ljava/lang/Object;
.source "GF2nPolynomial.java"


# instance fields
.field private coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

.field private size:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "deg"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deg"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    .line 45
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 46
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V
    .locals 3
    .param p1, "deg"    # I
    .param p2, "elem"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deg",
            "elem"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    .line 30
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V
    .locals 3
    .param p1, "polynomial"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .param p2, "B1"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "polynomial",
            "B1"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    .line 74
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 76
    instance-of v0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_3

    .line 80
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v2

    aput-object v2, v1, v0

    .line 78
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    if-eqz v0, :cond_4

    .line 92
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_3

    .line 94
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    .line 97
    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_3

    .line 101
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    .line 102
    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v2

    aput-object v2, v1, v0

    .line 92
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 112
    :cond_3
    return-void

    .line 108
    .end local v0    # "i":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolynomialGF2n(Bitstring, GF2nField): B1 must be an instance of GF2nONBField or GF2nPolynomialField!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V
    .locals 3
    .param p1, "a"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 57
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v2, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 5
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 297
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    .line 299
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 301
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v1

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v3, v2, v1

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 305
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    .end local v1    # "i":I
    :cond_1
    goto :goto_4

    .line 310
    .end local v0    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    .line 312
    .restart local v0    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 314
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v1

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v3, v2, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 316
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 318
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 321
    .end local v1    # "i":I
    :cond_4
    :goto_4
    return-object v0
.end method

.method public final assignZeroToElements()V
    .locals 2

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->assignZero()V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public final at(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final divide(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 11
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 470
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    .line 471
    .local v0, "result":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    .line 472
    .local v1, "a":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 475
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    .line 476
    .local v2, "bDegree":I
    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->invert()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 477
    .local v3, "inv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v4, v2, :cond_0

    .line 479
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    aput-object v4, v0, v6

    .line 480
    aget-object v4, v0, v6

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    .line 481
    aget-object v4, v0, v6

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 482
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    aput-object v4, v0, v5

    .line 483
    aget-object v4, v0, v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 484
    return-object v0

    .line 486
    :cond_0
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v4, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    aput-object v4, v0, v6

    .line 487
    aget-object v4, v0, v6

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    .line 488
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v4

    sub-int/2addr v4, v2

    .line 489
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 491
    iget-object v7, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 492
    .local v7, "factor":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    invoke-virtual {p1, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->scalarMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v8

    .line 493
    .local v8, "shift":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v8, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shiftThisLeft(I)V

    .line 494
    invoke-virtual {v1, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 496
    aget-object v9, v0, v6

    iget-object v9, v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v10, v9, v4

    .line 497
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v9

    sub-int v4, v9, v2

    goto :goto_0

    .line 499
    .end local v7    # "factor":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .end local v8    # "shift":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    :cond_1
    aput-object v1, v0, v5

    .line 500
    aget-object v5, v0, v6

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 501
    return-object v0
.end method

.method public final enlarge(I)V
    .locals 4
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 159
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-gt p1, v0, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    new-array v0, p1, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 165
    .local v0, "res":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-result-object v1

    .line 167
    .local v1, "f":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v3

    instance-of v2, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v2, :cond_1

    .line 169
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 171
    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v3

    aput-object v3, v0, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v3

    instance-of v2, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v2, :cond_2

    .line 176
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p1, :cond_2

    .line 178
    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v3

    aput-object v3, v0, v2

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    .end local v2    # "i":I
    :cond_2
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    .line 182
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 183
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    if-nez v1, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    .line 261
    .local v1, "otherPol":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 263
    return v0

    .line 266
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v2, v3, :cond_3

    .line 268
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v2

    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 270
    return v0

    .line 266
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 256
    .end local v1    # "otherPol":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return v0
.end method

.method public final gcd(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 4
    .param p1, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    .line 544
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    .line 545
    .local v0, "a":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    .line 546
    .local v1, "b":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 547
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 551
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 553
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v2

    .line 554
    .local v2, "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    move-object v0, v1

    .line 555
    move-object v1, v2

    goto :goto_0

    .line 557
    .end local v2    # "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v3

    aget-object v2, v2, v3

    .line 558
    .local v2, "alpha":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->invert()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->scalarMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v3

    .line 559
    .local v3, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    return-object v3
.end method

.method public final getDegree()I
    .locals 2

    .line 142
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 144
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    return v0

    .line 142
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 281
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isZero()Z
    .locals 2

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_1

    .line 241
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    return v1

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public final multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 10
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    .line 355
    .local v0, "aDegree":I
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    .line 356
    .local v1, "bDegree":I
    if-ne v0, v1, :cond_3

    .line 362
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    .line 363
    .local v2, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 365
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 367
    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int v6, v3, v4

    aget-object v5, v5, v6

    if-nez v5, :cond_0

    .line 369
    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int v6, v3, v4

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v7, v7, v3

    iget-object v8, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v8, v8, v4

    .line 370
    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v7, v5, v6

    goto :goto_2

    .line 374
    :cond_0
    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int v6, v3, v4

    iget-object v7, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int v8, v3, v4

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v8, v8, v3

    iget-object v9, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v9, v9, v4

    .line 375
    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v7, v5, v6

    .line 365
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 363
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    .end local v4    # "j":I
    :cond_2
    return-object v2

    .line 358
    .end local v2    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .end local v3    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "PolynomialGF2n.multiply: this and b must have the same size!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final multiplyAndReduce(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .param p2, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "g"
        }
    .end annotation

    .line 393
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->reduce(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public final quotient(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 2
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 529
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    .line 530
    .local v0, "result":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->divide(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    .line 531
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public final reduce(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 1
    .param p1, "g"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public final remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 2
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 514
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    .line 515
    .local v0, "result":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->divide(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    .line 516
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public final scalarMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 4
    .param p1, "s"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 333
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    .line 335
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 337
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v3, v2, v1

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v0
.end method

.method public final set(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .line 210
    instance-of v0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolynomialGF2n.set f must be an instance of either GF2nPolynomialElement or GF2nONBElement!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v1, v0, p1

    .line 218
    return-void
.end method

.method public final shiftLeft(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .locals 5
    .param p1, "amount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 448
    if-gtz p1, :cond_0

    .line 450
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    return-object v0

    .line 452
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V

    .line 453
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    .line 454
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v1, v2, :cond_1

    .line 456
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int v3, v1, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public final shiftThisLeft(I)V
    .locals 7
    .param p1, "amount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 418
    if-lez p1, :cond_2

    .line 421
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    .line 422
    .local v0, "oldSize":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-result-object v1

    .line 423
    .local v1, "f":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->enlarge(I)V

    .line 424
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 426
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    add-int v5, v3, p1

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v6, v6, v3

    aput-object v6, v4, v5

    .line 424
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 428
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v2

    instance-of v4, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v4, :cond_1

    .line 430
    add-int/lit8 v2, p1, -0x1

    .end local v3    # "i":I
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 432
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v4, v1

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    .line 433
    invoke-static {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v4

    aput-object v4, v3, v2

    .line 430
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 436
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v2, v4, v2

    instance-of v2, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v2, :cond_2

    .line 438
    add-int/lit8 v2, p1, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_2

    .line 440
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-object v4, v1

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v4

    aput-object v4, v3, v2

    .line 438
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 444
    .end local v0    # "oldSize":I
    .end local v1    # "f":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public final shrink()V
    .locals 4

    .line 187
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 188
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 190
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 193
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_1

    .line 195
    new-array v1, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 196
    .local v1, "res":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 198
    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    .line 200
    .end local v1    # "res":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    :cond_1
    return-void
.end method

.method public final size()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->size:I

    return v0
.end method
