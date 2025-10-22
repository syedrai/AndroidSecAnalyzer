.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
.super Ljava/lang/Object;
.source "SparseTernaryPolynomial.java"

# interfaces
.implements Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;


# static fields
.field private static final BITS_PER_INDEX:I = 0xb


# instance fields
.field private N:I

.field private negOnes:[I

.field private ones:[I


# direct methods
.method constructor <init>(I[I[I)V
    .locals 0
    .param p1, "N"    # I
    .param p2, "ones"    # [I
    .param p3, "negOnes"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "N",
            "ones",
            "negOnes"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 38
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 1
    .param p1, "intPoly"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intPoly"
        }
    .end annotation

    .line 49
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 50
    return-void
.end method

.method public constructor <init>([I)V
    .locals 7
    .param p1, "coeffs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coeffs"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    .line 60
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 61
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "onesIdx":I
    const/4 v1, 0x0

    .line 64
    .local v1, "negOnesIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ge v2, v3, :cond_0

    .line 66
    aget v3, p1, v2

    .line 67
    .local v3, "c":I
    packed-switch v3, :pswitch_data_0

    .line 78
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", must be one of {-1, 0, 1}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :pswitch_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "onesIdx":I
    .local v5, "onesIdx":I
    aput v2, v4, v0

    .line 71
    move v0, v5

    goto :goto_1

    .line 76
    .end local v5    # "onesIdx":I
    .restart local v0    # "onesIdx":I
    :pswitch_1
    goto :goto_1

    .line 73
    :pswitch_2
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "negOnesIdx":I
    .local v5, "negOnesIdx":I
    aput v2, v4, v1

    .line 74
    move v1, v5

    .line 64
    .end local v3    # "c":I
    .end local v5    # "negOnesIdx":I
    .restart local v1    # "negOnesIdx":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 82
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 83
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromBinary(Ljava/io/InputStream;III)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "N"    # I
    .param p2, "numOnes"    # I
    .param p3, "numNegOnes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "is",
            "N",
            "numOnes",
            "numNegOnes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/16 v0, 0x800

    .line 99
    .local v0, "maxIndex":I
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    .line 101
    .local v1, "bitsPerIndex":I
    mul-int v2, p2, v1

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 102
    .local v2, "data1Len":I
    invoke-static {p0, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v3

    .line 103
    .local v3, "data1":[B
    invoke-static {v3, p2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object v4

    .line 105
    .local v4, "ones":[I
    mul-int v5, p3, v1

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    .line 106
    .local v5, "data2Len":I
    invoke-static {p0, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v6

    .line 107
    .local v6, "data2":[B
    invoke-static {v6, p3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object v7

    .line 109
    .local v7, "negOnes":[I
    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v8, p1, v4, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(I[I[I)V

    return-object v8
.end method

.method public static generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    .locals 2
    .param p0, "N"    # I
    .param p1, "numOnes"    # I
    .param p2, "numNegOnes"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "N",
            "numOnes",
            "numNegOnes",
            "random"
        }
    .end annotation

    .line 122
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIILjava/security/SecureRandom;)[I

    move-result-object v0

    .line 123
    .local v0, "coeffs":[I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    aput v2, v1, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 277
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    aput v2, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 293
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 295
    return v0

    .line 297
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 299
    return v1

    .line 301
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 303
    return v1

    .line 305
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    .line 306
    .local v2, "other":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-eq v3, v4, :cond_3

    .line 308
    return v1

    .line 310
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    iget-object v4, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 312
    return v1

    .line 314
    :cond_4
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    iget-object v4, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 316
    return v1

    .line 318
    :cond_5
    return v0
.end method

.method public getNegOnes()[I
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-object v0
.end method

.method public getOnes()[I
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 283
    const/16 v0, 0x1f

    .line 284
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 285
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/2addr v2, v3

    .line 286
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int/2addr v1, v3

    .line 287
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int/2addr v2, v3

    .line 288
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .locals 8
    .param p1, "poly2"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly2"
        }
    .end annotation

    .line 177
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    .line 178
    .local v0, "b":[Ljava/math/BigInteger;
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ne v1, v2, :cond_7

    .line 183
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v1, v1, [Ljava/math/BigInteger;

    .line 184
    .local v1, "c":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ge v2, v3, :cond_0

    .line 186
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v3, v1, v2

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 191
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    aget v3, v3, v2

    .line 192
    .local v3, "i":I
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    .line 193
    .local v4, "j":I
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v5, -0x1

    .local v5, "k":I
    :goto_2
    if-ltz v5, :cond_2

    .line 195
    aget-object v6, v1, v5

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v1, v5

    .line 196
    add-int/lit8 v4, v4, -0x1

    .line 197
    if-gez v4, :cond_1

    .line 199
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 193
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 189
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    .end local v2    # "idx":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "idx":I
    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v3

    if-eq v2, v3, :cond_6

    .line 206
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    aget v3, v3, v2

    .line 207
    .restart local v3    # "i":I
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    .line 208
    .restart local v4    # "j":I
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "k":I
    :goto_4
    if-ltz v5, :cond_5

    .line 210
    aget-object v6, v1, v5

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v1, v5

    .line 211
    add-int/lit8 v4, v4, -0x1

    .line 212
    if-gez v4, :cond_4

    .line 214
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 208
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 204
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 219
    .end local v2    # "idx":I
    :cond_6
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    return-object v2

    .line 180
    .end local v1    # "c":[Ljava/math/BigInteger;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of coefficients must be the same"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 8
    .param p1, "poly2"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poly2"
        }
    .end annotation

    .line 128
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 129
    .local v0, "b":[I
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ne v1, v2, :cond_6

    .line 134
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v1, v1, [I

    .line 135
    .local v1, "c":[I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v3, v3

    if-eq v2, v3, :cond_2

    .line 137
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    aget v3, v3, v2

    .line 138
    .local v3, "i":I
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    .line 139
    .local v4, "j":I
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v5, -0x1

    .local v5, "k":I
    :goto_1
    if-ltz v5, :cond_1

    .line 141
    aget v6, v1, v5

    aget v7, v0, v4

    add-int/2addr v6, v7

    aput v6, v1, v5

    .line 142
    add-int/lit8 v4, v4, -0x1

    .line 143
    if-gez v4, :cond_0

    .line 145
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 139
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 135
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "idx":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "idx":I
    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v3

    if-eq v2, v3, :cond_5

    .line 152
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    aget v3, v3, v2

    .line 153
    .restart local v3    # "i":I
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    .line 154
    .restart local v4    # "j":I
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "k":I
    :goto_3
    if-ltz v5, :cond_4

    .line 156
    aget v6, v1, v5

    aget v7, v0, v4

    sub-int/2addr v6, v7

    aput v6, v1, v5

    .line 157
    add-int/lit8 v4, v4, -0x1

    .line 158
    if-gez v4, :cond_3

    .line 160
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 154
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 150
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 165
    .end local v2    # "idx":I
    :cond_5
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v2

    .line 131
    .end local v1    # "c":[I
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of coefficients must be the same"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 1
    .param p1, "poly2"    # Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "modulus"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "poly2",
            "modulus"
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 171
    .local v0, "c":Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 172
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 266
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    return v0
.end method

.method public toBinary()[B
    .locals 7

    .line 239
    const/16 v0, 0x800

    .line 240
    .local v0, "maxIndex":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v1

    .line 241
    .local v1, "bin1":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v2

    .line 243
    .local v2, "bin2":[B
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 244
    .local v3, "bin":[B
    array-length v4, v1

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    return-object v3
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 4

    .line 250
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v0, v0, [I

    .line 251
    .local v0, "coeffs":[I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 253
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    aget v2, v2, v1

    .line 254
    .local v2, "i":I
    const/4 v3, 0x1

    aput v3, v0, v2

    .line 251
    .end local v2    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "idx":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "idx":I
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 258
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    aget v2, v2, v1

    .line 259
    .restart local v2    # "i":I
    const/4 v3, -0x1

    aput v3, v0, v2

    .line 256
    .end local v2    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v1    # "idx":I
    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v1
.end method
