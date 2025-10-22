.class public Lorg/bouncycastle/crypto/engines/RC564Engine;
.super Ljava/lang/Object;
.source "RC564Engine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final P64:J = -0x481eae9d7512d595L

.field private static final Q64:J = -0x61c8864680b583ebL

.field private static final bytesPerWord:I = 0x8

.field private static final wordSize:I = 0x40


# instance fields
.field private _S:[J

.field private _noRounds:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    .line 54
    return-void
.end method

.method private bytesToWord([BI)J
    .locals 7
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

    .line 270
    const-wide/16 v0, 0x0

    .line 272
    .local v0, "word":J
    const/4 v2, 0x7

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 274
    const/16 v3, 0x8

    shl-long v3, v0, v3

    add-int v5, v2, p2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 272
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 277
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method private decryptBlock([BI[BI)I
    .locals 8
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

    .line 214
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v0

    .line 215
    .local v0, "A":J
    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v2

    .line 217
    .local v2, "B":J
    iget v4, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 219
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v5

    aget-wide v5, v6, v7

    sub-long v5, v2, v5

    invoke-direct {p0, v5, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide v5

    xor-long v2, v5, v0

    .line 220
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v6, v4, 0x2

    aget-wide v6, v5, v6

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7, v2, v3}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide v5

    xor-long v0, v5, v2

    .line 217
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 223
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7, p3, p4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 224
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v5, v4, v5

    sub-long v5, v2, v5

    add-int/lit8 v4, p4, 0x8

    invoke-direct {p0, v5, v6, p3, v4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 226
    const/16 v4, 0x10

    return v4
.end method

.method private encryptBlock([BI[BI)I
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

    .line 193
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    add-long/2addr v0, v3

    .line 194
    .local v0, "A":J
    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    add-long/2addr v2, v6

    .line 196
    .local v2, "B":J
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    iget v6, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    if-gt v4, v6, :cond_0

    .line 198
    xor-long v6, v0, v2

    invoke-direct {p0, v6, v7, v2, v3}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v9, v4, 0x2

    aget-wide v9, v8, v9

    add-long v0, v6, v9

    .line 199
    xor-long v6, v2, v0

    invoke-direct {p0, v6, v7, v0, v1}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v6

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v9, v5

    aget-wide v9, v8, v9

    add-long v2, v6, v9

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    .end local v4    # "i":I
    :cond_0
    invoke-direct {p0, v0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 203
    add-int/lit8 v4, p4, 0x8

    invoke-direct {p0, v2, v3, p3, v4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 205
    const/16 v4, 0x10

    return v4
.end method

.method private rotateLeft(JJ)J
    .locals 6
    .param p1, "x"    # J
    .param p3, "y"    # J
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

    .line 248
    const-wide/16 v0, 0x3f

    and-long v2, p3, v0

    long-to-int v3, v2

    shl-long v2, p1, v3

    const-wide/16 v4, 0x40

    and-long/2addr v0, p3

    sub-long/2addr v4, v0

    long-to-int v0, v4

    ushr-long v0, p1, v0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private rotateRight(JJ)J
    .locals 6
    .param p1, "x"    # J
    .param p3, "y"    # J
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

    .line 263
    const-wide/16 v0, 0x3f

    and-long v2, p3, v0

    long-to-int v3, v2

    ushr-long v2, p1, v3

    const-wide/16 v4, 0x40

    and-long/2addr v0, p3

    sub-long/2addr v4, v0

    long-to-int v0, v4

    shl-long v0, p1, v0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private setKey([B)V
    .locals 17
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [J

    .line 131
    .local v2, "L":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_0

    .line 133
    div-int/lit8 v4, v3, 0x8

    aget-wide v5, v2, v4

    aget-byte v7, v1, v3

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    rem-int/lit8 v9, v3, 0x8

    mul-int/lit8 v9, v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v5, v7

    aput-wide v5, v2, v4

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_0
    iget v3, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [J

    iput-object v3, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    .line 144
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v4, 0x0

    const-wide v5, -0x481eae9d7512d595L    # -1.590398847350152E-39

    aput-wide v5, v3, v4

    .line 145
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 147
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    add-int/lit8 v6, v3, -0x1

    aget-wide v6, v5, v6

    const-wide v8, -0x61c8864680b583ebL

    add-long/2addr v6, v8

    aput-wide v6, v4, v3

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 157
    .end local v3    # "i":I
    :cond_1
    array-length v3, v2

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v4, v4

    if-le v3, v4, :cond_2

    .line 159
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x3

    .local v3, "iter":I
    goto :goto_2

    .line 163
    .end local v3    # "iter":I
    :cond_2
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    .line 166
    .restart local v3    # "iter":I
    :goto_2
    const-wide/16 v4, 0x0

    .local v4, "A":J
    const-wide/16 v6, 0x0

    .line 167
    .local v6, "B":J
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v9, 0x0

    .line 169
    .local v9, "j":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_3
    if-ge v10, v3, :cond_3

    .line 171
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v13, v12, v8

    add-long/2addr v13, v4

    add-long/2addr v13, v6

    move v12, v3

    move-wide v15, v4

    .end local v3    # "iter":I
    .end local v4    # "A":J
    .local v12, "iter":I
    .local v15, "A":J
    const-wide/16 v3, 0x3

    invoke-direct {v0, v13, v14, v3, v4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v3

    aput-wide v3, v11, v8

    move-wide v4, v3

    .line 172
    .end local v15    # "A":J
    .restart local v4    # "A":J
    aget-wide v13, v2, v9

    add-long/2addr v13, v4

    add-long/2addr v13, v6

    move-wide v15, v4

    .end local v4    # "A":J
    .restart local v15    # "A":J
    add-long v4, v15, v6

    invoke-direct {v0, v13, v14, v4, v5}, Lorg/bouncycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v3

    aput-wide v3, v2, v9

    move-wide v6, v3

    .line 173
    add-int/lit8 v3, v8, 0x1

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v4, v4

    rem-int v8, v3, v4

    .line 174
    add-int/lit8 v3, v9, 0x1

    array-length v4, v2

    rem-int v9, v3, v4

    .line 169
    add-int/lit8 v10, v10, 0x1

    move v3, v12

    move-wide v4, v15

    goto :goto_3

    .line 176
    .end local v10    # "k":I
    .end local v12    # "iter":I
    .end local v15    # "A":J
    .restart local v3    # "iter":I
    .restart local v4    # "A":J
    :cond_3
    return-void
.end method

.method private wordToBytes(J[BI)V
    .locals 4
    .param p1, "word"    # J
    .param p3, "dst"    # [B
    .param p4, "dstOff"    # I
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

    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 287
    add-int v2, v0, p4

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 288
    ushr-long/2addr p1, v1

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "RC5-64"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 63
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

    .line 78
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/RC5Parameters;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/RC5Parameters;

    .line 85
    .local v0, "p":Lorg/bouncycastle/crypto/params/RC5Parameters;
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->forEncryption:Z

    .line 87
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->_noRounds:I

    .line 89
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object v1

    .line 90
    .local v1, "key":[B
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RC564Engine;->setKey([B)V

    .line 92
    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/RC564Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v5

    invoke-direct {v2, v3, v4, p2, v5}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 93
    return-void

    .line 80
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/RC5Parameters;
    .end local v1    # "key":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to RC564 init - "

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

    .line 101
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC564Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC564Engine;->decryptBlock([BI[BI)I

    move-result v0

    .line 101
    :goto_0
    return v0
.end method

.method public reset()V
    .locals 0

    .line 107
    return-void
.end method
