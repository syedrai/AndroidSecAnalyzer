.class public Lorg/bouncycastle/crypto/engines/RC532Engine;
.super Ljava/lang/Object;
.source "RC532Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final P32:I = -0x481eae9d

.field private static final Q32:I = -0x61c88647


# instance fields
.field private _S:[I

.field private _noRounds:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    .line 52
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "srcOff"
        }
    .end annotation

    .line 277
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v0

    .line 222
    .local v0, "A":I
    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v1

    .line 224
    .local v1, "B":I
    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 226
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    aget v3, v4, v5

    sub-int v3, v1, v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result v3

    xor-int v1, v3, v0

    .line 227
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    sub-int v3, v0, v3

    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result v3

    xor-int v0, v3, v1

    .line 224
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 230
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    sub-int v2, v0, v2

    invoke-direct {p0, v2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    .line 231
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget v2, v2, v3

    sub-int v2, v1, v2

    add-int/lit8 v3, p4, 0x4

    invoke-direct {p0, v2, p3, v3}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    .line 233
    const/16 v2, 0x8

    return v2
.end method

.method private encryptBlock([BI[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 201
    .local v0, "A":I
    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 203
    .local v1, "B":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    if-gt v2, v4, :cond_0

    .line 205
    xor-int v4, v0, v1

    invoke-direct {p0, v4, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v6, v2, 0x2

    aget v5, v5, v6

    add-int v0, v4, v5

    .line 206
    xor-int v4, v1, v0

    invoke-direct {p0, v4, v0}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    aget v5, v5, v6

    add-int v1, v4, v5

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    .line 210
    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    .line 212
    const/16 v2, 0x8

    return v2
.end method

.method private rotateLeft(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
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

    .line 255
    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    and-int/lit8 v1, p2, 0x1f

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
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

    .line 270
    and-int/lit8 v0, p2, 0x1f

    ushr-int v0, p1, v0

    and-int/lit8 v1, p2, 0x1f

    rsub-int/lit8 v1, v1, 0x20

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .locals 10
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 136
    array-length v0, p1

    const/4 v1, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 138
    .local v0, "L":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 140
    div-int/lit8 v3, v2, 0x4

    aget v4, v0, v3

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    rem-int/lit8 v6, v2, 0x4

    mul-int/lit8 v6, v6, 0x8

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    .line 151
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v3, 0x0

    const v4, -0x481eae9d

    aput v4, v2, v3

    .line 152
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 154
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    const v5, -0x61c88647

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 166
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x3

    .local v2, "iter":I
    goto :goto_2

    .line 170
    .end local v2    # "iter":I
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    .line 173
    .restart local v2    # "iter":I
    :goto_2
    const/4 v3, 0x0

    .local v3, "A":I
    const/4 v4, 0x0

    .line 174
    .local v4, "B":I
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .line 176
    .local v6, "j":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_3
    if-ge v7, v2, :cond_3

    .line 178
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget v9, v9, v5

    add-int/2addr v9, v3

    add-int/2addr v9, v4

    invoke-direct {p0, v9, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v9

    aput v9, v8, v5

    move v3, v9

    .line 179
    aget v8, v0, v6

    add-int/2addr v8, v3

    add-int/2addr v8, v4

    add-int v9, v3, v4

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v8

    aput v8, v0, v6

    move v4, v8

    .line 180
    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v9, v9

    rem-int v5, v8, v9

    .line 181
    add-int/lit8 v8, v6, 0x1

    array-length v9, v0

    rem-int v6, v8, v9

    .line 176
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 183
    .end local v7    # "k":I
    :cond_3
    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "word",
            "dst",
            "dstOff"
        }
    .end annotation

    .line 286
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 287
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 288
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 289
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 290
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "RC5-32"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 61
    const/16 v0, 0x8

    return v0
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

    .line 77
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/RC5Parameters;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/RC5Parameters;

    .line 81
    .local v0, "p":Lorg/bouncycastle/crypto/params/RC5Parameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    .line 83
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object v1

    .line 84
    .local v1, "key":[B
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->setKey([B)V

    .line 85
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/RC5Parameters;
    goto :goto_0

    .line 86
    .end local v1    # "key":[B
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 88
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 90
    .local v0, "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 91
    .restart local v1    # "key":[B
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->setKey([B)V

    .line 92
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    nop

    .line 98
    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->forEncryption:Z

    .line 99
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RC532Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x8

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v0, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 100
    return-void

    .line 95
    .end local v1    # "key":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to RC532 init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 108
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->decryptBlock([BI[BI)I

    move-result v0

    .line 108
    :goto_0
    return v0
.end method

.method public reset()V
    .locals 0

    .line 114
    return-void
.end method
