.class public Lorg/bouncycastle/crypto/engines/RC6Engine;
.super Ljava/lang/Object;
.source "RC6Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final LGW:I = 0x5

.field private static final P32:I = -0x481eae9d

.field private static final Q32:I = -0x61c88647

.field private static final _noRounds:I = 0x14

.field private static final bytesPerWord:I = 0x4

.field private static final wordSize:I = 0x20


# instance fields
.field private _S:[I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    .line 49
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 4
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

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, "word":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 347
    shl-int/lit8 v2, v0, 0x8

    add-int v3, v1, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    .line 345
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 350
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private decryptBlock([BI[BI)I
    .locals 11
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

    .line 255
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    .line 256
    .local v0, "A":I
    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    .line 257
    .local v1, "B":I
    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    .line 258
    .local v2, "C":I
    add-int/lit8 v3, p2, 0xc

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v3

    .line 261
    .local v3, "D":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v5, 0x2b

    aget v4, v4, v5

    sub-int/2addr v2, v4

    .line 262
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v5, 0x2a

    aget v4, v4, v5

    sub-int/2addr v0, v4

    .line 265
    const/16 v4, 0x14

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 267
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v7, 0x0

    .line 269
    .local v7, "u":I
    move v8, v3

    .line 270
    .local v8, "temp":I
    move v3, v2

    .line 271
    move v2, v1

    .line 272
    move v1, v0

    .line 273
    move v0, v8

    .line 275
    mul-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v5

    mul-int v9, v9, v1

    .line 276
    .end local v6    # "t":I
    .local v9, "t":I
    const/4 v6, 0x5

    invoke-direct {p0, v9, v6}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v9

    .line 278
    mul-int/lit8 v10, v3, 0x2

    add-int/2addr v10, v5

    mul-int v10, v10, v3

    .line 279
    .end local v7    # "u":I
    .local v10, "u":I
    invoke-direct {p0, v10, v6}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v6

    .line 281
    .end local v10    # "u":I
    .local v6, "u":I
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v10, v4, 0x2

    add-int/2addr v10, v5

    aget v5, v7, v10

    sub-int/2addr v2, v5

    .line 282
    invoke-direct {p0, v2, v9}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v2

    .line 283
    xor-int/2addr v2, v6

    .line 285
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v7, v4, 0x2

    aget v5, v5, v7

    sub-int/2addr v0, v5

    .line 286
    invoke-direct {p0, v0, v6}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v0

    .line 287
    xor-int/2addr v0, v9

    .line 265
    .end local v6    # "u":I
    .end local v8    # "temp":I
    .end local v9    # "t":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 291
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    .line 292
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v1, v4

    .line 294
    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 295
    add-int/lit8 v4, p4, 0x4

    invoke-direct {p0, v1, p3, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 296
    add-int/lit8 v4, p4, 0x8

    invoke-direct {p0, v2, p3, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 297
    add-int/lit8 v4, p4, 0xc

    invoke-direct {p0, v3, p3, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 299
    const/16 v4, 0x10

    return v4
.end method

.method private encryptBlock([BI[BI)I
    .locals 10
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

    .line 201
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    .line 202
    .local v0, "A":I
    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    .line 203
    .local v1, "B":I
    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    .line 204
    .local v2, "C":I
    add-int/lit8 v3, p2, 0xc

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v3

    .line 207
    .local v3, "D":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v1, v4

    .line 208
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    .line 211
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v6, 0x14

    if-gt v4, v6, :cond_0

    .line 213
    const/4 v6, 0x0

    .local v6, "t":I
    const/4 v7, 0x0

    .line 215
    .local v7, "u":I
    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v5

    mul-int v8, v8, v1

    .line 216
    .end local v6    # "t":I
    .local v8, "t":I
    const/4 v6, 0x5

    invoke-direct {p0, v8, v6}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v8

    .line 218
    mul-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v5

    mul-int v9, v9, v3

    .line 219
    .end local v7    # "u":I
    .local v9, "u":I
    invoke-direct {p0, v9, v6}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v6

    .line 221
    .end local v9    # "u":I
    .local v6, "u":I
    xor-int/2addr v0, v8

    .line 222
    invoke-direct {p0, v0, v6}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v0

    .line 223
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    aget v7, v7, v9

    add-int/2addr v0, v7

    .line 225
    xor-int/2addr v2, v6

    .line 226
    invoke-direct {p0, v2, v8}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v2

    .line 227
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v9, v5

    aget v7, v7, v9

    add-int/2addr v2, v7

    .line 229
    move v7, v0

    .line 230
    .local v7, "temp":I
    move v0, v1

    .line 231
    move v1, v2

    .line 232
    move v2, v3

    .line 233
    move v3, v7

    .line 211
    .end local v6    # "u":I
    .end local v7    # "temp":I
    .end local v8    # "t":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v5, 0x2a

    aget v4, v4, v5

    add-int/2addr v0, v4

    .line 237
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v5, 0x2b

    aget v4, v4, v5

    add-int/2addr v2, v4

    .line 240
    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 241
    add-int/lit8 v4, p4, 0x4

    invoke-direct {p0, v1, p3, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 242
    add-int/lit8 v4, p4, 0x8

    invoke-direct {p0, v2, p3, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 243
    add-int/lit8 v4, p4, 0xc

    invoke-direct {p0, v3, p3, v4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 245
    const/16 v4, 0x10

    return v4
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

    .line 321
    shl-int v0, p1, p2

    neg-int v1, p2

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

    .line 336
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .locals 11
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 137
    array-length v0, p1

    const/4 v1, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 138
    .local v0, "c":I
    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 142
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    .line 145
    .local v2, "L":[I
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 147
    div-int/lit8 v4, v3, 0x4

    div-int/lit8 v5, v3, 0x4

    aget v5, v2, v5

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    aput v5, v2, v4

    .line 145
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 157
    .end local v3    # "i":I
    :cond_1
    const/16 v3, 0x2c

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    .line 159
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v4, 0x0

    const v5, -0x481eae9d

    aput v5, v3, v4

    .line 160
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 162
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    const v6, -0x61c88647

    add-int/2addr v5, v6

    aput v5, v4, v3

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    .end local v3    # "i":I
    :cond_2
    array-length v3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v4, v4

    if-le v3, v4, :cond_3

    .line 174
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x3

    .local v3, "iter":I
    goto :goto_2

    .line 178
    .end local v3    # "iter":I
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    .line 181
    .restart local v3    # "iter":I
    :goto_2
    const/4 v4, 0x0

    .line 182
    .local v4, "A":I
    const/4 v5, 0x0

    .line 183
    .local v5, "B":I
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v7, 0x0

    .line 185
    .local v7, "j":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3
    if-ge v8, v3, :cond_4

    .line 187
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    aget v10, v10, v6

    add-int/2addr v10, v4

    add-int/2addr v10, v5

    invoke-direct {p0, v10, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v10

    aput v10, v9, v6

    move v4, v10

    .line 188
    aget v9, v2, v7

    add-int/2addr v9, v4

    add-int/2addr v9, v5

    add-int v10, v4, v5

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v9

    aput v9, v2, v7

    move v5, v9

    .line 189
    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v10, v10

    rem-int v6, v9, v10

    .line 190
    add-int/lit8 v9, v7, 0x1

    array-length v10, v2

    rem-int v7, v9, v10

    .line 185
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 192
    .end local v8    # "k":I
    :cond_4
    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 3
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

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 360
    add-int v1, v0, p3

    int-to-byte v2, p1

    aput-byte v2, p2, v1

    .line 361
    ushr-int/lit8 p1, p1, 0x8

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "RC6"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 58
    const/16 v0, 0x10

    return v0
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

    .line 73
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 79
    .local v0, "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->forEncryption:Z

    .line 80
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 81
    .local v1, "key":[B
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RC6Engine;->setKey([B)V

    .line 83
    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RC6Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v5

    invoke-direct {v2, v3, v4, p2, v5}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 84
    return-void

    .line 75
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v1    # "key":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to RC6 init - "

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
    .locals 3
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

    .line 92
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RC6Engine;->getBlockSize()I

    move-result v0

    .line 93
    .local v0, "blockSize":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->_S:[I

    if-eqz v1, :cond_3

    .line 97
    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_2

    .line 101
    add-int v1, p4, v0

    array-length v2, p3

    if-gt v1, v2, :cond_1

    .line 106
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/RC6Engine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->encryptBlock([BI[BI)I

    move-result v1

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC6Engine;->decryptBlock([BI[BI)I

    move-result v1

    .line 106
    :goto_0
    return v1

    .line 103
    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_2
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RC6 engine not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 0

    .line 113
    return-void
.end method
