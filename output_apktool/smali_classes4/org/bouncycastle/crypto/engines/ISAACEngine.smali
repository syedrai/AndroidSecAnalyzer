.class public Lorg/bouncycastle/crypto/engines/ISAACEngine;
.super Ljava/lang/Object;
.source "ISAACEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private results:[I

.field private final sizeL:I

.field private final stateArraySize:I

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->sizeL:I

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->stateArraySize:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    .line 29
    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    .line 30
    const/16 v2, 0x400

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    .line 32
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    return-void
.end method

.method private isaac()V
    .locals 6

    .line 196
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    aget v1, v1, v0

    .line 200
    .local v1, "x":I
    and-int/lit8 v2, v0, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 205
    :pswitch_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v3, v3, 0x10

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    .line 204
    :pswitch_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v3, v3, 0x2

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    .line 203
    :pswitch_2
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v3, v3, 0x6

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_1

    .line 202
    :pswitch_3
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v3, v3, 0xd

    xor-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    .line 207
    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int/lit16 v4, v0, 0x80

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    .line 208
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    add-int/2addr v3, v4

    move v4, v3

    .local v4, "y":I
    aput v3, v2, v0

    .line 209
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v5, v4, 0xa

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    add-int/2addr v3, v1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    aput v3, v2, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "x":I
    .end local v4    # "y":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mix([I)V
    .locals 9
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    shl-int/lit8 v3, v3, 0xb

    xor-int/2addr v1, v3

    aput v1, p1, v0

    const/4 v1, 0x3

    aget v3, p1, v1

    aget v4, p1, v0

    add-int/2addr v3, v4

    aput v3, p1, v1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    add-int/2addr v3, v5

    aput v3, p1, v2

    .line 216
    aget v3, p1, v2

    aget v5, p1, v4

    ushr-int/2addr v5, v4

    xor-int/2addr v3, v5

    aput v3, p1, v2

    const/4 v3, 0x4

    aget v5, p1, v3

    aget v6, p1, v2

    add-int/2addr v5, v6

    aput v5, p1, v3

    aget v5, p1, v4

    aget v6, p1, v1

    add-int/2addr v5, v6

    aput v5, p1, v4

    .line 217
    aget v5, p1, v4

    aget v6, p1, v1

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v5, v6

    aput v5, p1, v4

    const/4 v5, 0x5

    aget v6, p1, v5

    aget v7, p1, v4

    add-int/2addr v6, v7

    aput v6, p1, v5

    aget v6, p1, v1

    aget v7, p1, v3

    add-int/2addr v6, v7

    aput v6, p1, v1

    .line 218
    aget v6, p1, v1

    aget v7, p1, v3

    ushr-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    aput v6, p1, v1

    const/4 v6, 0x6

    aget v7, p1, v6

    aget v1, p1, v1

    add-int/2addr v7, v1

    aput v7, p1, v6

    aget v1, p1, v3

    aget v7, p1, v5

    add-int/2addr v1, v7

    aput v1, p1, v3

    .line 219
    aget v1, p1, v3

    aget v7, p1, v5

    shl-int/lit8 v7, v7, 0xa

    xor-int/2addr v1, v7

    aput v1, p1, v3

    const/4 v1, 0x7

    aget v7, p1, v1

    aget v8, p1, v3

    add-int/2addr v7, v8

    aput v7, p1, v1

    aget v7, p1, v5

    aget v8, p1, v6

    add-int/2addr v7, v8

    aput v7, p1, v5

    .line 220
    aget v7, p1, v5

    aget v8, p1, v6

    ushr-int/lit8 v3, v8, 0x4

    xor-int/2addr v3, v7

    aput v3, p1, v5

    aget v3, p1, v0

    aget v5, p1, v5

    add-int/2addr v3, v5

    aput v3, p1, v0

    aget v3, p1, v6

    aget v5, p1, v1

    add-int/2addr v3, v5

    aput v3, p1, v6

    .line 221
    aget v3, p1, v6

    aget v5, p1, v1

    shl-int/lit8 v5, v5, 0x8

    xor-int/2addr v3, v5

    aput v3, p1, v6

    aget v3, p1, v2

    aget v5, p1, v6

    add-int/2addr v3, v5

    aput v3, p1, v2

    aget v3, p1, v1

    aget v5, p1, v0

    add-int/2addr v3, v5

    aput v3, p1, v1

    .line 222
    aget v3, p1, v1

    aget v5, p1, v0

    ushr-int/lit8 v5, v5, 0x9

    xor-int/2addr v3, v5

    aput v3, p1, v1

    aget v3, p1, v4

    aget v1, p1, v1

    add-int/2addr v3, v1

    aput v3, p1, v4

    aget v1, p1, v0

    aget v2, p1, v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 223
    return-void
.end method

.method private setKey([B)V
    .locals 11
    .param p1, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyBytes"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    const/16 v1, 0x100

    if-nez v0, :cond_0

    .line 128
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    if-nez v0, :cond_1

    .line 133
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    .line 139
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 141
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    aput v2, v4, v0

    aput v2, v3, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    .line 146
    iput v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    .line 149
    array-length v3, p1

    array-length v4, p1

    and-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 150
    .local v3, "t":[B
    array-length v4, p1

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    const/4 v0, 0x0

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 153
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    ushr-int/lit8 v4, v0, 0x2

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v2, v4

    .line 151
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 157
    :cond_3
    const/16 v2, 0x8

    new-array v4, v2, [I

    .line 159
    .local v4, "abcdefgh":[I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    .line 161
    const v5, -0x61c88647

    aput v5, v4, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 164
    :cond_4
    const/4 v0, 0x0

    :goto_3
    const/4 v5, 0x4

    if-ge v0, v5, :cond_5

    .line 166
    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->mix([I)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 169
    :cond_5
    const/4 v0, 0x0

    :goto_4
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v0, v5, :cond_a

    .line 171
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    if-ge v5, v1, :cond_9

    .line 173
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_6
    if-ge v7, v2, :cond_7

    .line 175
    aget v8, v4, v7

    if-ge v0, v6, :cond_6

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    add-int v10, v5, v7

    aget v9, v9, v10

    goto :goto_7

    :cond_6
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v10, v5, v7

    aget v9, v9, v10

    :goto_7
    add-int/2addr v8, v9

    aput v8, v4, v7

    .line 173
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 178
    :cond_7
    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->mix([I)V

    .line 180
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v2, :cond_8

    .line 182
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v9, v5, v7

    aget v10, v4, v7

    aput v10, v8, v9

    .line 180
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 171
    :cond_8
    add-int/lit8 v5, v5, 0x8

    goto :goto_5

    .line 169
    .end local v7    # "k":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 187
    .end local v5    # "j":I
    :cond_a
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    .line 189
    iput-boolean v6, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    .line 190
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "ISAAC"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
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

    .line 46
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 55
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 56
    .local v0, "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 57
    .local v1, "key":[B
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->setKey([B)V

    .line 59
    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    const/16 v5, 0x20

    if-ge v4, v5, :cond_0

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    goto :goto_0

    :cond_0
    const/16 v4, 0x100

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v5

    invoke-direct {v2, v3, v4, p2, v5}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 60
    return-void

    .line 48
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v1    # "key":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to ISAAC init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    .line 82
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    if-eqz v0, :cond_4

    .line 87
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 92
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_2

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 99
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    if-nez v1, :cond_0

    .line 101
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    .line 102
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian([I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    .line 104
    :cond_0
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 105
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x3ff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_1
    return p3

    .line 94
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->getAlgorithmName()Ljava/lang/String;

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
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->setKey([B)V

    .line 119
    return-void
.end method

.method public returnByte(B)B
    .locals 2
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 64
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian([I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 70
    .local v0, "out":B
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x3ff

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    .line 72
    return v0
.end method
