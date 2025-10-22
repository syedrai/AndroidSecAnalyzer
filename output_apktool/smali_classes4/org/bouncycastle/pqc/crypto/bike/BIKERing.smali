.class Lorg/bouncycastle/pqc/crypto/bike/BIKERing;
.super Ljava/lang/Object;
.source "BIKERing.java"


# static fields
.field private static final PERMUTATION_CUTOFF:I = 0x40


# instance fields
.field private final bits:I

.field private final halfPowers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field private final sizeExt:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "r"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->halfPowers:Ljava/util/Map;

    .line 23
    const v0, -0xffff

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 26
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    .line 27
    add-int/lit8 v0, p1, 0x3f

    ushr-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    .line 28
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->sizeExt:I

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->halfPowers:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->generateHalfPowersInv(Ljava/util/Map;I)V

    .line 31
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static generateHalfPower(III)I
    .locals 10
    .param p0, "r"    # I
    .param p1, "r32"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "r32",
            "n"
        }
    .end annotation

    .line 300
    const/4 v0, 0x1

    .line 301
    .local v0, "p":I
    move v1, p2

    .line 302
    .local v1, "k":I
    :goto_0
    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-lt v1, v4, :cond_0

    .line 304
    mul-int v5, p1, v0

    .line 305
    .local v5, "y":I
    int-to-long v6, v5

    and-long/2addr v2, v6

    int-to-long v6, p0

    mul-long v2, v2, v6

    .line 306
    .local v2, "t":J
    int-to-long v6, v0

    add-long/2addr v6, v2

    .line 308
    .local v6, "u":J
    ushr-long v8, v6, v4

    long-to-int v0, v8

    .line 309
    nop

    .end local v2    # "t":J
    .end local v5    # "y":I
    .end local v6    # "u":J
    add-int/lit8 v1, v1, -0x20

    .line 310
    goto :goto_0

    .line 311
    :cond_0
    if-lez v1, :cond_1

    .line 313
    const/4 v4, -0x1

    neg-int v5, v1

    ushr-int/2addr v4, v5

    .line 314
    .local v4, "mk":I
    mul-int v5, p1, v0

    and-int/2addr v5, v4

    .line 315
    .restart local v5    # "y":I
    int-to-long v6, v5

    and-long/2addr v2, v6

    int-to-long v6, p0

    mul-long v2, v2, v6

    .line 316
    .restart local v2    # "t":J
    int-to-long v6, v0

    add-long/2addr v6, v2

    .line 318
    .restart local v6    # "u":J
    ushr-long v8, v6, v1

    long-to-int v0, v8

    .line 320
    .end local v2    # "t":J
    .end local v4    # "mk":I
    .end local v5    # "y":I
    .end local v6    # "u":J
    :cond_1
    return v0
.end method

.method private static generateHalfPowersInv(Ljava/util/Map;I)V
    .locals 9
    .param p1, "r"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "halfPowers",
            "r"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 325
    .local p0, "halfPowers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    add-int/lit8 v0, p1, -0x2

    .line 326
    .local v0, "rSub2":I
    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    .line 328
    .local v1, "bits":I
    neg-int v2, p1

    invoke-static {v2}, Lorg/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v2

    .line 329
    .local v2, "r32":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 331
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    shl-int v4, v5, v4

    .line 332
    .local v4, "m":I
    const/16 v6, 0x40

    if-lt v4, v6, :cond_0

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 334
    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1, v2, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->generateHalfPower(III)I

    move-result v8

    invoke-static {v8}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_0
    shl-int v7, v5, v3

    and-int/2addr v7, v0

    if-eqz v7, :cond_1

    .line 339
    shl-int v7, v5, v3

    sub-int/2addr v7, v5

    and-int v5, v0, v7

    .line 340
    .local v5, "n":I
    if-lt v5, v6, :cond_1

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 342
    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v2, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->generateHalfPower(III)I

    move-result v7

    invoke-static {v7}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .end local v4    # "m":I
    .end local v5    # "n":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private static implModAdd(III)I
    .locals 2
    .param p0, "m"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "x",
            "y"
        }
    .end annotation

    .line 192
    add-int v0, p1, p2

    sub-int/2addr v0, p0

    .line 193
    .local v0, "t":I
    shr-int/lit8 v1, v0, 0x1f

    and-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method private static implMulwAcc([JJJ[JI)V
    .locals 15
    .param p0, "u"    # [J
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # [J
    .param p6, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "x",
            "y",
            "z",
            "zOff"
        }
    .end annotation

    .line 351
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 352
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 354
    ushr-int/lit8 v4, v3, 0x1

    aget-wide v4, p0, v4

    shl-long/2addr v4, v2

    aput-wide v4, p0, v3

    .line 355
    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p0, v3

    xor-long v5, v5, p3

    aput-wide v5, p0, v4

    .line 352
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 358
    .end local v3    # "i":I
    :cond_0
    long-to-int v3, v0

    .line 359
    .local v3, "j":I
    const-wide/16 v4, 0x0

    .local v4, "h":J
    and-int/lit8 v6, v3, 0xf

    aget-wide v6, p0, v6

    ushr-int/lit8 v8, v3, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-wide v8, p0, v8

    const/4 v10, 0x4

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    .line 361
    .local v6, "l":J
    const/16 v8, 0x38

    .line 364
    .local v8, "k":I
    :cond_1
    ushr-long v11, v0, v8

    long-to-int v3, v11

    .line 365
    and-int/lit8 v9, v3, 0xf

    aget-wide v11, p0, v9

    ushr-int/lit8 v9, v3, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-wide v13, p0, v9

    shl-long/2addr v13, v10

    xor-long/2addr v11, v13

    .line 367
    .local v11, "g":J
    shl-long v13, v11, v8

    xor-long/2addr v6, v13

    .line 368
    neg-int v9, v8

    ushr-long v13, v11, v9

    xor-long/2addr v4, v13

    .line 370
    add-int/lit8 v8, v8, -0x8

    if-gtz v8, :cond_1

    .line 372
    const/4 v9, 0x0

    .end local p1    # "x":J
    .local v0, "x":J
    .local v9, "p":I
    :goto_1
    const/4 v10, 0x7

    if-ge v9, v10, :cond_2

    .line 374
    const-wide v13, -0x101010101010102L

    and-long/2addr v13, v0

    ushr-long v0, v13, v2

    .line 375
    shl-long v13, p3, v9

    const/16 v10, 0x3f

    shr-long/2addr v13, v10

    and-long/2addr v13, v0

    xor-long/2addr v4, v13

    .line 372
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 380
    .end local v9    # "p":I
    :cond_2
    aget-wide v9, p5, p6

    xor-long/2addr v9, v6

    aput-wide v9, p5, p6

    .line 381
    add-int/lit8 v2, p6, 0x1

    aget-wide v9, p5, v2

    xor-long/2addr v9, v4

    aput-wide v9, p5, v2

    .line 382
    return-void
.end method

.method private implPermute([JI[J)V
    .locals 24
    .param p1, "x"    # [J
    .param p2, "n"    # I
    .param p3, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "n",
            "z"
        }
    .end annotation

    .line 251
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    .line 253
    .local v1, "r":I
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->halfPowers:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 254
    .local v2, "pow_1":I
    invoke-static {v1, v2, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v3

    .line 255
    .local v3, "pow_2":I
    invoke-static {v1, v3, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v4

    .line 256
    .local v4, "pow_4":I
    invoke-static {v1, v4, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v5

    .line 258
    .local v5, "pow_8":I
    sub-int v6, v1, v5

    .line 259
    .local v6, "p0":I
    invoke-static {v1, v6, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v7

    .line 260
    .local v7, "p1":I
    invoke-static {v1, v6, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v8

    .line 261
    .local v8, "p2":I
    invoke-static {v1, v7, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v9

    .line 262
    .local v9, "p3":I
    invoke-static {v1, v6, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v10

    .line 263
    .local v10, "p4":I
    invoke-static {v1, v7, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v11

    .line 264
    .local v11, "p5":I
    invoke-static {v1, v8, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v12

    .line 265
    .local v12, "p6":I
    invoke-static {v1, v9, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v13

    .line 267
    .local v13, "p7":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v14, v15, :cond_1

    .line 269
    const-wide/16 v15, 0x0

    .line 271
    .local v15, "z_i":J
    const/16 v17, 0x0

    move/from16 v23, v17

    move/from16 v17, v2

    move/from16 v2, v23

    .local v2, "j":I
    .local v17, "pow_1":I
    :goto_1
    move/from16 v18, v3

    .end local v3    # "pow_2":I
    .local v18, "pow_2":I
    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    .line 273
    invoke-static {v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v6

    .line 274
    invoke-static {v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v7

    .line 275
    invoke-static {v1, v8, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v8

    .line 276
    invoke-static {v1, v9, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v9

    .line 277
    invoke-static {v1, v10, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v10

    .line 278
    invoke-static {v1, v11, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v11

    .line 279
    invoke-static {v1, v12, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v12

    .line 280
    invoke-static {v1, v13, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implModAdd(III)I

    move-result v13

    .line 282
    ushr-int/lit8 v3, v6, 0x6

    aget-wide v19, p1, v3

    ushr-long v19, v19, v6

    const-wide/16 v21, 0x1

    and-long v19, v19, v21

    add-int/lit8 v3, v2, 0x0

    shl-long v19, v19, v3

    or-long v15, v15, v19

    .line 283
    ushr-int/lit8 v3, v7, 0x6

    aget-wide v19, p1, v3

    ushr-long v19, v19, v7

    and-long v19, v19, v21

    add-int/lit8 v3, v2, 0x1

    shl-long v19, v19, v3

    or-long v15, v15, v19

    .line 284
    ushr-int/lit8 v3, v8, 0x6

    aget-wide v19, p1, v3

    ushr-long v19, v19, v8

    and-long v19, v19, v21

    add-int/lit8 v3, v2, 0x2

    shl-long v19, v19, v3

    or-long v15, v15, v19

    .line 285
    ushr-int/lit8 v3, v9, 0x6

    aget-wide v19, p1, v3

    ushr-long v19, v19, v9

    and-long v19, v19, v21

    add-int/lit8 v3, v2, 0x3

    shl-long v19, v19, v3

    or-long v15, v15, v19

    .line 286
    ushr-int/lit8 v3, v10, 0x6

    aget-wide v19, p1, v3

    ushr-long v19, v19, v10

    and-long v19, v19, v21

    add-int/lit8 v3, v2, 0x4

    shl-long v19, v19, v3

    or-long v15, v15, v19

    .line 287
    ushr-int/lit8 v3, v11, 0x6

    aget-wide v19, p1, v3

    ushr-long v19, v19, v11

    and-long v19, v19, v21

    add-int/lit8 v3, v2, 0x5

    shl-long v19, v19, v3

    or-long v15, v15, v19

    .line 288
    ushr-int/lit8 v3, v12, 0x6

    aget-wide v19, p1, v3

    ushr-long v19, v19, v12

    and-long v19, v19, v21

    add-int/lit8 v3, v2, 0x6

    shl-long v19, v19, v3

    or-long v15, v15, v19

    .line 289
    ushr-int/lit8 v3, v13, 0x6

    aget-wide v19, p1, v3

    ushr-long v19, v19, v13

    and-long v19, v19, v21

    add-int/lit8 v3, v2, 0x7

    shl-long v19, v19, v3

    or-long v15, v15, v19

    .line 271
    add-int/lit8 v2, v2, 0x8

    move/from16 v3, v18

    goto/16 :goto_1

    .line 292
    .end local v2    # "j":I
    :cond_0
    aput-wide v15, p3, v14

    .line 267
    .end local v15    # "z_i":J
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v17

    move/from16 v3, v18

    goto/16 :goto_0

    .end local v17    # "pow_1":I
    .end local v18    # "pow_2":I
    .local v2, "pow_1":I
    .restart local v3    # "pow_2":I
    :cond_1
    move/from16 v17, v2

    move/from16 v18, v3

    .line 295
    .end local v2    # "pow_1":I
    .end local v3    # "pow_2":I
    .end local v14    # "i":I
    .restart local v17    # "pow_1":I
    .restart local v18    # "pow_2":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v14, p3, v2

    const-wide/16 v19, -0x1

    neg-int v3, v1

    ushr-long v19, v19, v3

    and-long v14, v14, v19

    aput-wide v14, p3, v2

    .line 296
    return-void
.end method

.method private implSquare([J[J)V
    .locals 2
    .param p1, "x"    # [J
    .param p2, "zz"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "zz"
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    invoke-static {p1, v0, v1, p2, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 387
    return-void
.end method


# virtual methods
.method add([J[J[J)V
    .locals 5
    .param p1, "x"    # [J
    .param p2, "y"    # [J
    .param p3, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v0, v1, :cond_0

    .line 37
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p3, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method addTo([J[J)V
    .locals 5
    .param p1, "x"    # [J
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v0, v1, :cond_0

    .line 45
    aget-wide v1, p2, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method copy([J[J)V
    .locals 3
    .param p1, "x"    # [J
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v0, v1, :cond_0

    .line 53
    aget-wide v1, p1, v0

    aput-wide v1, p2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method create()[J
    .locals 1

    .line 59
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    new-array v0, v0, [J

    return-object v0
.end method

.method createExt()[J
    .locals 1

    .line 64
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->sizeExt:I

    new-array v0, v0, [J

    return-object v0
.end method

.method decodeBytes([B[J)V
    .locals 6
    .param p1, "bs"    # [B
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "z"
        }
    .end annotation

    .line 69
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    and-int/lit8 v0, v0, 0x3f

    .line 70
    .local v0, "partialBits":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    .line 71
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 72
    .local v1, "last":[B
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v0, 0x7

    ushr-int/lit8 v4, v4, 0x3

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    aput-wide v4, p2, v3

    .line 75
    return-void
.end method

.method encodeBitsTransposed([J)[B
    .locals 8
    .param p1, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 79
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    new-array v0, v0, [B

    .line 80
    .local v0, "bs":[B
    const/4 v1, 0x0

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 81
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    if-ge v1, v2, :cond_0

    .line 83
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    sub-int/2addr v2, v1

    ushr-int/lit8 v3, v1, 0x6

    aget-wide v6, p1, v3

    and-int/lit8 v3, v1, 0x3f

    ushr-long/2addr v6, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method encodeBytes([J[B)V
    .locals 5
    .param p1, "x"    # [J
    .param p2, "bs"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "bs"
        }
    .end annotation

    .line 90
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    and-int/lit8 v0, v0, 0x3f

    .line 92
    .local v0, "partialBits":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, p2, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    .line 93
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 94
    .local v1, "last":[B
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, p1, v3

    invoke-static {v3, v4, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 95
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v0, 0x7

    ushr-int/lit8 v4, v4, 0x3

    invoke-static {v1, v2, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    return-void
.end method

.method getSize()I
    .locals 1

    .line 148
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    return v0
.end method

.method getSizeExt()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->sizeExt:I

    return v0
.end method

.method protected implMultiplyAcc([J[J[J)V
    .locals 18
    .param p1, "x"    # [J
    .param p2, "y"    # [J
    .param p3, "zz"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "zz"
        }
    .end annotation

    .line 198
    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v2, v1, [J

    .line 216
    .local v2, "u":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v1, v3, :cond_0

    .line 218
    aget-wide v3, p1, v1

    aget-wide v5, p2, v1

    shl-int/lit8 v8, v1, 0x1

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implMulwAcc([JJJ[JI)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    aget-wide v3, p3, v1

    .local v3, "v0":J
    const/4 v1, 0x1

    aget-wide v5, p3, v1

    .line 222
    .local v5, "v1":J
    const/4 v7, 0x1

    move-wide v9, v3

    move-wide v11, v5

    .end local v3    # "v0":J
    .end local v5    # "v1":J
    .local v7, "i":I
    .local v9, "v0":J
    .local v11, "v1":J
    :goto_1
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v7, v3, :cond_1

    .line 224
    shl-int/lit8 v3, v7, 0x1

    aget-wide v3, p3, v3

    xor-long/2addr v9, v3

    xor-long v3, v9, v11

    aput-wide v3, p3, v7

    shl-int/lit8 v3, v7, 0x1

    add-int/2addr v3, v1

    aget-wide v3, p3, v3

    xor-long/2addr v11, v3

    .line 222
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 227
    .end local v7    # "i":I
    :cond_1
    xor-long v13, v9, v11

    .line 228
    .local v13, "w":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    if-ge v3, v4, :cond_2

    .line 230
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/2addr v4, v3

    aget-wide v5, p3, v3

    xor-long/2addr v5, v13

    aput-wide v5, p3, v4

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 233
    .end local v3    # "i":I
    :cond_2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v1, v3, -0x1

    .line 234
    .local v1, "last":I
    const/4 v3, 0x1

    move v8, v3

    .local v8, "zPos":I
    :goto_3
    mul-int/lit8 v3, v1, 0x2

    if-ge v8, v3, :cond_4

    .line 236
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 237
    .local v3, "hi":I
    sub-int v4, v8, v3

    move v15, v3

    move v3, v4

    .line 239
    .local v3, "lo":I
    .local v15, "hi":I
    :goto_4
    if-ge v3, v15, :cond_3

    .line 241
    aget-wide v4, p1, v3

    aget-wide v6, p1, v15

    xor-long/2addr v4, v6

    aget-wide v6, p2, v3

    aget-wide v16, p2, v15

    xor-long v6, v6, v16

    move/from16 v16, v3

    move-wide v3, v4

    move-wide v5, v6

    move-object/from16 v7, p3

    .end local v3    # "lo":I
    .local v16, "lo":I
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implMulwAcc([JJJ[JI)V

    .line 243
    add-int/lit8 v3, v16, 0x1

    .line 244
    .end local v16    # "lo":I
    .restart local v3    # "lo":I
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 239
    :cond_3
    move/from16 v16, v3

    .line 234
    .end local v3    # "lo":I
    .end local v15    # "hi":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 247
    .end local v8    # "zPos":I
    :cond_4
    return-void
.end method

.method inv([J[J)V
    .locals 8
    .param p1, "a"    # [J
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "z"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v0

    .line 101
    .local v0, "f":[J
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v1

    .line 102
    .local v1, "g":[J
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v2

    .line 104
    .local v2, "t":[J
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->copy([J[J)V

    .line 105
    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->copy([J[J)V

    .line 107
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    add-int/lit8 v3, v3, -0x2

    .line 108
    .local v3, "rSub2":I
    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x20

    .line 110
    .local v4, "bits":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 112
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    shl-int v6, v7, v6

    invoke-virtual {p0, v0, v6, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->squareN([JI[J)V

    .line 113
    invoke-virtual {p0, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    .line 115
    shl-int v6, v7, v5

    and-int/2addr v6, v3

    if-eqz v6, :cond_0

    .line 117
    shl-int v6, v7, v5

    sub-int/2addr v6, v7

    and-int/2addr v6, v3

    .line 118
    .local v6, "n":I
    invoke-virtual {p0, v0, v6, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->squareN([JI[J)V

    .line 119
    invoke-virtual {p0, v2, v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    .line 110
    .end local v6    # "n":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p0, v2, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->square([J[J)V

    .line 124
    return-void
.end method

.method multiply([J[J[J)V
    .locals 1
    .param p1, "x"    # [J
    .param p2, "y"    # [J
    .param p3, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->createExt()[J

    move-result-object v0

    .line 129
    .local v0, "tt":[J
    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implMultiplyAcc([J[J[J)V

    .line 130
    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->reduce([J[J)V

    .line 131
    return-void
.end method

.method reduce([J[J)V
    .locals 11
    .param p1, "tt"    # [J
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tt",
            "z"
        }
    .end annotation

    .line 135
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->bits:I

    and-int/lit8 v0, v0, 0x3f

    .line 136
    .local v0, "partialBits":I
    rsub-int/lit8 v4, v0, 0x40

    .line 137
    .local v4, "excessBits":I
    const-wide/16 v1, -0x1

    ushr-long v9, v1, v4

    .line 140
    .local v9, "partialMask":J
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v5, p1, v2

    const/4 v8, 0x0

    move-object v2, p1

    move-object v7, p2

    .end local p1    # "tt":[J
    .end local p2    # "z":[J
    .local v2, "tt":[J
    .local v7, "z":[J
    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ[JI)J

    .line 142
    invoke-virtual {p0, v2, v7}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->addTo([J[J)V

    .line 143
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->size:I

    add-int/lit8 p1, p1, -0x1

    aget-wide v5, v7, p1

    and-long/2addr v5, v9

    aput-wide v5, v7, p1

    .line 144
    return-void
.end method

.method square([J[J)V
    .locals 1
    .param p1, "x"    # [J
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->createExt()[J

    move-result-object v0

    .line 159
    .local v0, "tt":[J
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implSquare([J[J)V

    .line 160
    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->reduce([J[J)V

    .line 161
    return-void
.end method

.method squareN([JI[J)V
    .locals 1
    .param p1, "x"    # [J
    .param p2, "n"    # I
    .param p3, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "n",
            "z"
        }
    .end annotation

    .line 173
    const/16 v0, 0x40

    if-lt p2, v0, :cond_0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implPermute([JI[J)V

    .line 176
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->createExt()[J

    move-result-object v0

    .line 180
    .local v0, "tt":[J
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implSquare([J[J)V

    .line 181
    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->reduce([J[J)V

    .line 183
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1

    .line 185
    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->implSquare([J[J)V

    .line 186
    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->reduce([J[J)V

    goto :goto_0

    .line 188
    :cond_1
    return-void
.end method
