.class public Lorg/bouncycastle/math/ec/WNafL2RMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;
.source "WNafL2RMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 24
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

    .line 22
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v0

    .line 24
    .local v0, "minWidth":I
    const/4 v1, 0x1

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v3

    .line 25
    .local v3, "info":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 26
    .local v4, "preComp":[Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 27
    .local v5, "preCompNeg":[Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v6

    .line 29
    .local v6, "width":I
    move-object/from16 v7, p2

    invoke-static {v6, v7}, Lorg/bouncycastle/math/ec/WNafUtil;->generateCompactWindowNaf(ILjava/math/BigInteger;)[I

    move-result-object v8

    .line 31
    .local v8, "wnaf":[I
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 33
    .local v9, "R":Lorg/bouncycastle/math/ec/ECPoint;
    array-length v10, v8

    .line 39
    .local v10, "i":I
    const v11, 0xffff

    if-le v10, v1, :cond_2

    .line 41
    add-int/lit8 v10, v10, -0x1

    aget v12, v8, v10

    .line 42
    .local v12, "wi":I
    shr-int/lit8 v13, v12, 0x10

    .local v13, "digit":I
    and-int v14, v12, v11

    .line 44
    .local v14, "zeroes":I
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 45
    .local v15, "n":I
    if-gez v13, :cond_0

    move-object/from16 v16, v5

    goto :goto_0

    :cond_0
    move-object/from16 v16, v4

    .line 48
    .local v16, "table":[Lorg/bouncycastle/math/ec/ECPoint;
    :goto_0
    const/16 v17, 0x1

    shl-int/lit8 v1, v15, 0x2

    const v18, 0xffff

    shl-int v11, v17, v6

    if-ge v1, v11, :cond_1

    .line 50
    invoke-static {v15}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    .line 53
    .local v1, "highest":I
    sub-int v11, v6, v1

    .line 54
    .local v11, "scale":I
    add-int/lit8 v19, v1, -0x1

    shl-int v19, v17, v19

    xor-int v19, v15, v19

    .line 56
    .local v19, "lowBits":I
    add-int/lit8 v20, v6, -0x1

    shl-int v20, v17, v20

    add-int/lit8 v20, v20, -0x1

    .line 57
    .local v20, "i1":I
    shl-int v21, v19, v11

    add-int/lit8 v21, v21, 0x1

    .line 58
    .local v21, "i2":I
    ushr-int/lit8 v17, v20, 0x1

    move/from16 v22, v0

    .end local v0    # "minWidth":I
    .local v22, "minWidth":I
    aget-object v0, v16, v17

    ushr-int/lit8 v17, v21, 0x1

    move/from16 v23, v1

    .end local v1    # "highest":I
    .local v23, "highest":I
    aget-object v1, v16, v17

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 60
    .end local v9    # "R":Lorg/bouncycastle/math/ec/ECPoint;
    .local v0, "R":Lorg/bouncycastle/math/ec/ECPoint;
    sub-int/2addr v14, v11

    .line 63
    .end local v11    # "scale":I
    .end local v19    # "lowBits":I
    .end local v20    # "i1":I
    .end local v21    # "i2":I
    .end local v23    # "highest":I
    goto :goto_1

    .line 66
    .end local v22    # "minWidth":I
    .local v0, "minWidth":I
    .restart local v9    # "R":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_1
    move/from16 v22, v0

    .end local v0    # "minWidth":I
    .restart local v22    # "minWidth":I
    ushr-int/lit8 v0, v15, 0x1

    aget-object v0, v16, v0

    .line 69
    .end local v9    # "R":Lorg/bouncycastle/math/ec/ECPoint;
    .local v0, "R":Lorg/bouncycastle/math/ec/ECPoint;
    :goto_1
    invoke-virtual {v0, v14}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .end local v0    # "R":Lorg/bouncycastle/math/ec/ECPoint;
    .restart local v9    # "R":Lorg/bouncycastle/math/ec/ECPoint;
    goto :goto_2

    .line 39
    .end local v12    # "wi":I
    .end local v13    # "digit":I
    .end local v14    # "zeroes":I
    .end local v15    # "n":I
    .end local v16    # "table":[Lorg/bouncycastle/math/ec/ECPoint;
    .end local v22    # "minWidth":I
    .local v0, "minWidth":I
    :cond_2
    move/from16 v22, v0

    const v18, 0xffff

    .line 72
    .end local v0    # "minWidth":I
    .restart local v22    # "minWidth":I
    :goto_2
    if-lez v10, :cond_4

    .line 74
    add-int/lit8 v10, v10, -0x1

    aget v0, v8, v10

    .line 75
    .local v0, "wi":I
    shr-int/lit8 v1, v0, 0x10

    .local v1, "digit":I
    and-int v11, v0, v18

    .line 77
    .local v11, "zeroes":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 78
    .local v12, "n":I
    if-gez v1, :cond_3

    move-object v13, v5

    goto :goto_3

    :cond_3
    move-object v13, v4

    .line 79
    .local v13, "table":[Lorg/bouncycastle/math/ec/ECPoint;
    :goto_3
    ushr-int/lit8 v14, v12, 0x1

    aget-object v14, v13, v14

    .line 81
    .local v14, "r":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v9, v14}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 82
    invoke-virtual {v9, v11}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 83
    .end local v0    # "wi":I
    .end local v1    # "digit":I
    .end local v11    # "zeroes":I
    .end local v12    # "n":I
    .end local v13    # "table":[Lorg/bouncycastle/math/ec/ECPoint;
    .end local v14    # "r":Lorg/bouncycastle/math/ec/ECPoint;
    goto :goto_2

    .line 85
    :cond_4
    return-object v9
.end method
