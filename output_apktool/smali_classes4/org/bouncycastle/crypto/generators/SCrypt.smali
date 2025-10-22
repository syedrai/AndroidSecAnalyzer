.class public Lorg/bouncycastle/crypto/generators/SCrypt;
.super Ljava/lang/Object;
.source "SCrypt.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static BlockMix([I[I[I[II)V
    .locals 7
    .param p0, "B"    # [I
    .param p1, "X1"    # [I
    .param p2, "X2"    # [I
    .param p3, "Y"    # [I
    .param p4, "r"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "B",
            "X1",
            "X2",
            "Y",
            "r"
        }
    .end annotation

    .line 182
    array-length v0, p0

    const/16 v1, 0x10

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    const/4 v0, 0x0

    .local v0, "BOff":I
    const/4 v3, 0x0

    .local v3, "YOff":I
    array-length v4, p0

    ushr-int/lit8 v4, v4, 0x1

    .line 186
    .local v4, "halfLen":I
    mul-int/lit8 v5, p4, 0x2

    .local v5, "i":I
    :goto_0
    if-lez v5, :cond_0

    .line 188
    invoke-static {p1, p0, v0, p2}, Lorg/bouncycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    .line 190
    const/16 v6, 0x8

    invoke-static {v6, p2, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 191
    invoke-static {p1, v2, p3, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    add-int v6, v4, v0

    sub-int v3, v6, v3

    .line 194
    add-int/lit8 v0, v0, 0x10

    .line 186
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 196
    .end local v5    # "i":I
    :cond_0
    return-void
.end method

.method private static Clear([B)V
    .locals 1
    .param p0, "array"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 208
    if-eqz p0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 212
    :cond_0
    return-void
.end method

.method private static Clear([I)V
    .locals 1
    .param p0, "array"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 216
    if-eqz p0, :cond_0

    .line 218
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    .line 220
    :cond_0
    return-void
.end method

.method private static ClearAll([[I)V
    .locals 2
    .param p0, "arrays"    # [[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrays"
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 226
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static MFcrypt([B[BIIII)[B
    .locals 9
    .param p0, "P"    # [B
    .param p1, "S"    # [B
    .param p2, "N"    # I
    .param p3, "r"    # I
    .param p4, "p"    # I
    .param p5, "dkLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "S",
            "N",
            "r",
            "p",
            "dkLen"
        }
    .end annotation

    .line 75
    mul-int/lit16 v0, p3, 0x80

    .line 76
    .local v0, "MFLenBytes":I
    mul-int v1, p4, v0

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B

    move-result-object v1

    .line 78
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 82
    .local v2, "B":[I
    :try_start_0
    array-length v3, v1

    const/4 v4, 0x2

    ushr-int/2addr v3, v4

    .line 83
    .local v3, "BLen":I
    new-array v5, v3, [I

    move-object v2, v5

    .line 85
    const/4 v5, 0x0

    invoke-static {v1, v5, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 91
    const/4 v6, 0x0

    .local v6, "d":I
    mul-int v7, p2, p3

    .line 92
    .local v7, "total":I
    :goto_0
    sub-int v8, p2, v6

    if-le v8, v4, :cond_0

    const/16 v8, 0x400

    if-le v7, v8, :cond_0

    .line 94
    add-int/lit8 v6, v6, 0x1

    .line 95
    ushr-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 98
    :cond_0
    ushr-int/lit8 v4, v0, 0x2

    .line 99
    .local v4, "MFLenWords":I
    const/4 v8, 0x0

    .local v8, "BOff":I
    :goto_1
    if-ge v8, v3, :cond_1

    .line 102
    invoke-static {v2, v8, p2, v6, p3}, Lorg/bouncycastle/crypto/generators/SCrypt;->SMix([IIIII)V

    .line 99
    add-int/2addr v8, v4

    goto :goto_1

    .line 105
    .end local v8    # "BOff":I
    :cond_1
    invoke-static {v2, v1, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 107
    invoke-static {p0, v1, p5}, Lorg/bouncycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([B)V

    .line 112
    invoke-static {v2}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    .line 107
    return-object v5

    .line 111
    .end local v3    # "BLen":I
    .end local v4    # "MFLenWords":I
    .end local v6    # "d":I
    .end local v7    # "total":I
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([B)V

    .line 112
    invoke-static {v2}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    .line 113
    throw v3
.end method

.method private static SMix([IIIII)V
    .locals 25
    .param p0, "B"    # [I
    .param p1, "BOff"    # I
    .param p2, "N"    # I
    .param p3, "d"    # I
    .param p4, "r"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "B",
            "BOff",
            "N",
            "d",
            "r"
        }
    .end annotation

    .line 126
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v5

    .line 127
    .local v5, "powN":I
    ushr-int v6, v3, p3

    .line 128
    .local v6, "blocksPerChunk":I
    const/4 v7, 0x1

    shl-int v8, v7, p3

    .local v8, "chunkCount":I
    add-int/lit8 v9, v6, -0x1

    .local v9, "chunkMask":I
    sub-int v10, v5, p3

    .line 130
    .local v10, "chunkPow":I
    mul-int/lit8 v11, v4, 0x20

    .line 132
    .local v11, "BCount":I
    const/16 v0, 0x10

    new-array v12, v0, [I

    .line 133
    .local v12, "blockX1":[I
    new-array v13, v0, [I

    .line 134
    .local v13, "blockX2":[I
    new-array v14, v11, [I

    .line 136
    .local v14, "blockY":[I
    new-array v15, v11, [I

    .line 137
    .local v15, "X":[I
    const/16 v16, 0x1

    new-array v7, v8, [[I

    .line 141
    .local v7, "VV":[[I
    const/16 v17, 0x3

    move/from16 v18, v5

    .end local v5    # "powN":I
    .local v18, "powN":I
    const/16 v19, 0x2

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1, v2, v15, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 145
    mul-int v5, v6, v11

    new-array v5, v5, [I

    .line 146
    .local v5, "V":[I
    aput-object v5, v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    const/16 v21, 0x0

    .line 149
    .local v21, "off":I
    const/16 v22, 0x0

    move/from16 v23, v0

    move/from16 v0, v21

    move-object/from16 v21, v7

    move/from16 v7, v22

    .local v0, "off":I
    .local v7, "i":I
    .local v21, "VV":[[I
    .local v23, "c":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 151
    move/from16 v22, v6

    const/4 v6, 0x0

    .end local v6    # "blocksPerChunk":I
    .local v22, "blocksPerChunk":I
    :try_start_1
    invoke-static {v15, v6, v5, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/2addr v0, v11

    .line 153
    invoke-static {v15, v12, v13, v14, v4}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    .line 154
    invoke-static {v14, v6, v5, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    add-int/2addr v0, v11

    .line 156
    invoke-static {v14, v12, v13, v15, v4}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    .line 149
    add-int/lit8 v7, v7, 0x2

    move/from16 v6, v22

    goto :goto_1

    .end local v22    # "blocksPerChunk":I
    .restart local v6    # "blocksPerChunk":I
    :cond_0
    move/from16 v22, v6

    .line 143
    .end local v0    # "off":I
    .end local v5    # "V":[I
    .end local v6    # "blocksPerChunk":I
    .end local v7    # "i":I
    .restart local v22    # "blocksPerChunk":I
    add-int/lit8 v0, v23, 0x1

    move-object/from16 v7, v21

    const/4 v5, 0x0

    .end local v23    # "c":I
    .local v0, "c":I
    goto :goto_0

    .end local v21    # "VV":[[I
    .end local v22    # "blocksPerChunk":I
    .restart local v6    # "blocksPerChunk":I
    .local v7, "VV":[[I
    :cond_1
    move/from16 v23, v0

    move/from16 v22, v6

    move-object/from16 v21, v7

    .line 160
    .end local v0    # "c":I
    .end local v6    # "blocksPerChunk":I
    .end local v7    # "VV":[[I
    .restart local v21    # "VV":[[I
    .restart local v22    # "blocksPerChunk":I
    add-int/lit8 v0, v3, -0x1

    .line 161
    .local v0, "mask":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 163
    add-int/lit8 v6, v11, -0x10

    aget v6, v15, v6

    and-int/2addr v6, v0

    .line 164
    .local v6, "j":I
    ushr-int v7, v6, v10

    aget-object v7, v21, v7

    .line 165
    .local v7, "V":[I
    and-int v23, v6, v9

    move/from16 v24, v0

    .end local v0    # "mask":I
    .local v24, "mask":I
    mul-int v0, v23, v11

    .line 166
    .local v0, "VOff":I
    const/4 v3, 0x0

    invoke-static {v7, v0, v14, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    invoke-static {v14, v15, v3, v14}, Lorg/bouncycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    .line 168
    invoke-static {v14, v12, v13, v15, v4}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    .line 161
    .end local v0    # "VOff":I
    .end local v6    # "j":I
    .end local v7    # "V":[I
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p2

    move/from16 v0, v24

    goto :goto_2

    .end local v24    # "mask":I
    .local v0, "mask":I
    :cond_2
    move/from16 v24, v0

    .line 171
    .end local v0    # "mask":I
    .end local v5    # "i":I
    .restart local v24    # "mask":I
    const/4 v3, 0x0

    invoke-static {v15, v3, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v24    # "mask":I
    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 176
    const/4 v5, 0x4

    new-array v0, v5, [[I

    aput-object v15, v0, v3

    aput-object v12, v0, v16

    aput-object v13, v0, v19

    aput-object v14, v0, v17

    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 177
    nop

    .line 178
    return-void

    .line 175
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local v21    # "VV":[[I
    .end local v22    # "blocksPerChunk":I
    .local v6, "blocksPerChunk":I
    .local v7, "VV":[[I
    :catchall_1
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v21, v7

    .end local v6    # "blocksPerChunk":I
    .end local v7    # "VV":[[I
    .restart local v21    # "VV":[[I
    .restart local v22    # "blocksPerChunk":I
    :goto_3
    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 176
    const/4 v5, 0x4

    new-array v3, v5, [[I

    const/16 v20, 0x0

    aput-object v15, v3, v20

    aput-object v12, v3, v16

    aput-object v13, v3, v19

    aput-object v14, v3, v17

    invoke-static {v3}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 177
    throw v0
.end method

.method private static SingleIterationPBKDF2([B[BI)[B
    .locals 3
    .param p0, "P"    # [B
    .param p1, "S"    # [B
    .param p2, "dkLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "S",
            "dkLen"
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 119
    .local v0, "pGen":Lorg/bouncycastle/crypto/PBEParametersGenerator;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 120
    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 121
    .local v1, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    return-object v2
.end method

.method private static Xor([I[II[I)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "bOff"    # I
    .param p3, "output"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "bOff",
            "output"
        }
    .end annotation

    .line 200
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 202
    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    aput v1, p3, v0

    .line 200
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static generate([B[BIIII)[B
    .locals 4
    .param p0, "P"    # [B
    .param p1, "S"    # [B
    .param p2, "N"    # I
    .param p3, "r"    # I
    .param p4, "p"    # I
    .param p5, "dkLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "S",
            "N",
            "r",
            "p",
            "dkLen"
        }
    .end annotation

    .line 39
    if-eqz p0, :cond_7

    .line 43
    if-eqz p1, :cond_6

    .line 47
    const/4 v0, 0x1

    if-le p2, v0, :cond_5

    invoke-static {p2}, Lorg/bouncycastle/crypto/generators/SCrypt;->isPowerOf2(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 52
    if-ne p3, v0, :cond_1

    const/high16 v1, 0x10000

    if-ge p2, v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cost parameter N must be > 1 and < 65536."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    :goto_0
    if-lt p3, v0, :cond_4

    .line 60
    mul-int/lit16 v1, p3, 0x80

    mul-int/lit8 v1, v1, 0x8

    const v2, 0x7fffffff

    div-int/2addr v2, v1

    .line 61
    .local v2, "maxParallel":I
    if-lt p4, v0, :cond_3

    if-gt p4, v2, :cond_3

    .line 66
    if-lt p5, v0, :cond_2

    .line 70
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/generators/SCrypt;->MFcrypt([B[BIIII)[B

    move-result-object v0

    return-object v0

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Generated key length dkLen must be >= 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parallelisation parameter p must be >= 1 and <= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (based on block size r of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    .end local v2    # "maxParallel":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size r must be >= 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cost parameter N must be > 1 and a power of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Salt S must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passphrase P must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isPowerOf2(I)Z
    .locals 1
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 233
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
