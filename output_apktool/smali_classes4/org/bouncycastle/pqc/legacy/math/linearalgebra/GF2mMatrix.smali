.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
.source "GF2mMatrix.java"


# instance fields
.field protected field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

.field protected matrix:[[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[B)V
    .locals 10
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "enc"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "enc"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 37
    const/16 v0, 0x8

    .line 38
    .local v0, "d":I
    const/4 v1, 0x1

    .line 39
    .local v1, "count":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 45
    :cond_0
    array-length v2, p2

    const/4 v3, 0x5

    const-string v4, " Error: given array is not encoded matrix over GF(2^m)"

    if-lt v2, v3, :cond_6

    .line 51
    const/4 v2, 0x3

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v5, p2, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    xor-int/2addr v2, v5

    const/4 v5, 0x1

    aget-byte v6, p2, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v2, v6

    const/4 v6, 0x0

    aget-byte v7, p2, v6

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v2, v7

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    .line 54
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    mul-int v2, v2, v1

    .line 56
    .local v2, "n":I
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-lez v7, :cond_5

    array-length v7, p2

    add-int/lit8 v7, v7, -0x4

    rem-int/2addr v7, v2

    if-nez v7, :cond_5

    .line 62
    array-length v7, p2

    add-int/lit8 v7, v7, -0x4

    div-int/2addr v7, v2

    iput v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    .line 64
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    new-array v3, v3, [I

    aput v8, v3, v5

    aput v7, v3, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    .line 65
    const/4 v1, 0x4

    .line 66
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v3, v5, :cond_4

    .line 68
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v5, v6, :cond_3

    .line 70
    const/4 v6, 0x0

    .local v6, "jj":I
    :goto_3
    if-ge v6, v0, :cond_1

    .line 72
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v7, v7, v3

    aget v8, v7, v5

    add-int/lit8 v9, v1, 0x1

    .end local v1    # "count":I
    .local v9, "count":I
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    xor-int/2addr v1, v8

    aput v1, v7, v5

    .line 70
    add-int/lit8 v6, v6, 0x8

    move v1, v9

    goto :goto_3

    .line 74
    .end local v6    # "jj":I
    .end local v9    # "count":I
    .restart local v1    # "count":I
    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v7, v7, v3

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 76
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 66
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    .end local v3    # "i":I
    :cond_4
    return-void

    .line 58
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    .end local v2    # "n":I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[[I)V
    .locals 1
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "matrix"    # [[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "matrix"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 109
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    .line 110
    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    .line 111
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;)V
    .locals 3
    .param p1, "other"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    .line 90
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    .line 91
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    .line 92
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 93
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private addToRow([I[I)V
    .locals 4
    .param p1, "fromRow"    # [I
    .param p2, "toRow"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromRow",
            "toRow"
        }
    .end annotation

    .line 283
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 285
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->add(II)I

    move-result v1

    aput v1, p2, v0

    .line 283
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 287
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private multRowWithElement([II)[I
    .locals 4
    .param p1, "row"    # [I
    .param p2, "element"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "row",
            "element"
        }
    .end annotation

    .line 267
    array-length v0, p1

    new-array v0, v0, [I

    .line 268
    .local v0, "result":[I
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 270
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v3, p1, v1

    invoke-virtual {v2, v3, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v2

    aput v2, v0, v1

    .line 268
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 272
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private multRowWithElementThis([II)V
    .locals 3
    .param p1, "row"    # [I
    .param p2, "element"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "row",
            "element"
        }
    .end annotation

    .line 259
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 261
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v1

    aput v1, p1, v0

    .line 259
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 263
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static swapColumns([[III)V
    .locals 2
    .param p0, "matrix"    # [[I
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

    .line 252
    aget-object v0, p0, p1

    .line 253
    .local v0, "tmp":[I
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 254
    aput-object v0, p0, p2

    .line 255
    return-void
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .locals 11

    .line 175
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    const-string v2, "Matrix is not invertible."

    if-ne v0, v1, :cond_9

    .line 181
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v1, 0x0

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 182
    .local v0, "tmpMatrix":[[I
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 184
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v6, v6, v4

    invoke-static {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v6

    aput-object v6, v0, v4

    .line 182
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 188
    .end local v4    # "i":I
    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    new-array v3, v3, [I

    aput v6, v3, v5

    aput v4, v3, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 189
    .local v1, "invMatrix":[[I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 191
    aget-object v4, v1, v3

    aput v5, v4, v3

    .line 189
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 196
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v3, v4, :cond_8

    .line 199
    aget-object v4, v0, v3

    aget v4, v4, v3

    if-nez v4, :cond_5

    .line 201
    const/4 v4, 0x0

    .line 203
    .local v4, "foundNonZero":Z
    add-int/lit8 v6, v3, 0x1

    .local v6, "j":I
    :goto_3
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v6, v7, :cond_3

    .line 205
    aget-object v7, v0, v6

    aget v7, v7, v3

    if-eqz v7, :cond_2

    .line 208
    const/4 v4, 0x1

    .line 209
    invoke-static {v0, v3, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    .line 210
    invoke-static {v1, v3, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    .line 212
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    .line 203
    :cond_2
    add-int/2addr v6, v5

    goto :goto_3

    .line 217
    .end local v6    # "j":I
    :cond_3
    if-eqz v4, :cond_4

    goto :goto_4

    .line 220
    :cond_4
    new-instance v5, Ljava/lang/ArithmeticException;

    invoke-direct {v5, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    .end local v4    # "foundNonZero":Z
    :cond_5
    :goto_4
    aget-object v4, v0, v3

    aget v4, v4, v3

    .line 226
    .local v4, "coef":I
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v6

    .line 227
    .local v6, "invCoef":I
    aget-object v7, v0, v3

    invoke-direct {p0, v7, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    .line 228
    aget-object v7, v1, v3

    invoke-direct {p0, v7, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    .line 231
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v7, v8, :cond_7

    .line 233
    if-eq v7, v3, :cond_6

    .line 235
    aget-object v8, v0, v7

    aget v4, v8, v3

    .line 236
    if-eqz v4, :cond_6

    .line 238
    aget-object v8, v0, v3

    invoke-direct {p0, v8, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v8

    .line 239
    .local v8, "tmpRow":[I
    aget-object v9, v1, v3

    invoke-direct {p0, v9, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v9

    .line 240
    .local v9, "tmpInvRow":[I
    aget-object v10, v0, v7

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    .line 241
    aget-object v10, v1, v7

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    .line 231
    .end local v8    # "tmpRow":[I
    .end local v9    # "tmpInvRow":[I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 196
    .end local v4    # "coef":I
    .end local v6    # "invCoef":I
    .end local v7    # "j":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 247
    .end local v3    # "i":I
    :cond_8
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[[I)V

    return-object v2

    .line 177
    .end local v0    # "tmpMatrix":[[I
    .end local v1    # "invMatrix":[[I
    :cond_9
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;

    if-nez v1, :cond_0

    goto :goto_3

    .line 324
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;

    .line 326
    .local v1, "otherMatrix":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ne v2, v3, :cond_5

    iget v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 333
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v2, v3, :cond_4

    .line 335
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v3, v4, :cond_3

    .line 337
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    iget-object v5, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v5, v5, v2

    aget v5, v5, v3

    if-eq v4, v5, :cond_2

    .line 339
    return v0

    .line 335
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 333
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v2    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_5
    :goto_2
    return v0

    .line 321
    .end local v1    # "otherMatrix":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;
    :cond_6
    :goto_3
    return v0
.end method

.method public getEncoded()[B
    .locals 8

    .line 119
    const/16 v0, 0x8

    .line 120
    .local v0, "d":I
    const/4 v1, 0x1

    .line 121
    .local v1, "count":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 127
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    mul-int v2, v2, v3

    mul-int v2, v2, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 128
    .local v2, "bf":[B
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 129
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 130
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    .line 131
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 133
    const/4 v1, 0x4

    .line 134
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v3, v4, :cond_3

    .line 136
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v4, v5, :cond_2

    .line 138
    const/4 v5, 0x0

    .local v5, "jj":I
    :goto_3
    if-ge v5, v0, :cond_1

    .line 140
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v7, v7, v3

    aget v7, v7, v4

    ushr-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v2, v1

    .line 138
    add-int/lit8 v5, v5, 0x8

    move v1, v6

    goto :goto_3

    .line 136
    .end local v5    # "jj":I
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 134
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method public hashCode()I
    .locals 5

    .line 349
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    add-int/2addr v0, v1

    .line 350
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v1, v2, :cond_1

    .line 352
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v2, v3, :cond_0

    .line 354
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    add-int v0, v3, v4

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public isZero()Z
    .locals 3

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v1, :cond_2

    .line 157
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v1, v2, :cond_1

    .line 159
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x0

    return v2

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .locals 2
    .param p1, "vector"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .locals 2
    .param p1, "a"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .locals 2
    .param p1, "perm"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "perm"
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .locals 2
    .param p1, "vector"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 362
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 363
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " x "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Matrix over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v1, v2, :cond_1

    .line 367
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v2, v3, :cond_0

    .line 369
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->elementToStr(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 371
    .end local v2    # "j":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
