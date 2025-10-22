.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
.source "GF2mVector.java"


# instance fields
.field private field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

.field private vector:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[B)V
    .locals 8
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "v"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "v"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    .line 34
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

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

    rem-int/2addr v2, v1

    const-string v3, "Byte array is not an encoded vector over the given finite field."

    if-nez v2, :cond_4

    .line 51
    array-length v2, p2

    div-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->length:I

    .line 52
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->length:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 56
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 58
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v6, v5, v2

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "count":I
    .local v7, "count":I
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v5, v2

    .line 56
    add-int/lit8 v4, v4, 0x8

    move v1, v7

    goto :goto_2

    .line 60
    .end local v4    # "j":I
    .end local v7    # "count":I
    .restart local v1    # "count":I
    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v4, v4, v2

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 66
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 47
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V
    .locals 3
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .param p2, "vector"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "vector"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 78
    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->length:I

    .line 79
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 81
    aget v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Element array is not specified over the given finite field."

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    .end local v0    # "i":I
    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;)V
    .locals 2
    .param p1, "other"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    .line 97
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    .line 98
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->length:I

    .line 99
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    .line 100
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .locals 2
    .param p1, "addend"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addend"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
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

    .line 207
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 209
    return v1

    .line 211
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;

    .line 213
    .local v0, "otherVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    return v1

    .line 218
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v1

    return v1
.end method

.method public getEncoded()[B
    .locals 7

    .line 123
    const/16 v0, 0x8

    .line 124
    .local v0, "d":I
    const/4 v1, 0x1

    .line 125
    .local v1, "count":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 128
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 131
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v2, v2

    mul-int v2, v2, v1

    new-array v2, v2, [B

    .line 132
    .local v2, "res":[B
    const/4 v1, 0x0

    .line 133
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 135
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 137
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v6, v6, v3

    ushr-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    .line 135
    add-int/lit8 v4, v4, 0x8

    move v1, v5

    goto :goto_2

    .line 133
    .end local v4    # "j":I
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getIntArrayForm()[I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 226
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    .line 227
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 228
    .end local v0    # "hash":I
    .local v1, "hash":I
    return v1
.end method

.method public isZero()Z
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 151
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 153
    const/4 v1, 0x0

    return v1

    .line 149
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
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

    .line 182
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v0

    .line 183
    .local v0, "pVec":[I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->length:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 189
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->length:I

    new-array v1, v1, [I

    .line 190
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 192
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v4, v0, v2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v2

    .line 185
    .end local v1    # "result":[I
    :cond_1
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "permutation size and vector size mismatch"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 236
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 239
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 241
    and-int/lit8 v3, v2, 0x1f

    .line 242
    .local v3, "r":I
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    .line 243
    .local v4, "bitMask":I
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;->vector:[I

    aget v5, v5, v1

    and-int/2addr v5, v4

    .line 244
    .local v5, "coeff":I
    if-eqz v5, :cond_0

    .line 246
    const/16 v6, 0x31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 250
    :cond_0
    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 239
    .end local v3    # "r":I
    .end local v4    # "bitMask":I
    .end local v5    # "coeff":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    .end local v2    # "j":I
    :cond_1
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
