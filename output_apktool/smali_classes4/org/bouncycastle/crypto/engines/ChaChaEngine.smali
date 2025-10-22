.class public Lorg/bouncycastle/crypto/engines/ChaChaEngine;
.super Lorg/bouncycastle/crypto/engines/Salsa20Engine;
.source "ChaChaEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "rounds"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rounds"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    .line 26
    return-void
.end method

.method public static chachaCore(I[I[I)V
    .locals 43
    .param p0, "rounds"    # I
    .param p1, "input"    # [I
    .param p2, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rounds",
            "input",
            "x"
        }
    .end annotation

    .line 152
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 156
    array-length v2, v1

    if-ne v2, v3, :cond_2

    .line 160
    rem-int/lit8 v2, p0, 0x2

    if-nez v2, :cond_1

    .line 165
    const/4 v2, 0x0

    aget v4, v0, v2

    .line 166
    .local v4, "x00":I
    const/4 v5, 0x1

    aget v6, v0, v5

    .line 167
    .local v6, "x01":I
    const/4 v7, 0x2

    aget v8, v0, v7

    .line 168
    .local v8, "x02":I
    const/4 v9, 0x3

    aget v10, v0, v9

    .line 169
    .local v10, "x03":I
    const/4 v11, 0x4

    aget v12, v0, v11

    .line 170
    .local v12, "x04":I
    const/4 v13, 0x5

    aget v14, v0, v13

    .line 171
    .local v14, "x05":I
    const/4 v15, 0x6

    aget v16, v0, v15

    .line 172
    .local v16, "x06":I
    const/16 v17, 0x0

    const/4 v2, 0x7

    aget v18, v0, v2

    .line 173
    .local v18, "x07":I
    const/16 v19, 0x1

    const/16 v5, 0x8

    aget v20, v0, v5

    .line 174
    .local v20, "x08":I
    const/16 v21, 0x9

    aget v22, v0, v21

    .line 175
    .local v22, "x09":I
    const/16 v23, 0xa

    aget v24, v0, v23

    .line 176
    .local v24, "x10":I
    const/16 v25, 0xb

    aget v26, v0, v25

    .line 177
    .local v26, "x11":I
    const/16 v27, 0x2

    const/16 v7, 0xc

    aget v28, v0, v7

    .line 178
    .local v28, "x12":I
    const/16 v29, 0xd

    aget v30, v0, v29

    .line 179
    .local v30, "x13":I
    const/16 v31, 0xe

    aget v32, v0, v31

    .line 180
    .local v32, "x14":I
    const/16 v33, 0xf

    aget v34, v0, v33

    .line 182
    .local v34, "x15":I
    move/from16 v35, p0

    .local v35, "i":I
    :goto_0
    if-lez v35, :cond_0

    .line 184
    add-int/2addr v4, v12

    const/16 v36, 0x3

    xor-int v9, v28, v4

    invoke-static {v9, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v9

    .line 185
    .end local v28    # "x12":I
    .local v9, "x12":I
    add-int v20, v20, v9

    const/16 v37, 0x4

    xor-int v11, v12, v20

    invoke-static {v11, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v11

    .line 186
    .end local v12    # "x04":I
    .local v11, "x04":I
    add-int/2addr v4, v11

    xor-int v12, v9, v4

    invoke-static {v12, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v9

    .line 187
    add-int v20, v20, v9

    xor-int v12, v11, v20

    invoke-static {v12, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v11

    .line 188
    add-int/2addr v6, v14

    xor-int v12, v30, v6

    invoke-static {v12, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    .line 189
    .end local v30    # "x13":I
    .local v12, "x13":I
    add-int v22, v22, v12

    const/16 v38, 0x5

    xor-int v13, v14, v22

    invoke-static {v13, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v13

    .line 190
    .end local v14    # "x05":I
    .local v13, "x05":I
    add-int/2addr v6, v13

    xor-int v14, v12, v6

    invoke-static {v14, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    .line 191
    add-int v22, v22, v12

    xor-int v14, v13, v22

    invoke-static {v14, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v13

    .line 192
    add-int v8, v8, v16

    xor-int v14, v32, v8

    invoke-static {v14, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v14

    .line 193
    .end local v32    # "x14":I
    .local v14, "x14":I
    add-int v24, v24, v14

    const/16 v39, 0x6

    xor-int v15, v16, v24

    invoke-static {v15, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v15

    .line 194
    .end local v16    # "x06":I
    .local v15, "x06":I
    add-int/2addr v8, v15

    xor-int v7, v14, v8

    invoke-static {v7, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v7

    .line 195
    .end local v14    # "x14":I
    .local v7, "x14":I
    add-int v24, v24, v7

    xor-int v14, v15, v24

    invoke-static {v14, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v14

    .line 196
    .end local v15    # "x06":I
    .local v14, "x06":I
    add-int v10, v10, v18

    xor-int v15, v34, v10

    invoke-static {v15, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v15

    .line 197
    .end local v34    # "x15":I
    .local v15, "x15":I
    add-int v26, v26, v15

    xor-int v3, v18, v26

    const/16 v2, 0xc

    invoke-static {v3, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    .line 198
    .end local v18    # "x07":I
    .local v3, "x07":I
    add-int/2addr v10, v3

    xor-int v2, v15, v10

    invoke-static {v2, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    .line 199
    .end local v15    # "x15":I
    .local v2, "x15":I
    add-int v26, v26, v2

    xor-int v15, v3, v26

    const/4 v5, 0x7

    invoke-static {v15, v5}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    .line 200
    add-int/2addr v4, v13

    xor-int v5, v2, v4

    const/16 v15, 0x10

    invoke-static {v5, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    .line 201
    add-int v24, v24, v2

    xor-int v5, v13, v24

    const/16 v15, 0xc

    invoke-static {v5, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    .line 202
    .end local v13    # "x05":I
    .local v5, "x05":I
    add-int/2addr v4, v5

    xor-int v13, v2, v4

    const/16 v15, 0x8

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v34

    .line 203
    .end local v2    # "x15":I
    .restart local v34    # "x15":I
    add-int v24, v24, v34

    xor-int v2, v5, v24

    const/4 v13, 0x7

    invoke-static {v2, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    .line 204
    .end local v5    # "x05":I
    .local v2, "x05":I
    add-int/2addr v6, v14

    xor-int v5, v9, v6

    const/16 v15, 0x10

    invoke-static {v5, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    .line 205
    .end local v9    # "x12":I
    .local v5, "x12":I
    add-int v26, v26, v5

    xor-int v9, v14, v26

    const/16 v15, 0xc

    invoke-static {v9, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v9

    .line 206
    .end local v14    # "x06":I
    .local v9, "x06":I
    add-int/2addr v6, v9

    xor-int v13, v5, v6

    const/16 v15, 0x8

    invoke-static {v13, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v28

    .line 207
    .end local v5    # "x12":I
    .restart local v28    # "x12":I
    add-int v26, v26, v28

    xor-int v5, v9, v26

    const/4 v13, 0x7

    invoke-static {v5, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v16

    .line 208
    .end local v9    # "x06":I
    .restart local v16    # "x06":I
    add-int/2addr v8, v3

    xor-int v5, v12, v8

    const/16 v15, 0x10

    invoke-static {v5, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    .line 209
    .end local v12    # "x13":I
    .local v5, "x13":I
    add-int v20, v20, v5

    xor-int v9, v3, v20

    const/16 v15, 0xc

    invoke-static {v9, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    .line 210
    add-int/2addr v8, v3

    xor-int v9, v5, v8

    const/16 v15, 0x8

    invoke-static {v9, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v30

    .line 211
    .end local v5    # "x13":I
    .restart local v30    # "x13":I
    add-int v20, v20, v30

    xor-int v5, v3, v20

    const/4 v13, 0x7

    invoke-static {v5, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v18

    .line 212
    .end local v3    # "x07":I
    .restart local v18    # "x07":I
    add-int/2addr v10, v11

    xor-int v3, v7, v10

    const/16 v15, 0x10

    invoke-static {v3, v15}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    .line 213
    .end local v7    # "x14":I
    .local v3, "x14":I
    add-int v22, v22, v3

    xor-int v5, v11, v22

    const/16 v7, 0xc

    invoke-static {v5, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    .line 214
    .end local v11    # "x04":I
    .local v5, "x04":I
    add-int/2addr v10, v5

    xor-int v7, v3, v10

    const/16 v9, 0x8

    invoke-static {v7, v9}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v32

    .line 215
    .end local v3    # "x14":I
    .restart local v32    # "x14":I
    add-int v22, v22, v32

    xor-int v3, v5, v22

    const/4 v13, 0x7

    invoke-static {v3, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    .line 182
    .end local v5    # "x04":I
    .local v12, "x04":I
    add-int/lit8 v35, v35, -0x2

    move v14, v2

    const/4 v2, 0x7

    const/16 v3, 0x10

    const/16 v5, 0x8

    const/16 v7, 0xc

    const/4 v9, 0x3

    const/4 v11, 0x4

    const/4 v13, 0x5

    const/4 v15, 0x6

    goto/16 :goto_0

    .end local v2    # "x05":I
    .local v14, "x05":I
    :cond_0
    const/16 v36, 0x3

    const/16 v37, 0x4

    const/16 v38, 0x5

    const/16 v39, 0x6

    .line 219
    .end local v35    # "i":I
    aget v2, v0, v17

    add-int/2addr v2, v4

    aput v2, v1, v17

    .line 220
    aget v2, v0, v19

    add-int/2addr v2, v6

    aput v2, v1, v19

    .line 221
    aget v2, v0, v27

    add-int/2addr v2, v8

    aput v2, v1, v27

    .line 222
    aget v2, v0, v36

    add-int/2addr v2, v10

    aput v2, v1, v36

    .line 223
    aget v2, v0, v37

    add-int/2addr v2, v12

    aput v2, v1, v37

    .line 224
    aget v2, v0, v38

    add-int/2addr v2, v14

    aput v2, v1, v38

    .line 225
    aget v2, v0, v39

    add-int v2, v16, v2

    aput v2, v1, v39

    .line 226
    const/16 v41, 0x7

    aget v2, v0, v41

    add-int v2, v18, v2

    aput v2, v1, v41

    .line 227
    const/16 v42, 0x8

    aget v2, v0, v42

    add-int v2, v20, v2

    aput v2, v1, v42

    .line 228
    aget v2, v0, v21

    add-int v2, v22, v2

    aput v2, v1, v21

    .line 229
    aget v2, v0, v23

    add-int v2, v24, v2

    aput v2, v1, v23

    .line 230
    aget v2, v0, v25

    add-int v2, v26, v2

    aput v2, v1, v25

    .line 231
    const/16 v40, 0xc

    aget v2, v0, v40

    add-int v2, v28, v2

    aput v2, v1, v40

    .line 232
    aget v2, v0, v29

    add-int v2, v30, v2

    aput v2, v1, v29

    .line 233
    aget v2, v0, v31

    add-int v2, v32, v2

    aput v2, v1, v31

    .line 234
    aget v2, v0, v33

    add-int v2, v34, v2

    aput v2, v1, v33

    .line 235
    return-void

    .line 162
    .end local v4    # "x00":I
    .end local v6    # "x01":I
    .end local v8    # "x02":I
    .end local v10    # "x03":I
    .end local v12    # "x04":I
    .end local v14    # "x05":I
    .end local v16    # "x06":I
    .end local v18    # "x07":I
    .end local v20    # "x08":I
    .end local v22    # "x09":I
    .end local v24    # "x10":I
    .end local v26    # "x11":I
    .end local v28    # "x12":I
    .end local v30    # "x13":I
    .end local v32    # "x14":I
    .end local v34    # "x15":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Number of rounds must be even"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 154
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xc

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xd

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 59
    :cond_0
    return-void
.end method

.method protected advanceCounter(J)V
    .locals 7
    .param p1, "diff"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diff"
        }
    .end annotation

    .line 35
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    .line 36
    .local v1, "hi":I
    long-to-int v0, p1

    .line 38
    .local v0, "lo":I
    const/16 v2, 0xd

    if-lez v1, :cond_0

    .line 40
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v4, v3, v2

    add-int/2addr v4, v1

    aput v4, v3, v2

    .line 43
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    .line 45
    .local v3, "oldState":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v6, v5, v4

    add-int/2addr v6, v0

    aput v6, v5, v4

    .line 47
    if-eqz v3, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v4, v5, v4

    if-ge v4, v3, :cond_1

    .line 49
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v5, v4, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v2

    .line 51
    :cond_1
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 141
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->chachaCore(I[I[I)V

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 143
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 30
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rounds:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChaCha"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCounter()J
    .locals 6

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected resetCounter()V
    .locals 4

    .line 116
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v2, 0xd

    const/4 v3, 0x0

    aput v3, v1, v2

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 117
    return-void
.end method

.method protected retreatCounter()V
    .locals 4

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    const/16 v2, 0xd

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v0, v1

    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 107
    :cond_2
    return-void
.end method

.method protected retreatCounter(J)V
    .locals 12
    .param p1, "diff"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diff"
        }
    .end annotation

    .line 63
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    .line 64
    .local v1, "hi":I
    long-to-int v0, p1

    .line 66
    .local v0, "lo":I
    const-string v2, "attempt to reduce counter past zero."

    const/16 v3, 0xd

    const-wide v4, 0xffffffffL

    if-eqz v1, :cond_1

    .line 68
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v6, v6, v3

    int-to-long v6, v6

    and-long/2addr v6, v4

    int-to-long v8, v1

    and-long/2addr v8, v4

    cmp-long v10, v6, v8

    if-ltz v10, :cond_0

    .line 70
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v7, v6, v3

    sub-int/2addr v7, v1

    aput v7, v6, v3

    goto :goto_0

    .line 74
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    int-to-long v8, v6

    and-long/2addr v8, v4

    int-to-long v10, v0

    and-long/2addr v4, v10

    cmp-long v6, v8, v4

    if-ltz v6, :cond_2

    .line 80
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v3, v2, v7

    sub-int/2addr v3, v0

    aput v3, v2, v7

    goto :goto_1

    .line 84
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v4, v4, v3

    if-eqz v4, :cond_3

    .line 86
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    .line 87
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v3, v2, v7

    sub-int/2addr v3, v0

    aput v3, v2, v7

    .line 94
    :goto_1
    return-void

    .line 91
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected setKey([B[B)V
    .locals 5
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyBytes",
            "ivBytes"
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 123
    array-length v1, p1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    array-length v1, p1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires 128 bit or 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    :goto_0
    array-length v1, p1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    invoke-virtual {p0, v1, v3, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->packTauOrSigma(I[II)V

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x4

    invoke-static {p1, v0, v1, v3, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 132
    array-length v1, p1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v4, 0x8

    invoke-static {p1, v1, v2, v4, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 136
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v2, 0xe

    const/4 v3, 0x2

    invoke-static {p2, v0, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 137
    return-void
.end method
