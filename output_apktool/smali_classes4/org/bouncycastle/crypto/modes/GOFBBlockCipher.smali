.class public Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;
.source "GOFBBlockCipher.java"


# static fields
.field static final C1:I = 0x1010104

.field static final C2:I = 0x1010101


# instance fields
.field private IV:[B

.field N3:I

.field N4:I

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field firstStep:Z

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 42
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    .line 44
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 49
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    .line 50
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    .line 51
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    .line 52
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GCTR only for 64 bit block ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bytesToint([BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff"
        }
    .end annotation

    .line 178
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private intTobytes(I[BI)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "num",
            "out",
            "outOff"
        }
    .end annotation

    .line 188
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 189
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 190
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 191
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 192
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 7
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 196
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 198
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 200
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 203
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 205
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    const v3, 0x1010101

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 206
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    const v3, 0x1010104

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 207
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    if-ge v0, v3, :cond_1

    .line 209
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    if-lez v0, :cond_1

    .line 211
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 214
    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    .line 215
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v0, v3, v2}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    .line 217
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 220
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 222
    .local v0, "rv":B
    iget v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    iget v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_3

    .line 224
    iput v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    .line 229
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :cond_3
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
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

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 72
    iput v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 74
    instance-of v2, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_3

    .line 76
    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 77
    .local v2, "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 79
    .local v3, "iv":[B
    array-length v4, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 82
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v5, v5

    array-length v6, v3

    sub-int/2addr v5, v6

    array-length v6, v3

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v5, v5

    array-length v6, v3

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    .line 85
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    aput-byte v1, v5, v4

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 90
    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v5, v5

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 96
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 100
    .end local v2    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_2
    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 106
    if-eqz p2, :cond_4

    .line 108
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 111
    :cond_4
    :goto_2
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

    .line 154
    iget v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

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
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->processBytes([BII[BI)I

    .line 156
    iget p1, v0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return p1
.end method

.method public reset()V
    .locals 4

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 167
    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 168
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 171
    return-void
.end method
