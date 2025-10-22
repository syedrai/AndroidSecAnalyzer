.class Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# instance fields
.field protected array:[J

.field protected cp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1
    .param p1, "pointer"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    .line 27
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 1
    .param p1, "pointer"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "shift"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    .line 33
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 34
    return-void
.end method


# virtual methods
.method public changeIndex(I)V
    .locals 0
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 238
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 239
    return-void
.end method

.method public changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 232
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    .line 233
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 234
    return-void
.end method

.method public changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 1
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "idx"
        }
    .end annotation

    .line 243
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    .line 244
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 245
    return-void
.end method

.method public copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 4
    .param p1, "shift"    # I
    .param p2, "src"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "inOff"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shift",
            "src",
            "inOff",
            "len"
        }
    .end annotation

    .line 265
    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v3, p1

    invoke-static {v0, v1, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    return-void
.end method

.method public copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 4
    .param p1, "src"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "len"
        }
    .end annotation

    .line 260
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    return-void
.end method

.method public fill(I[BII)V
    .locals 10
    .param p1, "shift"    # I
    .param p2, "arr"    # [B
    .param p3, "input_cp"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shift",
            "arr",
            "input_cp",
            "len"
        }
    .end annotation

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    .local v1, "q":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v2, v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x8

    if-gt v2, p4, :cond_0

    .line 305
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-static {p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 306
    add-int/lit8 p3, p3, 0x8

    .line 307
    add-int/lit8 v0, v0, 0x8

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_0
    if-ge v0, p4, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, "r":I
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 313
    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    if-ge v0, p4, :cond_1

    .line 315
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v4, v3, v1

    aget-byte v6, p2, p3

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    shl-int/lit8 v8, v2, 0x3

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 313
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    .end local v2    # "r":I
    :cond_1
    return-void
.end method

.method public fillRandom(ILjava/security/SecureRandom;I)V
    .locals 3
    .param p1, "shift"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shift",
            "random",
            "length"
        }
    .end annotation

    .line 295
    new-array v0, p3, [B

    .line 296
    .local v0, "rv":[B
    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 297
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    .line 298
    return-void
.end method

.method public get()J
    .locals 3

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public get(I)J
    .locals 3
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getArray()[J
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    return-object v0
.end method

.method public getD_for_not0_or_plus(II)I
    .locals 12
    .param p1, "NB_WORD_GFqn"    # I
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "NB_WORD_GFqn",
            "start"
        }
    .end annotation

    .line 379
    move v0, p2

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "d":I
    const-wide/16 v2, 0x0

    .local v2, "mask":J
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .local v4, "pos":I
    :goto_0
    if-lez v0, :cond_1

    .line 381
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "pos":I
    .local v6, "pos":I
    aget-wide v4, v5, v4

    .line 382
    .local v4, "b":J
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    if-ge v7, p1, :cond_0

    .line 384
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v6, 0x1

    .end local v6    # "pos":I
    .local v9, "pos":I
    aget-wide v10, v8, v6

    or-long/2addr v4, v10

    .line 382
    add-int/lit8 v7, v7, 0x1

    move v6, v9

    goto :goto_1

    .line 386
    .end local v9    # "pos":I
    .restart local v6    # "pos":I
    :cond_0
    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->ORBITS_UINT(J)J

    move-result-wide v8

    or-long/2addr v2, v8

    .line 388
    int-to-long v8, v1

    add-long/2addr v8, v2

    long-to-int v1, v8

    .line 379
    add-int/lit8 v0, v0, -0x1

    move v4, v6

    goto :goto_0

    .line 390
    .end local v6    # "pos":I
    .end local v7    # "j":I
    .local v4, "pos":I
    :cond_1
    return v1
.end method

.method public getDotProduct(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)J
    .locals 9
    .param p1, "off"    # I
    .param p2, "b"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "bOff"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "off",
            "b",
            "bOff",
            "len"
        }
    .end annotation

    .line 364
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v0

    .line 365
    iget v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p3, v0

    .line 366
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .local v1, "off":I
    aget-wide v2, v0, p1

    iget-object p1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v0, p3, 0x1

    .end local p3    # "bOff":I
    .local v0, "bOff":I
    aget-wide v4, p1, p3

    and-long/2addr v2, v4

    .line 367
    .local v2, "res":J
    const/4 p1, 0x1

    .local p1, "i":I
    :goto_0
    if-ge p1, p4, :cond_0

    .line 369
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "off":I
    .local v4, "off":I
    aget-wide v5, p3, v1

    iget-object p3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bOff":I
    .local v1, "bOff":I
    aget-wide v7, p3, v0

    and-long/2addr v5, v7

    xor-long/2addr v2, v5

    .line 367
    add-int/lit8 p1, p1, 0x1

    move v0, v1

    move v1, v4

    goto :goto_0

    .line 371
    .end local v4    # "off":I
    .end local p1    # "i":I
    .restart local v0    # "bOff":I
    .local v1, "off":I
    :cond_0
    return-wide v2
.end method

.method public getIndex()I
    .locals 1

    .line 212
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return v0
.end method

.method public getLength()I
    .locals 2

    .line 255
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public indexReset()V
    .locals 1

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 291
    return-void
.end method

.method public is0_gf2n(II)I
    .locals 5
    .param p1, "p"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "size"
        }
    .end annotation

    .line 354
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v0

    .line 355
    .local v0, "r":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 357
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    or-long/2addr v0, v3

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->NORBITS_UINT(J)J

    move-result-wide v2

    long-to-int v3, v2

    return v3
.end method

.method public isEqual_nocst_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .locals 8
    .param p1, "b"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "len"
        }
    .end annotation

    .line 492
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 493
    .local v0, "inOff":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 494
    .local v1, "outOff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 496
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "outOff":I
    .local v4, "outOff":I
    aget-wide v5, v3, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inOff":I
    .local v3, "inOff":I
    aget-wide v0, v1, v0

    cmp-long v7, v5, v0

    if-eqz v7, :cond_0

    .line 498
    const/4 v0, 0x0

    return v0

    .line 494
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    move v1, v4

    goto :goto_0

    .line 501
    .end local v2    # "i":I
    .end local v3    # "inOff":I
    .end local v4    # "outOff":I
    .restart local v0    # "inOff":I
    .restart local v1    # "outOff":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public move(I)V
    .locals 1
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 197
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 198
    return-void
.end method

.method public moveIncremental()V
    .locals 1

    .line 202
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 203
    return-void
.end method

.method public searchDegree(III)I
    .locals 1
    .param p1, "da"    # I
    .param p2, "db"    # I
    .param p3, "NB_WORD_GFqn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "da",
            "db",
            "NB_WORD_GFqn"
        }
    .end annotation

    .line 404
    nop

    :goto_0
    mul-int v0, p1, p3

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->is0_gf2n(II)I

    move-result v0

    if-eqz v0, :cond_0

    if-lt p1, p2, :cond_0

    .line 406
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 408
    :cond_0
    return p1
.end method

.method public set(IJ)V
    .locals 2
    .param p1, "p"    # I
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "v"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aput-wide p2, v0, v1

    .line 49
    return-void
.end method

.method public set(J)V
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aput-wide p1, v0, v1

    .line 54
    return-void
.end method

.method public set1_gf2n(II)V
    .locals 6
    .param p1, "startPos"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPos",
            "size"
        }
    .end annotation

    .line 270
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p1

    .line 271
    .local v0, "pos":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "pos":I
    .local v2, "pos":I
    const-wide/16 v3, 0x1

    aput-wide v3, v1, v0

    .line 272
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 274
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v2

    .line 272
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_0
    return-void
.end method

.method public setAnd(IJ)V
    .locals 4
    .param p1, "p"    # I
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "v"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    and-long/2addr v2, p2

    aput-wide v2, v0, v1

    .line 218
    return-void
.end method

.method public setAnd(J)V
    .locals 4
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v2, v0, v1

    and-long/2addr v2, p1

    aput-wide v2, v0, v1

    .line 223
    return-void
.end method

.method public setClear(I)V
    .locals 4
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 228
    return-void
.end method

.method public setRangeClear(II)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "size"
        }
    .end annotation

    .line 249
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v0

    .line 250
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int v1, p1, p2

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 251
    return-void
.end method

.method public setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 9
    .param p1, "outOff"    # I
    .param p2, "a"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "aOff"    # I
    .param p4, "b"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p5, "bOff"    # I
    .param p6, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outOff",
            "a",
            "aOff",
            "b",
            "bOff",
            "len"
        }
    .end annotation

    .line 322
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v0

    .line 323
    iget v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p3, v0

    .line 324
    iget v0, p4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p5, v0

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 327
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "outOff":I
    .local v2, "outOff":I
    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "aOff":I
    .local v4, "aOff":I
    aget-wide v5, v3, p3

    iget-object p3, p4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, p5, 0x1

    .end local p5    # "bOff":I
    .local v3, "bOff":I
    aget-wide v7, p3, p5

    xor-long/2addr v5, v7

    aput-wide v5, v1, p1

    .line 325
    add-int/lit8 v0, v0, 0x1

    move p1, v2

    move p5, v3

    move p3, v4

    goto :goto_0

    .line 329
    .end local v0    # "i":I
    .end local v2    # "outOff":I
    .end local v3    # "bOff":I
    .end local v4    # "aOff":I
    .restart local p1    # "outOff":I
    .restart local p3    # "aOff":I
    .restart local p5    # "bOff":I
    :cond_0
    return-void
.end method

.method public setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 12
    .param p1, "a"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "b"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "len"
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .local v1, "outOff":I
    iget v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .local v2, "aOff":I
    iget v3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .local v3, "bOff":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 335
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outOff":I
    .local v5, "outOff":I
    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "aOff":I
    .local v7, "aOff":I
    aget-wide v8, v6, v2

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "bOff":I
    .local v6, "bOff":I
    aget-wide v10, v2, v3

    xor-long v2, v8, v10

    aput-wide v2, v4, v1

    .line 333
    add-int/lit8 v0, v0, 0x1

    move v1, v5

    move v3, v6

    move v2, v7

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    .end local v5    # "outOff":I
    .end local v6    # "bOff":I
    .end local v7    # "aOff":I
    :cond_0
    return-void
.end method

.method public setRangeFromXorAndMask_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JI)V
    .locals 16
    .param p1, "a"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "b"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "mask"    # J
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "mask",
            "len"
        }
    .end annotation

    .line 341
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 342
    .local v3, "outOff":I
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 343
    .local v4, "a_cp":I
    iget v5, v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 344
    .local v5, "b_cp":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v7, p5

    if-ge v6, v7, :cond_0

    .line 346
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v9, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v10, v9, v4

    iget-object v9, v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v12, v9, v5

    xor-long/2addr v10, v12

    and-long v10, v10, p3

    aput-wide v10, v8, v3

    .line 347
    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "a_cp":I
    .local v9, "a_cp":I
    aget-wide v10, v8, v4

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v13, v12, v3

    xor-long/2addr v10, v13

    aput-wide v10, v8, v4

    .line 348
    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "b_cp":I
    .local v8, "b_cp":I
    aget-wide v10, v4, v5

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v13, v3, 0x1

    .end local v3    # "outOff":I
    .local v13, "outOff":I
    aget-wide v14, v12, v3

    xor-long/2addr v10, v14

    aput-wide v10, v4, v5

    .line 344
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    move v4, v9

    move v3, v13

    goto :goto_0

    .line 350
    .end local v6    # "i":I
    .end local v8    # "b_cp":I
    .end local v9    # "a_cp":I
    .end local v13    # "outOff":I
    .restart local v3    # "outOff":I
    .restart local v4    # "a_cp":I
    .restart local v5    # "b_cp":I
    :cond_0
    return-void
.end method

.method public setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V
    .locals 12
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "len"
        }
    .end annotation

    .line 413
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 419
    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x3

    .line 420
    .local v0, "left":I
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v1, v1, 0x3

    .line 421
    .local v1, "right":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 422
    .local v2, "outOff":I
    iget v3, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .line 423
    .local v3, "inOff":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_1

    .line 425
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outOff":I
    .local v6, "outOff":I
    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v8, v7, v3

    ushr-long v7, v8, v1

    iget-object v9, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v10, v9, v3

    shl-long v9, v10, v0

    xor-long/2addr v7, v9

    aput-wide v7, v5, v2

    .line 423
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    .line 428
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v3    # "inOff":I
    .end local v4    # "i":I
    .end local v6    # "outOff":I
    :cond_1
    :goto_1
    return-void
.end method

.method public setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 18
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p2, "len"    # I
    .param p3, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "len",
            "shift"
        }
    .end annotation

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    and-int/lit8 v3, p3, 0x3f

    .line 433
    .local v3, "right2":I
    rsub-int/lit8 v4, v3, 0x40

    .line 434
    .local v4, "left2":I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 435
    .local v5, "outOff":I
    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .line 436
    .local v6, "inOff":I
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v7, :cond_1

    .line 438
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_0

    .line 440
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "outOff":I
    .local v9, "outOff":I
    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v11, v10, v6

    ushr-long v10, v11, v3

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x1

    aget-wide v13, v12, v6

    shl-long v12, v13, v4

    xor-long/2addr v10, v12

    aput-wide v10, v8, v5

    .line 438
    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_0

    .end local v7    # "i":I
    .end local v9    # "outOff":I
    .restart local v5    # "outOff":I
    :cond_0
    goto :goto_2

    .line 445
    :cond_1
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v7, v7, 0x3

    .line 446
    .local v7, "right1":I
    iget v8, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v8, v8, 0x8

    shl-int/lit8 v8, v8, 0x3

    .line 447
    .local v8, "left1":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v2, :cond_2

    .line 449
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "outOff":I
    .local v11, "outOff":I
    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v13, v12, v6

    ushr-long v12, v13, v7

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x1

    aget-wide v15, v14, v6

    shl-long v14, v15, v8

    or-long/2addr v12, v14

    ushr-long/2addr v12, v3

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v15, v14, v6

    ushr-long v14, v15, v7

    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v16, v6, 0x1

    aget-wide v16, v0, v16

    shl-long v16, v16, v8

    or-long v14, v14, v16

    shl-long/2addr v14, v4

    xor-long/2addr v12, v14

    aput-wide v12, v10, v5

    .line 447
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move v5, v11

    goto :goto_1

    .line 453
    .end local v7    # "right1":I
    .end local v8    # "left1":I
    .end local v9    # "i":I
    .end local v11    # "outOff":I
    .restart local v5    # "outOff":I
    :cond_2
    :goto_2
    return-void
.end method

.method public setRangePointerUnion_Check(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 19
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p2, "len"    # I
    .param p3, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "len",
            "shift"
        }
    .end annotation

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    and-int/lit8 v3, p3, 0x3f

    .line 458
    .local v3, "right2":I
    rsub-int/lit8 v4, v3, 0x40

    .line 459
    .local v4, "left2":I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 460
    .local v5, "outOff":I
    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    .line 462
    .local v6, "inOff":I
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v7, :cond_2

    .line 464
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_0

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_0

    .line 466
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "outOff":I
    .local v9, "outOff":I
    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v11, v10, v6

    ushr-long v10, v11, v3

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x1

    aget-wide v13, v12, v6

    shl-long v12, v13, v4

    xor-long/2addr v10, v12

    aput-wide v10, v8, v5

    .line 464
    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_0

    .line 468
    .end local v9    # "outOff":I
    .restart local v5    # "outOff":I
    :cond_0
    if-ge v7, v2, :cond_1

    .line 470
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v9, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v10, v9, v6

    ushr-long v9, v10, v3

    aput-wide v9, v8, v5

    .line 488
    :cond_1
    move/from16 v16, v3

    goto :goto_2

    .line 475
    .end local v7    # "i":I
    :cond_2
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v7, v7, 0x3

    .line 476
    .local v7, "right1":I
    iget v8, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v8, v8, 0x8

    shl-int/lit8 v8, v8, 0x3

    .line 477
    .local v8, "left1":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v2, :cond_3

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v10, v10

    add-int/lit8 v10, v10, -0x2

    if-ge v6, v10, :cond_3

    .line 479
    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "outOff":I
    .local v11, "outOff":I
    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v13, v12, v6

    ushr-long v12, v13, v7

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x1

    aget-wide v15, v14, v6

    shl-long v14, v15, v8

    or-long/2addr v12, v14

    ushr-long/2addr v12, v3

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v15, v14, v6

    ushr-long v14, v15, v7

    move/from16 v16, v3

    .end local v3    # "right2":I
    .local v16, "right2":I
    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v17, v6, 0x1

    aget-wide v17, v3, v17

    shl-long v17, v17, v8

    or-long v14, v14, v17

    shl-long/2addr v14, v4

    xor-long/2addr v12, v14

    aput-wide v12, v10, v5

    .line 477
    add-int/lit8 v9, v9, 0x1

    move v5, v11

    move/from16 v3, v16

    goto :goto_1

    .end local v11    # "outOff":I
    .end local v16    # "right2":I
    .restart local v3    # "right2":I
    .restart local v5    # "outOff":I
    :cond_3
    move/from16 v16, v3

    .line 482
    .end local v3    # "right2":I
    .restart local v16    # "right2":I
    if-ge v9, v2, :cond_4

    .line 484
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v11, v10, v6

    ushr-long v10, v11, v7

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v6, v6, 0x1

    aget-wide v13, v12, v6

    shl-long v12, v13, v8

    or-long/2addr v10, v12

    ushr-long v10, v10, v16

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v13, v12, v6

    ushr-long v12, v13, v7

    shl-long/2addr v12, v4

    xor-long/2addr v10, v12

    aput-wide v10, v3, v5

    move v7, v9

    goto :goto_2

    .line 482
    :cond_4
    move v7, v9

    .line 488
    .end local v8    # "left1":I
    .end local v9    # "i":I
    .local v7, "i":I
    :goto_2
    return-void
.end method

.method public setRangeRotate(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V
    .locals 9
    .param p1, "outOff"    # I
    .param p2, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "inOff"    # I
    .param p4, "len"    # I
    .param p5, "right"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outOff",
            "p",
            "inOff",
            "len",
            "right"
        }
    .end annotation

    .line 186
    rsub-int/lit8 v0, p5, 0x40

    .line 187
    .local v0, "left":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v1

    .line 188
    iget v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p3, v1

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 191
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "outOff":I
    .local v3, "outOff":I
    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v5, v4, p3

    ushr-long v4, v5, v0

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 p3, p3, 0x1

    aget-wide v7, v6, p3

    shl-long v6, v7, p5

    xor-long/2addr v4, v6

    aput-wide v4, v2, p1

    .line 189
    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    .end local v3    # "outOff":I
    .restart local p1    # "outOff":I
    :cond_0
    return-void
.end method

.method public setRange_xi(JII)I
    .locals 7
    .param p1, "xi"    # J
    .param p3, "k"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xi",
            "k",
            "len"
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 397
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v2, p3

    ushr-long v3, p1, v0

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    neg-long v3, v3

    aput-wide v3, v1, v2

    .line 395
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "j":I
    :cond_0
    return p3
.end method

.method public setXor(IJ)V
    .locals 4
    .param p1, "p"    # I
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "v"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    xor-long/2addr v2, p2

    aput-wide v2, v0, v1

    .line 59
    return-void
.end method

.method public setXor(J)V
    .locals 4
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v2, v0, v1

    xor-long/2addr v2, p1

    aput-wide v2, v0, v1

    .line 64
    return-void
.end method

.method public setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 11
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "len1"    # I
    .param p3, "len2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "len1",
            "len2"
        }
    .end annotation

    .line 120
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 122
    .local v0, "outOff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 124
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v0

    .local v3, "pos":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 126
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "pos":I
    .local v5, "pos":I
    aget-wide v6, v4, v3

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v9, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v9, v8, v9

    xor-long/2addr v6, v9

    aput-wide v6, v4, v3

    .line 124
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    .line 122
    .end local v5    # "pos":I
    .restart local v3    # "pos":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "j":I
    .end local v3    # "pos":I
    :cond_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 130
    return-void
.end method

.method public setXorMatrix_NoMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 11
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "len1"    # I
    .param p3, "len2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "len1",
            "len2"
        }
    .end annotation

    .line 107
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 109
    .local v0, "outOff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 111
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v0

    .local v3, "pos":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 113
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "pos":I
    .local v5, "pos":I
    aget-wide v6, v4, v3

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v9, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v9, v8, v9

    xor-long/2addr v6, v9

    aput-wide v6, v4, v3

    .line 111
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    .line 109
    .end local v5    # "pos":I
    .restart local v3    # "pos":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "j":I
    .end local v3    # "pos":I
    :cond_1
    return-void
.end method

.method public setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 9
    .param p1, "outOff"    # I
    .param p2, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "inOff"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outOff",
            "p",
            "inOff",
            "len"
        }
    .end annotation

    .line 88
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p1, v0

    .line 89
    iget v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p3, v0

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 92
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "outOff":I
    .local v2, "outOff":I
    aget-wide v3, v1, p1

    iget-object v5, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, p3, 0x1

    .end local p3    # "inOff":I
    .local v6, "inOff":I
    aget-wide v7, v5, p3

    xor-long/2addr v3, v7

    aput-wide v3, v1, p1

    .line 90
    add-int/lit8 v0, v0, 0x1

    move p1, v2

    move p3, v6

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    .end local v2    # "outOff":I
    .end local v6    # "inOff":I
    .restart local p1    # "outOff":I
    .restart local p3    # "inOff":I
    :cond_0
    return-void
.end method

.method public setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 17
    .param p1, "outOff"    # I
    .param p2, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p3, "inOff"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outOff",
            "p",
            "inOff",
            "len"
        }
    .end annotation

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v3, p1, v3

    .line 146
    .end local p1    # "outOff":I
    .local v3, "outOff":I
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int v4, p3, v4

    .line 147
    .end local p3    # "inOff":I
    .local v4, "inOff":I
    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v5, :cond_1

    .line 149
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 151
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "outOff":I
    .local v7, "outOff":I
    aget-wide v8, v6, v3

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "inOff":I
    .local v11, "inOff":I
    aget-wide v12, v10, v4

    xor-long/2addr v8, v12

    aput-wide v8, v6, v3

    .line 149
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    move v4, v11

    goto :goto_0

    .end local v5    # "i":I
    .end local v7    # "outOff":I
    .end local v11    # "inOff":I
    .restart local v3    # "outOff":I
    .restart local v4    # "inOff":I
    :cond_0
    goto :goto_2

    .line 156
    :cond_1
    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v5, v5, 0x3

    .line 157
    .local v5, "right":I
    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v6, v6, 0x8

    shl-int/lit8 v6, v6, 0x3

    .line 158
    .local v6, "left":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_2

    .line 160
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "outOff":I
    .local v9, "outOff":I
    aget-wide v10, v8, v3

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v13, v12, v4

    ushr-long v12, v13, v5

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v4, v4, 0x1

    aget-wide v15, v14, v4

    shl-long v14, v15, v6

    or-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, v8, v3

    .line 158
    add-int/lit8 v7, v7, 0x1

    move v3, v9

    goto :goto_1

    .line 163
    .end local v5    # "right":I
    .end local v6    # "left":I
    .end local v7    # "i":I
    .end local v9    # "outOff":I
    .restart local v3    # "outOff":I
    :cond_2
    :goto_2
    return-void
.end method

.method public setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 11
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "len"
        }
    .end annotation

    .line 68
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 69
    .local v0, "outOff":I
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 70
    .local v1, "inOff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 72
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "outOff":I
    .local v4, "outOff":I
    aget-wide v5, v3, v0

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "inOff":I
    .local v8, "inOff":I
    aget-wide v9, v7, v1

    xor-long/2addr v5, v9

    aput-wide v5, v3, v0

    .line 70
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    move v1, v8

    goto :goto_0

    .line 74
    .end local v2    # "i":I
    .end local v4    # "outOff":I
    .end local v8    # "inOff":I
    .restart local v0    # "outOff":I
    .restart local v1    # "inOff":I
    :cond_0
    return-void
.end method

.method public setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 10
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "inOff",
            "len"
        }
    .end annotation

    .line 78
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 79
    .local v0, "outOff":I
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p2, v1

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 82
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outOff":I
    .local v3, "outOff":I
    aget-wide v4, v2, v0

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v7, p2, 0x1

    .end local p2    # "inOff":I
    .local v7, "inOff":I
    aget-wide v8, v6, p2

    xor-long/2addr v4, v8

    aput-wide v4, v2, v0

    .line 80
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    move p2, v7

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    .end local v3    # "outOff":I
    .end local v7    # "inOff":I
    .restart local v0    # "outOff":I
    .restart local p2    # "inOff":I
    :cond_0
    return-void
.end method

.method public setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V
    .locals 11
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "len"    # I
    .param p3, "mask"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "len",
            "mask"
        }
    .end annotation

    .line 167
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 168
    .local v0, "outOff":I
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 169
    .local v1, "inOff":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 171
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "outOff":I
    .local v4, "outOff":I
    aget-wide v5, v3, v0

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "inOff":I
    .local v8, "inOff":I
    aget-wide v9, v7, v1

    and-long/2addr v9, p3

    xor-long/2addr v5, v9

    aput-wide v5, v3, v0

    .line 169
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    move v1, v8

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    .end local v4    # "outOff":I
    .end local v8    # "inOff":I
    .restart local v0    # "outOff":I
    .restart local v1    # "inOff":I
    :cond_0
    return-void
.end method

.method public setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V
    .locals 9
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "len"    # I
    .param p3, "mask"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "len",
            "mask"
        }
    .end annotation

    .line 177
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 178
    .local v0, "outOff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 180
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outOff":I
    .local v3, "outOff":I
    aget-wide v4, v2, v0

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v7, v6, v7

    and-long/2addr v7, p3

    xor-long/2addr v4, v7

    aput-wide v4, v2, v0

    .line 178
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    .line 182
    .end local v1    # "i":I
    .end local v3    # "outOff":I
    .restart local v0    # "outOff":I
    :cond_0
    return-void
.end method

.method public setXorRangeXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 18
    .param p1, "outOff"    # I
    .param p2, "a"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "a_cp"    # I
    .param p4, "b"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p5, "b_cp"    # I
    .param p6, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outOff",
            "a",
            "a_cp",
            "b",
            "b_cp",
            "len"
        }
    .end annotation

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v3, p1, v3

    .line 135
    .end local p1    # "outOff":I
    .local v3, "outOff":I
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v4, p3, v4

    .line 136
    .end local p3    # "a_cp":I
    .local v4, "a_cp":I
    iget v5, v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v5, p5, v5

    .line 137
    .end local p5    # "b_cp":I
    .local v5, "b_cp":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v7, p6

    if-ge v6, v7, :cond_0

    .line 139
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "outOff":I
    .local v9, "outOff":I
    aget-wide v10, v8, v3

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "a_cp":I
    .local v13, "a_cp":I
    aget-wide v14, v12, v4

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v12, v5, 0x1

    .end local v5    # "b_cp":I
    .local v12, "b_cp":I
    aget-wide v16, v4, v5

    xor-long v4, v14, v16

    xor-long/2addr v4, v10

    aput-wide v4, v8, v3

    .line 137
    add-int/lit8 v6, v6, 0x1

    move v3, v9

    move v5, v12

    move v4, v13

    goto :goto_0

    .line 141
    .end local v6    # "i":I
    .end local v9    # "outOff":I
    .end local v12    # "b_cp":I
    .end local v13    # "a_cp":I
    .restart local v3    # "outOff":I
    .restart local v4    # "a_cp":I
    .restart local v5    # "b_cp":I
    :cond_0
    return-void
.end method

.method public setXorRange_SelfMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 10
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "len"
        }
    .end annotation

    .line 98
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 99
    .local v0, "inOff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v4, v2, v3

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "inOff":I
    .local v7, "inOff":I
    aget-wide v8, v6, v0

    xor-long/2addr v4, v8

    aput-wide v4, v2, v3

    .line 99
    add-int/lit8 v1, v1, 0x1

    move v0, v7

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    .end local v7    # "inOff":I
    .restart local v0    # "inOff":I
    :cond_0
    return-void
.end method

.method public swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3
    .param p1, "b"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 506
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    .line 507
    .local v0, "tmp_array":[J
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 508
    .local v1, "tmp_cp":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    .line 509
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 510
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    .line 511
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    .line 512
    return-void
.end method

.method public toBytes(I)[B
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 280
    new-array v0, p1, [B

    .line 281
    .local v0, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 283
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    ushr-int/lit8 v4, v1, 0x3

    add-int/2addr v3, v4

    aget-wide v3, v2, v3

    and-int/lit8 v2, v1, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long v2, v3, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
