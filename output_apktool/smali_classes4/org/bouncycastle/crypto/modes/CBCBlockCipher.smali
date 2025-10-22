.class public Lorg/bouncycastle/crypto/modes/CBCBlockCipher;
.super Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;
.source "CBCBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/CBCModeCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cbcNextV:[B

.field private cbcV:[B

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z


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

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 45
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    .line 47
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    .line 48
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 49
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 50
    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 5
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

    .line 230
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 242
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v1, v2, :cond_0

    .line 244
    add-int v2, p4, v1

    aget-byte v3, p3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 253
    .local v1, "tmp":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 254
    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 256
    return v0

    .line 232
    .end local v0    # "length":I
    .end local v1    # "tmp":[B
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encryptBlock([BI[BI)I
    .locals 4
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

    .line 187
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v2, v1, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p3, p4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 206
    .local v0, "length":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v3, v3

    invoke-static {p3, p4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    return v0

    .line 189
    .end local v0    # "length":I
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CBCModeCipher;
    .locals 1
    .param p0, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CBC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encrypting",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 77
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 79
    .local v0, "oldEncrypting":Z
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 81
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 83
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 84
    .local v1, "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 86
    .local v3, "iv":[B
    array-length v4, v3

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ne v4, v5, :cond_0

    .line 91
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v5, v3

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 94
    .end local v1    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    goto :goto_0

    .line 88
    .restart local v1    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .restart local v3    # "iv":[B
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "initialisation vector must be the same length as block size"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    .end local v1    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 100
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 103
    if-eqz p2, :cond_2

    .line 105
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 107
    :cond_2
    if-ne v0, p1, :cond_3

    .line 111
    :goto_1
    return-void

    .line 109
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot change encrypting state without providing key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 153
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 4

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 166
    return-void
.end method
