.class public Lorg/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "c"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "p"
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 226
    .local v0, "cp":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isValidPartial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    return-object p0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implShamirsTrickFixedPoint(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 24
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "q"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "k",
            "q",
            "l"
        }
    .end annotation

    .line 546
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 547
    .local v2, "c":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-static {v2}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v3

    .line 549
    .local v3, "combSize":I
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-gt v4, v3, :cond_3

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-gt v4, v3, :cond_3

    .line 560
    invoke-static/range {p0 .. p0}, Lorg/bouncycastle/math/ec/FixedPointUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v4

    .line 561
    .local v4, "infoP":Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/FixedPointUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v5

    .line 563
    .local v5, "infoQ":Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v6

    .line 564
    .local v6, "lookupTableP":Lorg/bouncycastle/math/ec/ECLookupTable;
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v7

    .line 566
    .local v7, "lookupTableQ":Lorg/bouncycastle/math/ec/ECLookupTable;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v8

    .line 567
    .local v8, "widthP":I
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v9

    .line 570
    .local v9, "widthQ":I
    if-eq v8, v9, :cond_0

    .line 572
    new-instance v10, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v10}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    .line 573
    .local v10, "m":Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;
    move-object/from16 v11, p0

    invoke-virtual {v10, v11, v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    .line 574
    .local v12, "r1":Lorg/bouncycastle/math/ec/ECPoint;
    move-object/from16 v13, p2

    invoke-virtual {v10, v13, v1}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v14

    .line 575
    .local v14, "r2":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v12, v14}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    return-object v15

    .line 578
    .end local v10    # "m":Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;
    .end local v12    # "r1":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v14    # "r2":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_0
    move-object/from16 v11, p0

    move-object/from16 v13, p2

    move v10, v8

    .line 580
    .local v10, "width":I
    add-int v12, v3, v10

    add-int/lit8 v12, v12, -0x1

    div-int/2addr v12, v10

    .line 582
    .local v12, "d":I
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v14

    .line 584
    .local v14, "R":Lorg/bouncycastle/math/ec/ECPoint;
    mul-int v15, v12, v10

    .line 585
    .local v15, "fullComb":I
    invoke-static {v15, v0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v16

    .line 586
    .local v16, "K":[I
    invoke-static {v15, v1}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v17

    .line 588
    .local v17, "L":[I
    add-int/lit8 v18, v15, -0x1

    .line 589
    .local v18, "top":I
    const/16 v19, 0x0

    move/from16 v0, v19

    .local v0, "i":I
    :goto_0
    if-ge v0, v12, :cond_2

    .line 591
    const/16 v19, 0x0

    .local v19, "secretIndexK":I
    const/16 v20, 0x0

    .line 593
    .local v20, "secretIndexL":I
    sub-int v21, v18, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    .end local v19    # "secretIndexK":I
    .end local v20    # "secretIndexL":I
    .local v0, "secretIndexK":I
    .local v1, "secretIndexL":I
    .local v21, "j":I
    .local v22, "i":I
    :goto_1
    if-ltz v21, :cond_1

    .line 595
    ushr-int/lit8 v19, v21, 0x5

    aget v19, v16, v19

    and-int/lit8 v20, v21, 0x1f

    ushr-int v19, v19, v20

    .line 596
    .local v19, "secretBitK":I
    ushr-int/lit8 v20, v19, 0x1

    xor-int v0, v0, v20

    .line 597
    shl-int/lit8 v0, v0, 0x1

    .line 598
    xor-int v0, v0, v19

    .line 600
    ushr-int/lit8 v20, v21, 0x5

    aget v20, v17, v20

    and-int/lit8 v23, v21, 0x1f

    ushr-int v20, v20, v23

    .line 601
    .local v20, "secretBitL":I
    ushr-int/lit8 v23, v20, 0x1

    xor-int v1, v1, v23

    .line 602
    shl-int/lit8 v1, v1, 0x1

    .line 603
    xor-int v1, v1, v20

    .line 593
    .end local v19    # "secretBitK":I
    .end local v20    # "secretBitL":I
    sub-int v21, v21, v12

    goto :goto_1

    .line 606
    .end local v21    # "j":I
    :cond_1
    move-object/from16 v19, v2

    .end local v2    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .local v19, "c":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-interface {v6, v0}, Lorg/bouncycastle/math/ec/ECLookupTable;->lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 607
    .local v2, "addP":Lorg/bouncycastle/math/ec/ECPoint;
    move/from16 v20, v0

    .end local v0    # "secretIndexK":I
    .local v20, "secretIndexK":I
    invoke-interface {v7, v1}, Lorg/bouncycastle/math/ec/ECLookupTable;->lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 609
    .local v0, "addQ":Lorg/bouncycastle/math/ec/ECPoint;
    move/from16 v21, v1

    .end local v1    # "secretIndexL":I
    .local v21, "secretIndexL":I
    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 611
    .local v1, "T":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v14, v1}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v14

    .line 589
    .end local v0    # "addQ":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v1    # "T":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v2    # "addP":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v20    # "secretIndexK":I
    .end local v21    # "secretIndexL":I
    add-int/lit8 v0, v22, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    .end local v22    # "i":I
    .local v0, "i":I
    goto :goto_0

    .end local v19    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .local v2, "c":Lorg/bouncycastle/math/ec/ECCurve;
    :cond_2
    move/from16 v22, v0

    .line 614
    .end local v0    # "i":I
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 549
    .end local v4    # "infoP":Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    .end local v5    # "infoQ":Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    .end local v6    # "lookupTableP":Lorg/bouncycastle/math/ec/ECLookupTable;
    .end local v7    # "lookupTableQ":Lorg/bouncycastle/math/ec/ECLookupTable;
    .end local v8    # "widthP":I
    .end local v9    # "widthQ":I
    .end local v10    # "width":I
    .end local v12    # "d":I
    .end local v14    # "R":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v15    # "fullComb":I
    .end local v16    # "K":[I
    .end local v17    # "L":[I
    .end local v18    # "top":I
    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v13, p2

    move-object/from16 v19, v2

    .line 557
    .end local v2    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .restart local v19    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static implShamirsTrickJsf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 18
    .param p0, "P"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "k",
            "Q",
            "l"
        }
    .end annotation

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 248
    .local v2, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 251
    .local v3, "infinity":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 252
    .local v4, "PaddQ":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 254
    .local v5, "PsubQ":Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v6, 0x4

    new-array v7, v6, [Lorg/bouncycastle/math/ec/ECPoint;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v5, v7, v9

    const/4 v10, 0x2

    aput-object v0, v7, v10

    const/4 v11, 0x3

    aput-object v4, v7, v11

    .line 255
    .local v7, "points":[Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v2, v7}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 257
    const/16 v12, 0x9

    new-array v12, v12, [Lorg/bouncycastle/math/ec/ECPoint;

    aget-object v13, v7, v11

    .line 258
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v8

    aget-object v13, v7, v10

    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v9

    aget-object v13, v7, v9

    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v10

    aget-object v13, v7, v8

    .line 259
    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v11

    aput-object v3, v12, v6

    const/4 v13, 0x5

    aget-object v8, v7, v8

    aput-object v8, v12, v13

    const/4 v8, 0x6

    aget-object v9, v7, v9

    aput-object v9, v12, v8

    const/4 v8, 0x7

    aget-object v9, v7, v10

    aput-object v9, v12, v8

    const/16 v8, 0x8

    aget-object v9, v7, v11

    aput-object v9, v12, v8

    .line 262
    .local v12, "table":[Lorg/bouncycastle/math/ec/ECPoint;
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-static {v8, v9}, Lorg/bouncycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v10

    .line 264
    .local v10, "jsf":[B
    move-object v11, v3

    .line 266
    .local v11, "R":Lorg/bouncycastle/math/ec/ECPoint;
    array-length v13, v10

    .line 267
    .local v13, "i":I
    :goto_0
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_0

    .line 269
    aget-byte v14, v10, v13

    .line 272
    .local v14, "jsfi":I
    shl-int/lit8 v15, v14, 0x18

    shr-int/lit8 v15, v15, 0x1c

    .local v15, "kDigit":I
    shl-int/lit8 v16, v14, 0x1c

    shr-int/lit8 v16, v16, 0x1c

    .line 274
    .local v16, "lDigit":I
    mul-int/lit8 v17, v15, 0x3

    add-int/lit8 v17, v17, 0x4

    add-int v17, v17, v16

    .line 275
    .local v17, "index":I
    aget-object v6, v12, v17

    invoke-virtual {v11, v6}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 276
    .end local v14    # "jsfi":I
    .end local v15    # "kDigit":I
    .end local v16    # "lDigit":I
    .end local v17    # "index":I
    const/4 v6, 0x4

    goto :goto_0

    .line 278
    :cond_0
    return-object v11
.end method

.method static implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 19
    .param p0, "P"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "k",
            "Q",
            "l"
        }
    .end annotation

    .line 284
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "negK":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_1

    const/4 v1, 0x1

    .line 286
    .local v1, "negL":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .local v3, "kAbs":Ljava/math/BigInteger;
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    .line 288
    .local v4, "lAbs":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v5

    .line 289
    .local v5, "minWidthP":I
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    invoke-static {v7, v6}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v7

    .line 291
    .local v7, "minWidthQ":I
    move-object/from16 v8, p0

    invoke-static {v8, v5, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    .line 292
    .local v9, "infoP":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    move-object/from16 v10, p2

    invoke-static {v10, v7, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v2

    .line 296
    .local v2, "infoQ":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v11

    .line 297
    .local v11, "c":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-static {v11}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v12

    .line 298
    .local v12, "combSize":I
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 299
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-gt v13, v12, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-gt v13, v12, :cond_2

    .line 300
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->isPromoted()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->isPromoted()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 302
    invoke-static/range {p0 .. p3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickFixedPoint(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 306
    .end local v11    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .end local v12    # "combSize":I
    :cond_2
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 307
    .local v11, "widthP":I
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 309
    .local v6, "widthQ":I
    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    :goto_1
    move-object v13, v12

    .line 310
    .local v13, "preCompP":[Lorg/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    :goto_2
    move-object/from16 v16, v12

    .line 311
    .local v16, "preCompQ":[Lorg/bouncycastle/math/ec/ECPoint;
    if-eqz v0, :cond_5

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    :goto_3
    move-object v14, v12

    .line 312
    .local v14, "preCompNegP":[Lorg/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    :goto_4
    move-object/from16 v17, v12

    .line 314
    .local v17, "preCompNegQ":[Lorg/bouncycastle/math/ec/ECPoint;
    invoke-static {v11, v3}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v15

    .line 315
    .local v15, "wnafP":[B
    invoke-static {v6, v4}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v18

    .line 317
    .local v18, "wnafQ":[B
    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B[Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    return-object v12
.end method

.method static implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 18
    .param p0, "endomorphism"    # Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    .param p1, "P"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;
    .param p3, "l"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "endomorphism",
            "P",
            "k",
            "l"
        }
    .end annotation

    .line 322
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "negK":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_1

    const/4 v1, 0x1

    .line 324
    .local v1, "negL":Z
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 325
    .end local p2    # "k":Ljava/math/BigInteger;
    .local v3, "k":Ljava/math/BigInteger;
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    .line 327
    .end local p3    # "l":Ljava/math/BigInteger;
    .local v4, "l":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v5

    .line 329
    .local v5, "minWidth":I
    move-object/from16 v7, p1

    invoke-static {v7, v5, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 330
    .local v8, "infoP":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-static/range {p0 .. p1}, Lorg/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 331
    .local v9, "Q":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-interface/range {p0 .. p0}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;

    move-result-object v10

    invoke-static {v9, v10, v8, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;Lorg/bouncycastle/math/ec/WNafPreCompInfo;Z)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v2

    .line 333
    .local v2, "infoQ":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 334
    .local v10, "widthP":I
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 336
    .local v6, "widthQ":I
    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :goto_1
    move-object v12, v11

    .line 337
    .local v12, "preCompP":[Lorg/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :goto_2
    move-object v15, v11

    .line 338
    .local v15, "preCompQ":[Lorg/bouncycastle/math/ec/ECPoint;
    if-eqz v0, :cond_4

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :goto_3
    move-object v13, v11

    .line 339
    .local v13, "preCompNegP":[Lorg/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    :goto_4
    move-object/from16 v16, v11

    .line 341
    .local v16, "preCompNegQ":[Lorg/bouncycastle/math/ec/ECPoint;
    invoke-static {v10, v3}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v14

    .line 342
    .local v14, "wnafP":[B
    invoke-static {v6, v4}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v17

    .line 344
    .local v17, "wnafQ":[B
    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B[Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    return-object v11
.end method

.method private static implShamirsTrickWNaf([Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B[Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 15
    .param p0, "preCompP"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "preCompNegP"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "wnafP"    # [B
    .param p3, "preCompQ"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p4, "preCompNegQ"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p5, "wnafQ"    # [B
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
            "preCompP",
            "preCompNegP",
            "wnafP",
            "preCompQ",
            "preCompNegQ",
            "wnafQ"
        }
    .end annotation

    .line 350
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 352
    .local v2, "len":I
    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 353
    .local v4, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 355
    .local v5, "infinity":Lorg/bouncycastle/math/ec/ECPoint;
    move-object v6, v5

    .line 356
    .local v6, "R":Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .line 358
    .local v7, "zeroes":I
    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_8

    .line 360
    array-length v9, v0

    if-ge v8, v9, :cond_0

    aget-byte v9, v0, v8

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 361
    .local v9, "wiP":I
    :goto_1
    array-length v10, v1

    if-ge v8, v10, :cond_1

    aget-byte v10, v1, v8

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 363
    .local v10, "wiQ":I
    :goto_2
    or-int v11, v9, v10

    if-nez v11, :cond_2

    .line 365
    add-int/lit8 v7, v7, 0x1

    .line 366
    goto :goto_5

    .line 369
    :cond_2
    move-object v11, v5

    .line 370
    .local v11, "r":Lorg/bouncycastle/math/ec/ECPoint;
    if-eqz v9, :cond_4

    .line 372
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 373
    .local v12, "nP":I
    if-gez v9, :cond_3

    move-object/from16 v13, p1

    goto :goto_3

    :cond_3
    move-object v13, p0

    .line 374
    .local v13, "tableP":[Lorg/bouncycastle/math/ec/ECPoint;
    :goto_3
    ushr-int/lit8 v14, v12, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v11, v14}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 376
    .end local v12    # "nP":I
    .end local v13    # "tableP":[Lorg/bouncycastle/math/ec/ECPoint;
    :cond_4
    if-eqz v10, :cond_6

    .line 378
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 379
    .local v12, "nQ":I
    if-gez v10, :cond_5

    move-object/from16 v13, p4

    goto :goto_4

    :cond_5
    move-object/from16 v13, p3

    .line 380
    .local v13, "tableQ":[Lorg/bouncycastle/math/ec/ECPoint;
    :goto_4
    ushr-int/lit8 v14, v12, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v11, v14}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 383
    .end local v12    # "nQ":I
    .end local v13    # "tableQ":[Lorg/bouncycastle/math/ec/ECPoint;
    :cond_6
    if-lez v7, :cond_7

    .line 385
    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 386
    const/4 v7, 0x0

    .line 389
    :cond_7
    invoke-virtual {v6, v11}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 358
    .end local v9    # "wiP":I
    .end local v10    # "wiQ":I
    .end local v11    # "r":Lorg/bouncycastle/math/ec/ECPoint;
    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 392
    .end local v8    # "i":I
    :cond_8
    if-lez v7, :cond_9

    .line 394
    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 397
    :cond_9
    return-object v6
.end method

.method static implSumOfMultiplies(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;[Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 20
    .param p0, "endomorphism"    # Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    .param p1, "ps"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "ks"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "endomorphism",
            "ps",
            "ks"
        }
    .end annotation

    .line 456
    move-object/from16 v0, p1

    array-length v1, v0

    .local v1, "halfCount":I
    shl-int/lit8 v2, v1, 0x1

    .line 458
    .local v2, "fullCount":I
    new-array v3, v2, [Z

    .line 459
    .local v3, "negs":[Z
    new-array v4, v2, [Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    .line 460
    .local v4, "infos":[Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    new-array v5, v2, [[B

    .line 462
    .local v5, "wnafs":[[B
    invoke-interface/range {p0 .. p0}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;

    move-result-object v6

    .line 464
    .local v6, "pointMap":Lorg/bouncycastle/math/ec/ECPointMap;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_2

    .line 466
    shl-int/lit8 v8, v7, 0x1

    .local v8, "j0":I
    add-int/lit8 v9, v8, 0x1

    .line 468
    .local v9, "j1":I
    aget-object v10, p2, v8

    .local v10, "kj0":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-gez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    aput-boolean v11, v3, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    .line 469
    aget-object v11, p2, v9

    .local v11, "kj1":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_1

    const/4 v12, 0x1

    :cond_1
    aput-boolean v12, v3, v9

    invoke-virtual {v11}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    .line 471
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/16 v14, 0x8

    invoke-static {v12, v14}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v12

    .line 473
    .local v12, "minWidth":I
    aget-object v15, v0, v7

    .line 474
    .local v15, "P":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-static {v15, v12, v13}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    .line 475
    .local v14, "infoP":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    move-object/from16 v13, p0

    invoke-static {v13, v15}, Lorg/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 476
    .local v0, "Q":Lorg/bouncycastle/math/ec/ECPoint;
    move/from16 v18, v1

    const/4 v1, 0x1

    .end local v1    # "halfCount":I
    .local v18, "halfCount":I
    invoke-static {v0, v6, v14, v1}, Lorg/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;Lorg/bouncycastle/math/ec/WNafPreCompInfo;Z)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v1

    .line 478
    .local v1, "infoQ":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    move-object/from16 v17, v0

    .end local v0    # "Q":Lorg/bouncycastle/math/ec/ECPoint;
    .local v17, "Q":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    move-object/from16 v19, v1

    const/16 v1, 0x8

    .end local v1    # "infoQ":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .local v19, "infoQ":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 479
    .local v0, "widthP":I
    move/from16 v16, v2

    .end local v2    # "fullCount":I
    .local v16, "fullCount":I
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 481
    .local v1, "widthQ":I
    aput-object v14, v4, v8

    .line 482
    aput-object v19, v4, v9

    .line 483
    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v2

    aput-object v2, v5, v8

    .line 484
    invoke-static {v1, v11}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v2

    aput-object v2, v5, v9

    .line 464
    .end local v0    # "widthP":I
    .end local v1    # "widthQ":I
    .end local v8    # "j0":I
    .end local v9    # "j1":I
    .end local v10    # "kj0":Ljava/math/BigInteger;
    .end local v11    # "kj1":Ljava/math/BigInteger;
    .end local v12    # "minWidth":I
    .end local v14    # "infoP":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v15    # "P":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v17    # "Q":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v19    # "infoQ":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v16

    move/from16 v1, v18

    goto :goto_0

    .line 487
    .end local v7    # "i":I
    .end local v16    # "fullCount":I
    .end local v18    # "halfCount":I
    .local v1, "halfCount":I
    .restart local v2    # "fullCount":I
    :cond_2
    invoke-static {v3, v4, v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10
    .param p0, "ps"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ps",
            "ks"
        }
    .end annotation

    .line 402
    array-length v0, p0

    .line 403
    .local v0, "count":I
    new-array v1, v0, [Z

    .line 404
    .local v1, "negs":[Z
    new-array v2, v0, [Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    .line 405
    .local v2, "infos":[Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    new-array v3, v0, [[B

    .line 407
    .local v3, "wnafs":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 409
    aget-object v5, p1, v4

    .local v5, "ki":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v6

    const/4 v7, 0x1

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v4

    invoke-virtual {v5}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v5

    .line 411
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    const/16 v8, 0x8

    invoke-static {v6, v8}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v6

    .line 412
    .local v6, "minWidth":I
    aget-object v9, p0, v4

    invoke-static {v9, v6, v7}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    .line 414
    .local v7, "info":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 416
    .local v8, "width":I
    aput-object v7, v2, v4

    .line 417
    invoke-static {v8, v5}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v9

    aput-object v9, v3, v4

    .line 407
    .end local v5    # "ki":Ljava/math/BigInteger;
    .end local v6    # "minWidth":I
    .end local v7    # "info":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v8    # "width":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 420
    .end local v4    # "i":I
    :cond_1
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4
.end method

.method private static implSumOfMultiplies([Z[Lorg/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 16
    .param p0, "negs"    # [Z
    .param p1, "infos"    # [Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .param p2, "wnafs"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "negs",
            "infos",
            "wnafs"
        }
    .end annotation

    .line 492
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .local v1, "len":I
    array-length v2, v0

    .line 493
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 495
    aget-object v4, v0, v3

    array-length v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 499
    .local v4, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 501
    .local v5, "infinity":Lorg/bouncycastle/math/ec/ECPoint;
    move-object v6, v5

    .line 502
    .local v6, "R":Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .line 504
    .local v7, "zeroes":I
    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_8

    .line 506
    move-object v9, v5

    .line 508
    .local v9, "r":Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    if-ge v10, v2, :cond_5

    .line 510
    aget-object v11, v0, v10

    .line 511
    .local v11, "wnaf":[B
    array-length v12, v11

    if-ge v8, v12, :cond_1

    aget-byte v12, v11, v8

    goto :goto_3

    :cond_1
    const/4 v12, 0x0

    .line 512
    .local v12, "wi":I
    :goto_3
    if-eqz v12, :cond_4

    .line 514
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 515
    .local v13, "n":I
    aget-object v14, p1, v10

    .line 516
    .local v14, "info":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    if-gez v12, :cond_2

    const/4 v15, 0x1

    goto :goto_4

    :cond_2
    const/4 v15, 0x0

    :goto_4
    aget-boolean v3, p0, v10

    if-ne v15, v3, :cond_3

    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_5

    :cond_3
    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 517
    .local v3, "table":[Lorg/bouncycastle/math/ec/ECPoint;
    :goto_5
    ushr-int/lit8 v15, v13, 0x1

    aget-object v15, v3, v15

    invoke-virtual {v9, v15}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 508
    .end local v3    # "table":[Lorg/bouncycastle/math/ec/ECPoint;
    .end local v11    # "wnaf":[B
    .end local v12    # "wi":I
    .end local v13    # "n":I
    .end local v14    # "info":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 521
    .end local v10    # "j":I
    :cond_5
    if-ne v9, v5, :cond_6

    .line 523
    add-int/lit8 v7, v7, 0x1

    .line 524
    goto :goto_6

    .line 527
    :cond_6
    if-lez v7, :cond_7

    .line 529
    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 530
    const/4 v7, 0x0

    .line 533
    :cond_7
    invoke-virtual {v6, v9}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move-object v6, v3

    .line 504
    .end local v9    # "r":Lorg/bouncycastle/math/ec/ECPoint;
    :goto_6
    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 536
    .end local v8    # "i":I
    :cond_8
    if-lez v7, :cond_9

    .line 538
    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 541
    :cond_9
    return-object v6
.end method

.method static implSumOfMultipliesGLV([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 9
    .param p0, "ps"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;
    .param p2, "glvEndomorphism"    # Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "ks",
            "glvEndomorphism"
        }
    .end annotation

    .line 425
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    .line 427
    .local v1, "n":Ljava/math/BigInteger;
    array-length v2, p0

    .line 429
    .local v2, "len":I
    shl-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/math/BigInteger;

    .line 430
    .local v3, "abs":[Ljava/math/BigInteger;
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 432
    aget-object v6, p1, v4

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p2, v6}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v6

    .line 433
    .local v6, "ab":[Ljava/math/BigInteger;
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "j":I
    .local v7, "j":I
    aget-object v8, v6, v0

    aput-object v8, v3, v5

    .line 434
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "j":I
    .restart local v5    # "j":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    aput-object v8, v3, v7

    .line 430
    .end local v6    # "ab":[Ljava/math/BigInteger;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_0
    invoke-interface {p2}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-static {p2, p0, v3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;[Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 442
    :cond_1
    shl-int/lit8 v0, v2, 0x1

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 443
    .local v0, "pqs":[Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 445
    aget-object v6, p0, v4

    .line 446
    .local v6, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-static {p2, v6}, Lorg/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 447
    .local v7, "q":Lorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "j":I
    .local v8, "j":I
    aput-object v6, v0, v5

    .line 448
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "j":I
    .restart local v5    # "j":I
    aput-object v7, v0, v8

    .line 443
    .end local v6    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v7    # "q":Lorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 451
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_2
    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4
.end method

.method public static importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "c"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "p"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 129
    .local v0, "cp":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->importPoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isF2mCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z
    .locals 1
    .param p0, "c"    # Lorg/bouncycastle/math/ec/ECCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isF2mField(Lorg/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static isF2mField(Lorg/bouncycastle/math/field/FiniteField;)Z
    .locals 3
    .param p0, "field"    # Lorg/bouncycastle/math/field/FiniteField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 21
    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/math/field/PolynomialExtensionField;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z
    .locals 1
    .param p0, "c"    # Lorg/bouncycastle/math/ec/ECCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lorg/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static isFpField(Lorg/bouncycastle/math/field/FiniteField;)Z
    .locals 2
    .param p0, "field"    # Lorg/bouncycastle/math/field/FiniteField;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 32
    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;II)V
    .locals 1
    .param p0, "zs"    # [Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zs",
            "off",
            "len"
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;IILorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 139
    return-void
.end method

.method public static montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;IILorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 6
    .param p0, "zs"    # [Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "scale"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zs",
            "off",
            "len",
            "scale"
        }
    .end annotation

    .line 150
    new-array v0, p2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 151
    .local v0, "c":[Lorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x0

    aget-object v2, p0, p1

    aput-object v2, v0, v1

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    .line 156
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    add-int v3, p1, v1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 159
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 161
    if-eqz p3, :cond_1

    .line 163
    aget-object v2, v0, v1

    invoke-virtual {v2, p3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 166
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 168
    .local v2, "u":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    if-lez v1, :cond_2

    .line 170
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    add-int/2addr v1, p1

    .line 171
    .local v1, "j":I
    aget-object v4, p0, v1

    .line 172
    .local v4, "tmp":Lorg/bouncycastle/math/ec/ECFieldElement;
    aget-object v5, v0, v3

    invoke-virtual {v5, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    aput-object v5, p0, v1

    .line 173
    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 174
    .end local v1    # "j":I
    .end local v4    # "tmp":Lorg/bouncycastle/math/ec/ECFieldElement;
    move v1, v3

    goto :goto_1

    .line 176
    .end local v3    # "i":I
    .local v1, "i":I
    :cond_2
    aput-object v2, p0, p1

    .line 177
    return-void
.end method

.method public static referenceMultiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "k"
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 193
    .local v0, "x":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 194
    .local v1, "q":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 195
    .local v2, "t":I
    if-lez v2, :cond_2

    .line 197
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    move-object v1, p0

    .line 201
    :cond_0
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 203
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 204
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    invoke-virtual {v1, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 201
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    return-object v3
.end method

.method public static shamirsTrick(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "P"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "k",
            "Q",
            "l"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 121
    .local v0, "cp":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 123
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickJsf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static sumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p0, "ps"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ps",
            "ks"
        }
    .end annotation

    .line 37
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 42
    array-length v0, p0

    .line 43
    .local v0, "count":I
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 53
    aget-object v1, p0, v2

    .line 54
    .local v1, "p":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 56
    .local v3, "c":Lorg/bouncycastle/math/ec/ECCurve;
    new-array v4, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 57
    .local v4, "imported":[Lorg/bouncycastle/math/ec/ECPoint;
    aput-object v1, v4, v2

    .line 58
    const/4 v2, 0x1

    .local v2, "i":I
    goto :goto_0

    .line 48
    .end local v1    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v2    # "i":I
    .end local v3    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .end local v4    # "imported":[Lorg/bouncycastle/math/ec/ECPoint;
    :pswitch_0
    aget-object v3, p0, v2

    aget-object v2, p1, v2

    aget-object v4, p0, v1

    aget-object v1, p1, v1

    invoke-static {v3, v2, v4, v1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 46
    :pswitch_1
    aget-object v1, p0, v2

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 58
    .restart local v1    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    .restart local v2    # "i":I
    .restart local v3    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .restart local v4    # "imported":[Lorg/bouncycastle/math/ec/ECPoint;
    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    aget-object v5, p0, v2

    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v4, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v2

    .line 64
    .local v2, "endomorphism":Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    instance-of v5, v2, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v5, :cond_1

    .line 66
    move-object v5, v2

    check-cast v5, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1, v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 69
    :cond_1
    invoke-static {v4, p1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 39
    .end local v0    # "count":I
    .end local v1    # "p":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v2    # "endomorphism":Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    .end local v3    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .end local v4    # "imported":[Lorg/bouncycastle/math/ec/ECPoint;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p0, "P"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "a"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p3, "b"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "a",
            "Q",
            "b"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 76
    .local v0, "cp":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 79
    instance-of v1, v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    if-eqz v1, :cond_0

    .line 81
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 82
    .local v1, "f2mCurve":Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p2, p3}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 88
    .end local v1    # "f2mCurve":Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v1

    .line 89
    .local v1, "endomorphism":Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    instance-of v2, v1, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v2, :cond_1

    .line 91
    const/4 v2, 0x2

    new-array v3, v2, [Lorg/bouncycastle/math/ec/ECPoint;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    new-array v2, v2, [Ljava/math/BigInteger;

    aput-object p1, v2, v4

    aput-object p3, v2, v5

    move-object v4, v1

    check-cast v4, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 92
    invoke-static {v3, v2, v4}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 95
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2
.end method

.method public static validatePoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    return-object p0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
