.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
.source "GF2Vector.java"


# instance fields
.field private v:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    .line 31
    if-ltz p1, :cond_0

    .line 35
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    .line 36
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    .line 37
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative length."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "t"    # I
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "length",
            "t",
            "sr"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    .line 77
    if-gt p2, p1, :cond_2

    .line 82
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    .line 84
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    .line 85
    .local v0, "size":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    .line 87
    new-array v1, p1, [I

    .line 88
    .local v1, "help":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 90
    aput v2, v1, v2

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    move v2, p1

    .line 94
    .local v2, "m":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 96
    invoke-static {p3, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v4

    .line 97
    .local v4, "j":I
    aget v5, v1, v4

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->setBit(I)V

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 99
    aget v5, v1, v2

    aput v5, v1, v4

    .line 94
    .end local v4    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    .end local v3    # "i":I
    :cond_1
    return-void

    .line 79
    .end local v0    # "size":I
    .end local v1    # "help":[I
    .end local v2    # "m":I
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The hamming weight is greater than the length of vector."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 7
    .param p1, "length"    # I
    .param p2, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "sr"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    .line 47
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    .line 49
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    .line 50
    .local v0, "size":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    .line 53
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 55
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    aput v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_0
    and-int/lit8 v1, p1, 0x1f

    .line 60
    .local v1, "r":I
    if-eqz v1, :cond_1

    .line 63
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v3, v0, -0x1

    aget v4, v2, v3

    const/4 v5, 0x1

    shl-int v6, v5, v1

    sub-int/2addr v6, v5

    and-int/2addr v4, v6

    aput v4, v2, v3

    .line 65
    :cond_1
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 7
    .param p1, "length"    # I
    .param p2, "v"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "v"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    .line 112
    if-ltz p1, :cond_2

    .line 116
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    .line 118
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    .line 120
    .local v0, "size":I
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 125
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    .line 127
    and-int/lit8 v1, p1, 0x1f

    .line 128
    .local v1, "r":I
    if-eqz v1, :cond_0

    .line 131
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v3, v0, -0x1

    aget v4, v2, v3

    const/4 v5, 0x1

    shl-int v6, v5, v1

    sub-int/2addr v6, v5

    and-int/2addr v4, v6

    aput v4, v2, v3

    .line 133
    :cond_0
    return-void

    .line 122
    .end local v1    # "r":I
    :cond_1
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "length mismatch"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v0    # "size":I
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "negative length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)V
    .locals 1
    .param p1, "other"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    .line 142
    iget v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    .line 143
    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    .line 144
    return-void
.end method

.method protected constructor <init>([II)V
    .locals 0
    .param p1, "v"    # [I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "length"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    .line 157
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    .line 158
    return-void
.end method

.method public static OS2VP(I[B)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 3
    .param p0, "length"    # I
    .param p1, "encVec"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "encVec"
        }
    .end annotation

    .line 170
    if-ltz p0, :cond_1

    .line 175
    add-int/lit8 v0, p0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 177
    .local v0, "byteLen":I
    array-length v1, p1

    if-gt v1, v0, :cond_0

    .line 182
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->toIntArray([B)[I

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "length mismatch"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    .end local v0    # "byteLen":I
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "negative length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .locals 5
    .param p1, "other"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 286
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    if-eqz v0, :cond_2

    .line 291
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 292
    .local v0, "otherVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-ne v1, v2, :cond_1

    .line 297
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    .line 299
    .local v1, "vec":[I
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 301
    aget v3, v1, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v4, v2

    xor-int/2addr v3, v4

    aput v3, v1, v2

    .line 299
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 304
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v2

    .line 294
    .end local v1    # "vec":[I
    :cond_1
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "length mismatch"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    .end local v0    # "otherVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 495
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 497
    return v1

    .line 499
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    .line 501
    .local v0, "otherVec":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public extractLeftVector(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 7
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 375
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-gt p1, v0, :cond_2

    .line 380
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-ne p1, v0, :cond_0

    .line 382
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)V

    return-object v0

    .line 385
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 387
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    shr-int/lit8 v1, p1, 0x5

    .line 388
    .local v1, "q":I
    and-int/lit8 v2, p1, 0x1f

    .line 390
    .local v2, "r":I
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    if-eqz v2, :cond_1

    .line 393
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v4, v1

    const/4 v5, 0x1

    shl-int v6, v5, v2

    sub-int/2addr v6, v5

    and-int/2addr v4, v6

    aput v4, v3, v1

    .line 396
    :cond_1
    return-object v0

    .line 377
    .end local v0    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v1    # "q":I
    .end local v2    # "r":I
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extractRightVector(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 10
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 409
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-gt p1, v0, :cond_4

    .line 414
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-ne p1, v0, :cond_0

    .line 416
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;)V

    return-object v0

    .line 419
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 421
    .local v0, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x5

    .line 422
    .local v1, "q":I
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v2, p1

    and-int/lit8 v2, v2, 0x1f

    .line 423
    .local v2, "r":I
    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v3, v3, 0x5

    .line 425
    .local v3, "length":I
    move v4, v1

    .line 427
    .local v4, "ind":I
    if-eqz v2, :cond_3

    .line 430
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_1

    .line 432
    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "ind":I
    .local v8, "ind":I
    aget v4, v7, v4

    ushr-int/2addr v4, v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v7, v7, v8

    rsub-int/lit8 v9, v2, 0x20

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    aput v4, v6, v5

    .line 430
    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_0

    .line 435
    .end local v5    # "i":I
    .end local v8    # "ind":I
    .restart local v4    # "ind":I
    :cond_1
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v6, v3, -0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "ind":I
    .restart local v8    # "ind":I
    aget v4, v7, v4

    ushr-int/2addr v4, v2

    aput v4, v5, v6

    .line 436
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    array-length v4, v4

    if-ge v8, v4, :cond_2

    .line 438
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v5, v3, -0x1

    aget v6, v4, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v7, v7, v8

    rsub-int/lit8 v9, v2, 0x20

    shl-int/2addr v7, v9

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 447
    :cond_2
    move v4, v8

    goto :goto_1

    .line 444
    .end local v8    # "ind":I
    .restart local v4    # "ind":I
    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    const/4 v7, 0x0

    invoke-static {v5, v1, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    :goto_1
    return-object v0

    .line 411
    .end local v0    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .end local v1    # "q":I
    .end local v2    # "r":I
    .end local v3    # "length":I
    .end local v4    # "ind":I
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extractVector([I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    .locals 9
    .param p1, "setJ"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setJ"
        }
    .end annotation

    .line 345
    array-length v0, p1

    .line 346
    .local v0, "k":I
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-gt v1, v2, :cond_2

    .line 351
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 353
    .local v1, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 355
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v4, p1, v2

    shr-int/lit8 v4, v4, 0x5

    aget v3, v3, v4

    aget v4, p1, v2

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    and-int/2addr v3, v4

    .line 356
    .local v3, "e":I
    if-eqz v3, :cond_0

    .line 358
    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v6, v2, 0x5

    aget v7, v4, v6

    and-int/lit8 v8, v2, 0x1f

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    aput v5, v4, v6

    .line 353
    .end local v3    # "e":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 348
    .end local v1    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    :cond_2
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "invalid index set"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBit(I)I
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 252
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-ge p1, v0, :cond_0

    .line 256
    shr-int/lit8 v0, p1, 0x5

    .line 257
    .local v0, "q":I
    and-int/lit8 v1, p1, 0x1f

    .line 258
    .local v1, "r":I
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v2, v3

    ushr-int/2addr v2, v1

    return v2

    .line 254
    .end local v0    # "q":I
    .end local v1    # "r":I
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 192
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 193
    .local v0, "byteLen":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->toByteArray([II)[B

    move-result-object v1

    return-object v1
.end method

.method public getHammingWeight()I
    .locals 5

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "weight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 215
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v2, v2, v1

    .line 216
    .local v2, "e":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 218
    and-int/lit8 v4, v2, 0x1

    .line 219
    .local v4, "b":I
    if-eqz v4, :cond_0

    .line 221
    add-int/lit8 v0, v0, 0x1

    .line 223
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    .line 216
    .end local v4    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    .end local v2    # "e":I
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public getVecArray()[I
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 509
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    .line 510
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 511
    .end local v0    # "hash":I
    .local v1, "hash":I
    return v1
.end method

.method public isZero()Z
    .locals 3

    .line 234
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 236
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 238
    const/4 v1, 0x0

    return v1

    .line 234
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Vector;
    .locals 9
    .param p1, "p"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 315
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v0

    .line 316
    .local v0, "pVec":[I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    array-length v2, v0

    if-ne v1, v2, :cond_2

    .line 321
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 323
    .local v1, "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 325
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v0, v2

    shr-int/lit8 v4, v4, 0x5

    aget v3, v3, v4

    aget v4, v0, v2

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    and-int/2addr v3, v4

    .line 326
    .local v3, "e":I
    if-eqz v3, :cond_0

    .line 328
    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v6, v2, 0x5

    aget v7, v4, v6

    and-int/lit8 v8, v2, 0x1f

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    aput v5, v4, v6

    .line 323
    .end local v3    # "e":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 318
    .end local v1    # "result":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;
    :cond_2
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "length mismatch"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBit(I)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 269
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-ge p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 274
    return-void

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toExtensionFieldVector(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;
    .locals 12
    .param p1, "field"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 459
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v0

    .line 460
    .local v0, "m":I
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 465
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    div-int/2addr v1, v0

    .line 466
    .local v1, "t":I
    new-array v2, v1, [I

    .line 467
    .local v2, "result":[I
    const/4 v3, 0x0

    .line 468
    .local v3, "count":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 470
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->getDegree()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_1

    .line 472
    ushr-int/lit8 v7, v3, 0x5

    .line 473
    .local v7, "q":I
    and-int/lit8 v8, v3, 0x1f

    .line 475
    .local v8, "r":I
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v9, v9, v7

    ushr-int/2addr v9, v8

    and-int/2addr v9, v6

    .line 476
    .local v9, "e":I
    if-ne v9, v6, :cond_0

    .line 478
    aget v10, v2, v4

    shl-int v11, v6, v5

    xor-int/2addr v10, v11

    aput v10, v2, v4

    .line 480
    :cond_0
    nop

    .end local v7    # "q":I
    .end local v8    # "r":I
    .end local v9    # "e":I
    add-int/lit8 v3, v3, 0x1

    .line 470
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 468
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 483
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;

    invoke-direct {v4, p1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mVector;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    return-object v4

    .line 462
    .end local v1    # "t":I
    .end local v2    # "result":[I
    .end local v3    # "count":I
    :cond_3
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "conversion is impossible"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 519
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 520
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->length:I

    if-ge v1, v2, :cond_2

    .line 522
    if-eqz v1, :cond_0

    and-int/lit8 v2, v1, 0x1f

    if-nez v2, :cond_0

    .line 524
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 526
    :cond_0
    shr-int/lit8 v2, v1, 0x5

    .line 527
    .local v2, "q":I
    and-int/lit8 v3, v1, 0x1f

    .line 528
    .local v3, "r":I
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v4, v2

    const/4 v5, 0x1

    shl-int/2addr v5, v3

    and-int/2addr v4, v5

    .line 529
    .local v4, "bit":I
    if-nez v4, :cond_1

    .line 531
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 535
    :cond_1
    const/16 v5, 0x31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    .end local v2    # "q":I
    .end local v3    # "r":I
    .end local v4    # "bit":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
