.class public abstract Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
.super Ljava/lang/Object;
.source "GF2nField.java"


# instance fields
.field protected fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

.field protected fields:Ljava/util/Vector;

.field protected mDegree:I

.field protected matrices:Ljava/util/Vector;

.field protected final random:Ljava/security/SecureRandom;


# direct methods
.method protected constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->random:Ljava/security/SecureRandom;

    .line 46
    return-void
.end method


# virtual methods
.method protected abstract computeCOBMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "B1"
        }
    .end annotation
.end method

.method protected abstract computeFieldPolynomial()V
.end method

.method public final convert(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 8
    .param p1, "elem"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .param p2, "basis"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elem",
            "basis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 229
    if-ne p2, p0, :cond_0

    .line 231
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v1, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    return-object v0

    .line 237
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    iget v1, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v0, v1, :cond_8

    .line 245
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 246
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 248
    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->computeCOBMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V

    .line 249
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 251
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 253
    .local v1, "COBMatrix":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    .line 254
    .local v2, "elemCopy":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    instance-of v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v3, :cond_3

    .line 257
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->reverseOrder()V

    .line 259
    :cond_3
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/math/BigInteger;)V

    .line 260
    .local v3, "bs":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 261
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 262
    .local v4, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v0, v5, :cond_5

    .line 264
    aget-object v5, v1, v0

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->vectorMult(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 266
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 262
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_5
    instance-of v5, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    if-eqz v5, :cond_6

    .line 271
    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    move-object v6, p2

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v5

    .line 274
    :cond_6
    instance-of v5, p2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    if-eqz v5, :cond_7

    .line 276
    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-object v6, p2

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    .line 277
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;Ljava/math/BigInteger;)V

    .line 279
    .local v5, "res":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->reverseOrder()V

    .line 280
    return-object v5

    .line 284
    .end local v5    # "res":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    :cond_7
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "GF2nField.convert: B1 must be an instance of GF2nPolynomialField or GF2nONBField!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 239
    .end local v0    # "i":I
    .end local v1    # "COBMatrix":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v2    # "elemCopy":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .end local v3    # "bs":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v4    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nField.convert: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    if-nez v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    .line 88
    .local v1, "otherField":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    iget v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-eq v2, v3, :cond_1

    .line 90
    return v0

    .line 92
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 94
    return v0

    .line 96
    :cond_2
    instance-of v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialField;

    if-nez v2, :cond_3

    .line 99
    return v0

    .line 101
    :cond_3
    instance-of v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    if-eqz v2, :cond_4

    instance-of v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    if-nez v2, :cond_4

    .line 104
    return v0

    .line 106
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 83
    .end local v1    # "otherField":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    :cond_5
    :goto_0
    return v0
.end method

.method public final getDegree()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    return v0
.end method

.method public final getFieldPolynomial()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->computeFieldPolynomial()V

    .line 69
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method protected abstract getRandomRoot(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "B0FieldPolynomial"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 2

    .line 114
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final invertMatrix([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .locals 6
    .param p1, "matrix"    # [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 151
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 152
    .local v0, "a":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    array-length v1, p1

    new-array v1, v1, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 156
    .local v1, "inv":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v2, v3, :cond_0

    .line 158
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    aput-object v3, v0, v2

    .line 159
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v3, v1, v2

    .line 160
    aget-object v3, v1, v2

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6

    .line 167
    move v3, v2

    .line 168
    .local v3, "j":I
    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 172
    :cond_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v3, v4, :cond_5

    .line 177
    if-eq v2, v3, :cond_2

    .line 179
    aget-object v4, v0, v2

    .line 180
    .local v4, "dummy":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    aget-object v5, v0, v3

    aput-object v5, v0, v2

    .line 181
    aput-object v4, v0, v3

    .line 182
    aget-object v4, v1, v2

    .line 183
    aget-object v5, v1, v3

    aput-object v5, v1, v2

    .line 184
    aput-object v4, v1, v3

    .line 186
    .end local v4    # "dummy":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_2
    add-int/lit8 v3, v2, 0x1

    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v3, v4, :cond_4

    .line 189
    aget-object v4, v0, v3

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 191
    aget-object v4, v0, v3

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 192
    aget-object v4, v1, v3

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 186
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 164
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "GF2nField.invertMatrix: Matrix cannot be inverted!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    .end local v3    # "j":I
    :cond_6
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v3, v3, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_4
    if-lez v3, :cond_9

    .line 199
    add-int/lit8 v2, v3, -0x1

    .local v2, "j":I
    :goto_5
    if-ltz v2, :cond_8

    .line 202
    aget-object v4, v0, v2

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 204
    aget-object v4, v0, v2

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 205
    aget-object v4, v1, v2

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 199
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 197
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 209
    .end local v2    # "j":I
    :cond_9
    return-object v1
.end method
