.class public Lorg/bouncycastle/crypto/engines/Grain128Engine;
.super Ljava/lang/Object;
.source "Grain128Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_SIZE:I = 0x4


# instance fields
.field private index:I

.field private initialised:Z

.field private lfsr:[I

.field private nfsr:[I

.field private out:[B

.field private output:I

.field private workingIV:[B

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    return-void
.end method

.method private getKeyStream()B
    .locals 3

    .line 308
    iget v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 310
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->oneRound()V

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private getOutput()I
    .locals 21

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x2

    ushr-int/2addr v1, v3

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v1, v4

    .line 176
    .local v1, "b2":I
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v4, v4, v2

    ushr-int/lit8 v4, v4, 0xc

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v6, v6, v5

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v4, v6

    .line 177
    .local v4, "b12":I
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v6, v6, v2

    ushr-int/lit8 v6, v6, 0xf

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v7, v7, v5

    shl-int/lit8 v7, v7, 0x11

    or-int/2addr v6, v7

    .line 178
    .local v6, "b15":I
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v7, v7, v5

    ushr-int/lit8 v7, v7, 0x4

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v8, v8, v3

    shl-int/lit8 v8, v8, 0x1c

    or-int/2addr v7, v8

    .line 179
    .local v7, "b36":I
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v8, v8, v5

    ushr-int/lit8 v8, v8, 0xd

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v9, v9, v3

    shl-int/lit8 v9, v9, 0x13

    or-int/2addr v8, v9

    .line 180
    .local v8, "b45":I
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v9, v9, v3

    .line 181
    .local v9, "b64":I
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v10, v10, v3

    ushr-int/lit8 v10, v10, 0x9

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0x17

    or-int/2addr v10, v11

    .line 182
    .local v10, "b73":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v11, v11, v3

    ushr-int/lit8 v11, v11, 0x19

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v13, v13, v12

    shl-int/lit8 v13, v13, 0x7

    or-int/2addr v11, v13

    .line 183
    .local v11, "b89":I
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v13, v13, v3

    ushr-int/lit8 v13, v13, 0x1f

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v14, v14, v12

    shl-int/2addr v14, v5

    or-int/2addr v13, v14

    .line 184
    .local v13, "b95":I
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v14, v14, v2

    ushr-int/lit8 v14, v14, 0x8

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v5

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v14, v15

    .line 185
    .local v14, "s8":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v2

    ushr-int/lit8 v15, v15, 0xd

    const/16 v16, 0x0

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v2, v2, v5

    shl-int/lit8 v2, v2, 0x13

    or-int/2addr v2, v15

    .line 186
    .local v2, "s13":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v16

    ushr-int/lit8 v15, v15, 0x14

    const/16 v16, 0x2

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v3, v3, v5

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v3, v15

    .line 187
    .local v3, "s20":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v5

    ushr-int/lit8 v15, v15, 0xa

    const/16 v17, 0x1

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v5, v5, v16

    shl-int/lit8 v5, v5, 0x16

    or-int/2addr v5, v15

    .line 188
    .local v5, "s42":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x1c

    const/16 v18, 0x3

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v12, v12, v16

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v12, v15

    .line 189
    .local v12, "s60":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v16

    ushr-int/lit8 v15, v15, 0xf

    move/from16 v19, v1

    .end local v1    # "b2":I
    .local v19, "b2":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v1, v1, v18

    shl-int/lit8 v1, v1, 0x11

    or-int/2addr v1, v15

    .line 190
    .local v1, "s79":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v16

    ushr-int/lit8 v15, v15, 0x1d

    move/from16 v20, v1

    .end local v1    # "s79":I
    .local v20, "s79":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v1, v1, v18

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v15

    .line 191
    .local v1, "s93":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v15, v15, v16

    ushr-int/lit8 v15, v15, 0x1f

    move/from16 v16, v1

    .end local v1    # "s93":I
    .local v16, "s93":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v1, v1, v18

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v15

    .line 193
    .local v1, "s94":I
    and-int v15, v4, v14

    and-int v17, v2, v3

    xor-int v15, v15, v17

    and-int v17, v13, v5

    xor-int v15, v15, v17

    and-int v17, v12, v20

    xor-int v15, v15, v17

    and-int v17, v4, v13

    and-int v17, v17, v1

    xor-int v15, v15, v17

    xor-int v15, v15, v16

    xor-int v15, v15, v19

    xor-int/2addr v15, v6

    xor-int/2addr v15, v7

    xor-int/2addr v15, v8

    xor-int/2addr v15, v9

    xor-int/2addr v15, v10

    xor-int/2addr v15, v11

    return v15
.end method

.method private getOutputLFSR()I
    .locals 7

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 159
    .local v0, "s0":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v1, v2, v1

    ushr-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x19

    or-int/2addr v1, v2

    .line 160
    .local v1, "s7":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0x6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x1a

    or-int/2addr v2, v3

    .line 161
    .local v2, "s38":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x6

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x1a

    or-int/2addr v3, v5

    .line 162
    .local v3, "s70":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v4, v5, v4

    ushr-int/lit8 v4, v4, 0x11

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    .line 163
    .local v4, "s81":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v5, v5, v6

    .line 165
    .local v5, "s96":I
    xor-int v6, v0, v1

    xor-int/2addr v6, v2

    xor-int/2addr v6, v3

    xor-int/2addr v6, v4

    xor-int/2addr v6, v5

    return v6
.end method

.method private getOutputNFSR()I
    .locals 22

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 128
    .local v1, "b0":I
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v3, v3, v2

    const/4 v4, 0x3

    ushr-int/2addr v3, v4

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x1d

    or-int/2addr v3, v5

    .line 129
    .local v3, "b3":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0xb

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v7, v7, v6

    shl-int/lit8 v7, v7, 0x15

    or-int/2addr v5, v7

    .line 130
    .local v5, "b11":I
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v7, v7, v2

    ushr-int/lit8 v7, v7, 0xd

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v8, v8, v6

    shl-int/lit8 v8, v8, 0x13

    or-int/2addr v7, v8

    .line 131
    .local v7, "b13":I
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v8, v8, v2

    ushr-int/lit8 v8, v8, 0x11

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v9, v9, v6

    shl-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    .line 132
    .local v8, "b17":I
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v9, v9, v2

    ushr-int/lit8 v9, v9, 0x12

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v10, v10, v6

    shl-int/lit8 v10, v10, 0xe

    or-int/2addr v9, v10

    .line 133
    .local v9, "b18":I
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v10, v10, v2

    ushr-int/lit8 v10, v10, 0x1a

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v11, v11, v6

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    .line 134
    .local v10, "b26":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v2, v11, v2

    ushr-int/lit8 v2, v2, 0x1b

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v11, v11, v6

    shl-int/lit8 v11, v11, 0x5

    or-int/2addr v2, v11

    .line 135
    .local v2, "b27":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v11, v11, v6

    ushr-int/lit8 v11, v11, 0x8

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    .line 136
    .local v11, "b40":I
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v12, v12, v6

    ushr-int/lit8 v12, v12, 0x10

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v14, v14, v13

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v12, v14

    .line 137
    .local v12, "b48":I
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v14, v14, v6

    ushr-int/lit8 v14, v14, 0x18

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v13

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    .line 138
    .local v14, "b56":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v6

    ushr-int/lit8 v15, v15, 0x1b

    const/16 v16, 0x3

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v4, v4, v13

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v4, v15

    .line 139
    .local v4, "b59":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v6

    ushr-int/lit8 v15, v15, 0x1d

    const/16 v17, 0x1

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v6, v6, v13

    shl-int/lit8 v6, v6, 0x3

    or-int/2addr v6, v15

    .line 140
    .local v6, "b61":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v13

    ushr-int/lit8 v15, v15, 0x1

    const/16 v17, 0x2

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v13, v13, v16

    shl-int/lit8 v13, v13, 0x1f

    or-int/2addr v13, v15

    .line 141
    .local v13, "b65":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x3

    move/from16 v18, v1

    .end local v1    # "b0":I
    .local v18, "b0":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v1, v1, v16

    shl-int/lit8 v1, v1, 0x1d

    or-int/2addr v1, v15

    .line 142
    .local v1, "b67":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x4

    move/from16 v19, v1

    .end local v1    # "b67":I
    .local v19, "b67":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v1, v1, v16

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v1, v15

    .line 143
    .local v1, "b68":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x14

    move/from16 v20, v1

    .end local v1    # "b68":I
    .local v20, "b68":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v1, v1, v16

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v15

    .line 144
    .local v1, "b84":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v17

    ushr-int/lit8 v15, v15, 0x1b

    move/from16 v17, v1

    .end local v1    # "b84":I
    .local v17, "b84":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v1, v1, v16

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v15

    .line 145
    .local v1, "b91":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    aget v15, v15, v16

    .line 147
    .local v15, "b96":I
    xor-int v16, v18, v10

    xor-int v16, v16, v14

    xor-int v16, v16, v1

    xor-int v16, v16, v15

    and-int v21, v3, v19

    xor-int v16, v16, v21

    and-int v21, v5, v7

    xor-int v16, v16, v21

    and-int v21, v8, v9

    xor-int v16, v16, v21

    and-int v21, v2, v4

    xor-int v16, v16, v21

    and-int v21, v11, v12

    xor-int v16, v16, v21

    and-int v21, v6, v13

    xor-int v16, v16, v21

    and-int v21, v20, v17

    xor-int v16, v16, v21

    return v16
.end method

.method private initGrain()V
    .locals 5

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutput()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    .line 114
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputNFSR()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    xor-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    .line 115
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputLFSR()I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    xor-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    .line 118
    return-void
.end method

.method private oneRound()V
    .locals 4

    .line 286
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutput()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    .line 287
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 288
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 289
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 290
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 292
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputNFSR()I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v2, v3, v2

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    .line 293
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputLFSR()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    .line 294
    return-void
.end method

.method private setKey([B[B)V
    .locals 8
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

    .line 222
    const/16 v0, 0xc

    const/4 v1, -0x1

    aput-byte v1, p2, v0

    .line 223
    const/16 v0, 0xd

    aput-byte v1, p2, v0

    .line 224
    const/16 v0, 0xe

    aput-byte v1, p2, v0

    .line 225
    const/16 v0, 0xf

    aput-byte v1, p2, v0

    .line 226
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    .line 227
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 235
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    add-int/lit8 v4, v0, 0x3

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v4, v4, v6

    shl-int/lit8 v4, v4, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 239
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    add-int/lit8 v4, v0, 0x3

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    add-int/lit8 v7, v0, 0x2

    aget-byte v4, v4, v7

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 242
    add-int/lit8 v0, v0, 0x4

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private shift([II)[I
    .locals 3
    .param p1, "array"    # [I
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "val"
        }
    .end annotation

    .line 206
    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 207
    const/4 v1, 0x2

    aget v2, p1, v1

    aput v2, p1, v0

    .line 208
    const/4 v0, 0x3

    aget v2, p1, v0

    aput v2, p1, v1

    .line 209
    aput p2, p1, v0

    .line 211
    return-object p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "Grain-128"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 58
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 64
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 66
    .local v0, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 68
    .local v1, "iv":[B
    if-eqz v1, :cond_2

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 74
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 81
    .local v2, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 82
    .local v3, "keyBytes":[B
    array-length v4, v3

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 88
    new-instance v4, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 89
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v7

    invoke-direct {v4, v5, v6, p2, v7}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 88
    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 94
    array-length v4, v3

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    .line 95
    array-length v4, v3

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    .line 96
    const/4 v4, 0x4

    new-array v5, v4, [I

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    .line 97
    new-array v5, v4, [I

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    .line 98
    new-array v4, v4, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    .line 100
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    array-length v5, v3

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->reset()V

    .line 104
    return-void

    .line 84
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Grain-128 key must be 128 bits long"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    .end local v2    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v3    # "keyBytes":[B
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Grain-128 init parameters must include a key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Grain-128 requires exactly 12 bytes of IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    .end local v0    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "iv":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain-128 Init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 250
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    if-eqz v0, :cond_3

    .line 256
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 261
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 268
    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getKeyStream()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "i":I
    :cond_0
    return p3

    .line 263
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 276
    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    .line 277
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->setKey([B[B)V

    .line 278
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->initGrain()V

    .line 279
    return-void
.end method

.method public returnByte(B)B
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 298
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getKeyStream()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
