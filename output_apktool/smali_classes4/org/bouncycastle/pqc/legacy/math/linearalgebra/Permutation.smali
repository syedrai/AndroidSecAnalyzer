.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
.super Ljava/lang/Object;
.source "Permutation.java"


# instance fields
.field private perm:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-lez p1, :cond_1

    .line 34
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    .line 35
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 37
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    aput v0, v1, v0

    .line 35
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 39
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 6
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    if-lez p1, :cond_2

    .line 103
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    .line 105
    new-array v0, p1, [I

    .line 106
    .local v0, "help":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 108
    aput v1, v0, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_0
    move v1, p1

    .line 112
    .local v1, "k":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p1, :cond_1

    .line 114
    invoke-static {p2, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v3

    .line 115
    .local v3, "i":I
    add-int/lit8 v1, v1, -0x1

    .line 116
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    aget v5, v0, v3

    aput v5, v4, v2

    .line 117
    aget v4, v0, v1

    aput v4, v0, v3

    .line 112
    .end local v3    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v2    # "j":I
    :cond_1
    return-void

    .line 100
    .end local v0    # "help":[I
    .end local v1    # "k":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 7
    .param p1, "enc"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enc"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    array-length v0, p1

    const-string v1, "invalid encoding"

    const/4 v2, 0x4

    if-le v0, v2, :cond_3

    .line 69
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v0

    .line 70
    .local v0, "n":I
    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v3

    .line 72
    .local v3, "size":I
    array-length v4, p1

    mul-int v5, v0, v3

    add-int/2addr v5, v2

    if-ne v4, v5, :cond_2

    .line 77
    new-array v4, v0, [I

    iput-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    .line 78
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 80
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    mul-int v6, v4, v3

    add-int/2addr v6, v2

    invoke-static {p1, v6, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BII)I

    move-result v6

    aput v6, v5, v4

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->isPermutation([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    return-void

    .line 85
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v0    # "n":I
    .end local v3    # "size":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([I)V
    .locals 2
    .param p1, "perm"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "perm"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->isPermutation([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    .line 55
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array is not a permutation vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isPermutation([I)Z
    .locals 5
    .param p1, "perm"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "perm"
        }
    .end annotation

    .line 234
    array-length v0, p1

    .line 235
    .local v0, "n":I
    new-array v1, v0, [Z

    .line 237
    .local v1, "onlyOnce":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 239
    aget v4, p1, v2

    if-ltz v4, :cond_1

    aget v4, p1, v2

    if-ge v4, v0, :cond_1

    aget v4, p1, v2

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    aget v4, p1, v2

    aput-boolean v3, v1, v4

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 246
    .end local v2    # "i":I
    :cond_2
    return v3
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .locals 4

    .line 154
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>(I)V

    .line 155
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 157
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    aget v3, v3, v1

    aput v1, v2, v3

    .line 155
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 194
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    .line 200
    .local v0, "otherPerm":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v1

    return v1
.end method

.method public getEncoded()[B
    .locals 6

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    .line 129
    .local v0, "n":I
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v1

    .line 130
    .local v1, "size":I
    mul-int v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 131
    .local v2, "result":[B
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    .line 132
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 134
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    aget v4, v4, v3

    mul-int v5, v3, v1

    add-int/lit8 v5, v5, 0x4

    invoke-static {v4, v2, v5, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BII)V

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public getVector()[I
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
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

    .line 170
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 174
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;-><init>(I)V

    .line 175
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 177
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    aget v4, v4, v1

    aget v3, v3, v4

    aput v3, v2, v1

    .line 175
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 172
    .end local v0    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 208
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 211
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    aget v2, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    return-object v0
.end method
