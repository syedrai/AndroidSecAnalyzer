.class public Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "G3413OFBBlockCipher.java"


# instance fields
.field private R:[B

.field private R_init:[B

.field private Y:[B

.field private blockSize:I

.field private byteCount:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private initialized:Z

.field private m:I


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

    .line 32
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->initialized:Z

    .line 33
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->blockSize:I

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 35
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->Y:[B

    .line 36
    return-void
.end method

.method private generateR()V
    .locals 7

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->m:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->blockSize:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/GOST3413CipherUtil;->LSB([BI)[B

    move-result-object v0

    .line 158
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->Y:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R:[B

    array-length v4, v0

    iget v5, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->m:I

    array-length v6, v0

    sub-int/2addr v5, v6

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    return-void
.end method

.method private generateY()V
    .locals 4

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->blockSize:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/GOST3413CipherUtil;->MSB([BI)[B

    move-result-object v0

    .line 148
    .local v0, "msb":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->Y:[B

    invoke-interface {v1, v0, v2, v3, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 149
    return-void
.end method

.method private initArrays()V
    .locals 1

    .line 90
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R:[B

    .line 91
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R_init:[B

    .line 92
    return-void
.end method

.method private setupDefaultParams()V
    .locals 1

    .line 101
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->m:I

    .line 102
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
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

    .line 125
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->byteCount:I

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->generateY()V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->Y:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 131
    .local v0, "rv":B
    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->byteCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->byteCount:I

    .line 133
    iget v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->byteCount:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->getBlockSize()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->byteCount:I

    .line 136
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->generateR()V

    .line 139
    :cond_1
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->blockSize:I

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

    .line 41
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 43
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 45
    .local v0, "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 47
    .local v3, "iv":[B
    array-length v4, v3

    iget v5, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->blockSize:I

    if-lt v4, v5, :cond_1

    .line 51
    array-length v4, v3

    iput v4, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->m:I

    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->initArrays()V

    .line 55
    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R_init:[B

    .line 56
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R_init:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R_init:[B

    array-length v6, v6

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 66
    .end local v0    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_0
    goto :goto_0

    .line 49
    .restart local v0    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .restart local v3    # "iv":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter m must blockSize <= m"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->setupDefaultParams()V

    .line 72
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->initArrays()V

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R_init:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R_init:[B

    array-length v4, v4

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    if-eqz p2, :cond_3

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 82
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->initialized:Z

    .line 83
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

    .line 118
    iget v3, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->blockSize:I

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
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->processBytes([BII[BI)I

    .line 119
    iget p1, v0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->blockSize:I

    return p1
.end method

.method public reset()V
    .locals 4

    .line 165
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->initialized:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R_init:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->R_init:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->Y:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 169
    iput v3, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->byteCount:I

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/G3413OFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 172
    :cond_0
    return-void
.end method
