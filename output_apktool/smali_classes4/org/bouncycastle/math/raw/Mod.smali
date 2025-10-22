.class public abstract Lorg/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# static fields
.field private static final M30:I = 0x3fffffff

.field private static final M32L:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add30(I[I[I)I
    .locals 5
    .param p0, "len30"    # I
    .param p1, "D"    # [I
    .param p2, "M"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len30",
            "D",
            "M"
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .line 303
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 305
    aget v3, p1, v2

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 306
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p1, v2

    shr-int/lit8 v0, v0, 0x1e

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v2    # "i":I
    :cond_0
    aget v2, p1, v1

    aget v3, p2, v1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 309
    aput v0, p1, v1

    shr-int/lit8 v0, v0, 0x1e

    .line 310
    return v0
.end method

.method public static checkedModOddInverse([I[I[I)V
    .locals 2
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "x",
            "z"
        }
    .end annotation

    .line 21
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedModOddInverseVar([I[I[I)V
    .locals 2
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "x",
            "z"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static cnegate30(II[I)V
    .locals 4
    .param p0, "len30"    # I
    .param p1, "cond"    # I
    .param p2, "D"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len30",
            "cond",
            "D"
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .line 319
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 321
    aget v3, p2, v2

    xor-int/2addr v3, p1

    sub-int/2addr v3, p1

    add-int/2addr v0, v3

    .line 322
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p2, v2

    shr-int/lit8 v0, v0, 0x1e

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "i":I
    :cond_0
    aget v2, p2, v1

    xor-int/2addr v2, p1

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 325
    aput v0, p2, v1

    .line 326
    return-void
.end method

.method private static cnormalize30(II[I[I)V
    .locals 7
    .param p0, "len30"    # I
    .param p1, "condNegate"    # I
    .param p2, "D"    # [I
    .param p3, "M"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len30",
            "condNegate",
            "D",
            "M"
        }
    .end annotation

    .line 334
    add-int/lit8 v0, p0, -0x1

    .line 337
    .local v0, "last":I
    const/4 v1, 0x0

    .local v1, "c":I
    aget v2, p2, v0

    shr-int/lit8 v2, v2, 0x1f

    .line 338
    .local v2, "condAdd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const v4, 0x3fffffff    # 1.9999999f

    if-ge v3, v0, :cond_0

    .line 340
    aget v5, p2, v3

    aget v6, p3, v3

    and-int/2addr v6, v2

    add-int/2addr v5, v6

    .line 341
    .local v5, "di":I
    xor-int v6, v5, p1

    sub-int/2addr v6, p1

    .line 342
    .end local v5    # "di":I
    .local v6, "di":I
    add-int/2addr v1, v6

    and-int/2addr v4, v1

    aput v4, p2, v3

    shr-int/lit8 v1, v1, 0x1e

    .line 338
    .end local v6    # "di":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    .end local v3    # "i":I
    :cond_0
    aget v3, p2, v0

    aget v5, p3, v0

    and-int/2addr v5, v2

    add-int/2addr v3, v5

    .line 346
    .local v3, "di":I
    xor-int v5, v3, p1

    sub-int/2addr v5, p1

    .line 347
    .end local v3    # "di":I
    .restart local v5    # "di":I
    add-int/2addr v1, v5

    aput v1, p2, v0

    .line 352
    .end local v1    # "c":I
    .end local v2    # "condAdd":I
    .end local v5    # "di":I
    const/4 v1, 0x0

    .restart local v1    # "c":I
    aget v2, p2, v0

    shr-int/lit8 v2, v2, 0x1f

    .line 353
    .restart local v2    # "condAdd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 355
    aget v5, p2, v3

    aget v6, p3, v3

    and-int/2addr v6, v2

    add-int/2addr v5, v6

    .line 356
    .restart local v5    # "di":I
    add-int/2addr v1, v5

    and-int v6, v1, v4

    aput v6, p2, v3

    shr-int/lit8 v1, v1, 0x1e

    .line 353
    .end local v5    # "di":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 359
    .end local v3    # "i":I
    :cond_1
    aget v3, p2, v0

    aget v4, p3, v0

    and-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 360
    .local v3, "di":I
    add-int/2addr v1, v3

    aput v1, p2, v0

    .line 364
    .end local v1    # "c":I
    .end local v2    # "condAdd":I
    .end local v3    # "di":I
    return-void
.end method

.method private static decode30(I[I[I)V
    .locals 8
    .param p0, "bits"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bits",
            "x",
            "z"
        }
    .end annotation

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "avail":I
    const-wide/16 v1, 0x0

    .line 374
    .local v1, "data":J
    const/4 v3, 0x0

    .local v3, "xOff":I
    const/4 v4, 0x0

    .line 375
    .local v4, "zOff":I
    :goto_0
    if-lez p0, :cond_1

    .line 377
    :goto_1
    const/16 v5, 0x20

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 379
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "xOff":I
    .local v5, "xOff":I
    aget v3, p1, v3

    int-to-long v6, v3

    shl-long/2addr v6, v0

    or-long/2addr v1, v6

    .line 380
    add-int/lit8 v0, v0, 0x1e

    move v3, v5

    goto :goto_1

    .line 383
    .end local v5    # "xOff":I
    .restart local v3    # "xOff":I
    :cond_0
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "zOff":I
    .local v6, "zOff":I
    long-to-int v7, v1

    aput v7, p2, v4

    ushr-long/2addr v1, v5

    .line 384
    add-int/lit8 v0, v0, -0x20

    .line 385
    add-int/lit8 p0, p0, -0x20

    move v4, v6

    goto :goto_0

    .line 387
    .end local v6    # "zOff":I
    .restart local v4    # "zOff":I
    :cond_1
    return-void
.end method

.method private static divsteps30Var(III[I)I
    .locals 17
    .param p0, "eta"    # I
    .param p1, "f0"    # I
    .param p2, "g0"    # I
    .param p3, "t"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eta",
            "f0",
            "g0",
            "t"
        }
    .end annotation

    .line 391
    const/4 v0, 0x1

    .local v0, "u":I
    const/4 v1, 0x0

    .local v1, "v":I
    const/4 v2, 0x0

    .local v2, "q":I
    const/4 v3, 0x1

    .line 392
    .local v3, "r":I
    move/from16 v4, p1

    .local v4, "f":I
    move/from16 v5, p2

    .line 393
    .local v5, "g":I
    const/16 v6, 0x1e

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p0

    .line 398
    .end local p0    # "eta":I
    .local v0, "eta":I
    .local v1, "u":I
    .local v2, "v":I
    .local v3, "q":I
    .local v4, "r":I
    .local v5, "f":I
    .local v6, "g":I
    .local v7, "i":I
    :goto_0
    const/4 v8, -0x1

    shl-int v9, v8, v7

    or-int/2addr v9, v6

    invoke-static {v9}, Lorg/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v9

    .line 400
    .local v9, "zeros":I
    shr-int/2addr v6, v9

    .line 401
    shl-int/2addr v1, v9

    .line 402
    shl-int/2addr v2, v9

    .line 403
    sub-int/2addr v0, v9

    .line 404
    sub-int/2addr v7, v9

    .line 406
    const/4 v10, 0x1

    const/4 v11, 0x2

    if-gtz v7, :cond_0

    .line 408
    nop

    .line 446
    const/4 v8, 0x0

    aput v1, p3, v8

    .line 447
    aput v2, p3, v10

    .line 448
    aput v3, p3, v11

    .line 449
    const/4 v8, 0x3

    aput v4, p3, v8

    .line 451
    return v0

    .line 416
    :cond_0
    if-gtz v0, :cond_2

    .line 418
    rsub-int/lit8 v0, v0, 0x2

    .line 419
    move v10, v5

    .local v10, "x":I
    move v5, v6

    neg-int v6, v10

    .line 420
    move v12, v1

    .local v12, "y":I
    move v1, v3

    neg-int v3, v12

    .line 421
    move v13, v2

    .local v13, "z":I
    move v2, v4

    neg-int v4, v13

    .line 424
    if-le v0, v7, :cond_1

    move v14, v7

    goto :goto_1

    :cond_1
    move v14, v0

    .line 425
    .local v14, "limit":I
    :goto_1
    rsub-int/lit8 v15, v14, 0x20

    ushr-int/2addr v8, v15

    and-int/lit8 v8, v8, 0x3f

    .line 427
    .local v8, "m":I
    mul-int v15, v5, v6

    mul-int v16, v5, v5

    add-int/lit8 v16, v16, -0x2

    mul-int v15, v15, v16

    and-int v11, v15, v8

    .local v11, "w":I
    goto :goto_3

    .line 432
    .end local v8    # "m":I
    .end local v10    # "x":I
    .end local v11    # "w":I
    .end local v12    # "y":I
    .end local v13    # "z":I
    .end local v14    # "limit":I
    :cond_2
    if-le v0, v7, :cond_3

    move v11, v7

    goto :goto_2

    :cond_3
    move v11, v0

    :goto_2
    move v14, v11

    .line 433
    .restart local v14    # "limit":I
    rsub-int/lit8 v11, v14, 0x20

    ushr-int/2addr v8, v11

    and-int/lit8 v8, v8, 0xf

    .line 435
    .restart local v8    # "m":I
    add-int/lit8 v11, v5, 0x1

    and-int/lit8 v11, v11, 0x4

    shl-int/lit8 v10, v11, 0x1

    add-int/2addr v10, v5

    .line 436
    .local v10, "w":I
    neg-int v11, v6

    mul-int v11, v11, v10

    and-int/2addr v11, v8

    .line 439
    .end local v10    # "w":I
    .restart local v11    # "w":I
    :goto_3
    mul-int v10, v5, v11

    add-int/2addr v6, v10

    .line 440
    mul-int v10, v1, v11

    add-int/2addr v3, v10

    .line 441
    mul-int v10, v2, v11

    add-int/2addr v4, v10

    goto :goto_0
.end method

.method private static encode30(I[I[I)V
    .locals 11
    .param p0, "bits"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bits",
            "x",
            "z"
        }
    .end annotation

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "avail":I
    const-wide/16 v1, 0x0

    .line 462
    .local v1, "data":J
    const/4 v3, 0x0

    .local v3, "xOff":I
    const/4 v4, 0x0

    .line 463
    .local v4, "zOff":I
    :goto_0
    if-lez p0, :cond_1

    .line 465
    const/16 v5, 0x1e

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 467
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "xOff":I
    .local v6, "xOff":I
    aget v3, p1, v3

    int-to-long v7, v3

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    shl-long/2addr v7, v0

    or-long/2addr v1, v7

    .line 468
    add-int/lit8 v0, v0, 0x20

    move v3, v6

    .line 471
    .end local v6    # "xOff":I
    .restart local v3    # "xOff":I
    :cond_0
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "zOff":I
    .local v6, "zOff":I
    long-to-int v7, v1

    const v8, 0x3fffffff    # 1.9999999f

    and-int/2addr v7, v8

    aput v7, p2, v4

    ushr-long/2addr v1, v5

    .line 472
    add-int/lit8 v0, v0, -0x1e

    .line 473
    add-int/lit8 p0, p0, -0x1e

    move v4, v6

    goto :goto_0

    .line 475
    .end local v6    # "zOff":I
    .restart local v4    # "zOff":I
    :cond_1
    return-void
.end method

.method private static equalTo(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y"
        }
    .end annotation

    .line 479
    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int/2addr v0, p2

    .line 480
    .local v0, "d":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 482
    aget v2, p1, v1

    or-int/2addr v0, v2

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 485
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method private static equalToVar(I[II)Z
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len",
            "x",
            "y"
        }
    .end annotation

    .line 490
    const/4 v0, 0x0

    aget v1, p1, v0

    xor-int/2addr v1, p2

    .line 491
    .local v1, "d":I
    if-eqz v1, :cond_0

    .line 492
    return v0

    .line 494
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 496
    aget v3, p1, v2

    or-int/2addr v1, v3

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static getMaximumDivsteps(I)I
    .locals 4
    .param p0, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bits"
        }
    .end annotation

    .line 504
    const-wide/32 v0, 0x2e1e2

    int-to-long v2, p0

    mul-long v2, v2, v0

    const/16 v0, 0x2e

    if-ge p0, v0, :cond_0

    const v0, 0x4b4b5

    goto :goto_0

    :cond_0
    const v0, 0x2c3c4

    :goto_0
    int-to-long v0, v0

    add-long/2addr v2, v0

    const/16 v0, 0x10

    ushr-long v0, v2, v0

    long-to-int v1, v0

    return v1
.end method

.method private static getMaximumHDDivsteps(I)I
    .locals 4
    .param p0, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bits"
        }
    .end annotation

    .line 510
    const-wide/32 v0, 0x24db4

    int-to-long v2, p0

    mul-long v2, v2, v0

    const-wide/32 v0, 0x183ab

    add-long/2addr v2, v0

    const/16 v0, 0x10

    ushr-long v0, v2, v0

    long-to-int v1, v0

    return v1
.end method

.method private static hddivsteps30(III[I)I
    .locals 16
    .param p0, "theta"    # I
    .param p1, "f0"    # I
    .param p2, "g0"    # I
    .param p3, "t"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "theta",
            "f0",
            "g0",
            "t"
        }
    .end annotation

    .line 515
    const/high16 v0, 0x40000000    # 2.0f

    .local v0, "u":I
    const/4 v1, 0x0

    .local v1, "v":I
    const/4 v2, 0x0

    .local v2, "q":I
    const/high16 v3, 0x40000000    # 2.0f

    .line 516
    .local v3, "r":I
    move/from16 v4, p1

    .local v4, "f":I
    move/from16 v5, p2

    .line 518
    .local v5, "g":I
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p0

    .end local p0    # "theta":I
    .local v0, "theta":I
    .local v1, "u":I
    .local v2, "v":I
    .local v3, "q":I
    .local v4, "r":I
    .local v5, "f":I
    .local v6, "g":I
    .local v7, "i":I
    :goto_0
    const/16 v8, 0x1e

    const/4 v9, 0x1

    if-ge v7, v8, :cond_0

    .line 524
    shr-int/lit8 v8, v0, 0x1f

    .line 525
    .local v8, "c1":I
    and-int/lit8 v10, v6, 0x1

    neg-int v10, v10

    .line 527
    .local v10, "c2":I
    xor-int v11, v5, v8

    .line 528
    .local v11, "x":I
    xor-int v12, v1, v8

    .line 529
    .local v12, "y":I
    xor-int v13, v2, v8

    .line 531
    .local v13, "z":I
    and-int v14, v11, v10

    sub-int/2addr v6, v14

    .line 532
    and-int v14, v12, v10

    sub-int/2addr v3, v14

    .line 533
    and-int v14, v13, v10

    sub-int/2addr v4, v14

    .line 535
    not-int v14, v8

    and-int/2addr v14, v10

    .line 536
    .local v14, "c3":I
    xor-int v15, v0, v14

    add-int/lit8 v0, v15, 0x1

    .line 538
    and-int v15, v6, v14

    add-int/2addr v5, v15

    .line 539
    and-int v15, v3, v14

    add-int/2addr v1, v15

    .line 540
    and-int v15, v4, v14

    add-int/2addr v2, v15

    .line 542
    shr-int/2addr v6, v9

    .line 543
    shr-int/2addr v3, v9

    .line 544
    shr-int/2addr v4, v9

    .line 518
    .end local v8    # "c1":I
    .end local v10    # "c2":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "z":I
    .end local v14    # "c3":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 547
    .end local v7    # "i":I
    :cond_0
    const/4 v7, 0x0

    aput v1, p3, v7

    .line 548
    aput v2, p3, v9

    .line 549
    const/4 v7, 0x2

    aput v3, p3, v7

    .line 550
    const/4 v7, 0x3

    aput v4, p3, v7

    .line 552
    return v0
.end method

.method public static inverse32(I)I
    .locals 2
    .param p0, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 39
    move v0, p0

    .line 40
    .local v0, "x":I
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 41
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 42
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 43
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 45
    return v0
.end method

.method public static modOddInverse([I[I[I)I
    .locals 18
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "x",
            "z"
        }
    .end annotation

    .line 50
    move-object/from16 v0, p0

    array-length v1, v0

    .line 55
    .local v1, "len32":I
    shl-int/lit8 v2, v1, 0x5

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 56
    .local v2, "bits":I
    add-int/lit8 v3, v2, 0x1d

    div-int/lit8 v4, v3, 0x1e

    .line 58
    .local v4, "len30":I
    const/4 v3, 0x4

    new-array v7, v3, [I

    .line 59
    .local v7, "t":[I
    new-array v5, v4, [I

    .line 60
    .local v5, "D":[I
    new-array v6, v4, [I

    .line 61
    .local v6, "E":[I
    new-array v3, v4, [I

    .line 62
    .local v3, "F":[I
    new-array v10, v4, [I

    .line 63
    .local v10, "G":[I
    new-array v9, v4, [I

    .line 65
    .local v9, "M":[I
    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v6, v11

    .line 66
    move-object/from16 v13, p1

    invoke-static {v2, v13, v10}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    .line 67
    invoke-static {v2, v0, v9}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    .line 68
    invoke-static {v9, v11, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    const/4 v8, 0x0

    .line 72
    .local v8, "theta":I
    aget v14, v9, v11

    invoke-static {v14}, Lorg/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v14

    .line 73
    .local v14, "m0Inv32":I
    invoke-static {v2}, Lorg/bouncycastle/math/raw/Mod;->getMaximumHDDivsteps(I)I

    move-result v15

    .line 75
    .local v15, "maxDivsteps":I
    const/16 v16, 0x0

    move/from16 v11, v16

    const/16 v16, 0x0

    .local v11, "divSteps":I
    :goto_0
    if-ge v11, v15, :cond_0

    .line 77
    aget v12, v3, v16

    aget v0, v10, v16

    invoke-static {v8, v12, v0, v7}, Lorg/bouncycastle/math/raw/Mod;->hddivsteps30(III[I)I

    move-result v0

    .line 78
    .end local v8    # "theta":I
    .local v0, "theta":I
    move v8, v14

    .end local v14    # "m0Inv32":I
    .local v8, "m0Inv32":I
    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    .line 79
    move v12, v8

    .end local v8    # "m0Inv32":I
    .local v12, "m0Inv32":I
    invoke-static {v4, v3, v10, v7}, Lorg/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 75
    add-int/lit8 v11, v11, 0x1e

    move v8, v0

    move v14, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .end local v0    # "theta":I
    .end local v12    # "m0Inv32":I
    .local v8, "theta":I
    .restart local v14    # "m0Inv32":I
    :cond_0
    move v12, v14

    .line 82
    .end local v11    # "divSteps":I
    .end local v14    # "m0Inv32":I
    .restart local v12    # "m0Inv32":I
    add-int/lit8 v0, v4, -0x1

    aget v0, v3, v0

    shr-int/lit8 v0, v0, 0x1f

    .line 83
    .local v0, "signF":I
    invoke-static {v4, v0, v3}, Lorg/bouncycastle/math/raw/Mod;->cnegate30(II[I)V

    .line 90
    invoke-static {v4, v0, v5, v9}, Lorg/bouncycastle/math/raw/Mod;->cnormalize30(II[I[I)V

    .line 92
    move-object/from16 v11, p2

    invoke-static {v2, v5, v11}, Lorg/bouncycastle/math/raw/Mod;->decode30(I[I[I)V

    .line 95
    const/4 v14, 0x1

    invoke-static {v4, v3, v14}, Lorg/bouncycastle/math/raw/Mod;->equalTo(I[II)I

    move-result v14

    move/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "signF":I
    .local v17, "signF":I
    invoke-static {v4, v10, v0}, Lorg/bouncycastle/math/raw/Mod;->equalTo(I[II)I

    move-result v0

    and-int/2addr v0, v14

    return v0
.end method

.method public static modOddInverseVar([I[I[I)Z
    .locals 22
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "x",
            "z"
        }
    .end annotation

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    .line 105
    .local v2, "len32":I
    shl-int/lit8 v3, v2, 0x5

    add-int/lit8 v4, v2, -0x1

    aget v4, v0, v4

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 106
    .local v3, "bits":I
    add-int/lit8 v4, v3, 0x1d

    div-int/lit8 v4, v4, 0x1e

    .line 108
    .local v4, "len30":I
    invoke-static {v2, v1}, Lorg/bouncycastle/math/raw/Nat;->getBitLength(I[I)I

    move-result v5

    sub-int v5, v3, v5

    .line 111
    .local v5, "clz":I
    const/4 v6, 0x4

    new-array v10, v6, [I

    .line 112
    .local v10, "t":[I
    new-array v8, v4, [I

    .line 113
    .local v8, "D":[I
    new-array v9, v4, [I

    .line 114
    .local v9, "E":[I
    new-array v6, v4, [I

    .line 115
    .local v6, "F":[I
    new-array v13, v4, [I

    .line 116
    .local v13, "G":[I
    new-array v12, v4, [I

    .line 118
    .local v12, "M":[I
    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v15, v9, v14

    .line 119
    invoke-static {v3, v1, v13}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    .line 120
    invoke-static {v3, v0, v12}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    .line 121
    invoke-static {v12, v14, v6, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    neg-int v7, v5

    .line 126
    .local v7, "eta":I
    move v11, v7

    .end local v7    # "eta":I
    .local v11, "eta":I
    move v7, v4

    .local v7, "lenDE":I
    move/from16 v16, v4

    .line 127
    .local v16, "lenFG":I
    aget v17, v12, v14

    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v17

    .line 128
    .local v17, "m0Inv32":I
    invoke-static {v3}, Lorg/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v15

    .line 130
    .local v15, "maxDivsteps":I
    move/from16 v19, v5

    move/from16 v0, v16

    move/from16 v1, v19

    .line 131
    .end local v16    # "lenFG":I
    .local v0, "lenFG":I
    .local v1, "divsteps":I
    :goto_0
    invoke-static {v0, v13, v14}, Lorg/bouncycastle/math/raw/Mod;->equalToVar(I[II)Z

    move-result v16

    if-nez v16, :cond_1

    .line 133
    if-lt v1, v15, :cond_0

    .line 135
    return v14

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1e

    .line 140
    const/16 v16, 0x0

    aget v14, v6, v16

    move/from16 v19, v1

    .end local v1    # "divsteps":I
    .local v19, "divsteps":I
    aget v1, v13, v16

    invoke-static {v11, v14, v1, v10}, Lorg/bouncycastle/math/raw/Mod;->divsteps30Var(III[I)I

    move-result v1

    .line 141
    .end local v11    # "eta":I
    .local v1, "eta":I
    move/from16 v11, v17

    .end local v17    # "m0Inv32":I
    .local v11, "m0Inv32":I
    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    .line 142
    move v14, v11

    .end local v11    # "m0Inv32":I
    .local v14, "m0Inv32":I
    invoke-static {v0, v6, v13, v10}, Lorg/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 143
    invoke-static {v0, v6, v13}, Lorg/bouncycastle/math/raw/Mod;->trimFG30(I[I[I)I

    move-result v0

    move v11, v1

    move/from16 v17, v14

    const/4 v14, 0x0

    move/from16 v1, v19

    goto :goto_0

    .line 146
    .end local v14    # "m0Inv32":I
    .end local v19    # "divsteps":I
    .local v1, "divsteps":I
    .local v11, "eta":I
    .restart local v17    # "m0Inv32":I
    :cond_1
    move/from16 v14, v17

    const/16 v16, 0x0

    .end local v17    # "m0Inv32":I
    .restart local v14    # "m0Inv32":I
    add-int/lit8 v17, v0, -0x1

    aget v17, v6, v17

    shr-int/lit8 v17, v17, 0x1f

    .line 153
    .local v17, "signF":I
    add-int/lit8 v19, v7, -0x1

    aget v19, v8, v19

    shr-int/lit8 v19, v19, 0x1f

    .line 154
    .local v19, "signD":I
    if-gez v19, :cond_2

    .line 156
    invoke-static {v7, v8, v12}, Lorg/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v19

    .line 158
    :cond_2
    if-gez v17, :cond_3

    .line 160
    invoke-static {v7, v8}, Lorg/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v19

    .line 161
    invoke-static {v0, v6}, Lorg/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v17

    .line 165
    :cond_3
    move/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "divsteps":I
    .local v20, "divsteps":I
    invoke-static {v0, v6, v1}, Lorg/bouncycastle/math/raw/Mod;->equalToVar(I[II)Z

    move-result v21

    if-nez v21, :cond_4

    .line 167
    return v16

    .line 170
    :cond_4
    if-gez v19, :cond_5

    .line 172
    invoke-static {v7, v8, v12}, Lorg/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v19

    .line 176
    :cond_5
    move-object/from16 v1, p2

    invoke-static {v3, v8, v1}, Lorg/bouncycastle/math/raw/Mod;->decode30(I[I[I)V

    .line 179
    const/16 v18, 0x1

    return v18
.end method

.method public static modOddIsCoprime([I[I)I
    .locals 13
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "x"
        }
    .end annotation

    .line 184
    array-length v0, p0

    .line 189
    .local v0, "len32":I
    shl-int/lit8 v1, v0, 0x5

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 190
    .local v1, "bits":I
    add-int/lit8 v2, v1, 0x1d

    div-int/lit8 v2, v2, 0x1e

    .line 192
    .local v2, "len30":I
    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 193
    .local v3, "t":[I
    new-array v4, v2, [I

    .line 194
    .local v4, "F":[I
    new-array v5, v2, [I

    .line 195
    .local v5, "G":[I
    new-array v6, v2, [I

    .line 197
    .local v6, "M":[I
    invoke-static {v1, p1, v5}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    .line 198
    invoke-static {v1, p0, v6}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    .line 199
    const/4 v7, 0x0

    invoke-static {v6, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    const/4 v8, 0x0

    .line 203
    .local v8, "theta":I
    invoke-static {v1}, Lorg/bouncycastle/math/raw/Mod;->getMaximumHDDivsteps(I)I

    move-result v9

    .line 205
    .local v9, "maxDivsteps":I
    const/4 v10, 0x0

    .local v10, "divSteps":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 207
    aget v11, v4, v7

    aget v12, v5, v7

    invoke-static {v8, v11, v12, v3}, Lorg/bouncycastle/math/raw/Mod;->hddivsteps30(III[I)I

    move-result v8

    .line 208
    invoke-static {v2, v4, v5, v3}, Lorg/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 205
    add-int/lit8 v10, v10, 0x1e

    goto :goto_0

    .line 211
    .end local v10    # "divSteps":I
    :cond_0
    add-int/lit8 v10, v2, -0x1

    aget v10, v4, v10

    shr-int/lit8 v10, v10, 0x1f

    .line 212
    .local v10, "signF":I
    invoke-static {v2, v10, v4}, Lorg/bouncycastle/math/raw/Mod;->cnegate30(II[I)V

    .line 214
    const/4 v11, 0x1

    invoke-static {v2, v4, v11}, Lorg/bouncycastle/math/raw/Mod;->equalTo(I[II)I

    move-result v11

    invoke-static {v2, v5, v7}, Lorg/bouncycastle/math/raw/Mod;->equalTo(I[II)I

    move-result v7

    and-int/2addr v7, v11

    return v7
.end method

.method public static modOddIsCoprimeVar([I[I)Z
    .locals 17
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "x"
        }
    .end annotation

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    .line 224
    .local v2, "len32":I
    shl-int/lit8 v3, v2, 0x5

    add-int/lit8 v4, v2, -0x1

    aget v4, v0, v4

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 225
    .local v3, "bits":I
    add-int/lit8 v4, v3, 0x1d

    div-int/lit8 v4, v4, 0x1e

    .line 227
    .local v4, "len30":I
    invoke-static {v2, v1}, Lorg/bouncycastle/math/raw/Nat;->getBitLength(I[I)I

    move-result v5

    sub-int v5, v3, v5

    .line 230
    .local v5, "clz":I
    const/4 v6, 0x4

    new-array v6, v6, [I

    .line 231
    .local v6, "t":[I
    new-array v7, v4, [I

    .line 232
    .local v7, "F":[I
    new-array v8, v4, [I

    .line 233
    .local v8, "G":[I
    new-array v9, v4, [I

    .line 235
    .local v9, "M":[I
    invoke-static {v3, v1, v8}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    .line 236
    invoke-static {v3, v0, v9}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    .line 237
    const/4 v10, 0x0

    invoke-static {v9, v10, v7, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    neg-int v11, v5

    .line 242
    .local v11, "eta":I
    move v12, v4

    .line 243
    .local v12, "lenFG":I
    invoke-static {v3}, Lorg/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v13

    .line 245
    .local v13, "maxDivsteps":I
    move v14, v5

    .line 246
    .local v14, "divsteps":I
    :goto_0
    invoke-static {v12, v8, v10}, Lorg/bouncycastle/math/raw/Mod;->equalToVar(I[II)Z

    move-result v15

    if-nez v15, :cond_1

    .line 248
    if-lt v14, v13, :cond_0

    .line 250
    return v10

    .line 253
    :cond_0
    add-int/lit8 v14, v14, 0x1e

    .line 255
    aget v15, v7, v10

    const/16 v16, 0x0

    aget v10, v8, v16

    invoke-static {v11, v15, v10, v6}, Lorg/bouncycastle/math/raw/Mod;->divsteps30Var(III[I)I

    move-result v11

    .line 256
    invoke-static {v12, v7, v8, v6}, Lorg/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 257
    invoke-static {v12, v7, v8}, Lorg/bouncycastle/math/raw/Mod;->trimFG30(I[I[I)I

    move-result v12

    const/4 v10, 0x0

    goto :goto_0

    .line 260
    :cond_1
    add-int/lit8 v10, v12, -0x1

    aget v10, v7, v10

    shr-int/lit8 v10, v10, 0x1f

    .line 261
    .local v10, "signF":I
    if-gez v10, :cond_2

    .line 263
    invoke-static {v12, v7}, Lorg/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v10

    .line 267
    :cond_2
    const/4 v15, 0x1

    invoke-static {v12, v7, v15}, Lorg/bouncycastle/math/raw/Mod;->equalToVar(I[II)Z

    move-result v15

    return v15
.end method

.method private static negate30(I[I)I
    .locals 4
    .param p0, "len30"    # I
    .param p1, "D"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "len30",
            "D"
        }
    .end annotation

    .line 560
    const/4 v0, 0x0

    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .line 561
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 563
    aget v3, p1, v2

    sub-int/2addr v0, v3

    .line 564
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p1, v2

    shr-int/lit8 v0, v0, 0x1e

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    .end local v2    # "i":I
    :cond_0
    aget v2, p1, v1

    sub-int/2addr v0, v2

    .line 567
    aput v0, p1, v1

    shr-int/lit8 v0, v0, 0x1e

    .line 568
    return v0
.end method

.method public static random([I)[I
    .locals 6
    .param p0, "p"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 272
    array-length v0, p0

    .line 273
    .local v0, "len":I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 274
    .local v1, "rand":Ljava/util/Random;
    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 276
    .local v2, "s":[I
    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    .line 277
    .local v3, "m":I
    ushr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 278
    ushr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 279
    ushr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 280
    ushr-int/lit8 v4, v3, 0x8

    or-int/2addr v3, v4

    .line 281
    ushr-int/lit8 v4, v3, 0x10

    or-int/2addr v3, v4

    .line 285
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eq v4, v0, :cond_1

    .line 287
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v2, v4

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 289
    .end local v4    # "i":I
    :cond_1
    add-int/lit8 v4, v0, -0x1

    aget v5, v2, v4

    and-int/2addr v5, v3

    aput v5, v2, v4

    .line 291
    invoke-static {v0, v2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 293
    return-object v2
.end method

.method private static trimFG30(I[I[I)I
    .locals 6
    .param p0, "len30"    # I
    .param p1, "F"    # [I
    .param p2, "G"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "len30",
            "F",
            "G"
        }
    .end annotation

    .line 577
    add-int/lit8 v0, p0, -0x1

    aget v0, p1, v0

    .line 578
    .local v0, "fn":I
    add-int/lit8 v1, p0, -0x1

    aget v1, p2, v1

    .line 580
    .local v1, "gn":I
    add-int/lit8 v2, p0, -0x2

    shr-int/lit8 v2, v2, 0x1f

    .line 581
    .local v2, "cond":I
    shr-int/lit8 v3, v0, 0x1f

    xor-int/2addr v3, v0

    or-int/2addr v2, v3

    .line 582
    shr-int/lit8 v3, v1, 0x1f

    xor-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 584
    if-nez v2, :cond_0

    .line 586
    add-int/lit8 v3, p0, -0x2

    aget v4, p1, v3

    shl-int/lit8 v5, v0, 0x1e

    or-int/2addr v4, v5

    aput v4, p1, v3

    .line 587
    add-int/lit8 v3, p0, -0x2

    aget v4, p2, v3

    shl-int/lit8 v5, v1, 0x1e

    or-int/2addr v4, v5

    aput v4, p2, v3

    .line 588
    add-int/lit8 p0, p0, -0x1

    .line 591
    :cond_0
    return p0
.end method

.method private static updateDE30(I[I[I[II[I)V
    .locals 25
    .param p0, "len30"    # I
    .param p1, "D"    # [I
    .param p2, "E"    # [I
    .param p3, "t"    # [I
    .param p4, "m0Inv32"    # I
    .param p5, "M"    # [I
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
            "len30",
            "D",
            "E",
            "t",
            "m0Inv32",
            "M"
        }
    .end annotation

    .line 602
    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    .local v2, "u":I
    const/4 v3, 0x1

    aget v3, p3, v3

    .local v3, "v":I
    const/4 v4, 0x2

    aget v4, p3, v4

    .local v4, "q":I
    const/4 v5, 0x3

    aget v5, p3, v5

    .line 611
    .local v5, "r":I
    add-int/lit8 v6, v0, -0x1

    aget v6, p1, v6

    shr-int/lit8 v6, v6, 0x1f

    .line 612
    .local v6, "sd":I
    add-int/lit8 v7, v0, -0x1

    aget v7, p2, v7

    shr-int/lit8 v7, v7, 0x1f

    .line 614
    .local v7, "se":I
    and-int v8, v2, v6

    and-int v9, v3, v7

    add-int/2addr v8, v9

    .line 615
    .local v8, "md":I
    and-int v9, v4, v6

    and-int v10, v5, v7

    add-int/2addr v9, v10

    .line 617
    .local v9, "me":I
    aget v10, p5, v1

    .line 618
    .local v10, "mi":I
    aget v11, p1, v1

    .line 619
    .local v11, "di":I
    aget v1, p2, v1

    .line 621
    .local v1, "ei":I
    int-to-long v12, v2

    int-to-long v14, v11

    mul-long v12, v12, v14

    int-to-long v14, v3

    move/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "sd":I
    .end local v7    # "se":I
    .local v16, "sd":I
    .local v17, "se":I
    int-to-long v6, v1

    mul-long v14, v14, v6

    add-long/2addr v12, v14

    .line 622
    .local v12, "cd":J
    int-to-long v6, v4

    int-to-long v14, v11

    mul-long v6, v6, v14

    int-to-long v14, v5

    move-wide/from16 v18, v6

    int-to-long v6, v1

    mul-long v14, v14, v6

    add-long v6, v18, v14

    .line 629
    .local v6, "ce":J
    long-to-int v14, v12

    mul-int v14, v14, p4

    add-int/2addr v14, v8

    const v15, 0x3fffffff    # 1.9999999f

    and-int/2addr v14, v15

    sub-int/2addr v8, v14

    .line 630
    long-to-int v14, v6

    mul-int v14, v14, p4

    add-int/2addr v14, v9

    and-int/2addr v14, v15

    sub-int/2addr v9, v14

    .line 632
    move-wide/from16 v18, v6

    .end local v6    # "ce":J
    .local v18, "ce":J
    int-to-long v6, v10

    move-wide/from16 v20, v6

    int-to-long v6, v8

    mul-long v6, v6, v20

    add-long/2addr v12, v6

    .line 633
    int-to-long v6, v10

    move-wide/from16 v20, v6

    int-to-long v6, v9

    mul-long v6, v6, v20

    add-long v6, v18, v6

    .line 638
    .end local v18    # "ce":J
    .restart local v6    # "ce":J
    const/16 v14, 0x1e

    shr-long/2addr v12, v14

    .line 639
    shr-long/2addr v6, v14

    .line 641
    const/16 v18, 0x1

    move/from16 v14, v18

    const/16 v18, 0x1e

    .local v14, "i":I
    :goto_0
    if-ge v14, v0, :cond_0

    .line 643
    aget v10, p5, v14

    .line 644
    aget v11, p1, v14

    .line 645
    aget v1, p2, v14

    .line 647
    move/from16 v20, v14

    const v19, 0x3fffffff    # 1.9999999f

    .end local v14    # "i":I
    .local v20, "i":I
    int-to-long v14, v2

    move-wide/from16 v21, v14

    int-to-long v14, v11

    mul-long v14, v14, v21

    move-wide/from16 v21, v14

    int-to-long v14, v3

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "u":I
    .end local v3    # "v":I
    .local v23, "u":I
    .local v24, "v":I
    int-to-long v2, v1

    mul-long v14, v14, v2

    add-long v14, v21, v14

    int-to-long v2, v10

    move-wide/from16 v21, v2

    int-to-long v2, v8

    mul-long v2, v2, v21

    add-long/2addr v14, v2

    add-long/2addr v12, v14

    .line 648
    int-to-long v2, v4

    int-to-long v14, v11

    mul-long v2, v2, v14

    int-to-long v14, v5

    move-wide/from16 v21, v2

    int-to-long v2, v1

    mul-long v14, v14, v2

    add-long v2, v21, v14

    int-to-long v14, v10

    move/from16 v21, v1

    .end local v1    # "ei":I
    .local v21, "ei":I
    int-to-long v0, v9

    mul-long v14, v14, v0

    add-long/2addr v2, v14

    add-long/2addr v6, v2

    .line 650
    add-int/lit8 v14, v20, -0x1

    long-to-int v0, v12

    and-int v0, v0, v19

    aput v0, p1, v14

    shr-long v12, v12, v18

    .line 651
    add-int/lit8 v14, v20, -0x1

    long-to-int v0, v6

    and-int v0, v0, v19

    aput v0, p2, v14

    shr-long v6, v6, v18

    .line 641
    add-int/lit8 v14, v20, 0x1

    move/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    const v15, 0x3fffffff    # 1.9999999f

    .end local v20    # "i":I
    .restart local v14    # "i":I
    goto :goto_0

    .line 654
    .end local v21    # "ei":I
    .end local v23    # "u":I
    .end local v24    # "v":I
    .restart local v1    # "ei":I
    .restart local v2    # "u":I
    .restart local v3    # "v":I
    :cond_0
    move/from16 v23, v2

    .end local v2    # "u":I
    .restart local v23    # "u":I
    add-int/lit8 v0, p0, -0x1

    long-to-int v2, v12

    aput v2, p1, v0

    .line 655
    add-int/lit8 v0, p0, -0x1

    long-to-int v2, v6

    aput v2, p2, v0

    .line 656
    return-void
.end method

.method private static updateFG30(I[I[I[I)V
    .locals 19
    .param p0, "len30"    # I
    .param p1, "F"    # [I
    .param p2, "G"    # [I
    .param p3, "t"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "len30",
            "F",
            "G",
            "t"
        }
    .end annotation

    .line 664
    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    .local v2, "u":I
    const/4 v3, 0x1

    aget v3, p3, v3

    .local v3, "v":I
    const/4 v4, 0x2

    aget v4, p3, v4

    .local v4, "q":I
    const/4 v5, 0x3

    aget v5, p3, v5

    .line 668
    .local v5, "r":I
    aget v6, p1, v1

    .line 669
    .local v6, "fi":I
    aget v1, p2, v1

    .line 671
    .local v1, "gi":I
    int-to-long v7, v2

    int-to-long v9, v6

    mul-long v7, v7, v9

    int-to-long v9, v3

    int-to-long v11, v1

    mul-long v9, v9, v11

    add-long/2addr v7, v9

    .line 672
    .local v7, "cf":J
    int-to-long v9, v4

    int-to-long v11, v6

    mul-long v9, v9, v11

    int-to-long v11, v5

    int-to-long v13, v1

    mul-long v11, v11, v13

    add-long/2addr v9, v11

    .line 677
    .local v9, "cg":J
    const/16 v11, 0x1e

    shr-long/2addr v7, v11

    .line 678
    shr-long/2addr v9, v11

    .line 680
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_0
    if-ge v12, v0, :cond_0

    .line 682
    aget v6, p1, v12

    .line 683
    aget v1, p2, v12

    .line 685
    int-to-long v13, v2

    move/from16 v16, v12

    const/16 v15, 0x1e

    .end local v12    # "i":I
    .local v16, "i":I
    int-to-long v11, v6

    mul-long v13, v13, v11

    int-to-long v11, v3

    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "u":I
    .end local v3    # "v":I
    .local v17, "u":I
    .local v18, "v":I
    int-to-long v2, v1

    mul-long v11, v11, v2

    add-long/2addr v13, v11

    add-long/2addr v7, v13

    .line 686
    int-to-long v2, v4

    int-to-long v11, v6

    mul-long v2, v2, v11

    int-to-long v11, v5

    int-to-long v13, v1

    mul-long v11, v11, v13

    add-long/2addr v2, v11

    add-long/2addr v9, v2

    .line 688
    add-int/lit8 v12, v16, -0x1

    long-to-int v2, v7

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v3

    aput v2, p1, v12

    shr-long/2addr v7, v15

    .line 689
    add-int/lit8 v12, v16, -0x1

    long-to-int v2, v9

    and-int/2addr v2, v3

    aput v2, p2, v12

    shr-long/2addr v9, v15

    .line 680
    add-int/lit8 v12, v16, 0x1

    move/from16 v2, v17

    move/from16 v3, v18

    const/16 v11, 0x1e

    .end local v16    # "i":I
    .restart local v12    # "i":I
    goto :goto_0

    .line 692
    .end local v17    # "u":I
    .end local v18    # "v":I
    .restart local v2    # "u":I
    .restart local v3    # "v":I
    :cond_0
    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "u":I
    .end local v3    # "v":I
    .restart local v17    # "u":I
    .restart local v18    # "v":I
    add-int/lit8 v2, v0, -0x1

    long-to-int v3, v7

    aput v3, p1, v2

    .line 693
    add-int/lit8 v2, v0, -0x1

    long-to-int v3, v9

    aput v3, p2, v2

    .line 694
    return-void
.end method
