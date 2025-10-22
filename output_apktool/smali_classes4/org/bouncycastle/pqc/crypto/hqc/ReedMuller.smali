.class Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;
.super Ljava/lang/Object;
.source "ReedMuller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Bit0Mask(I)I
    .locals 1
    .param p0, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 115
    and-int/lit8 v0, p0, 0x1

    neg-int v0, v0

    and-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static decode([B[JII)V
    .locals 11
    .param p0, "m"    # [B
    .param p1, "codeword"    # [J
    .param p2, "n1"    # I
    .param p3, "mulParam"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "codeword",
            "n1",
            "mulParam"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 155
    .local v0, "mBytes":[B
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    .line 156
    .local v1, "codewordCopy":[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 157
    .local v2, "byteCodeWords":[I
    invoke-static {v2, p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByte32Array([I[J)V

    .line 159
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x4

    if-ge v3, v4, :cond_1

    .line 161
    new-instance v4, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v4, v1, v3

    .line 162
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 164
    aget-object v6, v1, v3

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v4

    aget v7, v2, v7

    aput v7, v6, v4

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 159
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "i":I
    :cond_1
    const/16 v3, 0x80

    new-array v4, v3, [I

    .line 171
    .local v4, "expandedCodeword":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/4 v7, 0x0

    if-ge v6, p2, :cond_2

    .line 173
    mul-int v8, v6, p3

    invoke-static {v4, v1, v8, p3}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V

    .line 176
    new-array v8, v3, [I

    .line 177
    .local v8, "tmp":[I
    invoke-static {v4, v8}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->hadamardTransform([I[I)V

    .line 179
    aget v9, v8, v7

    mul-int/lit8 v10, p3, 0x40

    sub-int/2addr v9, v10

    aput v9, v8, v7

    .line 180
    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->findPeaks([I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 171
    .end local v8    # "tmp":[I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 183
    .end local v6    # "i":I
    :cond_2
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [I

    .line 184
    .local v3, "cwd64":[I
    const/4 v5, 0x0

    .line 185
    .local v5, "off":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    array-length v8, v1

    if-ge v6, v8, :cond_3

    .line 187
    aget-object v8, v1, v6

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget-object v9, v1, v6

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    array-length v9, v9

    invoke-static {v8, v7, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    add-int/lit8 v5, v5, 0x4

    .line 185
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 190
    .end local v6    # "i":I
    :cond_3
    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByte32ArrayToLongArray([J[I)V

    .line 191
    array-length v6, p0

    invoke-static {v0, v7, p0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    return-void
.end method

.method public static encode([J[BII)V
    .locals 8
    .param p0, "codeword"    # [J
    .param p1, "m"    # [B
    .param p2, "n1"    # I
    .param p3, "mulParam"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codeword",
            "m",
            "n1",
            "mulParam"
        }
    .end annotation

    .line 120
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 122
    .local v0, "mBytes":[B
    mul-int v1, p2, p3

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    .line 123
    .local v1, "codewordCopy":[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 125
    new-instance v3, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v3, v1, v2

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 130
    mul-int v3, v2, p3

    .line 131
    .local v3, "pos":I
    aget-object v4, v1, v3

    aget-byte v5, v0, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V

    .line 133
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2
    if-ge v4, p3, :cond_1

    .line 135
    add-int v5, v3, v4

    aget-object v6, v1, v3

    aput-object v6, v1, v5

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 128
    .end local v3    # "pos":I
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    .end local v2    # "i":I
    :cond_2
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    .line 140
    .local v2, "cwd64":[I
    const/4 v3, 0x0

    .line 141
    .local v3, "off":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 143
    aget-object v5, v1, v4

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget-object v6, v1, v4

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/lit8 v3, v3, 0x4

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 147
    .end local v4    # "i":I
    :cond_3
    invoke-static {p0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByte32ArrayToLongArray([J[I)V

    .line 148
    return-void
.end method

.method static encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V
    .locals 3
    .param p0, "codeword"    # Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
    .param p1, "m"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codeword",
            "m"
        }
    .end annotation

    .line 23
    shr-int/lit8 v0, p1, 0x7

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v0

    .line 25
    .local v0, "word1":I
    shr-int/lit8 v1, p1, 0x0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x55555556

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 26
    shr-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x33333334

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 27
    shr-int/lit8 v1, p1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xf0f0f10

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 28
    shr-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xff0100

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 29
    shr-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 31
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 33
    shr-int/lit8 v1, p1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 34
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 36
    shr-int/lit8 v1, p1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 37
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x3

    aput v0, v1, v2

    .line 39
    shr-int/lit8 v1, p1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 40
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 41
    return-void
.end method

.method private static expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V
    .locals 8
    .param p0, "desCode"    # [I
    .param p1, "srcCode"    # [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
    .param p2, "off"    # I
    .param p3, "mulParam"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "desCode",
            "srcCode",
            "off",
            "mulParam"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    const/16 v2, 0x20

    if-ge v0, v1, :cond_1

    .line 70
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 72
    add-int/lit8 v3, p2, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v3, v3, v0

    shr-int/2addr v3, v1

    and-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    .line 73
    .local v3, "ii":J
    mul-int/lit8 v5, v0, 0x20

    add-int/2addr v5, v1

    add-int/lit8 v6, p2, 0x0

    aget-object v6, p1, v6

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v6, v6, v0

    shr-int/2addr v6, v1

    and-int/lit8 v6, v6, 0x1

    aput v6, p0, v5

    .line 70
    .end local v3    # "ii":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p3, :cond_4

    .line 79
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v1, :cond_3

    .line 81
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    if-ge v4, v2, :cond_2

    .line 83
    mul-int/lit8 v5, v3, 0x20

    add-int/2addr v5, v4

    aget v6, p0, v5

    add-int v7, v0, p2

    aget-object v7, p1, v7

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v7, v7, v3

    shr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    aput v6, p0, v5

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 79
    .end local v4    # "k":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 77
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 89
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private static findPeaks([I)I
    .locals 9
    .param p0, "input"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "peakAbsVal":I
    const/4 v1, 0x0

    .line 95
    .local v1, "peakVal":I
    const/4 v2, 0x0

    .line 97
    .local v2, "peakPos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x80

    if-ge v3, v5, :cond_4

    .line 99
    aget v5, p0, v3

    .line 100
    .local v5, "t":I
    if-lez v5, :cond_0

    const/4 v4, -0x1

    .line 101
    .local v4, "posMask":I
    :cond_0
    and-int v6, v4, v5

    not-int v7, v4

    neg-int v8, v5

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    .line 103
    .local v6, "abs":I
    if-le v6, v0, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    move v1, v7

    .line 104
    if-le v6, v0, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    move v2, v7

    .line 105
    if-le v6, v0, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    move v7, v0

    :goto_3
    move v0, v7

    .line 97
    .end local v4    # "posMask":I
    .end local v5    # "t":I
    .end local v6    # "abs":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "i":I
    :cond_4
    if-lez v1, :cond_5

    const/4 v4, 0x1

    .line 108
    .local v4, "tmp":I
    :cond_5
    mul-int/lit16 v3, v4, 0x80

    or-int/2addr v2, v3

    .line 109
    return v2
.end method

.method private static hadamardTransform([I[I)V
    .locals 7
    .param p0, "srcCode"    # [I
    .param p1, "desCode"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcCode",
            "desCode"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    .line 46
    .local v0, "srcCodeCopy":[I
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    .line 48
    .local v1, "desCodeCopy":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 50
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    .line 52
    mul-int/lit8 v4, v3, 0x2

    aget v4, v0, v4

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    .line 53
    add-int/lit8 v4, v3, 0x40

    mul-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v0, v6

    sub-int/2addr v5, v6

    aput v5, v1, v4

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 57
    .end local v3    # "j":I
    :cond_0
    move-object v3, v0

    .local v3, "tmp":[I
    move-object v0, v1

    move-object v1, v3

    .line 48
    .end local v3    # "tmp":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    :cond_1
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    array-length v2, p1

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    return-void
.end method
