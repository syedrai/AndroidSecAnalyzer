.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
.super Ljava/lang/Object;
.source "Poly.java"


# instance fields
.field private coeffs:[S

.field private engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

.field private eta1:I

.field private eta2:I

.field private polyCompressedBytes:I

.field private symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V
    .locals 1
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    .line 17
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyCompressedBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyCompressedBytes:I

    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberEta1()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta1:I

    .line 19
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberEta2()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta2:I

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    .line 21
    return-void
.end method

.method public static baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V
    .locals 18
    .param p0, "r"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .param p1, "a"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .param p2, "b"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "a",
            "b"
        }
    .end annotation

    .line 66
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    .line 68
    mul-int/lit8 v5, v2, 0x4

    mul-int/lit8 v3, v2, 0x4

    .line 69
    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v6

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v7

    mul-int/lit8 v3, v2, 0x4

    .line 70
    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v8

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v9

    sget-object v3, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->nttZetas:[S

    add-int/lit8 v4, v2, 0x40

    aget-short v10, v3, v4

    .line 68
    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->baseMult(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;ISSSSS)V

    .line 72
    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v12, v3, 0x2

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x2

    .line 73
    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v13

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v14

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x2

    .line 74
    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v15

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v16

    sget-object v3, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->nttZetas:[S

    add-int/lit8 v4, v2, 0x40

    aget-short v3, v3, v4

    mul-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    .line 72
    move-object/from16 v11, p0

    move/from16 v17, v3

    invoke-static/range {v11 .. v17}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->baseMult(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;ISSSSS)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V
    .locals 3
    .param p1, "b"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public compressPoly()[B
    .locals 19

    .line 101
    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 102
    .local v2, "t":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyCompressedBytes:I

    new-array v3, v3, [B

    .line 103
    .local v3, "r":[B
    const/4 v4, 0x0

    .line 104
    .local v4, "count":I
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->conditionalSubQ()V

    .line 110
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyCompressedBytes:I

    const/16 v6, 0x80

    const/16 v7, 0x20

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x4

    if-ne v5, v6, :cond_1

    .line 112
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_3

    .line 114
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 124
    mul-int/lit8 v16, v5, 0x8

    const/16 v17, 0x7

    add-int v8, v16, v6

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v8

    .line 125
    .local v8, "t_j":I
    shl-int/2addr v8, v15

    .line 126
    add-int/lit16 v8, v8, 0x681

    .line 127
    const v16, 0x13afb

    mul-int v8, v8, v16

    .line 128
    shr-int/lit8 v8, v8, 0x1c

    .line 129
    and-int/lit8 v8, v8, 0xf

    .line 130
    const/16 v16, 0x6

    int-to-byte v9, v8

    aput-byte v9, v2, v6

    .line 114
    .end local v8    # "t_j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 133
    :cond_0
    const/16 v16, 0x6

    const/16 v17, 0x7

    add-int/lit8 v8, v4, 0x0

    aget-byte v9, v2, v11

    aget-byte v18, v2, v14

    shl-int/lit8 v18, v18, 0x4

    or-int v9, v9, v18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 134
    add-int/lit8 v8, v4, 0x1

    aget-byte v9, v2, v12

    aget-byte v18, v2, v13

    shl-int/lit8 v18, v18, 0x4

    or-int v9, v9, v18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 135
    add-int/lit8 v8, v4, 0x2

    aget-byte v9, v2, v15

    aget-byte v18, v2, v10

    shl-int/lit8 v18, v18, 0x4

    or-int v9, v9, v18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 136
    add-int/lit8 v8, v4, 0x3

    aget-byte v9, v2, v16

    aget-byte v18, v2, v17

    shl-int/lit8 v18, v18, 0x4

    or-int v9, v9, v18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 137
    add-int/lit8 v4, v4, 0x4

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 140
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_1
    const/16 v16, 0x6

    const/16 v17, 0x7

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyCompressedBytes:I

    const/16 v6, 0xa0

    if-ne v5, v6, :cond_4

    .line 142
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v7, :cond_3

    .line 144
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    if-ge v6, v1, :cond_2

    .line 155
    mul-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v6

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v8

    .line 156
    .restart local v8    # "t_j":I
    shl-int/2addr v8, v10

    .line 157
    add-int/lit16 v8, v8, 0x680

    .line 158
    const v9, 0x9d7e

    mul-int v8, v8, v9

    .line 159
    shr-int/lit8 v8, v8, 0x1b

    .line 160
    and-int/lit8 v8, v8, 0x1f

    .line 161
    int-to-byte v9, v8

    aput-byte v9, v2, v6

    .line 144
    .end local v8    # "t_j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 163
    :cond_2
    add-int/lit8 v8, v4, 0x0

    aget-byte v9, v2, v11

    shr-int/2addr v9, v11

    aget-byte v18, v2, v14

    shl-int/lit8 v18, v18, 0x5

    or-int v9, v9, v18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 164
    add-int/lit8 v8, v4, 0x1

    aget-byte v9, v2, v14

    shr-int/2addr v9, v13

    aget-byte v18, v2, v12

    shl-int/lit8 v18, v18, 0x2

    or-int v9, v9, v18

    aget-byte v18, v2, v13

    shl-int/lit8 v18, v18, 0x7

    or-int v9, v9, v18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 165
    add-int/lit8 v8, v4, 0x2

    aget-byte v9, v2, v13

    shr-int/2addr v9, v14

    aget-byte v18, v2, v15

    shl-int/lit8 v18, v18, 0x4

    or-int v9, v9, v18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 166
    add-int/lit8 v8, v4, 0x3

    aget-byte v9, v2, v15

    shr-int/2addr v9, v15

    aget-byte v18, v2, v10

    shl-int/lit8 v18, v18, 0x1

    or-int v9, v9, v18

    aget-byte v18, v2, v16

    shl-int/lit8 v18, v18, 0x6

    or-int v9, v9, v18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 167
    add-int/lit8 v8, v4, 0x4

    aget-byte v9, v2, v16

    shr-int/2addr v9, v12

    aget-byte v18, v2, v17

    shl-int/lit8 v18, v18, 0x3

    or-int v9, v9, v18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 168
    add-int/lit8 v4, v4, 0x5

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 180
    .end local v6    # "j":I
    :cond_3
    return-object v3

    .line 173
    .end local v5    # "i":I
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "PolyCompressedBytes is neither 128 or 160!"

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public conditionalSubQ()V
    .locals 2

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 312
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;->conditionalSubQ(S)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public convertToMont()V
    .locals 3

    .line 91
    const/16 v0, 0x549

    .line 92
    .local v0, "f":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v2

    mul-int/lit16 v2, v2, 0x549

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;->montgomeryReduce(I)S

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public decompressPoly([B)V
    .locals 14
    .param p1, "compressedPolyCipherText"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressedPolyCipherText"
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "count":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyCompressedBytes()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x80

    if-ne v1, v6, :cond_0

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 191
    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v2

    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v8, v8, 0xf

    int-to-short v8, v8

    mul-int/lit16 v8, v8, 0xd01

    add-int/2addr v8, v3

    shr-int/2addr v8, v4

    int-to-short v8, v8

    invoke-virtual {p0, v7, v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 192
    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v5

    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v8, v4

    int-to-short v8, v8

    mul-int/lit16 v8, v8, 0xd01

    add-int/2addr v8, v3

    shr-int/2addr v8, v4

    int-to-short v8, v8

    invoke-virtual {p0, v7, v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyCompressedBytes()I

    move-result v1

    const/16 v6, 0xa0

    if-ne v1, v6, :cond_4

    .line 199
    new-array v1, v3, [B

    .line 200
    .local v1, "t":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v7, 0x20

    if-ge v6, v7, :cond_2

    .line 202
    add-int/lit8 v7, v0, 0x0

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 203
    add-int/lit8 v7, v0, 0x0

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x5

    shr-int/2addr v7, v8

    add-int/lit8 v9, v0, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    .line 204
    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    const/4 v9, 0x2

    shr-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v1, v9

    .line 205
    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    const/4 v11, 0x7

    shr-int/2addr v7, v11

    add-int/lit8 v12, v0, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v5

    or-int/2addr v7, v12

    int-to-byte v7, v7

    aput-byte v7, v1, v10

    .line 206
    add-int/lit8 v7, v0, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v4

    add-int/lit8 v12, v0, 0x3

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v4

    or-int/2addr v7, v12

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    .line 207
    add-int/lit8 v7, v0, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v1, v8

    .line 208
    add-int/lit8 v7, v0, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    const/4 v12, 0x6

    shr-int/2addr v7, v12

    add-int/lit8 v13, v0, 0x4

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v9, v13, 0x2

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v1, v12

    .line 209
    add-int/lit8 v7, v0, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v10

    int-to-byte v7, v7

    aput-byte v7, v1, v11

    .line 210
    add-int/lit8 v0, v0, 0x5

    .line 211
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v3, :cond_1

    .line 213
    mul-int/lit8 v9, v6, 0x8

    add-int/2addr v9, v7

    aget-byte v10, v1, v7

    and-int/lit8 v10, v10, 0x1f

    mul-int/lit16 v10, v10, 0xd01

    add-int/lit8 v10, v10, 0x10

    shr-int/2addr v10, v8

    int-to-short v10, v10

    invoke-virtual {p0, v9, v10}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 211
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 200
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 216
    .end local v1    # "t":[B
    .end local v7    # "j":I
    :cond_2
    move v1, v6

    .line 222
    .end local v6    # "i":I
    .local v1, "i":I
    :cond_3
    return-void

    .line 219
    .end local v1    # "i":I
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PolyCompressedBytes is neither 128 or 160!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public fromBytes([B)V
    .locals 6
    .param p1, "inpBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inpBytes"
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 247
    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xfff

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 253
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    or-long/2addr v2, v4

    const-wide/16 v4, 0xfff

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-short v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method public fromMsg([B)V
    .locals 6
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 293
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 299
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 301
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shr-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    mul-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    .line 302
    .local v3, "mask":S
    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v2

    and-int/lit16 v5, v3, 0x681

    int-to-short v5, v5

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    .end local v3    # "mask":S
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v2    # "j":I
    :cond_1
    return-void

    .line 295
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KYBER_INDCPA_MSGBYTES must be equal to KYBER_N/8 bytes!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCoeffIndex(I)S
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public getCoeffs()[S
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    return-object v0
.end method

.method public getEta1Noise([BB)V
    .locals 2
    .param p1, "seed"    # [B
    .param p2, "nonce"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation

    .line 318
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta1:I

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 319
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v1, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->prf([B[BB)V

    .line 320
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta1:I

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;->kyberCBD(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;[BI)V

    .line 321
    return-void
.end method

.method public getEta2Noise([BB)V
    .locals 2
    .param p1, "seed"    # [B
    .param p2, "nonce"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "nonce"
        }
    .end annotation

    .line 325
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta2:I

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 326
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v1, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->prf([B[BB)V

    .line 327
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta2:I

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;->kyberCBD(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;[BI)V

    .line 328
    return-void
.end method

.method public polyInverseNttToMont()V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffs()[S

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->invNtt([S)[S

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffs([S)V

    .line 52
    return-void
.end method

.method public polyNtt()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffs()[S

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->ntt([S)[S

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffs([S)V

    .line 46
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    .line 47
    return-void
.end method

.method public polySubtract(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V
    .locals 3
    .param p1, "b"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 335
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method public reduce()V
    .locals 2

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;->barretReduce(S)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public setCoeffIndex(IS)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "val"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "val"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    aput-short p2, v0, p1

    .line 36
    return-void
.end method

.method public setCoeffs([S)V
    .locals 0
    .param p1, "coeffs"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coeffs"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    .line 41
    return-void
.end method

.method public toBytes()[B
    .locals 7

    .line 226
    const/16 v0, 0x180

    new-array v0, v0, [B

    .line 228
    .local v0, "r":[B
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->conditionalSubQ()V

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    .line 231
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v2

    .line 232
    .local v2, "t0":S
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v3

    .line 233
    .local v3, "t1":S
    mul-int/lit8 v4, v1, 0x3

    shr-int/lit8 v5, v2, 0x0

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 234
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v2, 0x8

    shl-int/lit8 v6, v3, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 235
    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x2

    shr-int/lit8 v5, v3, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    .end local v2    # "t0":S
    .end local v3    # "t1":S
    :cond_0
    return-object v0
.end method

.method public toMsg()[B
    .locals 6

    .line 264
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberIndCpaMsgBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 266
    .local v0, "outMsg":[B
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->conditionalSubQ()V

    .line 268
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 270
    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 271
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 277
    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    .line 278
    .local v3, "t":I
    shl-int/lit8 v3, v3, 0x1

    .line 279
    add-int/lit16 v3, v3, 0x681

    .line 280
    const v4, 0x13afb

    mul-int v3, v3, v4

    .line 281
    shr-int/lit8 v3, v3, 0x1c

    .line 282
    and-int/lit8 v3, v3, 0x1

    .line 283
    aget-byte v4, v0, v1

    shl-int v5, v3, v2

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 271
    .end local v3    # "t":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .local v0, "out":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 345
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    aget-short v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 346
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 348
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
