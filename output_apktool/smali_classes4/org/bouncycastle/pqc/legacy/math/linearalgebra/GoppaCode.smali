.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode;
.super Ljava/lang/Object;
.source "GoppaCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;,
        Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MatrixSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static computeSystematicForm(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;
    .locals 9
    .param p0, "h"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .param p1, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "h",
            "sr"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v0

    .line 218
    .local v0, "n":I
    const/4 v1, 0x0

    .line 220
    .local v1, "s":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    const/4 v2, 0x0

    .line 224
    .local v2, "found":Z
    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    invoke-direct {v3, v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    .line 225
    .local v3, "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 226
    .local v4, "hp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getLeftSubMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v5

    .line 229
    .local v5, "sInv":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    const/4 v2, 0x1

    .line 230
    :try_start_0
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->computeInverse()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "s":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .local v6, "s":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    move-object v1, v6

    goto :goto_0

    .line 232
    .end local v6    # "s":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .restart local v1    # "s":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    :catch_0
    move-exception v6

    .line 234
    .local v6, "ae":Ljava/lang/ArithmeticException;
    const/4 v2, 0x0

    .line 237
    .end local v6    # "ae":Ljava/lang/ArithmeticException;
    :goto_0
    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    .line 240
    .local v6, "shp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->getRightSubMatrix()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    move-result-object v7

    .line 242
    .local v7, "m":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;

    invoke-direct {v8, v5, v7, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GoppaCode$MaMaPe;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)V

    return-object v8
.end method

.method public static createCanonicalCheckMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
    .locals 19
    .param p0, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p1, "gp"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "gp"
        }
    .end annotation

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    .line 140
    .local v2, "m":I
    const/4 v3, 0x1

    shl-int v4, v3, v2

    .line 141
    .local v4, "n":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v5

    .line 145
    .local v5, "t":I
    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v4, v7, v3

    const/4 v8, 0x0

    aput v5, v7, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 148
    .local v7, "hArray":[[I
    new-array v9, v6, [I

    aput v4, v9, v3

    aput v5, v9, v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    .line 149
    .local v9, "yz":[[I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    if-ge v10, v4, :cond_0

    .line 152
    aget-object v11, v9, v8

    invoke-virtual {v1, v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result v12

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v12

    aput v12, v11, v10

    .line 149
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 155
    .end local v10    # "j":I
    :cond_0
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    if-ge v10, v5, :cond_2

    .line 157
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v4, :cond_1

    .line 160
    aget-object v12, v9, v10

    add-int/lit8 v13, v10, -0x1

    aget-object v13, v9, v13

    aget v13, v13, v11

    invoke-virtual {v0, v13, v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v13

    aput v13, v12, v11

    .line 157
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 155
    .end local v11    # "j":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 165
    .end local v10    # "i":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    if-ge v10, v5, :cond_5

    .line 167
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    if-ge v11, v4, :cond_4

    .line 169
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_5
    if-gt v12, v10, :cond_3

    .line 171
    aget-object v13, v7, v10

    aget-object v14, v7, v10

    aget v14, v14, v11

    aget-object v15, v9, v12

    aget v15, v15, v11

    add-int v16, v5, v12

    const/16 v17, 0x1

    sub-int v3, v16, v10

    .line 172
    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v3

    .line 171
    invoke-virtual {v0, v15, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->mult(II)I

    move-result v3

    invoke-virtual {v0, v14, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->add(II)I

    move-result v3

    aput v3, v13, v11

    .line 169
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    goto :goto_5

    :cond_3
    const/16 v17, 0x1

    .line 167
    .end local v12    # "k":I
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x1

    .line 165
    .end local v11    # "j":I
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/16 v17, 0x1

    .line 179
    .end local v10    # "i":I
    mul-int v3, v5, v2

    add-int/lit8 v10, v4, 0x1f

    ushr-int/lit8 v10, v10, 0x5

    new-array v6, v6, [I

    aput v10, v6, v17

    aput v3, v6, v8

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 181
    .local v3, "result":[[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    if-ge v6, v4, :cond_9

    .line 183
    ushr-int/lit8 v8, v6, 0x5

    .line 184
    .local v8, "q":I
    and-int/lit8 v10, v6, 0x1f

    shl-int v10, v17, v10

    .line 185
    .local v10, "r":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    if-ge v11, v5, :cond_8

    .line 187
    aget-object v12, v7, v11

    aget v12, v12, v6

    .line 188
    .local v12, "e":I
    const/4 v13, 0x0

    .local v13, "u":I
    :goto_8
    if-ge v13, v2, :cond_7

    .line 190
    ushr-int v14, v12, v13

    and-int/lit8 v14, v14, 0x1

    .line 191
    .local v14, "b":I
    if-eqz v14, :cond_6

    .line 193
    add-int/lit8 v15, v11, 0x1

    mul-int v15, v15, v2

    sub-int/2addr v15, v13

    add-int/lit8 v15, v15, -0x1

    .line 194
    .local v15, "ind":I
    aget-object v16, v3, v15

    aget v18, v16, v8

    xor-int v18, v18, v10

    aput v18, v16, v8

    .line 188
    .end local v14    # "b":I
    .end local v15    # "ind":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 185
    .end local v12    # "e":I
    .end local v13    # "u":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 181
    .end local v8    # "q":I
    .end local v10    # "r":I
    .end local v11    # "i":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 200
    .end local v6    # "j":I
    :cond_9
    new-instance v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v6, v4, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v6
.end method

.method public static syndromeDecode(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 17
    .param p0, "syndVec"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "gp"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .param p3, "sqRootMatrix"    # [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "syndVec",
            "field",
            "gp",
            "sqRootMatrix"
        }
    .end annotation

    .line 260
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 263
    .local v1, "n":I
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 266
    .local v3, "errors":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->isZero()Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    .line 270
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->toExtensionFieldVector(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;)V

    .line 273
    .local v4, "syndrome":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modInverse(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    .line 276
    .local v5, "t":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->addMonomial(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v6

    .line 277
    .local v6, "tau":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modSquareRootMatrix([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v6

    .line 280
    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->modPolynomialToFracton(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v8

    .line 283
    .local v8, "ab":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    const/4 v9, 0x0

    aget-object v10, v8, v9

    aget-object v9, v8, v9

    invoke-virtual {v10, v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v9

    .line 284
    .local v9, "a2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    aget-object v10, v8, v2

    aget-object v11, v8, v2

    invoke-virtual {v10, v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    .line 285
    .local v10, "b2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v2

    .line 286
    .local v2, "xb2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v9, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v11

    .line 289
    .local v11, "a2plusXb2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getHeadCoefficient()I

    move-result v12

    .line 290
    .local v12, "headCoeff":I
    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v14

    .line 291
    .local v14, "invHeadCoeff":I
    invoke-virtual {v11, v14}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v15

    .line 294
    .local v15, "elp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 297
    invoke-virtual {v15, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result v16

    .line 299
    .local v16, "z":I
    if-nez v16, :cond_0

    .line 302
    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->setBit(I)V

    .line 294
    .end local v16    # "z":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    .end local v2    # "xb2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v4    # "syndrome":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v5    # "t":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v6    # "tau":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v8    # "ab":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v9    # "a2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v10    # "b2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v11    # "a2plusXb2":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v12    # "headCoeff":I
    .end local v14    # "invHeadCoeff":I
    .end local v15    # "elp":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;
    :cond_1
    move-object/from16 v13, p1

    move-object/from16 v7, p3

    .line 307
    :cond_2
    return-object v3
.end method
