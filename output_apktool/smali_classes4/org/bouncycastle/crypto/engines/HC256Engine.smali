.class public Lorg/bouncycastle/crypto/engines/HC256Engine;
.super Ljava/lang/Object;
.source "HC256Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private buf:[B

.field private cnt:I

.field private idx:I

.field private initialised:Z

.field private iv:[B

.field private key:[B

.field private p:[I

.field private q:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x400

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    .line 26
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    .line 183
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    .line 184
    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    return-void
.end method

.method private getByte()B
    .locals 6

    .line 188
    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->step()I

    move-result v0

    .line 191
    .local v0, "step":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 192
    shr-int/lit8 v0, v0, 0x8

    .line 193
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 194
    shr-int/lit8 v0, v0, 0x8

    .line 195
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    .line 196
    shr-int/lit8 v0, v0, 0x8

    .line 197
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 199
    .end local v0    # "step":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    aget-byte v0, v0, v3

    .line 200
    .local v0, "ret":B
    iget v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    add-int/2addr v3, v2

    and-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    .line 201
    return v0
.end method

.method private init()V
    .locals 9

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v0, v0

    const/16 v1, 0x10

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v0, v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be 128/256 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v0, v0

    if-lt v0, v1, :cond_8

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v0, v0

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    .line 82
    new-array v0, v2, [B

    .line 84
    .local v0, "k":[B
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v5, v5

    invoke-static {v4, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v5, v5

    invoke-static {v4, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    .line 90
    .end local v0    # "k":[B
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v0, v0

    if-ge v0, v2, :cond_3

    .line 92
    new-array v0, v2, [B

    .line 94
    .local v0, "newIV":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v4, v4

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v4, v4

    array-length v5, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    .line 100
    .end local v0    # "newIV":[B
    :cond_3
    iput v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->idx:I

    .line 101
    iput v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    .line 103
    const/16 v0, 0xa00

    new-array v1, v0, [I

    .line 105
    .local v1, "w":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 107
    shr-int/lit8 v5, v4, 0x2

    aget v6, v1, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v4, 0x3

    mul-int/lit8 v8, v8, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v1, v5

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 112
    shr-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x8

    aget v6, v1, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v4, 0x3

    mul-int/lit8 v8, v8, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v1, v5

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 115
    .end local v4    # "i":I
    :cond_5
    const/16 v2, 0x10

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_6

    .line 117
    add-int/lit8 v4, v2, -0x2

    aget v4, v1, v4

    .line 118
    .local v4, "x":I
    add-int/lit8 v5, v2, -0xf

    aget v5, v1, v5

    .line 119
    .local v5, "y":I
    const/16 v6, 0x11

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v6

    const/16 v7, 0x13

    invoke-static {v4, v7}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v4, 0xa

    xor-int/2addr v6, v7

    add-int/lit8 v7, v2, -0x7

    aget v7, v1, v7

    add-int/2addr v6, v7

    .line 121
    const/4 v7, 0x7

    invoke-static {v5, v7}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v7

    const/16 v8, 0x12

    invoke-static {v5, v8}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v8

    xor-int/2addr v7, v8

    ushr-int/lit8 v8, v5, 0x3

    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v7, v2, -0x10

    aget v7, v1, v7

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    aput v6, v1, v2

    .line 115
    .end local v4    # "x":I
    .end local v5    # "y":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 125
    .end local v2    # "i":I
    :cond_6
    const/16 v0, 0x200

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    const/16 v4, 0x400

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    const/16 v0, 0x600

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/16 v2, 0x1000

    if-ge v0, v2, :cond_7

    .line 130
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->step()I

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 133
    .end local v0    # "i":I
    :cond_7
    iput v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    .line 134
    return-void

    .line 76
    .end local v1    # "w":[I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The IV must be at least 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rotateRight(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "bits"
        }
    .end annotation

    .line 245
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private step()I
    .locals 9

    .line 31
    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    and-int/lit16 v0, v0, 0x3ff

    .line 33
    .local v0, "j":I
    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    const/16 v2, 0x400

    const/16 v3, 0x17

    const/16 v4, 0xa

    if-ge v1, v2, :cond_0

    .line 35
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v2, v0, -0x3

    and-int/lit16 v2, v2, 0x3ff

    aget v1, v1, v2

    .line 36
    .local v1, "x":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit16 v5, v0, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v2, v2, v5

    .line 37
    .local v2, "y":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    aget v6, v5, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v8, v0, -0xa

    and-int/lit16 v8, v8, 0x3ff

    aget v7, v7, v8

    .line 38
    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v4

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v3

    xor-int/2addr v3, v4

    add-int/2addr v7, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    xor-int v4, v1, v2

    and-int/lit16 v4, v4, 0x3ff

    aget v3, v3, v4

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    aput v6, v5, v0

    .line 41
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    add-int/lit8 v4, v0, -0xc

    and-int/lit16 v4, v4, 0x3ff

    aget v1, v3, v4

    .line 42
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    and-int/lit16 v4, v1, 0xff

    aget v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x300

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    aget v4, v4, v0

    xor-int v1, v3, v4

    .line 45
    .end local v2    # "y":I
    .local v1, "ret":I
    goto :goto_0

    .line 48
    .end local v1    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v2, v0, -0x3

    and-int/lit16 v2, v2, 0x3ff

    aget v1, v1, v2

    .line 49
    .local v1, "x":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit16 v5, v0, -0x3ff

    and-int/lit16 v5, v5, 0x3ff

    aget v2, v2, v5

    .line 50
    .restart local v2    # "y":I
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    aget v6, v5, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v8, v0, -0xa

    and-int/lit16 v8, v8, 0x3ff

    aget v7, v7, v8

    .line 51
    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v4

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/HC256Engine;->rotateRight(II)I

    move-result v3

    xor-int/2addr v3, v4

    add-int/2addr v7, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    xor-int v4, v1, v2

    and-int/lit16 v4, v4, 0x3ff

    aget v3, v3, v4

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    aput v6, v5, v0

    .line 54
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    add-int/lit8 v4, v0, -0xc

    and-int/lit16 v4, v4, 0x3ff

    aget v1, v3, v4

    .line 55
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    and-int/lit16 v4, v1, 0xff

    aget v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x200

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->p:[I

    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x300

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->q:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    move v1, v3

    .line 59
    .end local v2    # "y":I
    .local v1, "ret":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0x7ff

    iput v2, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->cnt:I

    .line 60
    return v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 138
    const-string v0, "HC-256"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
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

    .line 153
    move-object v0, p2

    .line 155
    .local v0, "keyParam":Lorg/bouncycastle/crypto/CipherParameters;
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    .line 157
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    .line 158
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->iv:[B

    .line 165
    :goto_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    .line 167
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    .line 168
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->init()V

    .line 170
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 171
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->key:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v1, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 170
    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->initialised:Z

    .line 181
    return-void

    .line 175
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter passed to HC256 init - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 207
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/HC256Engine;->initialised:Z

    if-eqz v0, :cond_3

    .line 213
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 218
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 225
    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getByte()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_0
    return p3

    .line 220
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getAlgorithmName()Ljava/lang/String;

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
    .locals 0

    .line 233
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->init()V

    .line 234
    return-void
.end method

.method public returnByte(B)B
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC256Engine;->getByte()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method
