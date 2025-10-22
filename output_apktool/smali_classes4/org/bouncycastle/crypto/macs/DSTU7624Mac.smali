.class public Lorg/bouncycastle/crypto/macs/DSTU7624Mac;
.super Ljava/lang/Object;
.source "DSTU7624Mac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8


# instance fields
.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private c:[B

.field private cTemp:[B

.field private engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

.field private initCalled:Z

.field private kDelta:[B

.field private macSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "blockBitLength"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blockBitLength",
            "q"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->initCalled:Z

    .line 32
    new-instance v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    .line 33
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    .line 34
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->macSize:I

    .line 35
    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    .line 36
    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    .line 37
    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    .line 38
    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    .line 39
    return-void
.end method

.method private processBlock([BI)V
    .locals 6
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

    .line 114
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v2, 0x0

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .local v3, "in":[B
    .local v4, "inOff":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    .line 116
    iget-object p1, v0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    iget-object p2, v0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    const/4 v1, 0x0

    iget-object v2, v0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    invoke-virtual {p1, p2, v1, v2, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 117
    return-void
.end method

.method private xor([BI[BI[B)V
    .locals 3
    .param p1, "x"    # [B
    .param p2, "xOff"    # I
    .param p3, "y"    # [B
    .param p4, "yOff"    # I
    .param p5, "x_xor_y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff",
            "x_xor_y"
        }
    .end annotation

    .line 163
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-lt v0, v1, :cond_1

    array-length v0, p3

    sub-int/2addr v0, p4

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-lt v0, v1, :cond_1

    array-length v0, p5

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-lt v0, v1, :cond_1

    .line 167
    const/4 v0, 0x0

    .local v0, "byteIndex":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-ge v0, v1, :cond_0

    .line 169
    add-int v1, v0, p2

    aget-byte v1, p1, v1

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "byteIndex":I
    :cond_0
    return-void

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "some of input buffers too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
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

    .line 122
    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    array-length v1, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 128
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    .line 129
    iget-object v8, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    iget-object v10, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    const/4 v11, 0x0

    iget-object v12, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v9, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    .line 130
    iget-object v0, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    iget-object v2, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget-object v3, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 132
    iget v0, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->macSize:I

    add-int/2addr v0, p2

    array-length v2, p1

    if-gt v0, v2, :cond_0

    .line 137
    iget-object v0, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget v2, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->macSize:I

    invoke-static {v0, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->reset()V

    .line 141
    iget v0, v1, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->macSize:I

    return v0

    .line 134
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    move-object v1, p0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input must be a multiple of blocksize"

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "DSTU7624Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 44
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 47
    iput-boolean v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->initCalled:Z

    .line 48
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->reset()V

    .line 54
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter passed to DSTU7624Mac"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->c:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->reset()V

    .line 152
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->initCalled:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    invoke-virtual {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 157
    :cond_0
    iput v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    .line 158
    return-void
.end method

.method public update(B)V
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

    .line 68
    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    .line 71
    iput v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    aput-byte p1, v0, v1

    .line 75
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 79
    if-ltz p3, :cond_1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/bouncycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    .line 86
    .local v0, "blockSize":I
    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    sub-int v1, v0, v1

    .line 88
    .local v1, "gapLen":I
    if-le p3, v1, :cond_0

    .line 90
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    .line 94
    iput v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    .line 95
    sub-int/2addr p3, v1

    .line 96
    add-int/2addr p2, v1

    .line 98
    :goto_0
    if-le p3, v0, :cond_0

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    .line 102
    sub-int/2addr p3, v0

    .line 103
    add-int/2addr p2, v0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    .line 110
    return-void

    .line 81
    .end local v0    # "blockSize":I
    .end local v1    # "gapLen":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
