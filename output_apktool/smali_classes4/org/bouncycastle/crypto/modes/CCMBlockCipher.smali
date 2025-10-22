.class public Lorg/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/CCMModeCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blockSize:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private keyParam:Lorg/bouncycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "c"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 34
    new-instance v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 54
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    .line 55
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 56
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 58
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateMac([BII[B)I
    .locals 10
    .param p1, "data"    # [B
    .param p2, "dataOff"    # I
    .param p3, "dataLen"    # I
    .param p4, "macBlock"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "dataOff",
            "dataLen",
            "macBlock"
        }
    .end annotation

    .line 373
    new-instance v0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 375
    .local v0, "cMac":Lorg/bouncycastle/crypto/Mac;
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 380
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 382
    .local v2, "b0":[B
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 384
    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 387
    :cond_0
    aget-byte v3, v2, v4

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    div-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 389
    aget-byte v3, v2, v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v5, v5

    rsub-int/lit8 v5, v5, 0xf

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 391
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v5, v5

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    move v3, p3

    .line 394
    .local v3, "q":I
    const/4 v5, 0x1

    .line 395
    .local v5, "count":I
    :goto_0
    if-lez v3, :cond_1

    .line 397
    array-length v6, v2

    sub-int/2addr v6, v5

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 398
    ushr-int/lit8 v3, v3, 0x8

    .line 399
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 402
    :cond_1
    array-length v6, v2

    invoke-interface {v0, v2, v4, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 407
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 411
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v6

    .line 412
    .local v6, "textLength":I
    const v7, 0xff00

    if-ge v6, v7, :cond_2

    .line 414
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 415
    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 417
    const/4 v7, 0x2

    .local v7, "extra":I
    goto :goto_1

    .line 421
    .end local v7    # "extra":I
    :cond_2
    const/4 v7, -0x1

    invoke-interface {v0, v7}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 422
    const/4 v7, -0x2

    invoke-interface {v0, v7}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 423
    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 424
    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 425
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 426
    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 428
    const/4 v7, 0x6

    .line 431
    .restart local v7    # "extra":I
    :goto_1
    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v8, :cond_3

    .line 433
    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v9, v9

    invoke-interface {v0, v8, v4, v9}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 435
    :cond_3
    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 437
    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v9}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v9

    invoke-interface {v0, v8, v4, v9}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 440
    :cond_4
    add-int v8, v7, v6

    rem-int/2addr v8, v1

    .line 441
    .end local v7    # "extra":I
    .local v8, "extra":I
    if-eqz v8, :cond_5

    .line 443
    move v7, v8

    .local v7, "i":I
    :goto_2
    if-eq v7, v1, :cond_5

    .line 445
    invoke-interface {v0, v4}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 443
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 453
    .end local v6    # "textLength":I
    .end local v7    # "i":I
    .end local v8    # "extra":I
    :cond_5
    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 455
    invoke-interface {v0, p4, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v1

    return v1
.end method

.method private getAssociatedTextLength()I
    .locals 2

    .line 470
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private getMacSize(ZI)I
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "requestedMacBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "requestedMacBits"
        }
    .end annotation

    .line 460
    if-eqz p1, :cond_1

    const/16 v0, 0x20

    if-lt p2, v0, :cond_0

    const/16 v0, 0x80

    if-gt p2, v0, :cond_0

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag length in octets must be one of {4,6,8,10,12,14,16}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    :goto_0
    ushr-int/lit8 v0, p2, 0x3

    return v0
.end method

.method private hasAssociatedText()Z
    .locals 1

    .line 475
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CCMModeCipher;
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

    .line 43
    new-instance v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
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
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result p1

    .line 159
    .local p1, "len":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 161
    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 4

    .line 179
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    .line 181
    .local v0, "mac":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    .line 195
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 197
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    .line 200
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v1, v0, v1

    :goto_0
    return v1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
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

    .line 78
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 81
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 85
    .local v0, "param":Lorg/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 86
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 87
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 88
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 89
    .local v0, "cipherParameters":Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 90
    .end local v0    # "cipherParameters":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 92
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 94
    .local v0, "param":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 96
    const/16 v1, 0x40

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 97
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 98
    .local v0, "cipherParameters":Lorg/bouncycastle/crypto/CipherParameters;
    nop

    .line 105
    :goto_0
    if-eqz v0, :cond_1

    .line 107
    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/bouncycastle/crypto/CipherParameters;

    .line 110
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v1, v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v1, v1

    const/16 v2, 0xd

    if-gt v1, v2, :cond_2

    .line 115
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 116
    return-void

    .line 112
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nonce must have length from 7 to 13 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    .end local v0    # "cipherParameters":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameters passed to CCM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .locals 1
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
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 126
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1
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

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 132
    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
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
            "in",
            "inOff",
            "inLen",
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

    .line 145
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 151
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processPacket([BII[BI)I
    .locals 17
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
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
            "in",
            "inOff",
            "inLen",
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    iget-object v6, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/bouncycastle/crypto/CipherParameters;

    if-eqz v6, :cond_b

    .line 259
    iget-object v6, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v6, v6

    .line 260
    .local v6, "n":I
    rsub-int/lit8 v7, v6, 0xf

    .line 261
    .local v7, "q":I
    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ge v7, v8, :cond_2

    .line 263
    mul-int/lit8 v8, v7, 0x8

    shl-int v8, v9, v8

    .line 266
    .local v8, "limitLen":I
    const/4 v10, 0x0

    .line 268
    .local v10, "inputAdjustment":I
    iget-boolean v11, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-nez v11, :cond_0

    .line 271
    const/16 v10, 0x10

    .line 274
    :cond_0
    sub-int v11, v3, v10

    if-ge v11, v8, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v11, "CCM packet too large for choice of q"

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 280
    .end local v8    # "limitLen":I
    .end local v10    # "inputAdjustment":I
    :cond_2
    :goto_0
    iget v8, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v8, v8, [B

    .line 281
    .local v8, "iv":[B
    add-int/lit8 v10, v7, -0x1

    and-int/lit8 v10, v10, 0x7

    int-to-byte v10, v10

    const/4 v11, 0x0

    aput-byte v10, v8, v11

    .line 282
    iget-object v10, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v12, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v12, v12

    invoke-static {v10, v11, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v9, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-static {v9}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v9

    .line 285
    .local v9, "ctrCipher":Lorg/bouncycastle/crypto/BlockCipher;
    iget-boolean v10, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v12, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v13, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/bouncycastle/crypto/CipherParameters;

    invoke-direct {v12, v13, v8}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v9, v10, v12}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 288
    move/from16 v10, p2

    .line 289
    .local v10, "inIndex":I
    move/from16 v12, p5

    .line 291
    .local v12, "outIndex":I
    iget-boolean v13, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    const-string v14, "Output buffer too short."

    if-eqz v13, :cond_5

    .line 293
    iget v13, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v13, v3

    .line 294
    .local v13, "outputLen":I
    array-length v15, v4

    add-int v11, v13, v5

    if-lt v15, v11, :cond_4

    .line 299
    iget-object v11, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {v0, v1, v2, v3, v11}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 301
    iget v11, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v11, v11, [B

    .line 303
    .local v11, "encMac":[B
    iget-object v14, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15, v11, v15}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 305
    :goto_1
    add-int v14, v2, v3

    iget v15, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v14, v15

    if-ge v10, v14, :cond_3

    .line 307
    invoke-interface {v9, v1, v10, v4, v12}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 308
    iget v14, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v14

    .line 309
    iget v14, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v10, v14

    goto :goto_1

    .line 312
    :cond_3
    iget v14, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v14, v14, [B

    .line 314
    .local v14, "block":[B
    add-int v15, v3, v2

    sub-int/2addr v15, v10

    const/4 v2, 0x0

    invoke-static {v1, v10, v14, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    invoke-interface {v9, v14, v2, v14, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 318
    add-int v15, v3, p2

    sub-int/2addr v15, v10

    invoke-static {v14, v2, v4, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    add-int v15, v5, v3

    move/from16 v16, v6

    .end local v6    # "n":I
    .local v16, "n":I
    iget v6, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {v11, v2, v4, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    .end local v11    # "encMac":[B
    .end local v14    # "block":[B
    goto :goto_4

    .line 296
    .end local v16    # "n":I
    .restart local v6    # "n":I
    :cond_4
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v14}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v13    # "outputLen":I
    :cond_5
    move/from16 v16, v6

    .end local v6    # "n":I
    .restart local v16    # "n":I
    iget v2, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt v3, v2, :cond_a

    .line 328
    iget v2, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v13, v3, v2

    .line 329
    .restart local v13    # "outputLen":I
    array-length v2, v4

    add-int v6, v13, v5

    if-lt v2, v6, :cond_9

    .line 334
    add-int v2, p2, v13

    iget-object v6, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v11, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    const/4 v15, 0x0

    invoke-static {v1, v2, v6, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iget-object v2, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v6, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v9, v2, v15, v6, v15}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 338
    iget v2, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .local v2, "i":I
    :goto_2
    iget-object v6, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v6, v6

    if-eq v2, v6, :cond_6

    .line 340
    iget-object v6, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    aput-byte v15, v6, v2

    .line 338
    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x0

    goto :goto_2

    .line 343
    .end local v2    # "i":I
    :cond_6
    :goto_3
    add-int v2, p2, v13

    iget v6, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v2, v6

    if-ge v10, v2, :cond_7

    .line 345
    invoke-interface {v9, v1, v10, v4, v12}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 346
    iget v2, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v2

    .line 347
    iget v2, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v10, v2

    goto :goto_3

    .line 350
    :cond_7
    iget v2, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v2, v2, [B

    .line 352
    .local v2, "block":[B
    sub-int v6, v10, p2

    sub-int v6, v13, v6

    const/4 v15, 0x0

    invoke-static {v1, v10, v2, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    invoke-interface {v9, v2, v15, v2, v15}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 356
    sub-int v6, v10, p2

    sub-int v6, v13, v6

    invoke-static {v2, v15, v4, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    iget v6, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v6, v6, [B

    .line 360
    .local v6, "calculatedMacBlock":[B
    invoke-direct {v0, v4, v5, v13, v6}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 362
    iget-object v11, v0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v11, v6}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 368
    .end local v2    # "block":[B
    .end local v6    # "calculatedMacBlock":[B
    :goto_4
    return v13

    .line 364
    .restart local v2    # "block":[B
    .restart local v6    # "calculatedMacBlock":[B
    :cond_8
    new-instance v11, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v14, "mac check in CCM failed"

    invoke-direct {v11, v14}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 331
    .end local v2    # "block":[B
    .end local v6    # "calculatedMacBlock":[B
    :cond_9
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v14}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    .end local v13    # "outputLen":I
    :cond_a
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "data too short"

    invoke-direct {v2, v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    .end local v7    # "q":I
    .end local v8    # "iv":[B
    .end local v9    # "ctrCipher":Lorg/bouncycastle/crypto/BlockCipher;
    .end local v10    # "inIndex":I
    .end local v12    # "outIndex":I
    .end local v16    # "n":I
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "CCM cipher unitialized."

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public processPacket([BII)[B
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 218
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 220
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    move-object v5, v0

    .local v0, "output":[B
    goto :goto_0

    .line 224
    .end local v0    # "output":[B
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt p3, v0, :cond_1

    .line 228
    iget v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v0, p3, v0

    new-array v0, v0, [B

    move-object v5, v0

    .line 231
    .local v5, "output":[B
    :goto_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "inLen":I
    .local v2, "in":[B
    .local v3, "inOff":I
    .local v4, "inLen":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    .line 233
    return-object v5

    .line 226
    .end local v2    # "in":[B
    .end local v3    # "inOff":I
    .end local v4    # "inLen":I
    .end local v5    # "output":[B
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "inLen":I
    :cond_1
    move-object v2, p1

    move v3, p2

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .restart local v2    # "in":[B
    .restart local v3    # "inOff":I
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 169
    return-void
.end method
