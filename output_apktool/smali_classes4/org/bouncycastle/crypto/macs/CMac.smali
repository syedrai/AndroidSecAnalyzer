.class public Lorg/bouncycastle/crypto/macs/CMac;
.super Ljava/lang/Object;
.source "CMac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private Lu:[B

.field private Lu2:[B

.field private ZEROES:[B

.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I

.field private poly:[B


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

    .line 54
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 4
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "macSizeInBits"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    .line 76
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    if-gt p2, v0, :cond_0

    .line 83
    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 84
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->macSize:I

    .line 85
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/macs/CMac;->lookupPoly(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->poly:[B

    .line 87
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    .line 89
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    .line 91
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 94
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAC size must be less or equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doubleLu([B)[B
    .locals 9
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 116
    array-length v0, p1

    new-array v0, v0, [B

    .line 117
    .local v0, "ret":[B
    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/macs/CMac;->shiftLeft([B[B)I

    move-result v1

    .line 122
    .local v1, "carry":I
    neg-int v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 123
    .local v2, "mask":I
    array-length v3, p1

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    aget-byte v5, v0, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/macs/CMac;->poly:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    and-int/2addr v6, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 124
    array-length v3, p1

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    aget-byte v6, v0, v3

    iget-object v8, p0, Lorg/bouncycastle/crypto/macs/CMac;->poly:[B

    aget-byte v5, v8, v5

    and-int/2addr v5, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 125
    array-length v3, p1

    sub-int/2addr v3, v7

    aget-byte v5, v0, v3

    iget-object v6, p0, Lorg/bouncycastle/crypto/macs/CMac;->poly:[B

    aget-byte v4, v6, v4

    and-int/2addr v4, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 127
    return-object v0
.end method

.method private static lookupPoly(I)[B
    .locals 4
    .param p0, "blockSizeLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockSizeLength"
        }
    .end annotation

    .line 133
    mul-int/lit8 v0, p0, 0x8

    sparse-switch v0, :sswitch_data_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    mul-int/lit8 v1, p0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown block size for CMAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :sswitch_0
    const v0, 0x86001

    .line 173
    .local v0, "xor":I
    goto :goto_0

    .line 169
    .end local v0    # "xor":I
    :sswitch_1
    const v0, 0x80043

    .line 170
    .restart local v0    # "xor":I
    goto :goto_0

    .line 166
    .end local v0    # "xor":I
    :sswitch_2
    const v0, 0xa0011

    .line 167
    .restart local v0    # "xor":I
    goto :goto_0

    .line 163
    .end local v0    # "xor":I
    :sswitch_3
    const/16 v0, 0x125

    .line 164
    .restart local v0    # "xor":I
    goto :goto_0

    .line 160
    .end local v0    # "xor":I
    :sswitch_4
    const/16 v0, 0x851

    .line 161
    .restart local v0    # "xor":I
    goto :goto_0

    .line 157
    .end local v0    # "xor":I
    :sswitch_5
    const/16 v0, 0x100d

    .line 158
    .restart local v0    # "xor":I
    goto :goto_0

    .line 154
    .end local v0    # "xor":I
    :sswitch_6
    const/16 v0, 0x1b

    .line 155
    .restart local v0    # "xor":I
    goto :goto_0

    .line 151
    .end local v0    # "xor":I
    :sswitch_7
    const/16 v0, 0x425

    .line 152
    .restart local v0    # "xor":I
    goto :goto_0

    .line 148
    .end local v0    # "xor":I
    :sswitch_8
    const/16 v0, 0x309

    .line 149
    .restart local v0    # "xor":I
    goto :goto_0

    .line 145
    .end local v0    # "xor":I
    :sswitch_9
    const/16 v0, 0x87

    .line 146
    .restart local v0    # "xor":I
    goto :goto_0

    .line 142
    .end local v0    # "xor":I
    :sswitch_a
    const/16 v0, 0x2d

    .line 143
    .restart local v0    # "xor":I
    goto :goto_0

    .line 139
    .end local v0    # "xor":I
    :sswitch_b
    const/16 v0, 0x87

    .line 140
    .restart local v0    # "xor":I
    goto :goto_0

    .line 136
    .end local v0    # "xor":I
    :sswitch_c
    const/16 v0, 0x1b

    .line 137
    .restart local v0    # "xor":I
    nop

    .line 178
    :goto_0
    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_c
        0x80 -> :sswitch_b
        0xa0 -> :sswitch_a
        0xc0 -> :sswitch_9
        0xe0 -> :sswitch_8
        0x100 -> :sswitch_7
        0x140 -> :sswitch_6
        0x180 -> :sswitch_5
        0x1c0 -> :sswitch_4
        0x200 -> :sswitch_3
        0x300 -> :sswitch_2
        0x400 -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method private static shiftLeft([B[B)I
    .locals 4
    .param p0, "block"    # [B
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "block",
            "output"
        }
    .end annotation

    .line 103
    array-length v0, p0

    .line 104
    .local v0, "i":I
    const/4 v1, 0x0

    .line 105
    .local v1, "bit":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 107
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 108
    .local v2, "b":I
    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 109
    ushr-int/lit8 v3, v2, 0x7

    and-int/lit8 v1, v3, 0x1

    .line 110
    .end local v2    # "b":I
    goto :goto_0

    .line 111
    :cond_0
    return v1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
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

    .line 261
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 264
    .local v0, "blockSize":I
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    if-ne v1, v0, :cond_0

    .line 266
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu:[B

    .local v1, "lu":[B
    goto :goto_0

    .line 270
    .end local v1    # "lu":[B
    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;->addPadding([BI)I

    .line 271
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu2:[B

    .line 274
    .restart local v1    # "lu":[B
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 276
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    aget-byte v4, v3, v2

    aget-byte v5, v1, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 281
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->macSize:I

    invoke-static {v2, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CMac;->reset()V

    .line 285
    iget v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->macSize:I

    return v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 210
    iget v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/macs/CMac;->validate(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 189
    .local v0, "L":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 190
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu:[B

    .line 191
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->Lu2:[B

    .line 193
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CMac;->reset()V

    .line 194
    return-void
.end method

.method public reset()V
    .locals 3

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 298
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    aput-byte v2, v1, v0

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    :cond_0
    iput v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 306
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 307
    return-void
.end method

.method public update(B)V
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

    .line 215
    iget v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 218
    iput v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 222
    return-void
.end method

.method public update([BII)V
    .locals 6
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

    .line 226
    if-ltz p3, :cond_1

    .line 232
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 233
    .local v0, "blockSize":I
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    sub-int v1, v0, v1

    .line 235
    .local v1, "gapLen":I
    if-le p3, v1, :cond_0

    .line 237
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 241
    iput v5, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 242
    sub-int/2addr p3, v1

    .line 243
    add-int/2addr p2, v1

    .line 245
    :goto_0
    if-le p3, v0, :cond_0

    .line 247
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v2, p1, p2, v3, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 249
    sub-int/2addr p3, v0

    .line 250
    add-int/2addr p2, v0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 257
    return-void

    .line 228
    .end local v0    # "blockSize":I
    .end local v1    # "gapLen":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method validate(Lorg/bouncycastle/crypto/CipherParameters;)V
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

    .line 198
    if-eqz p1, :cond_1

    .line 200
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CMac mode only permits key to be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    :goto_0
    return-void
.end method
