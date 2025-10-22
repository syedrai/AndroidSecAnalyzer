.class final Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;
.super Ljava/lang/Object;
.source "Conversions.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 16
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static decode(IILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)[B
    .locals 11
    .param p0, "n"    # I
    .param p1, "t"    # I
    .param p2, "vec"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "t",
            "vec"
        }
    .end annotation

    .line 93
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getLength()I

    move-result v0

    if-ne v0, p0, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getHammingWeight()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 98
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v0

    .line 100
    .local v0, "vecArray":[I
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    .local v1, "bc":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 102
    .local v2, "d":Ljava/math/BigInteger;
    move v3, p0

    .line 103
    .local v3, "nn":I
    move v4, p1

    .line 104
    .local v4, "tt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p0, :cond_2

    .line 106
    sub-int v6, v3, v4

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    int-to-long v7, v3

    .line 107
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 106
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 108
    add-int/lit8 v3, v3, -0x1

    .line 110
    shr-int/lit8 v6, v5, 0x5

    .line 111
    .local v6, "q":I
    aget v7, v0, v6

    and-int/lit8 v8, v5, 0x1f

    const/4 v9, 0x1

    shl-int v8, v9, v8

    and-int/2addr v7, v8

    .line 112
    .local v7, "e":I
    if-eqz v7, :cond_1

    .line 114
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 115
    add-int/lit8 v4, v4, -0x1

    .line 116
    if-ne v3, v4, :cond_0

    .line 118
    sget-object v1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    goto :goto_1

    .line 122
    :cond_0
    add-int/lit8 v8, v4, 0x1

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sub-int v9, v3, v4

    int-to-long v9, v9

    .line 123
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 122
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 104
    .end local v6    # "q":I
    .end local v7    # "e":I
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    .end local v5    # "i":I
    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/BigIntUtils;->toMinimalByteArray(Ljava/math/BigInteger;)[B

    move-result-object v5

    return-object v5

    .line 95
    .end local v0    # "vecArray":[I
    .end local v1    # "bc":Ljava/math/BigInteger;
    .end local v2    # "d":Ljava/math/BigInteger;
    .end local v3    # "nn":I
    .end local v4    # "tt":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "vector has wrong length or hamming weight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(II[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 9
    .param p0, "n"    # I
    .param p1, "t"    # I
    .param p2, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "n",
            "t",
            "m"
        }
    .end annotation

    .line 37
    if-lt p0, p1, :cond_4

    .line 43
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v0

    .line 45
    .local v0, "c":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 47
    .local v1, "i":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_3

    .line 52
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-direct {v2, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 54
    .local v2, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    move v3, p0

    .line 55
    .local v3, "nn":I
    move v4, p1

    .line 56
    .local v4, "tt":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, p0, :cond_2

    .line 58
    sub-int v6, v3, v4

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    int-to-long v7, v3

    .line 59
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 58
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 60
    add-int/lit8 v3, v3, -0x1

    .line 61
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gtz v6, :cond_1

    .line 63
    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->setBit(I)V

    .line 64
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 65
    add-int/lit8 v4, v4, -0x1

    .line 66
    if-ne v3, v4, :cond_0

    .line 68
    sget-object v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    goto :goto_1

    .line 72
    :cond_0
    add-int/lit8 v6, v4, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sub-int v7, v3, v4

    int-to-long v7, v7

    .line 73
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    .end local v5    # "j":I
    :cond_2
    return-object v2

    .line 49
    .end local v2    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v3    # "nn":I
    .end local v4    # "tt":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Encoded number too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    .end local v0    # "c":Ljava/math/BigInteger;
    .end local v1    # "i":Ljava/math/BigInteger;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < t"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signConversion(II[B)[B
    .locals 19
    .param p0, "n"    # I
    .param p1, "t"    # I
    .param p2, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "t",
            "m"
        }
    .end annotation

    .line 145
    move/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    if-lt v0, v2, :cond_9

    .line 150
    invoke-static/range {p0 .. p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v3

    .line 152
    .local v3, "bc":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 154
    .local v4, "s":I
    shr-int/lit8 v6, v4, 0x3

    .line 155
    .local v6, "sq":I
    and-int/lit8 v7, v4, 0x7

    .line 156
    .local v7, "sr":I
    if-nez v7, :cond_0

    .line 158
    add-int/lit8 v6, v6, -0x1

    .line 159
    const/16 v7, 0x8

    .line 163
    :cond_0
    shr-int/lit8 v8, v0, 0x3

    .line 164
    .local v8, "nq":I
    and-int/lit8 v9, v0, 0x7

    .line 165
    .local v9, "nr":I
    if-nez v9, :cond_1

    .line 167
    add-int/lit8 v8, v8, -0x1

    .line 168
    const/16 v9, 0x8

    .line 171
    :cond_1
    add-int/lit8 v10, v8, 0x1

    new-array v10, v10, [B

    .line 172
    .local v10, "data":[B
    array-length v11, v1

    array-length v12, v10

    const/4 v13, 0x0

    if-ge v11, v12, :cond_3

    .line 174
    array-length v11, v1

    invoke-static {v1, v13, v10, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    array-length v11, v1

    .local v11, "i":I
    :goto_0
    array-length v12, v10

    if-ge v11, v12, :cond_2

    .line 177
    aput-byte v13, v10, v11

    .line 175
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .end local v11    # "i":I
    :cond_2
    goto :goto_1

    .line 182
    :cond_3
    invoke-static {v1, v13, v10, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    shl-int v11, v5, v9

    sub-int/2addr v11, v5

    .line 184
    .local v11, "h":I
    aget-byte v12, v1, v8

    and-int/2addr v12, v11

    int-to-byte v12, v12

    aput-byte v12, v10, v8

    .line 187
    .end local v11    # "h":I
    :goto_1
    sget-object v11, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 188
    .local v11, "d":Ljava/math/BigInteger;
    move/from16 v12, p0

    .line 189
    .local v12, "nn":I
    move/from16 v14, p1

    .line 190
    .local v14, "tt":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v0, :cond_6

    .line 192
    const/16 v16, 0x1

    new-instance v5, Ljava/math/BigInteger;

    sub-int v17, v12, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v13, Ljava/math/BigInteger;

    .line 193
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 194
    .end local v3    # "bc":Ljava/math/BigInteger;
    .local v0, "bc":Ljava/math/BigInteger;
    add-int/lit8 v12, v12, -0x1

    .line 196
    ushr-int/lit8 v3, v15, 0x3

    .line 197
    .local v3, "q":I
    and-int/lit8 v5, v15, 0x7

    .line 198
    .local v5, "r":I
    shl-int v5, v16, v5

    .line 199
    aget-byte v13, v10, v3

    and-int/2addr v13, v5

    int-to-byte v13, v13

    .line 200
    .local v13, "e":B
    if-eqz v13, :cond_5

    .line 202
    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 203
    add-int/lit8 v14, v14, -0x1

    .line 204
    if-ne v12, v14, :cond_4

    .line 206
    sget-object v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    move-object v3, v0

    goto :goto_3

    .line 210
    :cond_4
    new-instance v1, Ljava/math/BigInteger;

    add-int/lit8 v17, v14, 0x1

    .line 211
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    sub-int v17, v12, v14

    .line 212
    move-object/from16 v18, v0

    .end local v0    # "bc":Ljava/math/BigInteger;
    .local v18, "bc":Ljava/math/BigInteger;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v3, v0

    .end local v18    # "bc":Ljava/math/BigInteger;
    .restart local v0    # "bc":Ljava/math/BigInteger;
    goto :goto_3

    .line 200
    :cond_5
    move-object/from16 v18, v0

    .end local v0    # "bc":Ljava/math/BigInteger;
    .restart local v18    # "bc":Ljava/math/BigInteger;
    move-object/from16 v3, v18

    .line 190
    .end local v5    # "r":I
    .end local v13    # "e":B
    .end local v18    # "bc":Ljava/math/BigInteger;
    .local v3, "bc":Ljava/math/BigInteger;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v1, p2

    const/4 v5, 0x1

    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    const/16 v16, 0x1

    .line 217
    .end local v15    # "i":I
    add-int/lit8 v0, v6, 0x1

    new-array v0, v0, [B

    .line 218
    .local v0, "result":[B
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 219
    .local v1, "help":[B
    array-length v2, v1

    array-length v5, v0

    if-ge v2, v5, :cond_8

    .line 221
    array-length v2, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    array-length v2, v1

    .local v2, "i":I
    :goto_4
    array-length v13, v0

    if-ge v2, v13, :cond_7

    .line 224
    aput-byte v5, v0, v2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2    # "i":I
    :cond_7
    goto :goto_5

    .line 229
    :cond_8
    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    shl-int v2, v16, v7

    add-int/lit8 v2, v2, -0x1

    aget-byte v5, v1, v6

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 233
    :goto_5
    return-object v0

    .line 147
    .end local v0    # "result":[B
    .end local v1    # "help":[B
    .end local v3    # "bc":Ljava/math/BigInteger;
    .end local v4    # "s":I
    .end local v6    # "sq":I
    .end local v7    # "sr":I
    .end local v8    # "nq":I
    .end local v9    # "nr":I
    .end local v10    # "data":[B
    .end local v11    # "d":Ljava/math/BigInteger;
    .end local v12    # "nn":I
    .end local v14    # "tt":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < t"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
