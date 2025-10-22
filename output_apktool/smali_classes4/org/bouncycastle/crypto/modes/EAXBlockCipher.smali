.class public Lorg/bouncycastle/crypto/modes/EAXBlockCipher;
.super Ljava/lang/Object;
.source "EAXBlockCipher.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final cTAG:B = 0x2t

.field private static final hTAG:B = 0x1t

.field private static final nTAG:B


# instance fields
.field private associatedTextMac:[B

.field private blockSize:I

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

.field private cipherInitialized:Z

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private mac:Lorg/bouncycastle/crypto/Mac;

.field private macBlock:[B

.field private macSize:I

.field private nonceMac:[B


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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    .line 63
    new-instance v0, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    .line 64
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    .line 67
    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    .line 68
    return-void
.end method

.method private calculateMac()V
    .locals 5

    .line 152
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    .line 153
    .local v0, "outC":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 157
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    aget-byte v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    aget-byte v4, v0, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private initCipher()V
    .locals 4

    .line 136
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-eqz v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    .line 143
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 145
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v1, v1, [B

    .line 146
    .local v1, "tag":[B
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    sub-int/2addr v2, v0

    const/4 v0, 0x2

    aput-byte v0, v1, v2

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 148
    return-void
.end method

.method private process(B[BI)I
    .locals 6
    .param p1, "b"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "out",
            "outOff"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    .line 339
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 341
    array-length v0, p2

    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/2addr v1, p3

    if-lt v0, v1, :cond_2

    .line 350
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->processBlock([BI[BI)I

    move-result v0

    .line 354
    .local v0, "size":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, p2, p3, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 358
    .end local v0    # "size":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 360
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->processBlock([BI[BI)I

    move-result v0

    .line 363
    .restart local v0    # "size":I
    :goto_0
    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 364
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-nez v1, :cond_1

    .line 366
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v1, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    iput v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 370
    :cond_1
    return v0

    .line 343
    .end local v0    # "size":I
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_3
    return v2
.end method

.method private reset(Z)V
    .locals 4
    .param p1, "clearMac"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearMac"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->reset()V

    .line 170
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->reset()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 173
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 175
    if-eqz p1, :cond_0

    .line 177
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 180
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v1, v1, [B

    .line 181
    .local v1, "tag":[B
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-byte v3, v1, v2

    .line 182
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v2, v1, v0, v3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 184
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    .line 186
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    array-length v3, v3

    invoke-virtual {p0, v2, v0, v3}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->processAADBytes([BII)V

    .line 190
    :cond_1
    return-void
.end method

.method private verifyMac([BI)Z
    .locals 4
    .param p1, "mac"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mac",
            "off"
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, "nonEqual":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v1, v2, :cond_0

    .line 382
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    aget-byte v2, v2, v1

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
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

    .line 241
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    .line 243
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 244
    .local v0, "extra":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 246
    .local v1, "tmp":[B
    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 248
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    const-string v4, "Output buffer too short"

    if-eqz v3, :cond_1

    .line 250
    array-length v3, p1

    add-int v5, p2, v0

    iget v6, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v5, v6

    if-lt v3, v5, :cond_0

    .line 254
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-interface {v3, v4, v2, v1, v2}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->processBlock([BI[BI)I

    .line 256
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3, v1, v2, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 260
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 262
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    add-int v4, p2, v0

    iget v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v3, v2, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 266
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v2, v0

    return v2

    .line 252
    :cond_0
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_1
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-lt v0, v3, :cond_5

    .line 274
    array-length v3, p1

    add-int v5, p2, v0

    iget v6, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v5, v6

    if-lt v3, v5, :cond_4

    .line 278
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-le v0, v3, :cond_2

    .line 280
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v5, v0, v5

    invoke-interface {v3, v4, v2, v5}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 282
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-interface {v3, v4, v2, v1, v2}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->processBlock([BI[BI)I

    .line 284
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v3, v0, v3

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 289
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v4, v0, v4

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->verifyMac([BI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 296
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v2, v0, v2

    return v2

    .line 291
    :cond_3
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "mac check in EAX failed"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_4
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    :cond_5
    new-instance v2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v3, "data too short"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/EAX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getMac()[B
    .locals 4

    .line 302
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    new-array v0, v0, [B

    .line 304
    .local v0, "mac":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
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

    .line 325
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 327
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 329
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    .line 332
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v1, v0, v1

    :goto_0
    return v1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
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

    .line 311
    iget v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 312
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-nez v1, :cond_1

    .line 314
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v1, :cond_0

    .line 316
    const/4 v1, 0x0

    return v1

    .line 318
    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    .line 320
    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    return v1
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

    .line 88
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    .line 93
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_0

    .line 95
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    .line 97
    .local v0, "param":Lorg/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    .line 98
    .local v1, "nonce":[B
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    .line 99
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 100
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 101
    .local v0, "keyParam":Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 102
    .end local v0    # "keyParam":Lorg/bouncycastle/crypto/CipherParameters;
    .end local v1    # "nonce":[B
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    .line 104
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 106
    .local v0, "param":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 107
    .restart local v1    # "nonce":[B
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    .line 108
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 109
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 110
    .local v0, "keyParam":Lorg/bouncycastle/crypto/CipherParameters;
    nop

    .line 116
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v2, v3

    :goto_1
    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    .line 118
    iget v2, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v2, v2, [B

    .line 121
    .local v2, "tag":[B
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3, v0}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 123
    iget v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 124
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget v6, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v3, v2, v5, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 125
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    array-length v6, v1

    invoke-interface {v3, v1, v5, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 126
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-interface {v3, v6, v5}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 129
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    new-instance v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-direct {v5, v0, v6}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v3, v4, v5}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 131
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset()V

    .line 132
    return-void

    .line 113
    .end local v0    # "keyParam":Lorg/bouncycastle/crypto/CipherParameters;
    .end local v1    # "nonce":[B
    .end local v2    # "tag":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to EAX"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .locals 2
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 194
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 199
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD data cannot be added after encryption/decryption processing has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADBytes([BII)V
    .locals 2
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

    .line 203
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 208
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD data cannot be added after encryption/decryption processing has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
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
            "len",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    .line 223
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "resultLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, p3, :cond_0

    .line 232
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    add-int v3, p5, v0

    invoke-direct {p0, v2, p4, v3}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v2

    add-int/2addr v0, v2

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 225
    .end local v0    # "resultLen":I
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 164
    return-void
.end method
