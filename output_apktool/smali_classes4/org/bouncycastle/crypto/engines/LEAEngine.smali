.class public Lorg/bouncycastle/crypto/engines/LEAEngine;
.super Ljava/lang/Object;
.source "LEAEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BASEROUNDS:I = 0x10

.field private static final BLOCKSIZE:I = 0x10

.field private static final DELTA:[I

.field private static final KEY0:I = 0x0

.field private static final KEY1:I = 0x1

.field private static final KEY2:I = 0x2

.field private static final KEY3:I = 0x3

.field private static final KEY4:I = 0x4

.field private static final KEY5:I = 0x5

.field private static final MASK128:I = 0x3

.field private static final MASK256:I = 0x7

.field private static final NUMWORDS:I = 0x4

.field private static final NUMWORDS128:I = 0x4

.field private static final NUMWORDS192:I = 0x6

.field private static final NUMWORDS256:I = 0x8

.field private static final ROT1:I = 0x1

.field private static final ROT11:I = 0xb

.field private static final ROT13:I = 0xd

.field private static final ROT17:I = 0x11

.field private static final ROT3:I = 0x3

.field private static final ROT5:I = 0x5

.field private static final ROT6:I = 0x6

.field private static final ROT9:I = 0x9


# instance fields
.field private forEncryption:Z

.field private final theBlock:[I

.field private theRoundKeys:[[I

.field private theRounds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    return-void

    :array_0
    .array-data 4
        -0x3c101625
        0x44626b02
        0x79e27c8a
        0x78df30ec
        0x715ea49e
        -0x387a25f6
        -0x1fb10dd6
        -0x1a3bf6a9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    .line 163
    return-void
.end method

.method private static bufLength([B)I
    .locals 1
    .param p0, "pBuffer"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pBuffer"
        }
    .end annotation

    .line 231
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method private static checkBuffer([BIZ)V
    .locals 5
    .param p0, "pBuffer"    # [B
    .param p1, "pOffset"    # I
    .param p2, "pOutput"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pBuffer",
            "pOffset",
            "pOutput"
        }
    .end annotation

    .line 246
    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->bufLength([B)I

    move-result v0

    .line 247
    .local v0, "myBufLen":I
    add-int/lit8 v1, p1, 0x10

    .line 250
    .local v1, "myLast":I
    if-ltz p1, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 251
    .local v2, "badLen":Z
    :goto_1
    if-nez v2, :cond_3

    if-le v1, v0, :cond_2

    goto :goto_2

    .line 257
    :cond_2
    return-void

    .line 253
    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 254
    new-instance v3, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v4, "Output buffer too short."

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 255
    :cond_4
    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "Input buffer too short."

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    :goto_3
    throw v3
.end method

.method private decryptBlock([BI[BI)I
    .locals 3
    .param p1, "pInput"    # [B
    .param p2, "pInOff"    # I
    .param p3, "pOutput"    # [B
    .param p4, "pOutOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pInput",
            "pInOff",
            "pOutput",
            "pOutOff"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, p2, v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 337
    iget v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 339
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->decryptRound(I)V

    .line 337
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 343
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 346
    const/16 v0, 0x10

    return v0
.end method

.method private decryptRound(I)V
    .locals 8
    .param p1, "pRound"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pRound"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v0, v0, p1

    .line 357
    .local v0, "myKeys":[I
    rem-int/lit8 v1, p1, 0x4

    .line 358
    .local v1, "myPrevIndex":I
    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rightIndex(I)I

    move-result v2

    .line 359
    .local v2, "myIndex":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v2

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->ror32(II)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v5, v5, v1

    const/4 v6, 0x0

    aget v6, v0, v6

    xor-int/2addr v5, v6

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v0, v5

    xor-int/2addr v4, v5

    aput v4, v3, v2

    .line 360
    move v1, v2

    .line 361
    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rightIndex(I)I

    move-result v2

    .line 362
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v2

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v6, v6, v1

    const/4 v7, 0x2

    aget v7, v0, v7

    xor-int/2addr v6, v7

    sub-int/2addr v4, v6

    const/4 v6, 0x3

    aget v7, v0, v6

    xor-int/2addr v4, v7

    aput v4, v3, v2

    .line 363
    move v1, v2

    .line 364
    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rightIndex(I)I

    move-result v2

    .line 365
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v2

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v6, v6, v1

    const/4 v7, 0x4

    aget v7, v0, v7

    xor-int/2addr v6, v7

    sub-int/2addr v4, v6

    aget v5, v0, v5

    xor-int/2addr v4, v5

    aput v4, v3, v2

    .line 366
    return-void
.end method

.method private encryptBlock([BI[BI)I
    .locals 3
    .param p1, "pInput"    # [B
    .param p2, "pInOff"    # I
    .param p3, "pOutput"    # [B
    .param p4, "pOutOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pInput",
            "pInOff",
            "pOutput",
            "pOutOff"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, p2, v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v0, v1, :cond_0

    .line 279
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->encryptRound(I)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 286
    const/16 v0, 0x10

    return v0
.end method

.method private encryptRound(I)V
    .locals 8
    .param p1, "pRound"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pRound"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v0, v0, p1

    .line 297
    .local v0, "myKeys":[I
    add-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    rem-int/2addr v1, v2

    .line 298
    .local v1, "myIndex":I
    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->leftIndex(I)I

    move-result v3

    .line 299
    .local v3, "myNextIndex":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v5, v5, v3

    aget v2, v0, v2

    xor-int/2addr v2, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v5, v5, v1

    const/4 v6, 0x5

    aget v7, v0, v6

    xor-int/2addr v5, v7

    add-int/2addr v2, v5

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->ror32(II)I

    move-result v2

    aput v2, v4, v1

    .line 300
    move v1, v3

    .line 301
    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->leftIndex(I)I

    move-result v2

    .line 302
    .end local v3    # "myNextIndex":I
    .local v2, "myNextIndex":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v2

    const/4 v7, 0x2

    aget v7, v0, v7

    xor-int/2addr v4, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v7, v7, v1

    aget v5, v0, v5

    xor-int/2addr v5, v7

    add-int/2addr v4, v5

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->ror32(II)I

    move-result v4

    aput v4, v3, v1

    .line 303
    move v1, v2

    .line 304
    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->leftIndex(I)I

    move-result v2

    .line 305
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v2

    const/4 v5, 0x0

    aget v5, v0, v5

    xor-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v5, v5, v1

    const/4 v6, 0x1

    aget v6, v0, v6

    xor-int/2addr v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    aput v4, v3, v1

    .line 306
    return-void
.end method

.method private generate128RoundKeys([I)V
    .locals 8
    .param p1, "pWork"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pWork"
        }
    .end annotation

    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v0, v1, :cond_0

    .line 420
    sget-object v1, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    and-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v1

    .line 422
    .local v1, "myDelta":I
    const/4 v2, 0x0

    .line 423
    .local v2, "j":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    aget v4, p1, v2

    add-int/2addr v4, v1

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    aput v4, p1, v2

    .line 424
    aget v2, p1, v3

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    add-int/2addr v2, v6

    const/4 v6, 0x3

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v3

    .line 425
    aget v2, p1, v4

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v7

    add-int/2addr v2, v7

    const/4 v7, 0x6

    invoke-static {v2, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v4

    .line 426
    aget v2, p1, v3

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0xb

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v3

    .line 428
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v2, v2, v0

    .line 429
    .local v2, "myKeys":[I
    const/4 v4, 0x0

    aget v7, p1, v4

    aput v7, v2, v4

    .line 430
    aget v4, p1, v5

    aput v4, v2, v5

    .line 431
    const/4 v4, 0x2

    aget v7, p1, v4

    aput v7, v2, v4

    .line 432
    aget v4, p1, v5

    aput v4, v2, v6

    .line 433
    const/4 v4, 0x4

    aget v6, p1, v6

    aput v6, v2, v4

    .line 434
    const/4 v4, 0x5

    aget v5, p1, v5

    aput v5, v2, v4

    .line 418
    .end local v1    # "myDelta":I
    .end local v2    # "myKeys":[I
    .end local v3    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private generate192RoundKeys([I)V
    .locals 6
    .param p1, "pWork"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pWork"
        }
    .end annotation

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v0, v1, :cond_0

    .line 447
    sget-object v1, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    rem-int/lit8 v2, v0, 0x6

    aget v1, v1, v2

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v1

    .line 449
    .local v1, "myDelta":I
    const/4 v2, 0x0

    .line 450
    .local v2, "j":I
    aget v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v2

    .line 451
    aget v2, p1, v4

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .local v3, "j":I
    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v2, v5

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v4

    .line 452
    aget v2, p1, v3

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v2, v5

    const/4 v5, 0x6

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v3

    .line 453
    aget v2, p1, v4

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v2, v5

    const/16 v5, 0xb

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v4

    .line 454
    aget v2, p1, v3

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v2, v5

    const/16 v5, 0xd

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v3

    .line 455
    aget v2, p1, v4

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-static {v1, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v2, v5

    const/16 v5, 0x11

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v4

    .line 456
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v2, v2, v0

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    .end local v1    # "myDelta":I
    .end local v3    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private generate256RoundKeys([I)V
    .locals 7
    .param p1, "pWork"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pWork"
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v1, v2, :cond_0

    .line 470
    sget-object v2, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    and-int/lit8 v3, v1, 0x7

    aget v2, v2, v3

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    .line 471
    .local v2, "myDelta":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v3, v3, v1

    .line 473
    .local v3, "myKeys":[I
    const/4 v4, 0x0

    .line 474
    .local v4, "j":I
    and-int/lit8 v5, v0, 0x7

    aget v5, p1, v5

    add-int/2addr v5, v2

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    aput v5, v3, v4

    .line 475
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "index":I
    .local v5, "index":I
    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "j":I
    .local v6, "j":I
    aget v4, v3, v4

    aput v4, p1, v0

    .line 476
    and-int/lit8 v0, v5, 0x7

    aget v0, p1, v0

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    add-int/2addr v0, v4

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v0

    aput v0, v3, v6

    .line 477
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "index":I
    .restart local v0    # "index":I
    and-int/lit8 v4, v5, 0x7

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .local v5, "j":I
    aget v6, v3, v6

    aput v6, p1, v4

    .line 478
    and-int/lit8 v4, v0, 0x7

    aget v4, p1, v4

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    add-int/2addr v4, v6

    const/4 v6, 0x6

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    aput v4, v3, v5

    .line 479
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    aget v5, v3, v5

    aput v5, p1, v0

    .line 480
    and-int/lit8 v0, v4, 0x7

    aget v0, p1, v0

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v0, v5

    const/16 v5, 0xb

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v0

    aput v0, v3, v6

    .line 481
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "index":I
    .restart local v0    # "index":I
    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget v6, v3, v6

    aput v6, p1, v4

    .line 482
    and-int/lit8 v4, v0, 0x7

    aget v4, p1, v4

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    add-int/2addr v4, v6

    const/16 v6, 0xd

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    aput v4, v3, v5

    .line 483
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .restart local v4    # "index":I
    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    aget v5, v3, v5

    aput v5, p1, v0

    .line 484
    and-int/lit8 v0, v4, 0x7

    aget v0, p1, v0

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v0, v5

    const/16 v5, 0x11

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v0

    aput v0, v3, v6

    .line 485
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "index":I
    .restart local v0    # "index":I
    and-int/lit8 v4, v4, 0x7

    aget v5, v3, v6

    aput v5, p1, v4

    .line 468
    .end local v2    # "myDelta":I
    .end local v3    # "myKeys":[I
    .end local v6    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 487
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private generateRoundKeys([B)V
    .locals 4
    .param p1, "pKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pKey"
        }
    .end annotation

    .line 387
    array-length v0, p1

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    .line 388
    iget v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x6

    aput v3, v2, v1

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    .line 389
    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    .line 392
    .local v0, "numWords":I
    new-array v2, v0, [I

    .line 393
    .local v2, "myT":[I
    invoke-static {p1, v1, v2, v1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 396
    packed-switch v0, :pswitch_data_0

    .line 406
    :pswitch_0
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generate256RoundKeys([I)V

    goto :goto_0

    .line 402
    :pswitch_1
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generate192RoundKeys([I)V

    .line 403
    goto :goto_0

    .line 399
    :pswitch_2
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generate128RoundKeys([I)V

    .line 400
    nop

    .line 409
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static leftIndex(I)I
    .locals 1
    .param p0, "pIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pIndex"
        }
    .end annotation

    .line 316
    if-nez p0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    :goto_0
    return v0
.end method

.method private static rightIndex(I)I
    .locals 1
    .param p0, "pIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pIndex"
        }
    .end annotation

    .line 376
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method private static rol32(II)I
    .locals 2
    .param p0, "pValue"    # I
    .param p1, "pBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pValue",
            "pBits"
        }
    .end annotation

    .line 499
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static ror32(II)I
    .locals 2
    .param p0, "pValue"    # I
    .param p1, "pBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pValue",
            "pBits"
        }
    .end annotation

    .line 512
    ushr-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 200
    const-string v0, "LEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 205
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "pEncrypt"    # Z
    .param p2, "pParams"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pEncrypt",
            "pParams"
        }
    .end annotation

    .line 169
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 176
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 177
    .local v0, "myKey":[B
    array-length v1, v0

    .line 178
    .local v1, "myKeyLen":I
    shl-int/lit8 v2, v1, 0x1

    const/16 v3, 0x10

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    if-lt v1, v3, :cond_0

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    .line 186
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->forEncryption:Z

    .line 188
    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v4, v1, 0x8

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->forEncryption:Z

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v5

    invoke-direct {v2, v3, v4, p2, v5}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 190
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generateRoundKeys([B)V

    .line 191
    return-void

    .line 182
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "KeyBitSize must be 128, 192 or 256"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v0    # "myKey":[B
    .end local v1    # "myKeyLen":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 172
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter passed to LEA init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .param p1, "pInput"    # [B
    .param p2, "pInOff"    # I
    .param p3, "pOutput"    # [B
    .param p4, "pOutOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pInput",
            "pInOff",
            "pOutput",
            "pOutOff"
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->checkBuffer([BIZ)V

    .line 215
    const/4 v0, 0x1

    invoke-static {p3, p4, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->checkBuffer([BIZ)V

    .line 218
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->decryptBlock([BI[BI)I

    move-result v0

    .line 218
    :goto_0
    return v0
.end method

.method public reset()V
    .locals 0

    .line 196
    return-void
.end method
