.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
.source "GF2nONBField.java"


# static fields
.field private static final MAXLONG:I = 0x40


# instance fields
.field private mBit:I

.field private mLength:I

.field mMult:[[I

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 5
    .param p1, "deg"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deg",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    .line 112
    const/4 v0, 0x3

    if-lt p1, v0, :cond_3

    .line 117
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    .line 118
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    const/16 v2, 0x40

    div-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mLength:I

    .line 119
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mBit:I

    .line 120
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mBit:I

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 122
    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mBit:I

    goto :goto_0

    .line 126
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mLength:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mLength:I

    .line 129
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->computeType()V

    .line 133
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    if-ge v1, v0, :cond_2

    .line 135
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v2, :cond_1

    .line 138
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    aget-object v2, v2, v0

    const/4 v4, -0x1

    aput v4, v2, v1

    .line 139
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    aget-object v2, v2, v0

    aput v4, v2, v3

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->computeMultMatrix()V

    .line 148
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->computeFieldPolynomial()V

    .line 149
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    .line 150
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    .line 151
    return-void

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nThe type of this field is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeMultMatrix()V
    .locals 11

    .line 396
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_f

    .line 398
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int v0, v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 403
    .local v0, "p":I
    new-array v2, v0, [I

    .line 406
    .local v2, "F":[I
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v4, 0x2

    if-ne v3, v1, :cond_0

    .line 408
    const/4 v3, 0x1

    .local v3, "u":I
    goto :goto_0

    .line 410
    .end local v3    # "u":I
    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v3, v4, :cond_1

    .line 412
    add-int/lit8 v3, v0, -0x1

    .restart local v3    # "u":I
    goto :goto_0

    .line 416
    .end local v3    # "u":I
    :cond_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->elementOfOrder(II)I

    move-result v3

    .line 419
    .restart local v3    # "u":I
    :goto_0
    const/4 v5, 0x1

    .line 421
    .local v5, "w":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    if-ge v6, v7, :cond_5

    .line 423
    move v7, v5

    .line 425
    .local v7, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v8, v9, :cond_3

    .line 427
    aput v8, v2, v7

    .line 428
    shl-int/lit8 v9, v7, 0x1

    rem-int/2addr v9, v0

    .line 429
    .end local v7    # "n":I
    .local v9, "n":I
    if-gez v9, :cond_2

    .line 431
    add-int/2addr v9, v0

    move v7, v9

    goto :goto_3

    .line 429
    :cond_2
    move v7, v9

    .line 425
    .end local v9    # "n":I
    .restart local v7    # "n":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 434
    .end local v8    # "i":I
    :cond_3
    mul-int v8, v3, v5

    rem-int/2addr v8, v0

    .line 435
    .end local v5    # "w":I
    .local v8, "w":I
    if-gez v8, :cond_4

    .line 437
    add-int/2addr v8, v0

    move v5, v8

    goto :goto_4

    .line 435
    :cond_4
    move v5, v8

    .line 421
    .end local v8    # "w":I
    .restart local v5    # "w":I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 443
    .end local v6    # "j":I
    .end local v7    # "n":I
    :cond_5
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-ne v6, v1, :cond_b

    .line 445
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_5
    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_7

    .line 447
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v9, v4, 0x1

    aget v9, v2, v9

    aget-object v6, v6, v9

    aget v6, v6, v8

    if-ne v6, v7, :cond_6

    .line 449
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v9, v4, 0x1

    aget v9, v2, v9

    aget-object v6, v6, v9

    sub-int v9, v0, v4

    aget v9, v2, v9

    aput v9, v6, v8

    goto :goto_6

    .line 453
    :cond_6
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v9, v4, 0x1

    aget v9, v2, v9

    aget-object v6, v6, v9

    sub-int v9, v0, v4

    aget v9, v2, v9

    aput v9, v6, v1

    .line 445
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 457
    .end local v4    # "k":I
    :cond_7
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    shr-int/2addr v4, v1

    .line 458
    .local v4, "m_2":I
    const/4 v6, 0x1

    .local v6, "k":I
    :goto_7
    if-gt v6, v4, :cond_a

    .line 461
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    aget v9, v9, v8

    if-ne v9, v7, :cond_8

    .line 463
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    add-int v10, v4, v6

    sub-int/2addr v10, v1

    aput v10, v9, v8

    goto :goto_8

    .line 467
    :cond_8
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    add-int v10, v4, v6

    sub-int/2addr v10, v1

    aput v10, v9, v1

    .line 470
    :goto_8
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v10, v4, v6

    sub-int/2addr v10, v1

    aget-object v9, v9, v10

    aget v9, v9, v8

    if-ne v9, v7, :cond_9

    .line 472
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v10, v4, v6

    sub-int/2addr v10, v1

    aget-object v9, v9, v10

    add-int/lit8 v10, v6, -0x1

    aput v10, v9, v8

    goto :goto_9

    .line 476
    :cond_9
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v10, v4, v6

    sub-int/2addr v10, v1

    aget-object v9, v9, v10

    add-int/lit8 v10, v6, -0x1

    aput v10, v9, v1

    .line 458
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 479
    .end local v4    # "m_2":I
    .end local v6    # "k":I
    :cond_a
    goto :goto_c

    .line 480
    :cond_b
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v6, v4, :cond_e

    .line 482
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_a
    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_d

    .line 484
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v9, v4, 0x1

    aget v9, v2, v9

    aget-object v6, v6, v9

    aget v6, v6, v8

    if-ne v6, v7, :cond_c

    .line 486
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v9, v4, 0x1

    aget v9, v2, v9

    aget-object v6, v6, v9

    sub-int v9, v0, v4

    aget v9, v2, v9

    aput v9, v6, v8

    goto :goto_b

    .line 490
    :cond_c
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v9, v4, 0x1

    aget v9, v2, v9

    aget-object v6, v6, v9

    sub-int v9, v0, v4

    aget v9, v2, v9

    aput v9, v6, v1

    .line 482
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 498
    .end local v0    # "p":I
    .end local v2    # "F":[I
    .end local v3    # "u":I
    .end local v4    # "k":I
    .end local v5    # "w":I
    :cond_d
    :goto_c
    nop

    .line 504
    return-void

    .line 496
    .restart local v0    # "p":I
    .restart local v2    # "F":[I
    .restart local v3    # "u":I
    .restart local v5    # "w":I
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "only type 1 or type 2 implemented"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    .end local v0    # "p":I
    .end local v2    # "F":[I
    .end local v3    # "u":I
    .end local v5    # "w":I
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bisher nur fuer Gausssche Normalbasen implementiert"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeType()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 359
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "s":I
    const/4 v1, 0x0

    .line 367
    .local v1, "k":I
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    .line 368
    const/4 v3, 0x0

    .local v3, "d":I
    :goto_0
    const/4 v4, 0x2

    if-eq v3, v2, :cond_1

    .line 370
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int v5, v5, v6

    add-int/lit8 v0, v5, 0x1

    .line 371
    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v1

    .line 374
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int v4, v4, v5

    div-int/2addr v4, v1

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v3

    .line 368
    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    goto :goto_0

    .line 377
    .end local v3    # "d":I
    :cond_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    .line 378
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v3, v2, :cond_2

    .line 380
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/2addr v3, v2

    add-int/lit8 v0, v3, 0x1

    .line 381
    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v1

    .line 384
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/2addr v3, v2

    div-int/2addr v3, v1

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v3

    .line 385
    .restart local v3    # "d":I
    if-ne v3, v2, :cond_2

    .line 387
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    .line 391
    .end local v3    # "d":I
    :cond_2
    return-void

    .line 361
    .end local v0    # "s":I
    .end local v1    # "k":I
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The extension degree is divisible by 8!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private elementOfOrder(II)I
    .locals 5
    .param p1, "k"    # I
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "p"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 509
    .local v0, "random":Ljava/util/Random;
    const/4 v1, 0x0

    .line 510
    .local v1, "m":I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 512
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 513
    add-int/lit8 v2, p2, -0x1

    rem-int/2addr v1, v2

    .line 514
    if-gez v1, :cond_0

    .line 516
    add-int/lit8 v2, p2, -0x1

    add-int/2addr v1, v2

    goto :goto_0

    .line 520
    :cond_1
    invoke-static {v1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v2

    .line 522
    .local v2, "l":I
    :goto_1
    rem-int v3, v2, p1

    if-nez v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_3

    .line 535
    :cond_2
    move v3, v1

    .line 537
    .local v3, "r":I
    div-int v2, p1, v2

    .line 539
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_2
    if-gt v4, v2, :cond_3

    .line 541
    mul-int v3, v3, v1

    .line 539
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 544
    .end local v4    # "i":I
    :cond_3
    return v3

    .line 524
    .end local v3    # "r":I
    :cond_4
    :goto_3
    if-nez v1, :cond_5

    .line 526
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 527
    add-int/lit8 v3, p2, -0x1

    rem-int/2addr v1, v3

    .line 528
    if-gez v1, :cond_4

    .line 530
    add-int/lit8 v3, p2, -0x1

    add-int/2addr v1, v3

    goto :goto_3

    .line 533
    :cond_5
    invoke-static {v1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V
    .locals 7
    .param p1, "B1"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "B1"
        }
    .end annotation

    .line 244
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v0, v1, :cond_5

    .line 253
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 254
    .local v0, "COBMatrix":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v1, v2, :cond_0

    .line 256
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v2, v0, v1

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-result-object v2

    .line 265
    .local v2, "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v3, v3, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomialElement;

    .line 269
    .local v3, "gamma":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 270
    const/4 v1, 0x1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v1, v4, :cond_1

    .line 272
    add-int/lit8 v4, v1, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-result-object v4

    aput-object v4, v3, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v1, v4, :cond_4

    .line 277
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v4, v5, :cond_3

    .line 279
    aget-object v5, v3, v1

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 277
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 275
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 286
    .end local v4    # "j":I
    :cond_4
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 287
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 288
    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v4, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 289
    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->invertMatrix([Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 290
    return-void

    .line 246
    .end local v0    # "COBMatrix":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v1    # "i":I
    .end local v2    # "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .end local v3    # "gamma":[Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected computeFieldPolynomial()V
    .locals 4

    .line 300
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 302
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/2addr v2, v1

    const-string v1, "ALL"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    goto :goto_1

    .line 304
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 307
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/2addr v2, v1

    const-string v3, "ONE"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 309
    .local v0, "q":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/2addr v3, v1

    const-string v1, "X"

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 310
    .local v2, "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 314
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v1, v3, :cond_1

    .line 317
    move-object v3, v0

    .line 319
    .local v3, "r":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    move-object v0, v2

    .line 321
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    .line 322
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v3    # "r":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_1
    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;

    .line 326
    .end local v0    # "q":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .end local v1    # "i":I
    .end local v2    # "p":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    :cond_2
    :goto_1
    return-void
.end method

.method getONBBit()I
    .locals 1

    .line 164
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mBit:I

    return v0
.end method

.method getONBLength()I
    .locals 1

    .line 159
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mLength:I

    return v0
.end method

.method protected getRandomRoot(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .locals 9
    .param p1, "polynomial"    # Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "polynomial"
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Polynomial;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;)V

    .line 188
    .local v0, "g":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    .line 192
    .local v1, "gDegree":I
    :goto_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 197
    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;Ljava/security/SecureRandom;)V

    .line 198
    .local v3, "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    const/4 v5, 0x2

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V

    .line 200
    .local v4, "ut":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->set(ILorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;)V

    .line 201
    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v5, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    .line 203
    .local v5, "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v7, v2

    if-gt v6, v7, :cond_1

    .line 206
    invoke-virtual {v5, v5, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->multiplyAndReduce(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v5

    .line 207
    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v5

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->gcd(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v7

    .line 213
    .local v7, "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v8

    .line 214
    .local v8, "hDegree":I
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    .line 216
    if-eqz v8, :cond_0

    if-eq v8, v1, :cond_0

    .line 218
    shl-int/lit8 v2, v8, 0x1

    if-le v2, v1, :cond_2

    .line 220
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->quotient(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    goto :goto_2

    .line 225
    :cond_2
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v2, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;)V

    move-object v0, v2

    .line 227
    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    goto :goto_0

    .line 230
    .end local v3    # "u":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .end local v4    # "ut":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .end local v5    # "c":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .end local v6    # "i":I
    .end local v7    # "h":Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;
    .end local v8    # "hDegree":I
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nPolynomial;->at(I)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move-result-object v2

    return-object v2
.end method

.method invMatrix([[I)[[I
    .locals 7
    .param p1, "a"    # [[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 337
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 338
    .local v0, "A":[[I
    move-object v0, p1

    .line 339
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v2, v2, [I

    aput v5, v2, v4

    aput v3, v2, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 341
    .local v1, "inv":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v2, v3, :cond_0

    .line 343
    aget-object v3, v1, v2

    aput v4, v3, v2

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v2, v3, :cond_2

    .line 348
    move v3, v2

    .local v3, "j":I
    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v3, v5, :cond_1

    .line 350
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v2

    aget-object v5, v0, v5

    aget-object v6, v0, v2

    aget v6, v6, v2

    aput v6, v5, v3

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 346
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 353
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method
