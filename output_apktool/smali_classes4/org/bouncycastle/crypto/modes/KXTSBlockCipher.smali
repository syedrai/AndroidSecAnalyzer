.class public Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;
.super Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;
.source "KXTSBlockCipher.java"


# static fields
.field private static final RED_POLY_128:J = 0x87L

.field private static final RED_POLY_256:J = 0x425L

.field private static final RED_POLY_512:J = 0x125L


# instance fields
.field private final blockSize:I

.field private counter:I

.field private final reductionPolynomial:J

.field private final tw_current:[J

.field private final tw_init:[J


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

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 53
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    .line 54
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->getReductionPolynomial(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    .line 55
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    .line 56
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    .line 58
    return-void
.end method

.method private static GF_double(J[J)V
    .locals 9
    .param p0, "redPoly"    # J
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "redPoly",
            "z"
        }
    .end annotation

    .line 189
    const-wide/16 v0, 0x0

    .line 190
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 192
    aget-wide v3, p2, v2

    .line 193
    .local v3, "zVal":J
    const/16 v5, 0x3f

    ushr-long v5, v3, v5

    .line 194
    .local v5, "bit":J
    const/4 v7, 0x1

    shl-long v7, v3, v7

    xor-long/2addr v7, v0

    aput-wide v7, p2, v2

    .line 195
    move-wide v0, v5

    .line 190
    .end local v3    # "zVal":J
    .end local v5    # "bit":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    aget-wide v3, p2, v2

    neg-long v5, v0

    and-long/2addr v5, p0

    xor-long/2addr v3, v5

    aput-wide v3, p2, v2

    .line 199
    return-void
.end method

.method protected static getReductionPolynomial(I)J
    .locals 2
    .param p0, "blockSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockSize"
        }
    .end annotation

    .line 30
    sparse-switch p0, :sswitch_data_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only 128, 256, and 512 -bit block sizes supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :sswitch_0
    const-wide/16 v0, 0x125

    return-wide v0

    .line 35
    :sswitch_1
    const-wide/16 v0, 0x425

    return-wide v0

    .line 33
    :sswitch_2
    const-wide/16 v0, 0x87

    return-wide v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method private processBlocks([BI[BI)V
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "output",
            "outOff"
        }
    .end annotation

    .line 140
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 145
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    .line 150
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->GF_double(J[J)V

    .line 152
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v0, v0, [B

    .line 153
    .local v0, "tweak":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 155
    iget v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v1, v1, [B

    .line 156
    .local v1, "buffer":[B
    iget v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v3, v4, :cond_0

    .line 160
    aget-byte v4, v1, v3

    add-int v5, p2, v3

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v1, v2, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 165
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 167
    add-int v3, p4, v2

    aget-byte v4, v1, v2

    aget-byte v5, v0, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 142
    .end local v0    # "tweak":[B
    .end local v1    # "buffer":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to process too many blocks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outOff"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->reset()V

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 0
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 62
    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 0
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 67
    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "forEncryption"    # Z
    .param p2, "parameters"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "parameters"
        }
    .end annotation

    .line 72
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    .line 77
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 78
    .local v0, "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 80
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 87
    .local v1, "iv":[B
    array-length v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_0

    .line 92
    iget v2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v2, v2, [B

    .line 93
    .local v2, "tweak":[B
    iget v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v5, 0x1

    invoke-interface {v3, v5, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 96
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v2, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 98
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 99
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    invoke-static {v2, v4, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 100
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    array-length v6, v6

    invoke-static {v3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput v4, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    .line 102
    return-void

    .line 89
    .end local v2    # "tweak":[B
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Currently only support IVs of exactly one block"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .end local v0    # "ivParam":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "iv":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameters passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processByte(B[BI)I
    .locals 2
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "outOff"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
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
            "input",
            "inOff",
            "len",
            "output",
            "outOff"
        }
    .end annotation

    .line 114
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_3

    .line 118
    array-length v0, p4

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_2

    .line 122
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    rem-int v0, p3, v0

    if-nez v0, :cond_1

    .line 127
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 129
    add-int v1, p2, v0

    add-int v2, p5, v0

    invoke-direct {p0, p1, v1, p4, v2}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->processBlocks([BI[BI)V

    .line 127
    iget v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 132
    .end local v0    # "pos":I
    :cond_0
    return p3

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial blocks not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    .line 181
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iput v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    .line 185
    return-void
.end method
