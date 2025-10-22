.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
.source "GF2Matrix.java"


# instance fields
.field private length:I

.field private matrix:[[I


# direct methods
.method public constructor <init>(IC)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "typeOfMatrix"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "typeOfMatrix"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 119
    return-void
.end method

.method public constructor <init>(ICLjava/security/SecureRandom;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "typeOfMatrix"    # C
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "typeOfMatrix",
            "sr"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    .line 130
    if-lez p1, :cond_0

    .line 135
    sparse-switch p2, :sswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unknown matrix type."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :sswitch_0
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    .line 140
    goto :goto_0

    .line 151
    :sswitch_1
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V

    .line 152
    goto :goto_0

    .line 155
    :sswitch_2
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignRandomRegularMatrix(ILjava/security/SecureRandom;)V

    .line 156
    goto :goto_0

    .line 147
    :sswitch_3
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V

    .line 148
    goto :goto_0

    .line 143
    :sswitch_4
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignUnitMatrix(I)V

    .line 144
    nop

    .line 161
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Size of matrix is non-positive."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_4
        0x4c -> :sswitch_3
        0x52 -> :sswitch_2
        0x55 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "n"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    .line 186
    if-lez p2, :cond_0

    if-lez p1, :cond_0

    .line 191
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    .line 192
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "size of matrix is non-positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I[[I)V
    .locals 7
    .param p1, "numColumns"    # I
    .param p2, "matrix"    # [[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numColumns",
            "matrix"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    .line 84
    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1f

    shr-int/lit8 v2, v2, 0x5

    if-ne v1, v2, :cond_2

    .line 89
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 90
    array-length v1, p2

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    .line 91
    aget-object v0, p2, v0

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .line 92
    and-int/lit8 v0, p1, 0x1f

    .line 94
    .local v0, "rest":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 96
    const/4 v2, -0x1

    .local v2, "bitMask":I
    goto :goto_0

    .line 100
    .end local v2    # "bitMask":I
    :cond_0
    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    .line 102
    .restart local v2    # "bitMask":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v3, v4, :cond_1

    .line 104
    aget-object v4, p2, v3

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v5, v1

    aget v6, v4, v5

    and-int/2addr v6, v2

    aput v6, v4, v5

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    .end local v3    # "i":I
    :cond_1
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    .line 107
    return-void

    .line 86
    .end local v0    # "rest":I
    .end local v2    # "bitMask":I
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Int array does not match given number of columns."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;)V
    .locals 3
    .param p1, "a"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    .line 170
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 171
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    .line 172
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .line 173
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 9
    .param p1, "enc"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enc"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    .line 36
    array-length v0, p1

    const/16 v1, 0x9

    const-string v2, "given array is not an encoded matrix over GF(2)"

    if-lt v0, v1, :cond_4

    .line 42
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    .line 43
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 45
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v1, v1, 0x7

    ushr-int/lit8 v1, v1, 0x3

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int v1, v1, v3

    .line 47
    .local v1, "n":I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-lez v3, :cond_3

    array-length v3, p1

    add-int/lit8 v3, v3, -0x8

    if-ne v1, v3, :cond_3

    .line 53
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v2, v2, 0x1f

    ushr-int/lit8 v2, v2, 0x5

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .line 54
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v2, v4, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    .line 57
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    shr-int/lit8 v0, v0, 0x5

    .line 59
    .local v0, "q":I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v2, v2, 0x1f

    .line 61
    .local v2, "r":I
    const/16 v3, 0x8

    .line 62
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v4, v5, :cond_2

    .line 64
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 66
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v4

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v7

    aput v7, v6, v5

    .line 64
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 68
    .end local v5    # "j":I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_2
    if-ge v5, v2, :cond_1

    .line 70
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v4

    aget v7, v6, v0

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "count":I
    .local v8, "count":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    xor-int/2addr v3, v7

    aput v3, v6, v0

    .line 68
    add-int/lit8 v5, v5, 0x8

    move v3, v8

    goto :goto_2

    .line 62
    .end local v5    # "j":I
    .end local v8    # "count":I
    .restart local v3    # "count":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 49
    .end local v0    # "q":I
    .end local v2    # "r":I
    .end local v3    # "count":I
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    .end local v1    # "n":I
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addToRow([I[II)V
    .locals 3
    .param p0, "fromRow"    # [I
    .param p1, "toRow"    # [I
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromRow",
            "toRow",
            "startIndex"
        }
    .end annotation

    .line 1319
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 1321
    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 1319
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1323
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V
    .locals 9
    .param p1, "n"    # I
    .param p2, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "sr"
        }
    .end annotation

    .line 248
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    .line 249
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 250
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .line 251
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_2

    .line 254
    ushr-int/lit8 v2, v0, 0x5

    .line 255
    .local v2, "q":I
    and-int/lit8 v4, v0, 0x1f

    .line 256
    .local v4, "r":I
    rsub-int/lit8 v5, v4, 0x1f

    .line 257
    .local v5, "s":I
    shl-int v4, v3, v4

    .line 258
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v2, :cond_0

    .line 260
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v0

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v8

    aput v8, v7, v6

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 262
    .end local v6    # "j":I
    :cond_0
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v0

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v7

    ushr-int/2addr v7, v5

    or-int/2addr v7, v4

    aput v7, v6, v2

    .line 263
    add-int/lit8 v6, v2, 0x1

    .restart local v6    # "j":I
    :goto_2
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v6, v7, :cond_1

    .line 265
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v0

    aput v1, v7, v6

    .line 263
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 252
    .end local v2    # "q":I
    .end local v4    # "r":I
    .end local v5    # "s":I
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private assignRandomRegularMatrix(ILjava/security/SecureRandom;)V
    .locals 10
    .param p1, "n"    # I
    .param p2, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "sr"
        }
    .end annotation

    .line 322
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    .line 323
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 324
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .line 325
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    .line 326
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v2, 0x4c

    invoke-direct {v0, p1, v2, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 327
    .local v0, "lm":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v3, 0x55

    invoke-direct {v2, p1, v3, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 328
    .local v2, "um":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 329
    .local v3, "rm":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    invoke-direct {v4, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    .line 330
    .local v4, "perm":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v5

    .line 331
    .local v5, "p":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_0

    .line 333
    iget-object v7, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v9, v5, v6

    aget-object v8, v8, v9

    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v7, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 335
    .end local v6    # "i":I
    :cond_0
    return-void
.end method

.method private assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V
    .locals 11
    .param p1, "n"    # I
    .param p2, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "sr"
        }
    .end annotation

    .line 280
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    .line 281
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 282
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .line 283
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    .line 284
    and-int/lit8 v0, p1, 0x1f

    .line 286
    .local v0, "rest":I
    if-nez v0, :cond_0

    .line 288
    const/4 v2, -0x1

    .local v2, "help":I
    goto :goto_0

    .line 292
    .end local v2    # "help":I
    :cond_0
    shl-int v2, v3, v0

    sub-int/2addr v2, v3

    .line 294
    .restart local v2    # "help":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v4, v5, :cond_3

    .line 296
    ushr-int/lit8 v5, v4, 0x5

    .line 297
    .local v5, "q":I
    and-int/lit8 v6, v4, 0x1f

    .line 298
    .local v6, "r":I
    move v7, v6

    .line 299
    .local v7, "s":I
    shl-int v6, v3, v6

    .line 300
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v5, :cond_1

    .line 302
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v4

    aput v1, v9, v8

    .line 300
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 304
    .end local v8    # "j":I
    :cond_1
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v4

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v9

    shl-int/2addr v9, v7

    or-int/2addr v9, v6

    aput v9, v8, v5

    .line 305
    add-int/lit8 v8, v5, 0x1

    .restart local v8    # "j":I
    :goto_3
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v9, :cond_2

    .line 307
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v4

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v10

    aput v10, v9, v8

    .line 305
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 309
    .end local v8    # "j":I
    :cond_2
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v4

    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v9, v3

    aget v10, v8, v9

    and-int/2addr v10, v2

    aput v10, v8, v9

    .line 294
    .end local v5    # "q":I
    .end local v6    # "r":I
    .end local v7    # "s":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 312
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method private assignUnitMatrix(I)V
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 222
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    .line 223
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 224
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .line 225
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_1

    .line 228
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v4, :cond_0

    .line 230
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    aput v1, v4, v2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v1, :cond_2

    .line 235
    and-int/lit8 v1, v0, 0x1f

    .line 236
    .local v1, "rest":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    ushr-int/lit8 v4, v0, 0x5

    shl-int v5, v3, v1

    aput v5, v2, v4

    .line 233
    .end local v1    # "rest":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 238
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private assignZeroMatrix(II)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "n"
        }
    .end annotation

    .line 202
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    .line 203
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    .line 204
    add-int/lit8 v0, p2, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .line 205
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_1

    .line 208
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v3, :cond_0

    .line 210
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    aput v1, v3, v2

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static createRandomRegularMatrixAndItsInverse(ILjava/security/SecureRandom;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 22
    .param p0, "n"    # I
    .param p1, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "sr"
        }
    .end annotation

    .line 348
    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 355
    .local v3, "result":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    add-int/lit8 v4, v0, 0x1f

    shr-int/lit8 v4, v4, 0x5

    .line 356
    .local v4, "length":I
    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v6, 0x4c

    invoke-direct {v5, v0, v6, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 357
    .local v5, "lm":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    new-instance v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v7, 0x55

    invoke-direct {v6, v0, v7, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    .line 358
    .local v6, "um":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 359
    .local v7, "rm":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    invoke-direct {v8, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    .line 360
    .local v8, "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v9

    .line 362
    .local v9, "pVec":[I
    new-array v2, v2, [I

    const/4 v10, 0x1

    aput v4, v2, v10

    const/4 v11, 0x0

    aput v0, v2, v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 363
    .local v2, "matrix":[[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_0

    .line 365
    iget-object v13, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v14, v9, v12

    aget-object v13, v13, v14

    aget-object v14, v2, v12

    invoke-static {v13, v11, v14, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 368
    .end local v12    # "i":I
    :cond_0
    new-instance v12, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v12, v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    aput-object v12, v3, v11

    .line 375
    new-instance v11, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v12, 0x49

    invoke-direct {v11, v0, v12}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(IC)V

    .line 376
    .local v11, "invLm":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v0, :cond_4

    .line 378
    and-int/lit8 v14, v13, 0x1f

    .line 379
    .local v14, "rest":I
    ushr-int/lit8 v15, v13, 0x5

    .line 380
    .local v15, "q":I
    shl-int v16, v10, v14

    .line 381
    .local v16, "r":I
    add-int/lit8 v17, v13, 0x1

    move/from16 v10, v17

    const/16 v18, 0x1

    .local v10, "j":I
    :goto_2
    if-ge v10, v0, :cond_3

    .line 383
    iget-object v12, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v12, v12, v10

    aget v12, v12, v15

    and-int v12, v12, v16

    .line 384
    .local v12, "b":I
    if-eqz v12, :cond_2

    .line 386
    const/16 v19, 0x0

    move/from16 v1, v19

    .local v1, "k":I
    :goto_3
    if-gt v1, v15, :cond_1

    .line 388
    move/from16 v19, v1

    .end local v1    # "k":I
    .local v19, "k":I
    iget-object v1, v11, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v1, v1, v10

    aget v20, v1, v19

    move-object/from16 v21, v1

    iget-object v1, v11, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v1, v1, v13

    aget v1, v1, v19

    xor-int v1, v20, v1

    aput v1, v21, v19

    .line 386
    add-int/lit8 v1, v19, 0x1

    .end local v19    # "k":I
    .restart local v1    # "k":I
    goto :goto_3

    :cond_1
    move/from16 v19, v1

    .line 381
    .end local v1    # "k":I
    .end local v12    # "b":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    const/16 v12, 0x49

    goto :goto_2

    .line 376
    .end local v10    # "j":I
    .end local v14    # "rest":I
    .end local v15    # "q":I
    .end local v16    # "r":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v10, 0x1

    const/16 v12, 0x49

    goto :goto_1

    :cond_4
    const/16 v18, 0x1

    .line 394
    .end local v13    # "i":I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/16 v10, 0x49

    invoke-direct {v1, v0, v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(IC)V

    .line 395
    .local v1, "invUm":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    add-int/lit8 v10, v0, -0x1

    .local v10, "i":I
    :goto_4
    if-ltz v10, :cond_8

    .line 397
    and-int/lit8 v12, v10, 0x1f

    .line 398
    .local v12, "rest":I
    ushr-int/lit8 v13, v10, 0x5

    .line 399
    .local v13, "q":I
    shl-int v14, v18, v12

    .line 400
    .local v14, "r":I
    add-int/lit8 v15, v10, -0x1

    .local v15, "j":I
    :goto_5
    if-ltz v15, :cond_7

    .line 402
    iget-object v0, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v15

    aget v0, v0, v13

    and-int/2addr v0, v14

    .line 403
    .local v0, "b":I
    if-eqz v0, :cond_6

    .line 405
    move/from16 v16, v13

    move/from16 v17, v0

    move/from16 v0, v16

    .local v0, "k":I
    .local v17, "b":I
    :goto_6
    if-ge v0, v4, :cond_5

    .line 407
    move/from16 v16, v0

    .end local v0    # "k":I
    .local v16, "k":I
    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v15

    aget v19, v0, v16

    move-object/from16 v20, v0

    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v10

    aget v0, v0, v16

    xor-int v0, v19, v0

    aput v0, v20, v16

    .line 405
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "k":I
    .restart local v0    # "k":I
    goto :goto_6

    :cond_5
    move/from16 v16, v0

    .end local v0    # "k":I
    .restart local v16    # "k":I
    goto :goto_7

    .line 403
    .end local v16    # "k":I
    .end local v17    # "b":I
    .local v0, "b":I
    :cond_6
    move/from16 v17, v0

    .line 400
    .end local v0    # "b":I
    :goto_7
    add-int/lit8 v15, v15, -0x1

    move/from16 v0, p0

    goto :goto_5

    .line 395
    .end local v12    # "rest":I
    .end local v13    # "q":I
    .end local v14    # "r":I
    .end local v15    # "j":I
    :cond_7
    add-int/lit8 v10, v10, -0x1

    move/from16 v0, p0

    goto :goto_4

    .line 414
    .end local v10    # "i":I
    :cond_8
    invoke-virtual {v11, v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    aput-object v0, v3, v18

    .line 416
    return-object v3
.end method

.method private static swapRows([[III)V
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

    .line 1305
    aget-object v0, p0, p1

    .line 1306
    .local v0, "tmp":[I
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 1307
    aput-object v0, p0, p2

    .line 1308
    return-void
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .locals 11

    .line 734
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    const-string v2, "Matrix is not invertible."

    if-ne v0, v1, :cond_9

    .line 740
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

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

    .line 741
    .local v0, "tmpMatrix":[[I
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 743
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v4

    invoke-static {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v6

    aput-object v6, v0, v4

    .line 741
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 747
    .end local v4    # "i":I
    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    new-array v3, v3, [I

    aput v6, v3, v5

    aput v4, v3, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 748
    .local v3, "invMatrix":[[I
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v4, v5

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 750
    shr-int/lit8 v6, v4, 0x5

    .line 751
    .local v6, "q":I
    and-int/lit8 v7, v4, 0x1f

    .line 752
    .local v7, "r":I
    aget-object v8, v3, v4

    shl-int v9, v5, v7

    aput v9, v8, v6

    .line 748
    .end local v6    # "q":I
    .end local v7    # "r":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 757
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v4, v6, :cond_8

    .line 760
    shr-int/lit8 v6, v4, 0x5

    .line 761
    .restart local v6    # "q":I
    and-int/lit8 v7, v4, 0x1f

    shl-int v7, v5, v7

    .line 763
    .local v7, "bitMask":I
    aget-object v8, v0, v4

    aget v8, v8, v6

    and-int/2addr v8, v7

    if-nez v8, :cond_5

    .line 765
    const/4 v8, 0x0

    .line 767
    .local v8, "foundNonZero":Z
    add-int/lit8 v9, v4, 0x1

    .local v9, "j":I
    :goto_3
    iget v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v9, v10, :cond_3

    .line 769
    aget-object v10, v0, v9

    aget v10, v10, v6

    and-int/2addr v10, v7

    if-eqz v10, :cond_2

    .line 772
    const/4 v8, 0x1

    .line 773
    invoke-static {v0, v4, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    .line 774
    invoke-static {v3, v4, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    .line 776
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    .line 767
    :cond_2
    add-int/2addr v9, v5

    goto :goto_3

    .line 781
    .end local v9    # "j":I
    :cond_3
    if-eqz v8, :cond_4

    goto :goto_4

    .line 784
    :cond_4
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    .end local v8    # "foundNonZero":Z
    :cond_5
    :goto_4
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v8, v5

    .local v8, "j":I
    :goto_5
    if-ltz v8, :cond_7

    .line 791
    if-eq v8, v4, :cond_6

    aget-object v9, v0, v8

    aget v9, v9, v6

    and-int/2addr v9, v7

    if-eqz v9, :cond_6

    .line 793
    aget-object v9, v0, v4

    aget-object v10, v0, v8

    invoke-static {v9, v10, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    .line 794
    aget-object v9, v3, v4

    aget-object v10, v3, v8

    invoke-static {v9, v10, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    .line 789
    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 757
    .end local v6    # "q":I
    .end local v7    # "bitMask":I
    .end local v8    # "j":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 799
    .end local v4    # "i":I
    :cond_8
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v1

    .line 736
    .end local v0    # "tmpMatrix":[[I
    .end local v3    # "invMatrix":[[I
    :cond_9
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public computeTranspose()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .locals 12

    .line 706
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 707
    .local v0, "result":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v2, :cond_2

    .line 709
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ge v2, v4, :cond_1

    .line 711
    ushr-int/lit8 v4, v2, 0x5

    .line 712
    .local v4, "qs":I
    and-int/lit8 v5, v2, 0x1f

    .line 713
    .local v5, "rs":I
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v1

    aget v6, v6, v4

    ushr-int/2addr v6, v5

    and-int/2addr v6, v3

    .line 714
    .local v6, "b":I
    ushr-int/lit8 v7, v1, 0x5

    .line 715
    .local v7, "qt":I
    and-int/lit8 v8, v1, 0x1f

    .line 716
    .local v8, "rt":I
    if-ne v6, v3, :cond_0

    .line 718
    aget-object v9, v0, v2

    aget v10, v9, v7

    shl-int v11, v3, v8

    or-int/2addr v10, v11

    aput v10, v9, v7

    .line 709
    .end local v4    # "qs":I
    .end local v5    # "rs":I
    .end local v6    # "b":I
    .end local v7    # "qt":I
    .end local v8    # "rt":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 707
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
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

    .line 1203
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1205
    return v1

    .line 1207
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 1209
    .local v0, "otherMatrix":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1216
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v2, v3, :cond_3

    .line 1218
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1220
    return v1

    .line 1216
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1224
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 1213
    :cond_4
    :goto_1
    return v1
.end method

.method public extendLeftCompactForm()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 9

    .line 584
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/2addr v0, v1

    .line 585
    .local v0, "newNumColumns":I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    .line 587
    .local v1, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v2, v4

    .line 588
    .local v2, "ind":I
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 591
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v4

    iget-object v6, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v4

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 593
    iget-object v5, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v4

    shr-int/lit8 v6, v2, 0x5

    aget v7, v5, v6

    and-int/lit8 v8, v2, 0x1f

    shl-int v8, v3, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 588
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 596
    .end local v4    # "i":I
    :cond_0
    return-object v1
.end method

.method public extendRightCompactForm()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 12

    .line 656
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    .line 658
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v1, v1, 0x5

    .line 659
    .local v1, "q":I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v2, v2, 0x1f

    .line 661
    .local v2, "r":I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 664
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    shr-int/lit8 v6, v3, 0x5

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v4, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 669
    if-eqz v2, :cond_2

    .line 671
    move v5, v1

    .line 673
    .local v5, "ind":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v7, v4

    if-ge v6, v7, :cond_0

    .line 676
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v3

    aget v7, v7, v6

    .line 678
    .local v7, "mw":I
    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v3

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "ind":I
    .local v9, "ind":I
    aget v10, v8, v5

    shl-int v11, v7, v2

    or-int/2addr v10, v11

    aput v10, v8, v5

    .line 679
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    aget v8, v5, v9

    rsub-int/lit8 v10, v2, 0x20

    ushr-int v10, v7, v10

    or-int/2addr v8, v10

    aput v8, v5, v9

    .line 673
    .end local v7    # "mw":I
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto :goto_1

    .line 682
    .end local v6    # "j":I
    .end local v9    # "ind":I
    .restart local v5    # "ind":I
    :cond_0
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v3

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v7, v4

    aget v6, v6, v7

    .line 683
    .local v6, "mw":I
    iget-object v7, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v3

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "ind":I
    .local v8, "ind":I
    aget v9, v7, v5

    shl-int v10, v6, v2

    or-int/2addr v9, v10

    aput v9, v7, v5

    .line 684
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v5, :cond_1

    .line 686
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    aget v7, v5, v8

    rsub-int/lit8 v9, v2, 0x20

    ushr-int v9, v6, v9

    or-int/2addr v7, v9

    aput v7, v5, v8

    .line 688
    .end local v6    # "mw":I
    .end local v8    # "ind":I
    :cond_1
    goto :goto_2

    .line 692
    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v3

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 696
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    .line 453
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    .line 454
    .local v0, "n":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int v0, v0, v1

    .line 455
    add-int/lit8 v0, v0, 0x8

    .line 456
    new-array v1, v0, [B

    .line 458
    .local v1, "enc":[B
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    .line 459
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    .line 462
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    ushr-int/lit8 v2, v2, 0x5

    .line 464
    .local v2, "q":I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v3, v3, 0x1f

    .line 466
    .local v3, "r":I
    const/16 v4, 0x8

    .line 467
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v5, v6, :cond_2

    .line 469
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v2, :cond_0

    .line 471
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v5

    aget v7, v7, v6

    invoke-static {v7, v1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    .line 469
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 473
    .end local v6    # "j":I
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_2
    if-ge v6, v3, :cond_1

    .line 475
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "count":I
    .local v7, "count":I
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v5

    aget v8, v8, v2

    ushr-int/2addr v8, v6

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 473
    add-int/lit8 v6, v6, 0x8

    move v4, v7

    goto :goto_2

    .line 467
    .end local v6    # "j":I
    .end local v7    # "count":I
    .restart local v4    # "count":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    .end local v5    # "i":I
    :cond_2
    return-object v1
.end method

.method public getHammingWeight()D
    .locals 15

    .line 490
    const-wide/16 v0, 0x0

    .line 491
    .local v0, "counter":D
    const-wide/16 v2, 0x0

    .line 492
    .local v2, "elementCounter":D
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v4, v4, 0x1f

    .line 494
    .local v4, "rest":I
    if-nez v4, :cond_0

    .line 496
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .local v5, "d":I
    goto :goto_0

    .line 500
    .end local v5    # "d":I
    :cond_0
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v5, -0x1

    .line 503
    .restart local v5    # "d":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v6, v7, :cond_4

    .line 506
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-ge v7, v5, :cond_2

    .line 508
    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v6

    aget v10, v10, v7

    .line 509
    .local v10, "a":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_3
    const/16 v12, 0x20

    if-ge v11, v12, :cond_1

    .line 511
    ushr-int v12, v10, v11

    and-int/lit8 v12, v12, 0x1

    .line 512
    .local v12, "b":I
    int-to-double v13, v12

    add-double/2addr v0, v13

    .line 513
    add-double/2addr v2, v8

    .line 509
    .end local v12    # "b":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 506
    .end local v10    # "a":I
    .end local v11    # "k":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 516
    .end local v7    # "j":I
    :cond_2
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v6

    iget v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v10, v10, -0x1

    aget v7, v7, v10

    .line 517
    .local v7, "a":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_4
    if-ge v10, v4, :cond_3

    .line 519
    ushr-int v11, v7, v10

    and-int/lit8 v11, v11, 0x1

    .line 520
    .local v11, "b":I
    int-to-double v12, v11

    add-double/2addr v0, v12

    .line 521
    add-double/2addr v2, v8

    .line 517
    .end local v11    # "b":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 503
    .end local v7    # "a":I
    .end local v10    # "k":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 525
    .end local v6    # "i":I
    :cond_4
    div-double v6, v0, v2

    return-wide v6
.end method

.method public getIntArray()[[I
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    return-object v0
.end method

.method public getLeftSubMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 8

    .line 556
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-le v0, v1, :cond_2

    .line 560
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    .line 561
    .local v0, "length":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v4, 0x0

    aput v1, v2, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 562
    .local v1, "result":[[I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v2, v2, 0x1f

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    .line 563
    .local v2, "bitMask":I
    if-nez v2, :cond_0

    .line 565
    const/4 v2, -0x1

    .line 567
    :cond_0
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 569
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v5

    aget-object v6, v1, v5

    invoke-static {v3, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    aget-object v3, v1, v5

    add-int/lit8 v6, v0, -0x1

    aget v7, v3, v6

    and-int/2addr v7, v2

    aput v7, v3, v6

    .line 567
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 572
    .end local v5    # "i":I
    :cond_1
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v3

    .line 558
    .end local v0    # "length":I
    .end local v1    # "result":[[I
    .end local v2    # "bitMask":I
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    .line 432
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    return v0
.end method

.method public getRightSubMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 10

    .line 607
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-le v0, v1, :cond_4

    .line 612
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v0, v0, 0x5

    .line 613
    .local v0, "q":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v1, v1, 0x1f

    .line 615
    .local v1, "r":I
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    .line 617
    .local v2, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 620
    if-eqz v1, :cond_2

    .line 622
    move v4, v0

    .line 624
    .local v4, "ind":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget v6, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 627
    iget-object v6, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v3

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v3

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "ind":I
    .local v8, "ind":I
    aget v4, v7, v4

    ushr-int/2addr v4, v1

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v3

    aget v7, v7, v8

    rsub-int/lit8 v9, v1, 0x20

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    aput v4, v6, v5

    .line 624
    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_1

    .line 631
    .end local v5    # "j":I
    .end local v8    # "ind":I
    .restart local v4    # "ind":I
    :cond_0
    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    iget v6, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v3

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "ind":I
    .restart local v8    # "ind":I
    aget v4, v7, v4

    ushr-int/2addr v4, v1

    aput v4, v5, v6

    .line 632
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v4, :cond_1

    .line 634
    iget-object v4, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v3

    iget v5, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v3

    aget v7, v7, v8

    rsub-int/lit8 v9, v1, 0x20

    shl-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 636
    .end local v8    # "ind":I
    :cond_1
    goto :goto_2

    .line 640
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v3

    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    const/4 v6, 0x0

    iget v7, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 644
    .end local v3    # "i":I
    :cond_3
    return-object v2

    .line 609
    .end local v0    # "q":I
    .end local v1    # "r":I
    .end local v2    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRow(I)[I
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

    .line 443
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1232
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/2addr v0, v1

    .line 1233
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v2, :cond_0

    .line 1235
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v2, v3

    .line 1233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1237
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public isZero()Z
    .locals 3

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v1, :cond_2

    .line 537
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v1, v2, :cond_1

    .line 539
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 541
    const/4 v2, 0x0

    return v2

    .line 537
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 535
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .locals 5
    .param p1, "p"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 811
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v0

    .line 812
    .local v0, "pVec":[I
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v1, v2, :cond_1

    .line 817
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    new-array v1, v1, [[I

    .line 819
    .local v1, "result":[[I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 821
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v4, v0, v2

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v3

    aput-object v3, v1, v2

    .line 819
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 824
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v2

    .line 814
    .end local v1    # "result":[[I
    :cond_1
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "length mismatch"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .locals 11
    .param p1, "vec"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    .line 836
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_6

    .line 841
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v1, :cond_5

    .line 846
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v0

    .line 847
    .local v0, "v":[I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    new-array v1, v1, [I

    .line 849
    .local v1, "res":[I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v2, v2, 0x5

    .line 850
    .local v2, "q":I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 853
    .local v3, "r":I
    const/4 v4, 0x0

    .line 854
    .local v4, "row":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 856
    const/4 v6, 0x1

    .line 859
    .local v6, "bitMask":I
    :cond_0
    aget v7, v0, v5

    and-int/2addr v7, v6

    .line 860
    .local v7, "b":I
    if-eqz v7, :cond_1

    .line 862
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v9, :cond_1

    .line 864
    aget v9, v1, v8

    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v4

    aget v10, v10, v8

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 862
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 867
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 868
    shl-int/lit8 v6, v6, 0x1

    .line 870
    .end local v7    # "b":I
    if-nez v6, :cond_0

    .line 854
    .end local v6    # "bitMask":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 874
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x1

    .line 875
    .local v5, "bitMask":I
    :goto_2
    if-eq v5, v3, :cond_4

    .line 877
    aget v6, v0, v2

    and-int/2addr v6, v5

    .line 878
    .local v6, "b":I
    if-eqz v6, :cond_3

    .line 880
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v7, v8, :cond_3

    .line 882
    aget v8, v1, v7

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v4

    aget v9, v9, v7

    xor-int/2addr v8, v9

    aput v8, v1, v7

    .line 880
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 885
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 886
    shl-int/lit8 v5, v5, 0x1

    .line 887
    .end local v6    # "b":I
    goto :goto_2

    .line 889
    :cond_4
    new-instance v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v6, v1, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v6

    .line 843
    .end local v0    # "v":[I
    .end local v1    # "res":[I
    .end local v2    # "q":I
    .end local v3    # "r":I
    .end local v4    # "row":I
    .end local v5    # "bitMask":I
    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public leftMultiplyLeftCompactForm(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .locals 12
    .param p1, "vec"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    .line 902
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_8

    .line 907
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v1, :cond_7

    .line 912
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v0

    .line 913
    .local v0, "v":[I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    new-array v1, v1, [I

    .line 916
    .local v1, "res":[I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    ushr-int/lit8 v2, v2, 0x5

    .line 917
    .local v2, "words":I
    const/4 v3, 0x0

    .line 918
    .local v3, "row":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    .line 920
    const/4 v6, 0x1

    .line 923
    .local v6, "bitMask":I
    :cond_0
    aget v7, v0, v4

    and-int/2addr v7, v6

    .line 924
    .local v7, "b":I
    if-eqz v7, :cond_2

    .line 927
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v9, :cond_1

    .line 929
    aget v9, v1, v8

    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v3

    aget v10, v10, v8

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 927
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 932
    .end local v8    # "j":I
    :cond_1
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v8, v3

    ushr-int/lit8 v8, v8, 0x5

    .line 933
    .local v8, "q":I
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v9, v3

    and-int/lit8 v9, v9, 0x1f

    .line 934
    .local v9, "r":I
    aget v10, v1, v8

    shl-int v11, v5, v9

    or-int/2addr v10, v11

    aput v10, v1, v8

    .line 936
    .end local v8    # "q":I
    .end local v9    # "r":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 937
    shl-int/lit8 v6, v6, 0x1

    .line 939
    .end local v7    # "b":I
    if-nez v6, :cond_0

    .line 918
    .end local v6    # "bitMask":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 943
    .end local v4    # "i":I
    :cond_3
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v4, v4, 0x1f

    shl-int v4, v5, v4

    .line 944
    .local v4, "rem":I
    const/4 v6, 0x1

    .line 945
    .restart local v6    # "bitMask":I
    :goto_2
    if-eq v6, v4, :cond_6

    .line 947
    aget v7, v0, v2

    and-int/2addr v7, v6

    .line 948
    .restart local v7    # "b":I
    if-eqz v7, :cond_5

    .line 951
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v9, :cond_4

    .line 953
    aget v9, v1, v8

    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v3

    aget v10, v10, v8

    xor-int/2addr v9, v10

    aput v9, v1, v8

    .line 951
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 956
    .end local v8    # "j":I
    :cond_4
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v8, v3

    ushr-int/lit8 v8, v8, 0x5

    .line 957
    .local v8, "q":I
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v9, v3

    and-int/lit8 v9, v9, 0x1f

    .line 958
    .restart local v9    # "r":I
    aget v10, v1, v8

    shl-int v11, v5, v9

    or-int/2addr v10, v11

    aput v10, v1, v8

    .line 960
    .end local v8    # "q":I
    .end local v9    # "r":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 961
    shl-int/lit8 v6, v6, 0x1

    .line 962
    .end local v7    # "b":I
    goto :goto_2

    .line 964
    :cond_6
    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v7, v8

    invoke-direct {v5, v1, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v5

    .line 909
    .end local v0    # "v":[I
    .end local v1    # "res":[I
    .end local v2    # "words":I
    .end local v3    # "row":I
    .end local v4    # "rem":I
    .end local v6    # "bitMask":I
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .locals 17
    .param p1, "mat"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    .line 975
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    if-eqz v2, :cond_9

    .line 980
    iget v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v2, v3, :cond_8

    .line 985
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 986
    .local v2, "a":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v5, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    .line 989
    .local v3, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v4, v4, 0x1f

    .line 990
    .local v4, "rest":I
    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 992
    iget v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .local v6, "d":I
    goto :goto_0

    .line 996
    .end local v6    # "d":I
    :cond_0
    iget v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v6, v5

    .line 998
    .restart local v6    # "d":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v7, v8, :cond_7

    .line 1000
    const/4 v8, 0x0

    .line 1001
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v6, :cond_4

    .line 1003
    iget-object v10, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v7

    aget v10, v10, v9

    .line 1004
    .local v10, "e":I
    const/4 v11, 0x0

    .local v11, "h":I
    :goto_3
    const/16 v12, 0x20

    if-ge v11, v12, :cond_3

    .line 1006
    shl-int v12, v5, v11

    and-int/2addr v12, v10

    .line 1007
    .local v12, "b":I
    if-eqz v12, :cond_2

    .line 1009
    const/4 v13, 0x0

    .local v13, "g":I
    :goto_4
    iget v14, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v13, v14, :cond_1

    .line 1011
    iget-object v14, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v14, v14, v7

    aget v15, v14, v13

    const/16 v16, 0x1

    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v8

    aget v5, v5, v13

    xor-int/2addr v5, v15

    aput v5, v14, v13

    .line 1009
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    goto :goto_4

    :cond_1
    const/16 v16, 0x1

    goto :goto_5

    .line 1007
    .end local v13    # "g":I
    :cond_2
    const/16 v16, 0x1

    .line 1014
    :goto_5
    nop

    .end local v12    # "b":I
    add-int/lit8 v8, v8, 0x1

    .line 1004
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x1

    .line 1001
    .end local v10    # "e":I
    .end local v11    # "h":I
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x1

    .line 1017
    .end local v9    # "j":I
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v7

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v9, v9, -0x1

    aget v5, v5, v9

    .line 1018
    .local v5, "e":I
    const/4 v9, 0x0

    .local v9, "h":I
    :goto_6
    if-ge v9, v4, :cond_6

    .line 1020
    shl-int v10, v16, v9

    and-int/2addr v10, v5

    .line 1021
    .local v10, "b":I
    if-eqz v10, :cond_5

    .line 1023
    const/4 v11, 0x0

    .local v11, "g":I
    :goto_7
    iget v12, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v11, v12, :cond_5

    .line 1025
    iget-object v12, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v12, v12, v7

    aget v13, v12, v11

    iget-object v14, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v14, v14, v8

    aget v14, v14, v11

    xor-int/2addr v13, v14

    aput v13, v12, v11

    .line 1023
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1028
    .end local v11    # "g":I
    :cond_5
    nop

    .end local v10    # "b":I
    add-int/lit8 v8, v8, 0x1

    .line 1018
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 998
    .end local v5    # "e":I
    .end local v8    # "count":I
    .end local v9    # "h":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_1

    .line 1033
    .end local v7    # "i":I
    :cond_7
    return-object v3

    .line 982
    .end local v2    # "a":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .end local v3    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .end local v4    # "rest":I
    .end local v6    # "d":I
    :cond_8
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "length mismatch"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 977
    :cond_9
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "matrix is not defined over GF(2)"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
    .locals 11
    .param p1, "p"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1046
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v0

    .line 1047
    .local v0, "pVec":[I
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v1, v2, :cond_2

    .line 1052
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(II)V

    .line 1054
    .local v1, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1056
    ushr-int/lit8 v3, v2, 0x5

    .line 1057
    .local v3, "q":I
    and-int/lit8 v4, v2, 0x1f

    .line 1058
    .local v4, "r":I
    aget v5, v0, v2

    ushr-int/lit8 v5, v5, 0x5

    .line 1059
    .local v5, "pq":I
    aget v6, v0, v2

    and-int/lit8 v6, v6, 0x1f

    .line 1060
    .local v6, "pr":I
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_0

    .line 1062
    iget-object v8, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v7

    aget v9, v8, v3

    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v7

    aget v10, v10, v5

    ushr-int/2addr v10, v6

    and-int/lit8 v10, v10, 0x1

    shl-int/2addr v10, v4

    or-int/2addr v9, v10

    aput v9, v8, v3

    .line 1060
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1054
    .end local v3    # "q":I
    .end local v4    # "r":I
    .end local v5    # "pq":I
    .end local v6    # "pr":I
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1066
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 1049
    .end local v1    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    :cond_2
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "length mismatch"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .locals 9
    .param p1, "vec"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    .line 1077
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_5

    .line 1082
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v1, :cond_4

    .line 1087
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v0

    .line 1088
    .local v0, "v":[I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    new-array v1, v1, [I

    .line 1090
    .local v1, "res":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v2, v3, :cond_3

    .line 1093
    const/4 v3, 0x0

    .line 1094
    .local v3, "help":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v4, v5, :cond_0

    .line 1096
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v2

    aget v5, v5, v4

    aget v6, v0, v4

    and-int/2addr v5, v6

    xor-int/2addr v3, v5

    .line 1094
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1099
    .end local v4    # "j":I
    :cond_0
    const/4 v4, 0x0

    .line 1100
    .local v4, "bitValue":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    .line 1102
    ushr-int v6, v3, v5

    and-int/2addr v6, v7

    xor-int/2addr v4, v6

    .line 1100
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1105
    .end local v5    # "j":I
    :cond_1
    if-ne v4, v7, :cond_2

    .line 1107
    ushr-int/lit8 v5, v2, 0x5

    aget v6, v1, v5

    and-int/lit8 v8, v2, 0x1f

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v1, v5

    .line 1090
    .end local v3    # "help":I
    .end local v4    # "bitValue":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1111
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v2

    .line 1084
    .end local v0    # "v":[I
    .end local v1    # "res":[I
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rightMultiplyRightCompactForm(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .locals 13
    .param p1, "vec"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    .line 1124
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_8

    .line 1129
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;->length:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_7

    .line 1134
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v0

    .line 1135
    .local v0, "v":[I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    new-array v1, v1, [I

    .line 1137
    .local v1, "res":[I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v2, v2, 0x5

    .line 1138
    .local v2, "q":I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v3, v3, 0x1f

    .line 1141
    .local v3, "r":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v4, v5, :cond_6

    .line 1144
    shr-int/lit8 v5, v4, 0x5

    aget v5, v0, v5

    and-int/lit8 v6, v4, 0x1f

    ushr-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/2addr v5, v6

    .line 1147
    .local v5, "help":I
    move v7, v2

    .line 1149
    .local v7, "vInd":I
    if-eqz v3, :cond_2

    .line 1151
    const/4 v8, 0x0

    .line 1153
    .local v8, "vw":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    iget v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v10, v6

    if-ge v9, v10, :cond_0

    .line 1156
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "vInd":I
    .local v10, "vInd":I
    aget v7, v0, v7

    ushr-int/2addr v7, v3

    aget v11, v0, v10

    rsub-int/lit8 v12, v3, 0x20

    shl-int/2addr v11, v12

    or-int v8, v7, v11

    .line 1157
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v4

    aget v7, v7, v9

    and-int/2addr v7, v8

    xor-int/2addr v5, v7

    .line 1153
    add-int/lit8 v9, v9, 0x1

    move v7, v10

    goto :goto_1

    .line 1160
    .end local v9    # "j":I
    .end local v10    # "vInd":I
    .restart local v7    # "vInd":I
    :cond_0
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "vInd":I
    .local v9, "vInd":I
    aget v7, v0, v7

    ushr-int/2addr v7, v3

    .line 1161
    .end local v8    # "vw":I
    .local v7, "vw":I
    array-length v8, v0

    if-ge v9, v8, :cond_1

    .line 1163
    aget v8, v0, v9

    rsub-int/lit8 v10, v3, 0x20

    shl-int/2addr v8, v10

    or-int/2addr v7, v8

    .line 1165
    :cond_1
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v4

    iget v10, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v10, v6

    aget v8, v8, v10

    and-int/2addr v8, v7

    xor-int/2addr v5, v8

    .line 1166
    .end local v7    # "vw":I
    goto :goto_3

    .line 1170
    .end local v9    # "vInd":I
    .local v7, "vInd":I
    :cond_2
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v9, :cond_3

    .line 1172
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v4

    aget v9, v9, v8

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "vInd":I
    .restart local v10    # "vInd":I
    aget v7, v0, v7

    and-int/2addr v7, v9

    xor-int/2addr v5, v7

    .line 1170
    add-int/lit8 v8, v8, 0x1

    move v7, v10

    goto :goto_2

    .end local v10    # "vInd":I
    .restart local v7    # "vInd":I
    :cond_3
    move v9, v7

    .line 1177
    .end local v7    # "vInd":I
    .end local v8    # "j":I
    .restart local v9    # "vInd":I
    :goto_3
    const/4 v7, 0x0

    .line 1178
    .local v7, "bitValue":I
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    const/16 v10, 0x20

    if-ge v8, v10, :cond_4

    .line 1180
    and-int/lit8 v10, v5, 0x1

    xor-int/2addr v7, v10

    .line 1181
    ushr-int/lit8 v5, v5, 0x1

    .line 1178
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1185
    .end local v8    # "j":I
    :cond_4
    if-ne v7, v6, :cond_5

    .line 1187
    shr-int/lit8 v8, v4, 0x5

    aget v10, v1, v8

    and-int/lit8 v11, v4, 0x1f

    shl-int/2addr v6, v11

    or-int/2addr v6, v10

    aput v6, v1, v8

    .line 1141
    .end local v5    # "help":I
    .end local v7    # "bitValue":I
    .end local v9    # "vInd":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1191
    .end local v4    # "i":I
    :cond_6
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v4, v1, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v4

    .line 1131
    .end local v0    # "v":[I
    .end local v1    # "res":[I
    .end local v2    # "q":I
    .end local v3    # "r":I
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1245
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v0, v0, 0x1f

    .line 1247
    .local v0, "rest":I
    if-nez v0, :cond_0

    .line 1249
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    .local v1, "d":I
    goto :goto_0

    .line 1253
    .end local v1    # "d":I
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    .line 1256
    .restart local v1    # "d":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1257
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v3, v4, :cond_6

    .line 1259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1260
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    const/16 v5, 0x30

    const/16 v6, 0x31

    if-ge v4, v1, :cond_3

    .line 1262
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v3

    aget v7, v7, v4

    .line 1263
    .local v7, "a":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3
    const/16 v9, 0x20

    if-ge v8, v9, :cond_2

    .line 1265
    ushr-int v9, v7, v8

    and-int/lit8 v9, v9, 0x1

    .line 1266
    .local v9, "b":I
    if-nez v9, :cond_1

    .line 1268
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1272
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1263
    .end local v9    # "b":I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1275
    .end local v8    # "k":I
    :cond_2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1260
    .end local v7    # "a":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1277
    .end local v4    # "j":I
    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v3

    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v7, v7, -0x1

    aget v4, v4, v7

    .line 1278
    .local v4, "a":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_5
    if-ge v7, v0, :cond_5

    .line 1280
    ushr-int v8, v4, v7

    and-int/lit8 v8, v8, 0x1

    .line 1281
    .local v8, "b":I
    if-nez v8, :cond_4

    .line 1283
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1287
    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1278
    .end local v8    # "b":I
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1290
    .end local v7    # "k":I
    :cond_5
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1257
    .end local v4    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1293
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
