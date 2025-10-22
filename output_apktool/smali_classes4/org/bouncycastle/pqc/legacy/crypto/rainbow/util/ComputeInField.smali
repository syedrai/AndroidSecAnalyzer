.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;
.super Ljava/lang/Object;
.source "ComputeInField.java"


# instance fields
.field private A:[[S

.field x:[S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private computeZerosAbove()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "tmp":S
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "k":I
    :goto_0
    if-lez v1, :cond_3

    .line 246
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 248
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v2

    aget-short v3, v3, v1

    .line 249
    .local v3, "factor1":S
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v1

    aget-short v4, v4, v1

    invoke-static {v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v4

    .line 250
    .local v4, "factor2":S
    if-eqz v4, :cond_1

    .line 254
    move v5, v1

    .local v5, "j":I
    :goto_2
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_0

    .line 257
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v1

    aget-short v6, v6, v5

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 259
    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 261
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    aget-short v7, v7, v5

    invoke-static {v7, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v6, v5

    .line 254
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 246
    .end local v3    # "factor1":S
    .end local v4    # "factor2":S
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 252
    .restart local v3    # "factor1":S
    .restart local v4    # "factor2":S
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "The matrix is not invertible"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 244
    .end local v2    # "i":I
    .end local v3    # "factor1":S
    .end local v4    # "factor2":S
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 265
    .end local v1    # "k":I
    :cond_3
    return-void
.end method

.method private computeZerosUnder(Z)V
    .locals 9
    .param p1, "usedForInverse"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usedForInverse"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    .line 191
    .local v0, "tmp":S
    if-eqz p1, :cond_0

    .line 193
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .local v1, "length":I
    goto :goto_0

    .line 198
    .end local v1    # "length":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 202
    .restart local v1    # "length":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 204
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 206
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v3

    aget-short v4, v4, v2

    .line 207
    .local v4, "factor1":S
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v2

    aget-short v5, v5, v2

    invoke-static {v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v5

    .line 211
    .local v5, "factor2":S
    if-eqz v5, :cond_2

    .line 216
    move v6, v2

    .local v6, "j":I
    :goto_3
    if-ge v6, v1, :cond_1

    .line 219
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    aget-short v7, v7, v6

    invoke-static {v7, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 221
    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 223
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v3

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v8, v8, v3

    aget-short v8, v8, v6

    invoke-static {v8, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v8

    aput-short v8, v7, v6

    .line 216
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 204
    .end local v4    # "factor1":S
    .end local v5    # "factor2":S
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 213
    .restart local v4    # "factor1":S
    .restart local v5    # "factor2":S
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Matrix not invertible! We have to choose another one!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 202
    .end local v3    # "i":I
    .end local v4    # "factor1":S
    .end local v5    # "factor2":S
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    .end local v2    # "k":I
    :cond_4
    return-void
.end method

.method private substitute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-short v0, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    .line 288
    .local v0, "temp":S
    if-eqz v0, :cond_3

    .line 294
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    aget-short v3, v3, v4

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    aput-short v3, v1, v2

    .line 295
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 297
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    aget-short v2, v2, v3

    .line 298
    .local v2, "tmp":S
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-le v3, v1, :cond_0

    .line 300
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v1

    aget-short v4, v4, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S

    aget-short v5, v5, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 301
    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    .line 298
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 304
    .end local v3    # "j":I
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v1

    aget-short v3, v3, v1

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    .line 305
    if-eqz v0, :cond_1

    .line 309
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aput-short v4, v3, v1

    .line 295
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 307
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Not solvable equation system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    .end local v1    # "i":I
    .end local v2    # "tmp":S
    :cond_2
    return-void

    .line 290
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The equation system is not solvable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addSquareMatrix([[S[[S)[[S
    .locals 6
    .param p1, "matrix1"    # [[S
    .param p2, "matrix2"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix1",
            "matrix2"
        }
    .end annotation

    .line 477
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    aget-object v2, p2, v0

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 482
    array-length v1, p1

    array-length v2, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 483
    .local v0, "rslt":[[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 485
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 487
    aget-object v3, v0, v1

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v1

    aget-short v5, v5, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v3, v2

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 483
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 479
    .end local v0    # "rslt":[[S
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Addition is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addVect([S[S)[S
    .locals 4
    .param p1, "vector1"    # [S
    .param p2, "vector2"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector1",
            "vector2"
        }
    .end annotation

    .line 391
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 395
    array-length v0, p1

    new-array v0, v0, [S

    .line 396
    .local v0, "rslt":[S
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 398
    aget-short v2, p1, v1

    aget-short v3, p2, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v0, v1

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "n":I
    :cond_0
    return-object v0

    .line 393
    .end local v0    # "rslt":[S
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inverse([[S)[[S
    .locals 8
    .param p1, "coef"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coef"
        }
    .end annotation

    .line 106
    :try_start_0
    array-length v0, p1

    array-length v1, p1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 107
    array-length v0, p1

    aget-object v3, p1, v1

    array-length v3, v3

    if-ne v0, v3, :cond_7

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 116
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_0

    .line 119
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v0

    aget-object v6, p1, v0

    aget-short v6, v6, v3

    aput-short v6, v5, v3

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v3    # "j":I
    :cond_0
    array-length v3, p1

    .restart local v3    # "j":I
    :goto_2
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_1

    .line 124
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v0

    aput-short v1, v5, v3

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 126
    .end local v3    # "j":I
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    add-int/2addr v5, v0

    aput-short v4, v3, v5

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    :cond_2
    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    .line 134
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 136
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    aget-short v3, v3, v0

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v3

    .line 137
    .local v3, "factor":S
    move v5, v0

    .local v5, "j":I
    :goto_4
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_3

    .line 139
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v0

    aget-short v7, v7, v5

    invoke-static {v7, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v7

    aput-short v7, v6, v5

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 134
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 144
    .end local v0    # "i":I
    .end local v3    # "factor":S
    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->computeZerosAbove()V

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    new-array v5, v2, [I

    aput v3, v5, v4

    aput v0, v5, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 148
    .local v0, "inverse":[[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 150
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v3

    .local v3, "j":I
    :goto_6
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_5

    .line 152
    aget-object v4, v0, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v1

    aget-short v6, v6, v3

    aput-short v6, v4, v5

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 148
    .end local v3    # "j":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 155
    .end local v1    # "i":I
    :cond_6
    return-object v0

    .line 109
    .end local v0    # "inverse":[[S
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The matrix is not invertible. Please choose another one!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "coef":[[S
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .restart local p1    # "coef":[[S
    :catch_0
    move-exception v0

    .line 161
    .local v0, "rte":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public multMatrix(S[[S)[[S
    .locals 6
    .param p1, "scalar"    # S
    .param p2, "matrix"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scalar",
            "matrix"
        }
    .end annotation

    .line 455
    array-length v0, p2

    const/4 v1, 0x0

    aget-object v2, p2, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 456
    .local v0, "rslt":[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 458
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p2, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 460
    aget-object v4, v0, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    .line 458
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 456
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public multVect(S[S)[S
    .locals 3
    .param p1, "scalar"    # S
    .param p2, "vector"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scalar",
            "vector"
        }
    .end annotation

    .line 438
    array-length v0, p2

    new-array v0, v0, [S

    .line 439
    .local v0, "rslt":[S
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 441
    aget-short v2, p2, v1

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v2

    aput-short v2, v0, v1

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "n":I
    :cond_0
    return-object v0
.end method

.method public multVects([S[S)[[S
    .locals 6
    .param p1, "vector1"    # [S
    .param p2, "vector2"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector1",
            "vector2"
        }
    .end annotation

    .line 414
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 418
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 419
    .local v0, "rslt":[[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 421
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 423
    aget-object v3, v0, v1

    aget-short v4, p1, v1

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aput-short v4, v3, v2

    .line 421
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 416
    .end local v0    # "rslt":[[S
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multiplyMatrix([[S[S)[S
    .locals 6
    .param p1, "M1"    # [[S
    .param p2, "m"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "M1",
            "m"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "tmp":S
    array-length v1, p1

    new-array v1, v1, [S

    .line 369
    .local v1, "B":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 371
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 373
    aget-object v4, p1, v2

    aget-short v4, v4, v3

    aget-short v5, p2, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    .line 374
    aget-short v4, v1, v2

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v1, v2

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 369
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 365
    .end local v0    # "tmp":S
    .end local v1    # "B":[S
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multiplyMatrix([[S[[S)[[S
    .locals 7
    .param p1, "M1"    # [[S
    .param p2, "M2"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "M1",
            "M2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_3

    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, "tmp":S
    array-length v2, p1

    aget-object v3, p2, v0

    array-length v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v2, v4, v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 335
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 337
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 339
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    aget-object v5, p2, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 341
    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aget-object v6, p2, v3

    aget-short v6, v6, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v1

    .line 342
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v2

    aget-short v6, v6, v4

    invoke-static {v6, v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v5, v4

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 337
    .end local v4    # "k":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 335
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    return-object v0

    .line 331
    .end local v1    # "tmp":S
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public solveEquation([[S[S)[S
    .locals 8
    .param p1, "B"    # [[S
    .param p2, "b"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "B",
            "b"
        }
    .end annotation

    .line 40
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 42
    return-object v2

    .line 54
    :cond_0
    :try_start_0
    array-length v0, p1

    array-length v1, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v3

    const/4 v1, 0x0

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 56
    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 61
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 63
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aget-object v5, p1, v0

    aget-short v5, v5, v3

    aput-short v5, v4, v3

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 72
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    array-length v4, p2

    aget-short v5, p2, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v0

    array-length v7, p2

    aget-short v6, v6, v7

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v3, v4

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 76
    .end local v0    # "i":I
    :cond_3
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    .line 77
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->substitute()V

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->x:[S
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "rte":Ljava/lang/RuntimeException;
    return-object v2
.end method
