.class public Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;
.super Ljava/lang/Object;
.source "CFBBlockCipherMac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 3
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;II)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "cfbBitSize"    # I
    .param p3, "macSizeInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "cfbBitSize",
            "macSizeInBits"
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "cfbBitSize"    # I
    .param p3, "macSizeInBits"    # I
    .param p4, "padding"    # Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "cfbBitSize",
            "macSizeInBits",
            "padding"
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 253
    rem-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_0

    .line 258
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    .line 260
    new-instance v0, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    .line 261
    iput-object p4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 262
    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    .line 264
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 266
    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "padding"    # Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "padding"
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 208
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
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

    .line 340
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    .line 345
    .local v0, "blockSize":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 347
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_1

    .line 349
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte v2, v1, v3

    .line 350
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    goto :goto_0

    .line 355
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-interface {v1, v3, v4}, Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 358
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, v3, v2, v4, v2}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    .line 360
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getMacBlock([B)V

    .line 362
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    iget v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 366
    iget v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 283
    iget v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 278
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 279
    return-void
.end method

.method public reset()V
    .locals 3

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "i":I
    :cond_0
    iput v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 387
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 388
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

    .line 289
    iget v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    .line 292
    iput v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 296
    return-void
.end method

.method public update([BII)V
    .locals 7
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

    .line 303
    if-ltz p3, :cond_1

    .line 308
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    .line 309
    .local v0, "blockSize":I
    const/4 v1, 0x0

    .line 310
    .local v1, "resultLen":I
    iget v2, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    sub-int v2, v0, v2

    .line 312
    .local v2, "gapLen":I
    if-le p3, v2, :cond_0

    .line 314
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v1, v3

    .line 318
    iput v6, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 319
    sub-int/2addr p3, v2

    .line 320
    add-int/2addr p2, v2

    .line 322
    :goto_0
    if-le p3, v0, :cond_0

    .line 324
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v3, p1, p2, v4, v6}, Lorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v1, v3

    .line 326
    sub-int/2addr p3, v0

    .line 327
    add-int/2addr p2, v0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iget v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    .line 334
    return-void

    .line 305
    .end local v0    # "blockSize":I
    .end local v1    # "resultLen":I
    .end local v2    # "gapLen":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
