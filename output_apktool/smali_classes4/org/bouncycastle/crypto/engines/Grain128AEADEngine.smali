.class public Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;
.super Ljava/lang/Object;
.source "Grain128AEADEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;
    }
.end annotation


# static fields
.field private static final STATE_SIZE:I = 0x4


# instance fields
.field private aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

.field private aadFinished:Z

.field private authAcc:[I

.field private authSr:[I

.field private initialised:Z

.field private lfsr:[I

.field private mac:[B

.field private nfsr:[I

.field private workingIV:[B

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initialised:Z

    .line 39
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    .line 40
    new-instance v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    return-void
.end method

.method private accumulate()V
    .locals 4

    .line 430
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v3, v3, v1

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 431
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v3, v3, v1

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 432
    return-void
.end method

.method private authShift(I)V
    .locals 5
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    ushr-int/2addr v1, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v4, v4, v3

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v1, v4

    aput v1, v0, v2

    .line 437
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v1, v1, v3

    ushr-int/2addr v1, v3

    shl-int/lit8 v2, p1, 0x1f

    or-int/2addr v1, v2

    aput v1, v0, v3

    .line 438
    return-void
.end method

.method private doProcessAADBytes([BII)V
    .locals 12
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "len"
        }
    .end annotation

    .line 380
    const/16 v0, 0x80

    const/4 v1, 0x0

    if-ge p3, v0, :cond_0

    .line 382
    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [B

    .line 383
    .local v0, "ader":[B
    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 384
    const/4 v2, 0x0

    .local v2, "aderlen":I
    goto :goto_1

    .line 389
    .end local v0    # "ader":[B
    .end local v2    # "aderlen":I
    :cond_0
    invoke-static {p3}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->len_length(I)I

    move-result v2

    .line 390
    .restart local v2    # "aderlen":I
    add-int/lit8 v0, v2, 0x1

    add-int/2addr v0, p3

    new-array v0, v0, [B

    .line 391
    .restart local v0    # "ader":[B
    or-int/lit16 v3, v2, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 392
    move v3, p3

    .line 393
    .local v3, "tmp":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 395
    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, v3

    aput-byte v6, v0, v5

    .line 396
    ushr-int/lit8 v3, v3, 0x8

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    .end local v3    # "tmp":I
    .end local v4    # "i":I
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, p3, :cond_2

    .line 401
    add-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v3

    add-int v5, p2, v3

    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 404
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 406
    aget-byte v4, v0, v3

    .line 407
    .local v4, "ader_i":B
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    const/16 v6, 0x8

    if-ge v5, v6, :cond_3

    .line 409
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v8, v8, v1

    xor-int/2addr v7, v8

    const/4 v8, 0x1

    and-int/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    .line 410
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v7

    and-int/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    .line 412
    shr-int v6, v4, v5

    and-int/2addr v6, v8

    .line 417
    .local v6, "ader_i_j":I
    neg-int v7, v6

    .line 418
    .local v7, "mask":I
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    aget v10, v9, v1

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v11, v11, v1

    and-int/2addr v11, v7

    xor-int/2addr v10, v11

    aput v10, v9, v1

    .line 419
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    aget v10, v9, v8

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v11, v11, v8

    and-int/2addr v11, v7

    xor-int/2addr v10, v11

    aput v10, v9, v8

    .line 421
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v9

    invoke-direct {p0, v9}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authShift(I)V

    .line 422
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v10

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v11, v11, v1

    xor-int/2addr v10, v11

    and-int/2addr v10, v8

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v9

    iput-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    .line 423
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v10

    and-int/2addr v8, v10

    invoke-direct {p0, v9, v8}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v8

    iput-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    .line 407
    .end local v6    # "ader_i_j":I
    .end local v7    # "mask":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 404
    .end local v4    # "ader_i":B
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 426
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private getKeyStream([BII[BI)[B
    .locals 13
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "ciphertext"    # [B
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
            "ciphertext",
            "outOff"
        }
    .end annotation

    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 329
    const/4 v2, 0x0

    .local v2, "cc":B
    add-int v3, p2, v0

    aget-byte v3, p1, v3

    .line 330
    .local v3, "input_i":B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 332
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v5

    .line 333
    .local v5, "output":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    xor-int/2addr v7, v8

    const/4 v8, 0x1

    and-int/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    .line 334
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v7

    and-int/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    .line 336
    shr-int v6, v3, v4

    and-int/2addr v6, v8

    .line 337
    .local v6, "input_i_j":I
    xor-int v7, v6, v5

    shl-int/2addr v7, v4

    or-int/2addr v7, v2

    int-to-byte v2, v7

    .line 343
    neg-int v7, v6

    .line 344
    .local v7, "mask":I
    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    aget v11, v10, v9

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v12, v12, v9

    and-int/2addr v12, v7

    xor-int/2addr v11, v12

    aput v11, v10, v9

    .line 345
    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    aget v11, v10, v8

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v12, v12, v8

    and-int/2addr v12, v7

    xor-int/2addr v11, v12

    aput v11, v10, v8

    .line 347
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v10

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authShift(I)V

    .line 348
    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v11

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v9, v12, v9

    xor-int/2addr v9, v11

    and-int/2addr v9, v8

    invoke-direct {p0, v10, v9}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v9

    iput-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    .line 349
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v10

    and-int/2addr v8, v10

    invoke-direct {p0, v9, v8}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v8

    iput-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    .line 330
    .end local v5    # "output":I
    .end local v6    # "input_i_j":I
    .end local v7    # "mask":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 351
    .end local v4    # "j":I
    :cond_0
    add-int v4, p5, v0

    aput-byte v2, p4, v4

    .line 327
    .end local v2    # "cc":B
    .end local v3    # "input_i":B
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_1
    return-object p4
.end method

.method private getOutput()I
    .locals 21

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x2

    ushr-int/2addr v1, v3

    .line 221
    .local v1, "b2":I
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v4, v4, v2

    ushr-int/lit8 v4, v4, 0xc

    .line 222
    .local v4, "b12":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0xf

    .line 223
    .local v5, "b15":I
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    ushr-int/lit8 v6, v6, 0x4

    .line 224
    .local v6, "b36":I
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v8, v8, v7

    ushr-int/lit8 v8, v8, 0xd

    .line 225
    .local v8, "b45":I
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v9, v9, v3

    .line 226
    .local v9, "b64":I
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v10, v10, v3

    ushr-int/lit8 v10, v10, 0x9

    .line 227
    .local v10, "b73":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v11, v11, v3

    ushr-int/lit8 v11, v11, 0x19

    .line 228
    .local v11, "b89":I
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v12, v12, v3

    ushr-int/lit8 v12, v12, 0x1f

    .line 229
    .local v12, "b95":I
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v13, v13, v2

    ushr-int/lit8 v13, v13, 0x8

    .line 230
    .local v13, "s8":I
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v14, v14, v2

    ushr-int/lit8 v14, v14, 0xd

    .line 231
    .local v14, "s13":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v2, v15, v2

    ushr-int/lit8 v2, v2, 0x14

    .line 232
    .local v2, "s20":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v15, v15, v7

    ushr-int/lit8 v15, v15, 0xa

    .line 233
    .local v15, "s42":I
    const/16 v16, 0x2

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v3, v3, v7

    ushr-int/lit8 v3, v3, 0x1c

    .line 234
    .local v3, "s60":I
    const/16 v17, 0x1

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v7, v7, v16

    ushr-int/lit8 v7, v7, 0xf

    .line 235
    .local v7, "s79":I
    move/from16 v18, v1

    .end local v1    # "b2":I
    .local v18, "b2":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v1, v1, v16

    ushr-int/lit8 v1, v1, 0x1d

    .line 236
    .local v1, "s93":I
    move/from16 v19, v1

    .end local v1    # "s93":I
    .local v19, "s93":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v1, v1, v16

    ushr-int/lit8 v1, v1, 0x1e

    .line 238
    .local v1, "s94":I
    and-int v16, v4, v13

    and-int v20, v14, v2

    xor-int v16, v16, v20

    and-int v20, v12, v15

    xor-int v16, v16, v20

    and-int v20, v3, v7

    xor-int v16, v16, v20

    and-int v20, v4, v12

    and-int v20, v20, v1

    xor-int v16, v16, v20

    xor-int v16, v16, v19

    xor-int v16, v16, v18

    xor-int v16, v16, v5

    xor-int v16, v16, v6

    xor-int v16, v16, v8

    xor-int v16, v16, v9

    xor-int v16, v16, v10

    xor-int v16, v16, v11

    and-int/lit8 v16, v16, 0x1

    return v16
.end method

.method private getOutputLFSR()I
    .locals 8

    .line 203
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 204
    .local v0, "s0":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v1, v2, v1

    ushr-int/lit8 v1, v1, 0x7

    .line 205
    .local v1, "s7":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0x6

    .line 206
    .local v2, "s38":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x6

    .line 207
    .local v4, "s70":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v5, v6, v5

    ushr-int/lit8 v5, v5, 0x11

    .line 208
    .local v5, "s81":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    .line 210
    .local v6, "s96":I
    xor-int v7, v0, v1

    xor-int/2addr v7, v2

    xor-int/2addr v7, v4

    xor-int/2addr v7, v5

    xor-int/2addr v7, v6

    and-int/2addr v3, v7

    return v3
.end method

.method private getOutputNFSR()I
    .locals 33

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 163
    .local v1, "b0":I
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v3, v3, v2

    const/4 v4, 0x3

    ushr-int/2addr v3, v4

    .line 164
    .local v3, "b3":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v5, v5, v2

    ushr-int/lit8 v5, v5, 0xb

    .line 165
    .local v5, "b11":I
    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v6, v6, v2

    ushr-int/lit8 v6, v6, 0xd

    .line 166
    .local v6, "b13":I
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v7, v7, v2

    ushr-int/lit8 v7, v7, 0x11

    .line 167
    .local v7, "b17":I
    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v8, v8, v2

    ushr-int/lit8 v8, v8, 0x12

    .line 168
    .local v8, "b18":I
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v9, v9, v2

    ushr-int/lit8 v9, v9, 0x16

    .line 169
    .local v9, "b22":I
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v10, v10, v2

    ushr-int/lit8 v10, v10, 0x18

    .line 170
    .local v10, "b24":I
    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v11, v11, v2

    ushr-int/lit8 v11, v11, 0x19

    .line 171
    .local v11, "b25":I
    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v12, v12, v2

    ushr-int/lit8 v12, v12, 0x1a

    .line 172
    .local v12, "b26":I
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v2, v13, v2

    ushr-int/lit8 v2, v2, 0x1b

    .line 173
    .local v2, "b27":I
    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    ushr-int/lit8 v13, v13, 0x8

    .line 174
    .local v13, "b40":I
    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v15, v15, v14

    ushr-int/lit8 v15, v15, 0x10

    .line 175
    .local v15, "b48":I
    const/16 v16, 0x3

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v4, v4, v14

    ushr-int/lit8 v4, v4, 0x18

    .line 176
    .local v4, "b56":I
    const/16 v17, 0x1

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v14, v14, v17

    ushr-int/lit8 v14, v14, 0x1b

    .line 177
    .local v14, "b59":I
    move/from16 v18, v1

    .end local v1    # "b0":I
    .local v18, "b0":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v17

    ushr-int/lit8 v1, v1, 0x1d

    .line 178
    .local v1, "b61":I
    move/from16 v19, v1

    .end local v1    # "b61":I
    .local v19, "b61":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/16 v20, 0x2

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x1

    .line 179
    .local v1, "b65":I
    move/from16 v21, v1

    .end local v1    # "b65":I
    .local v21, "b65":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x3

    .line 180
    .local v1, "b67":I
    move/from16 v22, v1

    .end local v1    # "b67":I
    .local v22, "b67":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x4

    .line 181
    .local v1, "b68":I
    move/from16 v23, v1

    .end local v1    # "b68":I
    .local v23, "b68":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x6

    .line 182
    .local v1, "b70":I
    move/from16 v24, v1

    .end local v1    # "b70":I
    .local v24, "b70":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0xe

    .line 183
    .local v1, "b78":I
    move/from16 v25, v1

    .end local v1    # "b78":I
    .local v25, "b78":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x12

    .line 184
    .local v1, "b82":I
    move/from16 v26, v1

    .end local v1    # "b82":I
    .local v26, "b82":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x14

    .line 185
    .local v1, "b84":I
    move/from16 v27, v1

    .end local v1    # "b84":I
    .local v27, "b84":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x18

    .line 186
    .local v1, "b88":I
    move/from16 v28, v1

    .end local v1    # "b88":I
    .local v28, "b88":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x1b

    .line 187
    .local v1, "b91":I
    move/from16 v29, v1

    .end local v1    # "b91":I
    .local v29, "b91":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x1c

    .line 188
    .local v1, "b92":I
    move/from16 v30, v1

    .end local v1    # "b92":I
    .local v30, "b92":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x1d

    .line 189
    .local v1, "b93":I
    move/from16 v31, v1

    .end local v1    # "b93":I
    .local v31, "b93":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v20

    ushr-int/lit8 v1, v1, 0x1f

    .line 190
    .local v1, "b95":I
    move/from16 v20, v1

    .end local v1    # "b95":I
    .local v20, "b95":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    aget v1, v1, v16

    .line 192
    .local v1, "b96":I
    xor-int v16, v18, v12

    xor-int v16, v16, v4

    xor-int v16, v16, v29

    xor-int v16, v16, v1

    and-int v32, v3, v22

    xor-int v16, v16, v32

    and-int v32, v5, v6

    xor-int v16, v16, v32

    and-int v32, v7, v8

    xor-int v16, v16, v32

    and-int v32, v2, v14

    xor-int v16, v16, v32

    and-int v32, v13, v15

    xor-int v16, v16, v32

    and-int v32, v19, v21

    xor-int v16, v16, v32

    and-int v32, v23, v27

    xor-int v16, v16, v32

    and-int v32, v9, v10

    and-int v32, v32, v11

    xor-int v16, v16, v32

    and-int v32, v24, v25

    and-int v32, v32, v26

    xor-int v16, v16, v32

    and-int v32, v28, v30

    and-int v32, v32, v31

    and-int v32, v32, v20

    xor-int v16, v16, v32

    and-int/lit8 v16, v16, 0x1

    return v16
.end method

.method private initGrain()V
    .locals 10

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x140

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v1

    .line 120
    .local v1, "output":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v2, v6, v2

    xor-int/2addr v2, v5

    xor-int/2addr v2, v1

    and-int/2addr v2, v3

    invoke-direct {p0, v4, v2}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    .line 121
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v4

    xor-int/2addr v4, v1

    and-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    .line 117
    .end local v1    # "output":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "quotient":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 125
    const/4 v4, 0x0

    .local v4, "remainder":I
    :goto_2
    if-ge v4, v1, :cond_1

    .line 127
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v5

    .line 128
    .local v5, "output":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v8, v8, v2

    xor-int/2addr v7, v8

    xor-int/2addr v7, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    aget-byte v8, v8, v0

    shr-int/2addr v8, v4

    xor-int/2addr v7, v8

    and-int/2addr v7, v3

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    .line 129
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v7

    xor-int/2addr v7, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    add-int/lit8 v9, v0, 0x8

    aget-byte v8, v8, v9

    shr-int/2addr v8, v4

    xor-int/2addr v7, v8

    and-int/2addr v7, v3

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    .line 125
    .end local v5    # "output":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 123
    .end local v4    # "remainder":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "quotient":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "quotient":I
    :goto_3
    const/16 v1, 0x20

    const/4 v4, 0x2

    if-ge v0, v4, :cond_4

    .line 134
    const/4 v4, 0x0

    .restart local v4    # "remainder":I
    :goto_4
    if-ge v4, v1, :cond_3

    .line 136
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v5

    .line 137
    .restart local v5    # "output":I
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v8, v8, v2

    xor-int/2addr v7, v8

    and-int/2addr v7, v3

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    .line 138
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v7

    and-int/2addr v7, v3

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    .line 139
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    aget v7, v6, v0

    shl-int v8, v5, v4

    or-int/2addr v7, v8

    aput v7, v6, v0

    .line 134
    .end local v5    # "output":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 132
    .end local v4    # "remainder":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 142
    .end local v0    # "quotient":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "quotient":I
    :goto_5
    if-ge v0, v4, :cond_6

    .line 144
    const/4 v5, 0x0

    .local v5, "remainder":I
    :goto_6
    if-ge v5, v1, :cond_5

    .line 146
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutput()I

    move-result v6

    .line 147
    .local v6, "output":I
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputNFSR()I

    move-result v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    aget v9, v9, v2

    xor-int/2addr v8, v9

    and-int/2addr v8, v3

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    .line 148
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getOutputLFSR()I

    move-result v8

    and-int/2addr v8, v3

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->shift([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    .line 149
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    aget v8, v7, v0

    shl-int v9, v6, v5

    or-int/2addr v8, v9

    aput v8, v7, v0

    .line 144
    .end local v6    # "output":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 142
    .end local v5    # "remainder":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 152
    .end local v0    # "quotient":I
    :cond_6
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initialised:Z

    .line 153
    return-void
.end method

.method private static len_length(I)I
    .locals 1
    .param p0, "v"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 484
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    .line 486
    const/4 v0, 0x1

    return v0

    .line 488
    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_1

    .line 490
    const/4 v0, 0x2

    return v0

    .line 492
    :cond_1
    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_2

    .line 494
    const/4 v0, 0x3

    return v0

    .line 497
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private reset(Z)V
    .locals 2
    .param p1, "clearMac"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearMac"
        }
    .end annotation

    .line 314
    if-eqz p1, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->reset()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    .line 321
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->setKey([B[B)V

    .line 322
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initGrain()V

    .line 323
    return-void
.end method

.method private setKey([B[B)V
    .locals 3
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyBytes",
            "ivBytes"
        }
    .end annotation

    .line 266
    const/16 v0, 0xc

    const/4 v1, -0x1

    aput-byte v1, p2, v0

    .line 267
    const/16 v0, 0xd

    aput-byte v1, p2, v0

    .line 268
    const/16 v0, 0xe

    aput-byte v1, p2, v0

    .line 269
    const/16 v0, 0xf

    const/16 v1, 0x7f

    aput-byte v1, p2, v0

    .line 270
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    .line 271
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    .line 276
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 277
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 278
    return-void
.end method

.method private shift([II)[I
    .locals 5
    .param p1, "array"    # [I
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "val"
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    aget v3, p1, v2

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v1, v3

    aput v1, p1, v0

    .line 252
    aget v0, p1, v2

    ushr-int/2addr v0, v2

    const/4 v1, 0x2

    aget v3, p1, v1

    shl-int/lit8 v3, v3, 0x1f

    or-int/2addr v0, v3

    aput v0, p1, v2

    .line 253
    aget v0, p1, v1

    ushr-int/2addr v0, v2

    const/4 v3, 0x3

    aget v4, p1, v3

    shl-int/lit8 v4, v4, 0x1f

    or-int/2addr v0, v4

    aput v0, p1, v1

    .line 254
    aget v0, p1, v3

    ushr-int/2addr v0, v2

    shl-int/lit8 v1, p2, 0x1f

    or-int/2addr v0, v1

    aput v0, p1, v3

    .line 255
    return-object p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
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

    .line 449
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->getBuf()[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->doProcessAADBytes([BII)V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    .line 455
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->accumulate()V

    .line 457
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    .line 459
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->reset(Z)V

    .line 463
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    array-length v0, v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "Grain-128AEAD"

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->mac:[B

    return-object v0
.end method

.method public getOutputSize(I)I
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

    .line 479
    add-int/lit8 v0, p1, 0x8

    return v0
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

    .line 473
    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 9
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

    .line 63
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 69
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 71
    .local v0, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 73
    .local v1, "iv":[B
    if-eqz v1, :cond_2

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 79
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 86
    .local v2, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 87
    .local v3, "keyBytes":[B
    array-length v4, v3

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 93
    new-instance v4, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 94
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v8

    invoke-direct {v4, v6, v7, p2, v8}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 93
    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 99
    new-array v4, v5, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    .line 100
    new-array v4, v5, [B

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    .line 101
    const/4 v4, 0x4

    new-array v5, v4, [I

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->lfsr:[I

    .line 102
    new-array v4, v4, [I

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->nfsr:[I

    .line 103
    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authAcc:[I

    .line 104
    new-array v4, v4, [I

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->authSr:[I

    .line 106
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingIV:[B

    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->workingKey:[B

    array-length v5, v3

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->reset()V

    .line 110
    return-void

    .line 89
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Grain-128AEAD key must be 128 bits long"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    .end local v2    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v3    # "keyBytes":[B
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Grain-128AEAD init parameters must include a key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Grain-128AEAD requires exactly 12 bytes of IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    .end local v0    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "iv":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain-128AEAD init parameters must include an IV"

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

    .line 359
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->write(I)V

    .line 364
    return-void

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "associated data must be added before plaintext/ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADBytes([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "len"
        }
    .end annotation

    .line 368
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->write([BII)V

    .line 373
    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "associated data must be added before plaintext/ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processByte(B[BI)I
    .locals 7
    .param p1, "input"    # B
    .param p2, "output"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 443
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    .end local p2    # "output":[B
    .end local p3    # "outOff":I
    .local v5, "output":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->processBytes([BII[BI)I

    move-result p2

    return p2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 283
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->initialised:Z

    if-eqz v0, :cond_3

    .line 288
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->getBuf()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadData:Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine$ErasableOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->doProcessAADBytes([BII)V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->aadFinished:Z

    .line 294
    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 299
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 303
    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getKeyStream([BII[BI)[B

    .line 304
    return p3

    .line 301
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 309
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/Grain128AEADEngine;->reset(Z)V

    .line 310
    return-void
.end method
