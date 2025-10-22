.class Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;
.super Ljava/lang/Object;
.source "ComputeInField.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private gaussElim([[S)V
    .locals 9
    .param p1, "A"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "A"
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 134
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 136
    aget-object v2, p1, v0

    aget-short v2, v2, v0

    if-nez v2, :cond_0

    .line 138
    move v2, v0

    .local v2, "k":I
    :goto_2
    aget-object v4, p1, v3

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 140
    aget-object v4, p1, v0

    aget-object v5, p1, v0

    aget-short v5, v5, v2

    aget-object v6, p1, v1

    aget-short v6, v6, v2

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v2

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 134
    .end local v2    # "k":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v1    # "j":I
    :cond_1
    aget-object v1, p1, v0

    aget-short v1, v1, v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->invElem(S)S

    move-result v1

    .line 146
    .local v1, "factor":S
    if-eqz v1, :cond_5

    .line 152
    aget-object v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multVect(S[S)[S

    move-result-object v2

    aput-object v2, p1, v0

    .line 153
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_4

    .line 155
    if-ne v0, v2, :cond_2

    .line 157
    goto :goto_5

    .line 159
    :cond_2
    aget-object v4, p1, v2

    aget-short v4, v4, v0

    .line 160
    .local v4, "factor2":S
    move v5, v0

    .local v5, "k":I
    :goto_4
    aget-object v6, p1, v3

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 162
    aget-object v6, p1, v0

    aget-short v6, v6, v5

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v6

    .line 163
    .local v6, "tmp":S
    aget-object v7, p1, v2

    aget-object v8, p1, v2

    aget-short v8, v8, v5

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v8

    aput-short v8, v7, v5

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 153
    .end local v4    # "factor2":S
    .end local v5    # "k":I
    .end local v6    # "tmp":S
    :cond_3
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 132
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "The matrix is not invertible"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    .end local v0    # "i":I
    .end local v1    # "factor":S
    :cond_6
    return-void
.end method


# virtual methods
.method public addMatrix([[S[[S)[[S
    .locals 7
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

    .line 367
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    aget-object v2, p2, v0

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 372
    array-length v1, p1

    aget-object v2, p1, v0

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    .line 373
    .local v1, "rslt":[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 375
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 377
    aget-object v4, v1, v2

    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aget-object v6, p2, v2

    aget-short v6, v6, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 373
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 369
    .end local v1    # "rslt":[[S
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Addition is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMatrixTranspose([[S)[[S
    .locals 2
    .param p1, "matrix"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 393
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 398
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v0

    return-object v0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Addition is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addVect([S[S)[S
    .locals 5
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

    .line 281
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 285
    array-length v0, p1

    new-array v0, v0, [S

    .line 286
    .local v0, "rslt":[S
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 288
    aget-short v2, p1, v1

    aget-short v3, p2, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v0, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "n":I
    :cond_0
    return-object v0

    .line 283
    .end local v0    # "rslt":[S
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    array-length v1, p1

    array-length v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Addition is not possible! vector1.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vector2.length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    .line 85
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v0, v2, :cond_4

    .line 93
    :try_start_0
    array-length v0, p1

    array-length v2, p1

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 95
    .local v0, "A":[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 98
    aget-object v4, p1, v2

    aget-object v6, v0, v2

    array-length v7, p1

    invoke-static {v4, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    array-length v4, p1

    .local v4, "j":I
    :goto_1
    array-length v6, p1

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_0

    .line 102
    aget-object v6, v0, v2

    aput-short v1, v6, v4

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 104
    .end local v4    # "j":I
    :cond_0
    aget-object v4, v0, v2

    array-length v6, v0

    add-int/2addr v6, v2

    aput-short v5, v4, v6

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->gaussElim([[S)V

    .line 110
    array-length v2, v0

    array-length v4, v0

    new-array v6, v3, [I

    aput v4, v6, v5

    aput v2, v6, v1

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    .line 111
    .local v1, "inverse":[[S
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 113
    array-length v4, v0

    .restart local v4    # "j":I
    :goto_3
    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_2

    .line 115
    aget-object v5, v1, v2

    array-length v6, v0

    sub-int v6, v4, v6

    aget-object v7, v0, v2

    aget-short v7, v7, v4

    aput-short v7, v5, v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 111
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 118
    .end local v2    # "i":I
    :cond_3
    return-object v1

    .line 120
    .end local v0    # "A":[[S
    .end local v1    # "inverse":[[S
    :catch_0
    move-exception v0

    .line 123
    .local v0, "rte":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1

    .line 87
    .end local v0    # "rte":Ljava/lang/RuntimeException;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The matrix is not invertible. Please choose another one!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 345
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

    .line 346
    .local v0, "rslt":[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 348
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p2, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 350
    aget-object v4, v0, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 346
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
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

    .line 328
    array-length v0, p2

    new-array v0, v0, [S

    .line 329
    .local v0, "rslt":[S
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 331
    aget-short v2, p2, v1

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v2

    aput-short v2, v0, v1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
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

    .line 304
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 308
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

    .line 309
    .local v0, "rslt":[[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 311
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 313
    aget-object v3, v0, v1

    aget-short v4, p1, v1

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v4

    aput-short v4, v3, v2

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 309
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 306
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

    .line 218
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "tmp":S
    array-length v1, p1

    new-array v1, v1, [S

    .line 224
    .local v1, "B":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 226
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 228
    aget-object v4, p1, v2

    aget-short v4, v4, v3

    aget-short v5, p2, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v0

    .line 229
    aget-short v4, v1, v2

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v1, v2

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 220
    .end local v0    # "tmp":S
    .end local v1    # "B":[S
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multiplyMatrix([[S[[S)[[S
    .locals 8
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

    .line 184
    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_3

    .line 188
    const/4 v1, 0x0

    .line 189
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

    .line 190
    .local v2, "A":[[S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 192
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_1

    .line 194
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    aget-object v6, p2, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 196
    aget-object v6, p1, v3

    aget-short v6, v6, v4

    aget-object v7, p2, v4

    aget-short v7, v7, v5

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v1

    .line 197
    aget-object v6, v2, v3

    aget-object v7, v2, v3

    aget-short v7, v7, v5

    invoke-static {v7, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v6, v5

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 192
    .end local v5    # "k":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 190
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 186
    .end local v1    # "tmp":S
    .end local v2    # "A":[[S
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multiplyMatrix_quad([[S[S)S
    .locals 7
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

    .line 250
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v0, v2, :cond_2

    aget-object v0, p1, v1

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "tmp":S
    array-length v1, p1

    new-array v1, v1, [S

    .line 256
    .local v1, "B":[S
    const/4 v2, 0x0

    .line 257
    .local v2, "ret":S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 259
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 261
    aget-object v5, p1, v3

    aget-short v5, v5, v4

    aget-short v6, p2, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v0

    .line 262
    aget-short v5, v1, v3

    invoke-static {v5, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v1, v3

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 264
    .end local v4    # "j":I
    :cond_0
    aget-short v4, v1, v3

    aget-short v5, p2, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v0

    .line 265
    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v2

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v3    # "i":I
    :cond_1
    return v2

    .line 252
    .end local v0    # "tmp":S
    .end local v1    # "B":[S
    .end local v2    # "ret":S
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiplication is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obfuscate_l1_polys([[S[[[S[[[S)[[[S
    .locals 9
    .param p1, "a"    # [[S
    .param p2, "b"    # [[[S
    .param p3, "c"    # [[[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    aget-object v2, p3, v0

    array-length v2, v2

    if-ne v1, v2, :cond_4

    aget-object v1, p2, v0

    aget-object v1, v1, v0

    array-length v1, v1

    aget-object v2, p3, v0

    aget-object v2, v2, v0

    array-length v2, v2

    if-ne v1, v2, :cond_4

    array-length v1, p2

    aget-object v2, p1, v0

    array-length v2, v2

    if-ne v1, v2, :cond_4

    array-length v1, p3

    array-length v2, p1

    if-ne v1, v2, :cond_4

    .line 465
    array-length v1, p3

    aget-object v2, p3, v0

    array-length v2, v2

    aget-object v3, p3, v0

    aget-object v3, v3, v0

    array-length v3, v3

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v2, v4, v3

    aput v1, v4, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    .line 467
    .local v1, "ret":[[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    aget-object v3, p2, v0

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 469
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p2, v0

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 471
    const/4 v4, 0x0

    .local v4, "l":I
    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 473
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    aget-object v6, p1, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 475
    aget-object v6, p1, v4

    aget-short v6, v6, v5

    aget-object v7, p2, v5

    aget-object v7, v7, v2

    aget-short v7, v7, v3

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v6

    .line 476
    .local v6, "temp":S
    aget-object v7, v1, v4

    aget-object v7, v7, v2

    aget-object v8, v1, v4

    aget-object v8, v8, v2

    aget-short v8, v8, v3

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v8

    aput-short v8, v7, v3

    .line 473
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 478
    .end local v5    # "k":I
    .end local v6    # "temp":S
    :cond_0
    aget-object v5, v1, v4

    aget-object v5, v5, v2

    aget-object v6, p3, v4

    aget-object v6, v6, v2

    aget-short v6, v6, v3

    aget-object v7, v1, v4

    aget-object v7, v7, v2

    aget-short v7, v7, v3

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v5, v3

    .line 471
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 469
    .end local v4    # "l":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 467
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v2    # "i":I
    :cond_3
    return-object v1

    .line 462
    .end local v1    # "ret":[[[S
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Multiplication not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public solveEquation([[S[S)[S
    .locals 10
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

    .line 36
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 38
    return-object v2

    .line 44
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

    .line 46
    .local v0, "A":[[S
    array-length v3, p1

    new-array v3, v3, [S

    .line 50
    .local v3, "x":[S
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 52
    aget-object v5, p1, v4

    aget-object v6, v0, v4

    aget-object v7, p1, v1

    array-length v7, v7

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    aget-object v5, v0, v4

    array-length v6, p2

    aget-short v7, p2, v4

    aget-object v8, v0, v4

    array-length v9, p2

    aget-short v8, v8, v9

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v5, v6

    .line 50
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->gaussElim([[S)V

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 61
    aget-object v4, v0, v1

    array-length v5, p2

    aget-short v4, v4, v5

    aput-short v4, v3, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    .end local v1    # "i":I
    :cond_2
    return-object v3

    .line 66
    .end local v0    # "A":[[S
    .end local v3    # "x":[S
    :catch_0
    move-exception v0

    .line 68
    .local v0, "rte":Ljava/lang/RuntimeException;
    return-object v2
.end method

.method public to_UT([[S)[[S
    .locals 7
    .param p1, "matrix"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 429
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v0, v2, :cond_2

    .line 434
    array-length v0, p1

    array-length v2, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 435
    .local v0, "rslt":[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 437
    aget-object v3, v0, v2

    aget-object v4, p1, v2

    aget-short v4, v4, v2

    aput-short v4, v3, v2

    .line 438
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 440
    aget-object v4, v0, v2

    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aget-object v6, p1, v3

    aget-short v6, v6, v2

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 435
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 431
    .end local v0    # "rslt":[[S
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Computation to upper triangular matrix is not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transpose([[S)[[S
    .locals 6
    .param p1, "matrix"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 409
    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    .line 410
    .local v1, "rslt":[[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 412
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 414
    aget-object v4, v1, v3

    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aput-short v5, v4, v2

    .line 412
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 410
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method
