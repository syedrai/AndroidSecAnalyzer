.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
.source "GF2nPolynomialField.java"


# instance fields
.field private isPentanomial:Z

.field private isTrinomial:Z

.field private pc:[I

.field squaringMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

.field private tc:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "deg"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deg",
            "random"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 30
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 36
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->pc:[I

    .line 49
    if-lt p1, v0, :cond_0

    .line 53
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    .line 54
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    .line 55
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    .line 58
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILjava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V
    .locals 6
    .param p1, "deg"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "polynomial"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deg",
            "random",
            "polynomial"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 30
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 36
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->pc:[I

    .line 106
    if-lt p1, v0, :cond_7

    .line 110
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_6

    .line 114
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    .line 120
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 121
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    .line 122
    const/4 v1, 0x2

    .line 123
    .local v1, "k":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x5

    if-ge v2, v3, :cond_2

    .line 125
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 128
    if-ne v1, v0, :cond_0

    .line 130
    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->tc:I

    .line 132
    :cond_0
    if-gt v1, v5, :cond_1

    .line 134
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->pc:[I

    add-int/lit8 v4, v1, -0x3

    aput v2, v3, v4

    .line 123
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "j":I
    :cond_2
    if-ne v1, v0, :cond_3

    .line 140
    iput-boolean v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 142
    :cond_3
    if-ne v1, v5, :cond_4

    .line 144
    iput-boolean v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 146
    :cond_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    .line 147
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    .line 148
    return-void

    .line 116
    .end local v1    # "k":I
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 112
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 108
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "degree must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILjava/security/SecureRandom;Z)V
    .locals 2
    .param p1, "deg"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "file"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deg",
            "random",
            "file"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 30
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 36
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->pc:[I

    .line 74
    if-lt p1, v0, :cond_1

    .line 78
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    .line 79
    if-eqz p3, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial2()V

    .line 87
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    .line 90
    return-void

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeSquaringMatrix()V
    .locals 7

    .line 382
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 384
    .local v0, "d":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v2, v2, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 385
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 387
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const-string v6, "ZERO"

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    aput-object v4, v3, v2

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 392
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const-string v4, "ONE"

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 393
    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    aput-object v3, v0, v2

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    :cond_1
    const/4 v2, 0x1

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 397
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v3, v4, :cond_3

    .line 399
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shl-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v0, v4

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    add-int/lit8 v5, v3, -0x1

    aget-object v4, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 397
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 395
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 405
    .end local v3    # "j":I
    :cond_4
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, v1

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_4
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v3, v2, :cond_5

    .line 407
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v4, v3, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    aget-object v2, v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 410
    :cond_5
    return-void
.end method

.method private testPentanomials()Z
    .locals 10

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "done":Z
    const/4 v1, 0x0

    .line 493
    .local v1, "l":I
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 494
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 495
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 496
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x3

    if-gt v2, v5, :cond_7

    if-nez v0, :cond_7

    .line 498
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 499
    add-int/lit8 v5, v2, 0x1

    .local v5, "j":I
    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_6

    if-nez v0, :cond_6

    .line 501
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 502
    add-int/lit8 v6, v5, 0x1

    .local v6, "k":I
    :goto_2
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v8, v4

    if-gt v6, v8, :cond_5

    if-nez v0, :cond_5

    .line 504
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v8, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 505
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_3

    :cond_0
    const/4 v8, 0x0

    :goto_3
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_4

    :cond_1
    const/4 v9, 0x0

    :goto_4
    or-int/2addr v8, v9

    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_5

    :cond_2
    const/4 v9, 0x0

    :goto_5
    or-int/2addr v8, v9

    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_6

    :cond_3
    const/4 v9, 0x0

    :goto_6
    or-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 508
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    .line 509
    add-int/lit8 v1, v1, 0x1

    .line 510
    if-eqz v0, :cond_4

    .line 512
    iput-boolean v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 513
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v2, v8, v3

    .line 514
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v5, v3, v4

    .line 515
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v6, v3, v7

    .line 516
    return v0

    .line 519
    :cond_4
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v8, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 502
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 521
    :cond_5
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 499
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 523
    .end local v6    # "k":I
    :cond_6
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v5    # "j":I
    :cond_7
    return v0
.end method

.method private testRandom()Z
    .locals 4

    .line 539
    const/4 v0, 0x0

    .line 541
    .local v0, "done":Z
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 542
    const/4 v1, 0x0

    .line 543
    .local v1, "l":I
    :cond_0
    if-nez v0, :cond_1

    .line 545
    add-int/lit8 v1, v1, 0x1

    .line 546
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->randomize()V

    .line 547
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 548
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 549
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    const/4 v0, 0x1

    .line 552
    return v0

    .line 556
    :cond_1
    return v0
.end method

.method private testTrinomials()Z
    .locals 5

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "done":Z
    const/4 v1, 0x0

    .line 458
    .local v1, "l":I
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 459
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 460
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 461
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v2, v3, :cond_1

    if-nez v0, :cond_1

    .line 463
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 464
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    .line 465
    add-int/lit8 v1, v1, 0x1

    .line 466
    if-eqz v0, :cond_0

    .line 468
    iput-boolean v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 469
    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->tc:I

    .line 470
    return v0

    .line 472
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 473
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :cond_1
    return v0
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V
    .locals 7
    .param p1, "B1"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "B1"
        }
    .end annotation

    .line 290
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v0, v1, :cond_a

    .line 296
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->computeCOBMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V

    .line 301
    return-void

    .line 306
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 307
    .local v0, "COBMatrix":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v1, v2, :cond_1

    .line 309
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v2, v0, v1

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-result-object v2

    .line 318
    .local v2, "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_1

    .line 321
    instance-of v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v3, :cond_2

    .line 323
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v3, v3, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    .line 324
    .local v3, "gamma":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v4, v4, -0x1

    move-object v5, p1

    check-cast v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_1

    .line 328
    .end local v3    # "gamma":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    :cond_2
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v3, v3, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    .line 329
    .restart local v3    # "gamma":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v4, v4, -0x1

    move-object v5, p1

    check-cast v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    .line 330
    invoke-static {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 332
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v4, v4, -0x2

    aput-object v2, v3, v4

    .line 333
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v4, v4, -0x3

    .end local v1    # "i":I
    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_3

    .line 335
    add-int/lit8 v1, v4, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    aput-object v1, v3, v4

    .line 333
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 337
    :cond_3
    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    if-eqz v1, :cond_6

    .line 340
    const/4 v1, 0x0

    .end local v4    # "i":I
    .restart local v1    # "i":I
    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v1, v4, :cond_9

    .line 342
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v4, v5, :cond_5

    .line 345
    aget-object v5, v3, v1

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 347
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 342
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 340
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 355
    .end local v1    # "i":I
    .local v4, "i":I
    :cond_6
    const/4 v1, 0x0

    .end local v4    # "i":I
    .restart local v1    # "i":I
    :goto_5
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v1, v4, :cond_9

    .line 357
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v4, v5, :cond_8

    .line 359
    aget-object v5, v3, v1

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 361
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 357
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 355
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 368
    .end local v4    # "j":I
    :cond_9
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 369
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 371
    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v4, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 372
    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->invertMatrix([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 373
    return-void

    .line 292
    .end local v0    # "COBMatrix":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v1    # "i":I
    .end local v2    # "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .end local v3    # "gamma":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected computeFieldPolynomial()V
    .locals 1

    .line 417
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    return-void

    .line 421
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    return-void

    .line 425
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    .line 426
    return-void
.end method

.method protected computeFieldPolynomial2()V
    .locals 1

    .line 433
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    return-void

    .line 441
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    .line 442
    return-void
.end method

.method public getPc()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 197
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 202
    .local v1, "result":[I
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->pc:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    return-object v1

    .line 199
    .end local v1    # "result":[I
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected getRandomRoot(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 9
    .param p1, "polynomial"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "polynomial"
        }
    .end annotation

    .line 233
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V

    .line 234
    .local v0, "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    .line 238
    .local v1, "gDegree":I
    :goto_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 243
    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    .line 244
    .local v3, "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    const/4 v5, 0x2

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V

    .line 246
    .local v4, "ut":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->set(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V

    .line 247
    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v5, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    .line 249
    .local v5, "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v7, v2

    if-gt v6, v7, :cond_1

    .line 252
    invoke-virtual {v5, v5, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->multiplyAndReduce(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v5

    .line 253
    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v5

    .line 249
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 256
    :cond_1
    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->gcd(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v7

    .line 259
    .local v7, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v8

    .line 260
    .local v8, "hDegree":I
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    .line 262
    if-eqz v8, :cond_0

    if-eq v8, v1, :cond_0

    .line 264
    shl-int/lit8 v2, v8, 0x1

    if-le v2, v1, :cond_2

    .line 266
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->quotient(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    goto :goto_2

    .line 271
    :cond_2
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v2, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    move-object v0, v2

    .line 273
    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    goto :goto_0

    .line 276
    .end local v3    # "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .end local v4    # "ut":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .end local v5    # "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .end local v6    # "i":I
    .end local v7    # "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .end local v8    # "hDegree":I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->at(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-result-object v2

    return-object v2
.end method

.method public getSquaringVector(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 215
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public getTc()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 181
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->tc:I

    return v0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public isPentanomial()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    return v0
.end method
