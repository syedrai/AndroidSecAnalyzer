.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
.super Ljava/lang/Object;
.source "LongPolynomial2.java"


# instance fields
.field private coeffs:[J

.field private numCoeffs:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "N"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "N"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 12
    .param p1, "p"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    .line 23
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "idx":I
    const/4 v1, 0x0

    .local v1, "pIdx":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v1, v2, :cond_3

    .line 27
    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pIdx":I
    .local v3, "pIdx":I
    aget v1, v2, v1

    .line 28
    .local v1, "c0":I
    :goto_1
    if-gez v1, :cond_0

    .line 30
    add-int/lit16 v1, v1, 0x800

    goto :goto_1

    .line 32
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    const-wide/16 v4, 0x0

    if-ge v3, v2, :cond_1

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pIdx":I
    .local v6, "pIdx":I
    aget v2, v2, v3

    int-to-long v2, v2

    move-wide v10, v2

    move v3, v6

    move-wide v6, v10

    goto :goto_2

    .end local v6    # "pIdx":I
    .restart local v3    # "pIdx":I
    :cond_1
    move-wide v6, v4

    .line 33
    .local v6, "c1":J
    :goto_2
    cmp-long v2, v6, v4

    if-gez v2, :cond_2

    .line 35
    const-wide/16 v8, 0x800

    add-long/2addr v6, v8

    goto :goto_2

    .line 37
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    int-to-long v4, v1

    const/16 v8, 0x18

    shl-long v8, v6, v8

    add-long/2addr v4, v8

    aput-wide v4, v2, v0

    .line 38
    nop

    .end local v1    # "c0":I
    .end local v6    # "c1":J
    add-int/lit8 v0, v0, 0x1

    .line 39
    move v1, v3

    goto :goto_0

    .line 40
    .end local v3    # "pIdx":I
    :cond_3
    return-void
.end method

.method private constructor <init>([J)V
    .locals 0
    .param p1, "coeffs"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coeffs"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 45
    return-void
.end method

.method private add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V
    .locals 7
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 179
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 183
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v3, v2, v0

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v2, v0

    add-long/2addr v3, v5

    const-wide v5, 0x7ff0007ffL

    and-long/2addr v3, v5

    aput-wide v3, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .locals 25
    .param p1, "poly2"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly2"
        }
    .end annotation

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 114
    .local v2, "a":[J
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 116
    .local v3, "b":[J
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v4

    .line 117
    .local v4, "n":I
    const/16 v5, 0x20

    if-gt v4, v5, :cond_2

    .line 119
    mul-int/lit8 v5, v4, 0x2

    .line 120
    .local v5, "cn":I
    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    new-array v9, v5, [J

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 121
    .local v8, "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_0
    if-ge v9, v5, :cond_1

    .line 123
    sub-int v10, v9, v4

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .local v10, "i":I
    :goto_1
    add-int/lit8 v11, v4, -0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-gt v10, v11, :cond_0

    .line 125
    sub-int v11, v9, v10

    aget-wide v11, v2, v11

    aget-wide v13, v3, v10

    mul-long v11, v11, v13

    .line 126
    .local v11, "c0":J
    const-wide v13, 0x7ff000000L

    const-wide/16 v15, 0x7ff

    and-long v17, v11, v15

    add-long v17, v17, v13

    and-long v13, v11, v17

    .line 127
    .local v13, "cu":J
    const/16 v17, 0x30

    ushr-long v17, v11, v17

    and-long v15, v17, v15

    .line 129
    .local v15, "co":J
    const-wide v17, 0x7ff0007ffL

    iget-object v6, v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v7, v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v19, v7, v9

    add-long v19, v19, v13

    and-long v19, v19, v17

    aput-wide v19, v6, v9

    .line 130
    iget-object v6, v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int/lit8 v7, v9, 0x1

    iget-object v0, v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int/lit8 v19, v9, 0x1

    aget-wide v19, v0, v19

    add-long v19, v19, v15

    and-long v19, v19, v17

    aput-wide v19, v6, v7

    .line 123
    .end local v11    # "c0":J
    .end local v13    # "cu":J
    .end local v15    # "co":J
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_0
    const-wide v17, 0x7ff0007ffL

    .line 121
    .end local v10    # "i":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    .line 133
    .end local v9    # "k":I
    :cond_1
    return-object v8

    .line 137
    .end local v5    # "cn":I
    .end local v8    # "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    :cond_2
    const-wide v17, 0x7ff0007ffL

    div-int/lit8 v0, v4, 0x2

    .line 139
    .local v0, "n1":I
    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 140
    .local v5, "a1":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    new-instance v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v2, v0, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 141
    .local v6, "a2":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 142
    .local v7, "b1":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v3, v0, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 144
    .local v8, "b2":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    .line 145
    .local v9, "A":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v9, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    .line 146
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    .line 147
    .local v10, "B":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v10, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    .line 149
    invoke-direct {v5, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v11

    .line 150
    .local v11, "c1":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v6, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v12

    .line 151
    .local v12, "c2":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v9, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v13

    .line 152
    .local v13, "c3":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v13, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    .line 153
    invoke-direct {v13, v12}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    .line 155
    new-instance v14, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    mul-int/lit8 v15, v4, 0x2

    invoke-direct {v14, v15}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>(I)V

    .line 156
    .local v14, "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v16, v0

    .end local v0    # "n1":I
    .local v16, "n1":I
    iget-object v0, v11, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    if-ge v15, v0, :cond_3

    .line 158
    iget-object v0, v14, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v19, v0

    iget-object v0, v11, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v20, v0, v15

    and-long v20, v20, v17

    aput-wide v20, v19, v15

    .line 156
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v16

    goto :goto_2

    .line 160
    .end local v15    # "i":I
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v15, v13, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v15, v15

    if-ge v0, v15, :cond_4

    .line 162
    iget-object v15, v14, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int v19, v16, v0

    move/from16 v20, v0

    .end local v0    # "i":I
    .local v20, "i":I
    iget-object v0, v14, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int v21, v16, v20

    aget-wide v21, v0, v21

    iget-object v0, v13, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v23, v0, v20

    add-long v21, v21, v23

    and-long v21, v21, v17

    aput-wide v21, v15, v19

    .line 160
    add-int/lit8 v0, v20, 0x1

    .end local v20    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    :cond_4
    move/from16 v20, v0

    .line 164
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v15, v12, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v15, v15

    if-ge v0, v15, :cond_5

    .line 166
    iget-object v15, v14, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    mul-int/lit8 v19, v16, 0x2

    add-int v19, v19, v0

    move/from16 v20, v0

    .end local v0    # "i":I
    .restart local v20    # "i":I
    iget-object v0, v14, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    mul-int/lit8 v21, v16, 0x2

    add-int v21, v21, v20

    aget-wide v21, v0, v21

    iget-object v0, v12, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v23, v0, v20

    add-long v21, v21, v23

    and-long v21, v21, v17

    aput-wide v21, v15, v19

    .line 164
    add-int/lit8 v0, v20, 0x1

    .end local v20    # "i":I
    .restart local v0    # "i":I
    goto :goto_4

    .line 168
    .end local v0    # "i":I
    :cond_5
    return-object v14
.end method

.method private sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V
    .locals 7
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 196
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 200
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 202
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v3, v2, v0

    const-wide v5, 0x800000800000L

    add-long/2addr v3, v5

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v2, v0

    sub-long/2addr v3, v5

    const-wide v5, 0x7ff0007ffL

    and-long/2addr v3, v5

    aput-wide v3, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 239
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 240
    .local v0, "p":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    .line 241
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 246
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([J[J)Z

    move-result v0

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .locals 17
    .param p1, "poly2"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly2"
        }
    .end annotation

    .line 57
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v2

    .line 58
    .local v2, "N":I
    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v3

    if-ne v3, v2, :cond_4

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iget v4, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ne v3, v4, :cond_4

    .line 63
    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v3

    .line 65
    .local v3, "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    iget-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v4

    if-le v4, v2, :cond_3

    .line 67
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    rem-int/lit8 v4, v4, 0x2

    const-wide v5, 0x7ff0007ffL

    if-nez v4, :cond_1

    .line 69
    move v4, v2

    .local v4, "k":I
    :goto_0
    iget-object v7, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 71
    iget-object v7, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v8, v4, v2

    iget-object v9, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v10, v4, v2

    aget-wide v10, v9, v10

    iget-object v9, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v12, v9, v4

    add-long/2addr v10, v12

    and-long/2addr v10, v5

    aput-wide v10, v7, v8

    .line 69
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v4    # "k":I
    :cond_0
    iget-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v4, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    goto :goto_2

    .line 77
    :cond_1
    move v4, v2

    .restart local v4    # "k":I
    :goto_1
    iget-object v7, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v7, v7

    const-wide/16 v8, 0x7ff

    if-ge v4, v7, :cond_2

    .line 79
    iget-object v7, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v10, v4, v2

    iget-object v11, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v12, v4, v2

    aget-wide v12, v11, v12

    iget-object v11, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int/lit8 v14, v4, -0x1

    aget-wide v14, v11, v14

    const/16 v11, 0x18

    shr-long/2addr v14, v11

    add-long/2addr v12, v14

    aput-wide v12, v7, v10

    .line 80
    iget-object v7, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v10, v4, v2

    iget-object v12, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v13, v4, v2

    aget-wide v13, v12, v13

    iget-object v12, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v15, v12, v4

    and-long/2addr v8, v15

    shl-long/2addr v8, v11

    add-long/2addr v13, v8

    aput-wide v13, v7, v10

    .line 81
    iget-object v7, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v8, v4, v2

    aget-wide v9, v7, v8

    and-long/2addr v9, v5

    aput-wide v9, v7, v8

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 83
    .end local v4    # "k":I
    :cond_2
    iget-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v4, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 84
    iget-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v5, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-wide v6, v4, v5

    and-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 88
    :cond_3
    :goto_2
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    iget-object v5, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 89
    .end local v3    # "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .local v4, "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput v3, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    .line 90
    return-object v4

    .line 60
    .end local v4    # "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Number of coefficients must be the same"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public mult2And(I)V
    .locals 7
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mask"
        }
    .end annotation

    .line 230
    int-to-long v0, p1

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 231
    .local v0, "longMask":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 233
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v4, v2

    const/4 v4, 0x1

    shl-long v4, v5, v4

    and-long/2addr v4, v0

    aput-wide v4, v3, v2

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public subAnd(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;I)V
    .locals 9
    .param p1, "b"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "mask"
        }
    .end annotation

    .line 215
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 216
    .local v0, "longMask":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 218
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v4, v2

    const-wide v7, 0x800000800000L

    add-long/2addr v5, v7

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v7, v4, v2

    sub-long/2addr v5, v7

    and-long/2addr v5, v0

    aput-wide v5, v3, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 9

    .line 95
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    new-array v0, v0, [I

    .line 96
    .local v0, "intCoeffs":[I
    const/4 v1, 0x0

    .line 97
    .local v1, "uIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 99
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "uIdx":I
    .local v3, "uIdx":I
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v4, v2

    const-wide/16 v7, 0x7ff

    and-long/2addr v5, v7

    long-to-int v4, v5

    aput v4, v0, v1

    .line 100
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v3, v1, :cond_0

    .line 102
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "uIdx":I
    .restart local v1    # "uIdx":I
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v5, v4, v2

    const/16 v4, 0x18

    shr-long v4, v5, v4

    and-long/2addr v4, v7

    long-to-int v5, v4

    aput v5, v0, v3

    goto :goto_1

    .line 100
    .end local v1    # "uIdx":I
    .restart local v3    # "uIdx":I
    :cond_0
    move v1, v3

    .line 97
    .end local v3    # "uIdx":I
    .restart local v1    # "uIdx":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v2
.end method
