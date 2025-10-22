.class Lorg/bouncycastle/pqc/crypto/picnic/Tape;
.super Ljava/lang/Object;
.source "Tape.java"


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

.field nTapes:I

.field pos:I

.field tapes:[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 4
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
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
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    .line 15
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    .line 16
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    .line 17
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->nTapes:I

    .line 18
    return-void
.end method

.method private tapesToParityBits([II)V
    .locals 2
    .param p1, "output"    # [I
    .param p2, "outputBitLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outputBitLen"
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected computeAuxTape([B)V
    .locals 12
    .param p1, "inputs"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputs"
        }
    .end annotation

    .line 42
    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 43
    .local v1, "roundKey":[I
    new-array v2, v0, [I

    .line 44
    .local v2, "x":[I
    new-array v3, v0, [I

    .line 45
    .local v3, "y":[I
    new-array v4, v0, [I

    .line 46
    .local v4, "key":[I
    new-array v0, v0, [I

    .line 48
    .local v0, "key0":[I
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    aput v7, v0, v5

    .line 49
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToParityBits([II)V

    .line 56
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v5, v8}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v5

    .line 57
    .local v5, "current":Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v9

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v10

    invoke-virtual {v8, v4, v0, v9, v10}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    .line 63
    if-eqz p1, :cond_0

    .line 65
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v4, v7, v8, p1, v7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 68
    :cond_0
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    .local v8, "r":I
    :goto_0
    if-lez v8, :cond_2

    .line 70
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v9, v10, v8}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v5

    .line 71
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v10

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v11

    invoke-virtual {v9, v1, v4, v10, v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    .line 73
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v9, v2, v2, v1, v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    .line 75
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v5

    .line 76
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v10

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v11

    invoke-virtual {v9, v3, v2, v10, v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    .line 78
    if-ne v8, v6, :cond_1

    .line 81
    array-length v9, v0

    invoke-static {v0, v7, v2, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 85
    :cond_1
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v10, v8, -0x1

    mul-int v9, v9, v10

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    .line 87
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {p0, v2, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToParityBits([II)V

    .line 90
    :goto_1
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v9, v9, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v10, v8, -0x1

    mul-int v9, v9, v10

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    add-int/2addr v9, v10

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    .line 91
    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v9, v2, v3, p0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    .line 68
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 96
    .end local v8    # "r":I
    :cond_2
    iput v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    .line 97
    return-void
.end method

.method protected setAuxBits([B)V
    .locals 8
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v0, v0, -0x1

    .line 23
    .local v0, "last":I
    const/4 v1, 0x0

    .line 24
    .local v1, "pos":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    .line 26
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-ge v3, v4, :cond_1

    .line 28
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 30
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v5, v5, v0

    mul-int/lit8 v6, v2, 0x2

    mul-int v6, v6, v3

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "pos":I
    .local v7, "pos":I
    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    invoke-static {v5, v6, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    .line 28
    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_1

    .line 26
    .end local v4    # "i":I
    .end local v7    # "pos":I
    .restart local v1    # "pos":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method protected tapesToWord()I
    .locals 14

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "shares":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    const/4 v2, 0x3

    ushr-int/2addr v1, v2

    .local v1, "arrayPos":I
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    const/4 v4, 0x7

    and-int/2addr v3, v4

    xor-int/2addr v3, v4

    .line 121
    .local v3, "bitPos":I
    const/4 v5, 0x1

    shl-int v6, v5, v3

    .line 123
    .local v6, "bitMask":I
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aget-byte v7, v7, v1

    and-int/2addr v7, v6

    shl-int/2addr v7, v4

    or-int/2addr v0, v7

    .line 124
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v7, v7, v5

    aget-byte v7, v7, v1

    and-int/2addr v7, v6

    const/4 v9, 0x6

    shl-int/2addr v7, v9

    or-int/2addr v0, v7

    .line 125
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v10, 0x2

    aget-object v7, v7, v10

    aget-byte v7, v7, v1

    and-int/2addr v7, v6

    const/4 v11, 0x5

    shl-int/2addr v7, v11

    or-int/2addr v0, v7

    .line 126
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v7, v7, v2

    aget-byte v7, v7, v1

    and-int/2addr v7, v6

    const/4 v12, 0x4

    shl-int/2addr v7, v12

    or-int/2addr v0, v7

    .line 127
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v7, v7, v12

    aget-byte v7, v7, v1

    and-int/2addr v7, v6

    shl-int/lit8 v2, v7, 0x3

    or-int/2addr v0, v2

    .line 128
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v11

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    shl-int/2addr v2, v10

    or-int/2addr v0, v2

    .line 129
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v9

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    shl-int/2addr v2, v5

    or-int/2addr v0, v2

    .line 130
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v4

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    shl-int/2addr v2, v8

    or-int/2addr v0, v2

    .line 132
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v4, 0x8

    aget-object v2, v2, v4

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    const/16 v7, 0xf

    shl-int/2addr v2, v7

    or-int/2addr v0, v2

    .line 133
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v8, 0x9

    aget-object v2, v2, v8

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    const/16 v9, 0xe

    shl-int/2addr v2, v9

    or-int/2addr v0, v2

    .line 134
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v10, 0xa

    aget-object v2, v2, v10

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    const/16 v11, 0xd

    shl-int/2addr v2, v11

    or-int/2addr v0, v2

    .line 135
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v12, 0xb

    aget-object v2, v2, v12

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    const/16 v13, 0xc

    shl-int/2addr v2, v13

    or-int/2addr v0, v2

    .line 136
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v13

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    shl-int/2addr v2, v12

    or-int/2addr v0, v2

    .line 137
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v11

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    shl-int/2addr v2, v10

    or-int/2addr v0, v2

    .line 138
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v9

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    shl-int/2addr v2, v8

    or-int/2addr v0, v2

    .line 139
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v7

    aget-byte v2, v2, v1

    and-int/2addr v2, v6

    shl-int/2addr v2, v4

    or-int/2addr v0, v2

    .line 141
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    .line 142
    ushr-int v2, v0, v3

    return v2
.end method
