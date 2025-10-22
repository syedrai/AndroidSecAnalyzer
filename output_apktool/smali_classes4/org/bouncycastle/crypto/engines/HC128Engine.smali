.class public Lorg/bouncycastle/crypto/engines/HC128Engine;
.super Ljava/lang/Object;
.source "HC128Engine.java"

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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x200

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    .line 29
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    .line 212
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    .line 213
    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    return-void
.end method

.method private static dim(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 91
    sub-int v0, p0, p1

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result v0

    return v0
.end method

.method private static f1(I)I
    .locals 2
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 34
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private static f2(I)I
    .locals 2
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 40
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x13

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private g1(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 46
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 47
    const/16 v1, 0x8

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    return v0
.end method

.method private g2(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 52
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getByte()B
    .locals 6

    .line 217
    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v0

    .line 220
    .local v0, "step":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 221
    shr-int/lit8 v0, v0, 0x8

    .line 222
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 223
    shr-int/lit8 v0, v0, 0x8

    .line 224
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    .line 225
    shr-int/lit8 v0, v0, 0x8

    .line 226
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 228
    .end local v0    # "step":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    aget-byte v0, v0, v3

    .line 229
    .local v0, "ret":B
    iget v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    add-int/2addr v3, v2

    and-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    .line 230
    return v0
.end method

.method private h1(I)I
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private h2(I)I
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 11

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    array-length v0, v0

    if-ne v0, v1, :cond_5

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    .line 129
    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    .line 131
    const/16 v2, 0x500

    new-array v3, v2, [I

    .line 133
    .local v3, "w":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v1, :cond_0

    .line 135
    shr-int/lit8 v6, v4, 0x2

    aget v7, v3, v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    aget-byte v8, v8, v4

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v4, 0x3

    mul-int/lit8 v9, v9, 0x8

    shl-int v5, v8, v9

    or-int/2addr v5, v7

    aput v5, v3, v6

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x4

    invoke-static {v3, v0, v3, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    array-length v7, v7

    if-ge v6, v7, :cond_1

    if-ge v6, v1, :cond_1

    .line 141
    shr-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    aget v8, v3, v7

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    and-int/lit8 v10, v6, 0x3

    mul-int/lit8 v10, v10, 0x8

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v3, v7

    .line 139
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 143
    .end local v6    # "i":I
    :cond_1
    const/16 v1, 0xc

    invoke-static {v3, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    const/16 v1, 0x10

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 147
    add-int/lit8 v4, v1, -0x2

    aget v4, v3, v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->f2(I)I

    move-result v4

    add-int/lit8 v5, v1, -0x7

    aget v5, v3, v5

    add-int/2addr v4, v5

    add-int/lit8 v5, v1, -0xf

    aget v5, v3, v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->f1(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x10

    aget v5, v3, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    aput v4, v3, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x100

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    const/16 v4, 0x200

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    const/16 v1, 0x300

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v4, :cond_3

    .line 155
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v5

    aput v5, v2, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 157
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v4, :cond_4

    .line 159
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v5

    aput v5, v2, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 162
    .end local v1    # "i":I
    :cond_4
    iput v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    .line 163
    return-void

    .line 124
    .end local v3    # "w":[I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The IV must be 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static mod1024(I)I
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

    .line 81
    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method private static mod512(I)I
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

    .line 86
    and-int/lit16 v0, p0, 0x1ff

    return v0
.end method

.method private static rotateLeft(II)I
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

    .line 59
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
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

    .line 66
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private step()I
    .locals 8

    .line 96
    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result v0

    .line 98
    .local v0, "j":I
    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    const/16 v2, 0x200

    const/16 v3, 0xc

    const/16 v4, 0x1ff

    const/16 v5, 0xa

    const/4 v6, 0x3

    if-ge v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    aget v2, v1, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v6

    aget v6, v7, v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v5, v7, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v4

    aget v4, v7, v4

    invoke-direct {p0, v6, v5, v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->g1(III)I

    move-result v4

    add-int/2addr v2, v4

    aput v2, v1, v0

    .line 101
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->h1(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    aget v2, v2, v0

    xor-int/2addr v1, v2

    .local v1, "ret":I
    goto :goto_0

    .line 105
    .end local v1    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    aget v2, v1, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v6

    aget v6, v7, v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v5, v7, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v4

    aget v4, v7, v4

    invoke-direct {p0, v6, v5, v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->g2(III)I

    move-result v4

    add-int/2addr v2, v4

    aput v2, v1, v0

    .line 106
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->h2(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    aget v2, v2, v0

    xor-int/2addr v1, v2

    .line 108
    .restart local v1    # "ret":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/HC128Engine;->mod1024(I)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    .line 109
    return v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 167
    const-string v0, "HC-128"

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

    .line 184
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    .line 186
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    .line 187
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 194
    .local v0, "keyParam":Lorg/bouncycastle/crypto/CipherParameters;
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_0

    .line 196
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    .line 197
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->init()V

    .line 199
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 200
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v1, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 199
    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->initialised:Z

    .line 210
    return-void

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 206
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid parameter passed to HC128 init - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    .end local v0    # "keyParam":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no IV passed"

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

    .line 236
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->initialised:Z

    if-eqz v0, :cond_3

    .line 242
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 247
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 254
    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getByte()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_0
    return p3

    .line 249
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getAlgorithmName()Ljava/lang/String;

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

    .line 262
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->init()V

    .line 263
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

    .line 267
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getByte()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method
