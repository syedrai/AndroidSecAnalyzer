.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
.super Ljava/lang/Object;
.source "PolyVec.java"


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

.field private kyberK:I

.field private polyVecBytes:I

.field vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Requires Parameter"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V
    .locals 3
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    .line 15
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    .line 16
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecBytes:I

    .line 18
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    aput-object v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V
    .locals 4
    .param p0, "out"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .param p1, "inp1"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .param p2, "inp2"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .param p3, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "inp1",
            "inp2",
            "engine"
        }
    .end annotation

    .line 201
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    invoke-direct {v0, p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    .line 203
    .local v0, "t":Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    .line 204
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberK()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 206
    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    .line 207
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    .line 210
    return-void
.end method


# virtual methods
.method public addPoly(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;)V
    .locals 3
    .param p1, "b"    # Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method public compressPolyVec()[B
    .locals 21

    .line 57
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->conditionalSubQ()V

    .line 59
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    new-array v1, v1, [B

    .line 60
    .local v1, "r":[B
    const/4 v2, 0x0

    .line 61
    .local v2, "count":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v3

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v4, v4, 0x140

    const/16 v5, 0x20

    const/16 v7, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-ne v3, v4, :cond_2

    .line 63
    new-array v3, v12, [S

    .line 64
    .local v3, "t":[S
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v4, v14, :cond_5

    .line 66
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    const/16 v15, 0x40

    if-ge v14, v15, :cond_1

    .line 68
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_2
    if-ge v15, v12, :cond_0

    .line 79
    const/16 v16, 0xa

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v6

    mul-int/lit8 v17, v14, 0x4

    const/16 v18, 0x6

    add-int v8, v17, v15

    invoke-virtual {v6, v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v6

    const/4 v8, 0x3

    const/16 v17, 0x0

    int-to-long v9, v6

    .line 80
    .local v9, "t_k":J
    shl-long v9, v9, v16

    .line 81
    const-wide/16 v19, 0x681

    add-long v9, v9, v19

    .line 82
    const-wide/32 v19, 0x13afb7

    mul-long v9, v9, v19

    .line 83
    shr-long/2addr v9, v5

    .line 84
    const-wide/16 v19, 0x3ff

    and-long v9, v9, v19

    .line 85
    long-to-int v6, v9

    int-to-short v6, v6

    aput-short v6, v3, v15

    .line 68
    .end local v9    # "t_k":J
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 87
    :cond_0
    const/4 v8, 0x3

    const/16 v16, 0xa

    const/16 v17, 0x0

    const/16 v18, 0x6

    add-int/lit8 v6, v2, 0x0

    aget-short v9, v3, v17

    shr-int/lit8 v9, v9, 0x0

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    .line 88
    add-int/lit8 v6, v2, 0x1

    aget-short v9, v3, v17

    shr-int/2addr v9, v7

    aget-short v10, v3, v13

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    .line 89
    add-int/lit8 v6, v2, 0x2

    aget-short v9, v3, v13

    shr-int/lit8 v9, v9, 0x6

    aget-short v10, v3, v11

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    .line 90
    add-int/lit8 v6, v2, 0x3

    aget-short v9, v3, v11

    shr-int/2addr v9, v12

    aget-short v10, v3, v8

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    .line 91
    add-int/lit8 v6, v2, 0x4

    aget-short v9, v3, v8

    shr-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    .line 92
    add-int/lit8 v2, v2, 0x5

    .line 66
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 64
    .end local v15    # "k":I
    :cond_1
    const/4 v8, 0x3

    const/16 v16, 0xa

    const/16 v17, 0x0

    const/16 v18, 0x6

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 96
    .end local v3    # "t":[S
    .end local v4    # "i":I
    .end local v14    # "j":I
    :cond_2
    const/4 v8, 0x3

    const/16 v16, 0xa

    const/16 v17, 0x0

    const/16 v18, 0x6

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v3

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v4, v4, 0x160

    if-ne v3, v4, :cond_6

    .line 98
    new-array v3, v7, [S

    .line 99
    .restart local v3    # "t":[S
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v4, v6, :cond_5

    .line 101
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, v5, :cond_4

    .line 103
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_5
    if-ge v9, v7, :cond_3

    .line 114
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v10

    mul-int/lit8 v14, v6, 0x8

    add-int/2addr v14, v9

    invoke-virtual {v10, v14}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v10

    int-to-long v14, v10

    .line 115
    .local v14, "t_k":J
    const/16 v10, 0xb

    shl-long/2addr v14, v10

    .line 116
    const-wide/16 v19, 0x680

    add-long v14, v14, v19

    .line 117
    const-wide/32 v19, 0x9d7dc

    mul-long v14, v14, v19

    .line 118
    const/16 v10, 0x1f

    shr-long/2addr v14, v10

    .line 119
    const-wide/16 v19, 0x7ff

    and-long v14, v14, v19

    .line 120
    long-to-int v10, v14

    int-to-short v10, v10

    aput-short v10, v3, v9

    .line 103
    .end local v14    # "t_k":J
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 122
    :cond_3
    add-int/lit8 v10, v2, 0x0

    aget-short v14, v3, v17

    shr-int/lit8 v14, v14, 0x0

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 123
    add-int/lit8 v10, v2, 0x1

    aget-short v14, v3, v17

    shr-int/2addr v14, v7

    aget-short v15, v3, v13

    shl-int/2addr v15, v8

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 124
    add-int/lit8 v10, v2, 0x2

    aget-short v14, v3, v13

    const/4 v15, 0x5

    shr-int/2addr v14, v15

    aget-short v19, v3, v11

    shl-int/lit8 v19, v19, 0x6

    or-int v14, v14, v19

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 125
    add-int/lit8 v10, v2, 0x3

    aget-short v14, v3, v11

    shr-int/2addr v14, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 126
    add-int/lit8 v10, v2, 0x4

    aget-short v14, v3, v11

    shr-int/lit8 v14, v14, 0xa

    aget-short v19, v3, v8

    shl-int/lit8 v19, v19, 0x1

    or-int v14, v14, v19

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 127
    add-int/lit8 v10, v2, 0x5

    aget-short v14, v3, v8

    const/16 v19, 0x7

    shr-int/lit8 v14, v14, 0x7

    aget-short v20, v3, v12

    shl-int/lit8 v20, v20, 0x4

    or-int v14, v14, v20

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 128
    add-int/lit8 v10, v2, 0x6

    aget-short v14, v3, v12

    shr-int/2addr v14, v12

    aget-short v20, v3, v15

    shl-int/lit8 v20, v20, 0x7

    or-int v14, v14, v20

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 129
    add-int/lit8 v10, v2, 0x7

    aget-short v14, v3, v15

    shr-int/2addr v14, v13

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 130
    add-int/lit8 v10, v2, 0x8

    aget-short v14, v3, v15

    shr-int/lit8 v14, v14, 0x9

    aget-short v20, v3, v18

    shl-int/lit8 v20, v20, 0x2

    or-int v14, v14, v20

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 131
    add-int/lit8 v10, v2, 0x9

    aget-short v14, v3, v18

    shr-int/lit8 v14, v14, 0x6

    aget-short v20, v3, v19

    shl-int/lit8 v15, v20, 0x5

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 132
    add-int/lit8 v10, v2, 0xa

    aget-short v14, v3, v19

    shr-int/2addr v14, v8

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    .line 133
    add-int/lit8 v2, v2, 0xb

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 99
    .end local v9    # "k":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 141
    .end local v6    # "j":I
    :cond_5
    return-object v1

    .line 139
    .end local v3    # "t":[S
    .end local v4    # "i":I
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public conditionalSubQ()V
    .locals 2

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    .line 253
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->conditionalSubQ()V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public decompressPolyVec([B)V
    .locals 16
    .param p1, "compressedPolyVecCipherText"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressedPolyVecCipherText"
        }
    .end annotation

    .line 146
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 148
    .local v1, "count":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v3, v3, 0x140

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ne v2, v3, :cond_3

    .line 150
    new-array v2, v9, [S

    .line 151
    .local v2, "t":[S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v3, v11, :cond_2

    .line 153
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    const/16 v12, 0x40

    if-ge v11, v12, :cond_1

    .line 155
    aget-byte v12, p1, v1

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v4

    add-int/lit8 v13, v1, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v7

    int-to-short v13, v13

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v4

    .line 156
    add-int/lit8 v12, v1, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v8

    add-int/lit8 v13, v1, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    int-to-short v13, v13

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v10

    .line 157
    add-int/lit8 v12, v1, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v9

    add-int/lit8 v13, v1, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v9

    int-to-short v13, v13

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v8

    .line 158
    add-int/lit8 v12, v1, 0x3

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v6

    add-int/lit8 v13, v1, 0x4

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v8

    int-to-short v13, v13

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v5

    .line 159
    add-int/lit8 v1, v1, 0x5

    .line 160
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_2
    if-ge v12, v9, :cond_0

    .line 162
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v13, v13, v3

    mul-int/lit8 v14, v11, 0x4

    add-int/2addr v14, v12

    aget-short v15, v2, v12

    and-int/lit16 v15, v15, 0x3ff

    mul-int/lit16 v15, v15, 0xd01

    add-int/lit16 v15, v15, 0x200

    shr-int/lit8 v15, v15, 0xa

    int-to-short v15, v15

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 160
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 153
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 151
    .end local v12    # "k":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "t":[S
    .end local v11    # "j":I
    :cond_2
    goto/16 :goto_6

    .line 169
    .end local v3    # "i":I
    :cond_3
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v3, v3, 0x160

    if-ne v2, v3, :cond_7

    .line 171
    new-array v2, v7, [S

    .line 172
    .restart local v2    # "t":[S
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v3, v11, :cond_6

    .line 174
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    const/16 v12, 0x20

    if-ge v11, v12, :cond_5

    .line 176
    aget-byte v12, p1, v1

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v4

    add-int/lit8 v13, v1, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v7

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v4

    .line 177
    add-int/lit8 v12, v1, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v5

    add-int/lit8 v13, v1, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    const/4 v14, 0x5

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v10

    .line 178
    add-int/lit8 v12, v1, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v6

    add-int/lit8 v13, v1, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v8

    or-int/2addr v12, v13

    add-int/lit8 v13, v1, 0x4

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0xa

    int-to-short v13, v13

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v8

    .line 179
    add-int/lit8 v12, v1, 0x4

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v10

    add-int/lit8 v13, v1, 0x5

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    const/4 v15, 0x7

    shl-int/2addr v13, v15

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v5

    .line 180
    add-int/lit8 v12, v1, 0x5

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v9

    add-int/lit8 v13, v1, 0x6

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v9

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v9

    .line 181
    add-int/lit8 v12, v1, 0x6

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v15

    add-int/lit8 v13, v1, 0x7

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v10

    or-int/2addr v12, v13

    add-int/lit8 v13, v1, 0x8

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x9

    int-to-short v13, v13

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v14

    .line 182
    add-int/lit8 v12, v1, 0x8

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v8

    add-int/lit8 v13, v1, 0x9

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v6

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v6

    .line 183
    add-int/lit8 v12, v1, 0x9

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v14

    add-int/lit8 v13, v1, 0xa

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v13, v13

    shl-int/2addr v13, v5

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, v2, v15

    .line 184
    add-int/lit8 v1, v1, 0xb

    .line 185
    const/4 v12, 0x0

    .restart local v12    # "k":I
    :goto_5
    if-ge v12, v7, :cond_4

    .line 187
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v13, v13, v3

    mul-int/lit8 v14, v11, 0x8

    add-int/2addr v14, v12

    aget-short v15, v2, v12

    and-int/lit16 v15, v15, 0x7ff

    mul-int/lit16 v15, v15, 0xd01

    add-int/lit16 v15, v15, 0x400

    shr-int/lit8 v15, v15, 0xb

    int-to-short v15, v15

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    .line 185
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 174
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 172
    .end local v12    # "k":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 191
    .end local v2    # "t":[S
    .end local v11    # "j":I
    :cond_6
    nop

    .line 196
    :goto_6
    return-void

    .line 194
    .end local v3    # "i":I
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public fromBytes([B)V
    .locals 4
    .param p1, "inputBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBytes"
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    .line 245
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x180

    add-int/lit8 v3, v0, 0x1

    mul-int/lit16 v3, v3, 0x180

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->fromBytes([B)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
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

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public polyVecInverseNttToMont()V
    .locals 2

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyInverseNttToMont()V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public polyVecNtt()V
    .locals 2

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    .line 41
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyNtt()V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public reducePoly()V
    .locals 2

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public toBytes()[B
    .locals 6

    .line 232
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecBytes:I

    new-array v0, v0, [B

    .line 233
    .local v0, "r":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v1, v2, :cond_0

    .line 235
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->toBytes()[B

    move-result-object v2

    mul-int/lit16 v3, v1, 0x180

    const/4 v4, 0x0

    const/16 v5, 0x180

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 259
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 260
    .local v0, "out":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v1, v2, :cond_1

    .line 263
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 266
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
