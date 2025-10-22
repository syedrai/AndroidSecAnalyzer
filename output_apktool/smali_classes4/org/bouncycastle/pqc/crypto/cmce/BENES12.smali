.class Lorg/bouncycastle/pqc/crypto/cmce/BENES12;
.super Lorg/bouncycastle/pqc/crypto/cmce/BENES;
.source "BENES12.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "t"    # I
    .param p3, "m"    # I
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

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;-><init>(III)V

    .line 9
    return-void
.end method

.method private apply_benes([B[BI)V
    .locals 11
    .param p1, "r"    # [B
    .param p2, "bits"    # [B
    .param p3, "rev"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "bits",
            "rev"
        }
    .end annotation

    .line 40
    const/16 v0, 0x40

    new-array v1, v0, [J

    .line 41
    .local v1, "bs":[J
    new-array v2, v0, [J

    .line 44
    .local v2, "cond":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 47
    mul-int/lit8 v4, v3, 0x8

    invoke-static {p1, v4}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    if-nez p3, :cond_1

    .line 52
    const/16 v4, 0x100

    .line 53
    .local v4, "inc":I
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->SYS_T:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x28

    .local v5, "cond_ptr":I
    goto :goto_1

    .line 57
    .end local v4    # "inc":I
    .end local v5    # "cond_ptr":I
    :cond_1
    const/16 v4, -0x100

    .line 58
    .restart local v4    # "inc":I
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->SYS_T:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x28

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x2

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v5, v6

    .line 63
    .restart local v5    # "cond_ptr":I
    :goto_1
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    .line 64
    const/4 v6, 0x0

    .local v6, "low":I
    :goto_2
    const/4 v7, 0x5

    if-gt v6, v7, :cond_3

    .line 66
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_2

    .line 68
    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v5

    invoke-static {p2, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v2, v3

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 72
    :cond_2
    invoke-static {v2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    .line 73
    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    .line 75
    add-int/2addr v5, v4

    .line 64
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 78
    :cond_3
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    .line 80
    const/4 v6, 0x0

    :goto_4
    const/16 v8, 0x20

    if-gt v6, v7, :cond_5

    .line 82
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v8, :cond_4

    .line 84
    mul-int/lit8 v9, v3, 0x8

    add-int/2addr v9, v5

    invoke-static {p2, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v9

    aput-wide v9, v2, v3

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 87
    :cond_4
    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    .line 88
    add-int/2addr v5, v4

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 90
    :cond_5
    const/4 v6, 0x4

    :goto_6
    if-ltz v6, :cond_7

    .line 92
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v8, :cond_6

    .line 94
    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v5

    invoke-static {p2, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v9

    aput-wide v9, v2, v3

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 98
    :cond_6
    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    .line 99
    add-int/2addr v5, v4

    .line 90
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 102
    :cond_7
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    .line 104
    const/4 v6, 0x5

    :goto_8
    if-ltz v6, :cond_9

    .line 106
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_8

    .line 108
    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v5

    invoke-static {p2, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v2, v3

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 112
    :cond_8
    invoke-static {v2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    .line 113
    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    .line 114
    add-int/2addr v5, v4

    .line 104
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 117
    :cond_9
    invoke-static {v1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    .line 120
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_a

    .line 122
    mul-int/lit8 v7, v3, 0x8

    aget-wide v8, v1, v3

    invoke-static {p1, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 127
    :cond_a
    return-void
.end method

.method static layerBenes([J[JI)V
    .locals 9
    .param p0, "data"    # [J
    .param p1, "bits"    # [J
    .param p2, "lgs"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "bits",
            "lgs"
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    .line 19
    .local v0, "bit_ptr":I
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    .line 21
    .local v1, "s":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 23
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v4, v2, v1

    if-ge v3, v4, :cond_0

    .line 25
    add-int/lit8 v4, v3, 0x0

    aget-wide v4, p0, v4

    add-int v6, v3, v1

    aget-wide v6, p0, v6

    xor-long/2addr v4, v6

    .line 26
    .local v4, "d":J
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "bit_ptr":I
    .local v6, "bit_ptr":I
    aget-wide v7, p1, v0

    and-long/2addr v4, v7

    .line 27
    add-int/lit8 v0, v3, 0x0

    aget-wide v7, p0, v0

    xor-long/2addr v7, v4

    aput-wide v7, p0, v0

    .line 28
    add-int v0, v3, v1

    aget-wide v7, p0, v0

    xor-long/2addr v7, v4

    aput-wide v7, p0, v0

    .line 23
    add-int/lit8 v3, v3, 0x1

    move v0, v6

    goto :goto_1

    .line 21
    .end local v4    # "d":J
    .end local v6    # "bit_ptr":I
    .restart local v0    # "bit_ptr":I
    :cond_0
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v2, v4

    goto :goto_0

    .line 31
    .end local v3    # "j":I
    :cond_1
    return-void
.end method


# virtual methods
.method public support_gen([S[B)V
    .locals 11
    .param p1, "s"    # [S
    .param p2, "c"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "c"
        }
    .end annotation

    .line 133
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    div-int/lit8 v1, v1, 0x8

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v2

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 135
    .local v0, "L":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    if-ge v3, v4, :cond_1

    .line 137
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    shl-int v5, v2, v5

    div-int/lit8 v5, v5, 0x8

    if-ge v4, v5, :cond_0

    .line 139
    aget-object v5, v0, v3

    aput-byte v1, v5, v4

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    shl-int v4, v2, v4

    if-ge v3, v4, :cond_3

    .line 145
    int-to-short v4, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v4

    .line 148
    .local v4, "a":S
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    if-ge v5, v6, :cond_2

    .line 150
    aget-object v6, v0, v5

    div-int/lit8 v7, v3, 0x8

    aget-byte v8, v6, v7

    shr-int v9, v4, v5

    and-int/2addr v9, v2

    rem-int/lit8 v10, v3, 0x8

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 143
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 154
    .end local v3    # "i":I
    .end local v4    # "a":S
    :cond_3
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    if-ge v3, v4, :cond_4

    .line 156
    aget-object v4, v0, v3

    invoke-direct {p0, v4, p2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->apply_benes([B[BI)V

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 159
    .end local v3    # "j":I
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->SYS_N:I

    if-ge v3, v4, :cond_6

    .line 161
    aput-short v1, p1, v3

    .line 162
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    sub-int/2addr v4, v2

    .local v4, "j":I
    :goto_6
    if-ltz v4, :cond_5

    .line 164
    aget-short v5, p1, v3

    shl-int/2addr v5, v2

    int-to-short v5, v5

    aput-short v5, p1, v3

    .line 165
    aget-short v5, p1, v3

    aget-object v6, v0, v4

    div-int/lit8 v7, v3, 0x8

    aget-byte v6, v6, v7

    rem-int/lit8 v7, v3, 0x8

    shr-int/2addr v6, v7

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, p1, v3

    .line 162
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 159
    .end local v4    # "j":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 169
    .end local v3    # "i":I
    :cond_6
    return-void
.end method
