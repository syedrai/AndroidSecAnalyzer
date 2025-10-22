.class public Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "G3413CFBBlockCipher.java"


# instance fields
.field private R:[B

.field private R_init:[B

.field private blockSize:I

.field private byteCount:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private forEncryption:Z

.field private gamma:[B

.field private inBuf:[B

.field private initialized:Z

.field private m:I

.field private final s:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 4
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "bitBlockSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "bitBlockSize"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->initialized:Z

    .line 50
    if-ltz p2, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    if-gt p2, v0, :cond_0

    .line 56
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->blockSize:I

    .line 57
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 58
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->s:I

    .line 59
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->inBuf:[B

    .line 60
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter bitBlockSize must be in range 0 < bitBlockSize <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initArrays()V
    .locals 1

    .line 123
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R:[B

    .line 124
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R_init:[B

    .line 125
    return-void
.end method

.method private setupDefaultParams()V
    .locals 1

    .line 134
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->m:I

    .line 135
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 4
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 158
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->byteCount:I

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->createGamma()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->gamma:[B

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->gamma:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 164
    .local v0, "rv":B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->inBuf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->byteCount:I

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->forEncryption:Z

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_0
    aput-byte v3, v1, v2

    .line 166
    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->byteCount:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->getBlockSize()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 168
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->byteCount:I

    .line 169
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->inBuf:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->generateR([B)V

    .line 172
    :cond_2
    return v0
.end method

.method createGamma()[B
    .locals 4

    .line 182
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->blockSize:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/GOST3413CipherUtil;->MSB([BI)[B

    move-result-object v0

    .line 183
    .local v0, "msb":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 184
    .local v1, "encryptedMsb":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 185
    iget v2, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->s:I

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/modes/GOST3413CipherUtil;->MSB([BI)[B

    move-result-object v2

    return-object v2
.end method

.method generateR([B)V
    .locals 6
    .param p1, "C"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "C"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->m:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->s:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/GOST3413CipherUtil;->LSB([BI)[B

    move-result-object v0

    .line 197
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R:[B

    array-length v2, v0

    iget v4, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->m:I

    array-length v5, v0

    sub-int/2addr v4, v5

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/CFB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 145
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->s:I

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
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

    .line 75
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->forEncryption:Z

    .line 76
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 78
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 80
    .local v0, "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 82
    .local v3, "iv":[B
    array-length v4, v3

    iget v5, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->blockSize:I

    if-lt v4, v5, :cond_1

    .line 86
    array-length v4, v3

    iput v4, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->m:I

    .line 88
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->initArrays()V

    .line 90
    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R_init:[B

    .line 91
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R_init:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R_init:[B

    array-length v6, v6

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 99
    .end local v0    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_0
    goto :goto_0

    .line 84
    .restart local v0    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .restart local v3    # "iv":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter m must blockSize <= m"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->setupDefaultParams()V

    .line 104
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->initArrays()V

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R_init:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R_init:[B

    array-length v4, v4

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    if-eqz p2, :cond_3

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 115
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->initialized:Z

    .line 116
    return-void
.end method

.method public processBlock([BI[BI)I
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->getBlockSize()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v1, "in":[B
    .local v2, "inOff":I
    .local v4, "out":[B
    .local v5, "outOff":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->processBytes([BII[BI)I

    .line 153
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->getBlockSize()I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 4

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->byteCount:I

    .line 209
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->inBuf:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 210
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->gamma:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 212
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->initialized:Z

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R_init:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->R_init:[B

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 218
    :cond_0
    return-void
.end method
