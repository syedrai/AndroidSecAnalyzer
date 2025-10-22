.class public Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;
.source "FixedPointCombMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 16
    .param p1, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;
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

    .line 11
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 12
    .local v0, "c":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-static {v0}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    .line 14
    .local v1, "size":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 25
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/math/ec/FixedPointUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v2

    .line 26
    .local v2, "info":Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v3

    .line 27
    .local v3, "lookupTable":Lorg/bouncycastle/math/ec/ECLookupTable;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v4

    .line 29
    .local v4, "width":I
    add-int v5, v1, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    .line 31
    .local v5, "d":I
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 33
    .local v6, "R":Lorg/bouncycastle/math/ec/ECPoint;
    mul-int v7, v5, v4

    .line 34
    .local v7, "fullComb":I
    move-object/from16 v8, p2

    invoke-static {v7, v8}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v9

    .line 36
    .local v9, "K":[I
    add-int/lit8 v10, v7, -0x1

    .line 37
    .local v10, "top":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_1

    .line 39
    const/4 v12, 0x0

    .line 41
    .local v12, "secretIndex":I
    sub-int v13, v10, v11

    .local v13, "j":I
    :goto_1
    if-ltz v13, :cond_0

    .line 43
    ushr-int/lit8 v14, v13, 0x5

    aget v14, v9, v14

    and-int/lit8 v15, v13, 0x1f

    ushr-int/2addr v14, v15

    .line 44
    .local v14, "secretBit":I
    ushr-int/lit8 v15, v14, 0x1

    xor-int/2addr v12, v15

    .line 45
    shl-int/lit8 v12, v12, 0x1

    .line 46
    xor-int/2addr v12, v14

    .line 41
    .end local v14    # "secretBit":I
    sub-int/2addr v13, v5

    goto :goto_1

    .line 49
    .end local v13    # "j":I
    :cond_0
    invoke-interface {v3, v12}, Lorg/bouncycastle/math/ec/ECLookupTable;->lookup(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    .line 51
    .local v13, "add":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v6, v13}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 37
    .end local v12    # "secretIndex":I
    .end local v13    # "add":Lorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 54
    .end local v11    # "i":I
    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    return-object v11

    .line 22
    .end local v2    # "info":Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
    .end local v3    # "lookupTable":Lorg/bouncycastle/math/ec/ECLookupTable;
    .end local v4    # "width":I
    .end local v5    # "d":I
    .end local v6    # "R":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v7    # "fullComb":I
    .end local v9    # "K":[I
    .end local v10    # "top":I
    :cond_2
    move-object/from16 v8, p2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
