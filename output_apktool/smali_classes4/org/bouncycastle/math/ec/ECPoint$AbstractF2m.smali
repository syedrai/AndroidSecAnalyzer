.class public abstract Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
.super Lorg/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "x",
            "y"
        }
    .end annotation

    .line 1345
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 1346
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "x",
            "y",
            "zs"
        }
    .end annotation

    .line 1350
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 1351
    return-void
.end method


# virtual methods
.method protected satisfiesCurveEquation()Z
    .locals 13

    .line 1355
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1356
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "A":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1358
    .local v3, "B":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 1359
    .local v4, "coord":I
    const/4 v5, 0x6

    const/4 v6, 0x0

    if-ne v4, v5, :cond_3

    .line 1361
    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v5, v5, v6

    .line 1362
    .local v5, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    .line 1364
    .local v6, "ZIsOne":Z
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1367
    iget-object v7, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1368
    .local v7, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "lhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v9, v3

    .line 1369
    .local v9, "rhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v6, :cond_0

    .line 1371
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1373
    :cond_0
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    return v10

    .line 1376
    .end local v7    # "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "lhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "rhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    iget-object v7, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v7, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1378
    .local v8, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-eqz v6, :cond_2

    .line 1380
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1381
    .local v9, "lhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .local v10, "rhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    .line 1385
    .end local v9    # "lhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "rhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .local v9, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1386
    .local v10, "Z4":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v7, v2, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1388
    .local v11, "lhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v3, v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    move-object v9, v11

    move-object v10, v12

    .line 1390
    .end local v11    # "lhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v9, "lhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    .local v10, "rhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v9, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1391
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    return v11

    .line 1394
    .end local v5    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "ZIsOne":Z
    .end local v7    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "lhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "rhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1395
    .local v5, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1397
    .local v7, "lhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    packed-switch v4, :pswitch_data_0

    .line 1414
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "unsupported coordinate system"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1403
    :pswitch_0
    iget-object v8, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v6, v8, v6

    .line 1404
    .local v6, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1406
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1407
    .local v9, "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1408
    invoke-virtual {v2, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1409
    invoke-virtual {v3, v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1410
    .end local v8    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z3":Lorg/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 1400
    .end local v6    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_1
    nop

    .line 1417
    :cond_4
    :goto_1
    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1418
    .local v6, "rhs":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected satisfiesOrder()Z
    .locals 9

    .line 1423
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    .line 1424
    .local v0, "cofactor":Ljava/math/BigInteger;
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1432
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 1433
    .local v1, "N":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1434
    .local v4, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v5, v4

    check-cast v5, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1436
    .end local v1    # "N":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v4    # "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1443
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 1444
    .restart local v1    # "N":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1445
    .restart local v4    # "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    check-cast v5, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    iget-object v6, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->solveQuadraticEquation(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1446
    .local v5, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v5, :cond_2

    .line 1448
    return v3

    .line 1454
    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1455
    .local v6, "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1466
    .local v7, "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    move-object v8, v7

    check-cast v8, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1469
    .end local v1    # "N":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v4    # "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "T":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    invoke-super {p0}, Lorg/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result v1

    return v1
.end method

.method public scaleX(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "scale"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 1474
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1476
    return-object p0

    .line 1479
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1481
    .local v0, "coord":I
    packed-switch v0, :pswitch_data_0

    .line 1507
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->scaleX(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1496
    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 1499
    .local v3, "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1500
    .local v5, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1501
    .local v6, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1503
    .local v7, "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v7, v9, v4

    invoke-virtual {v8, v5, v6, v9}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1486
    .end local v1    # "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "Z":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z2":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .restart local v1    # "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1488
    .restart local v2    # "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1489
    .local v3, "X2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1491
    .local v4, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v1, v4, v6}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scaleXNegateY(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "scale"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 1514
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->scaleX(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public scaleY(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "scale"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 1519
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    return-object p0

    .line 1524
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1526
    .local v0, "coord":I
    packed-switch v0, :pswitch_data_0

    .line 1540
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->scaleY(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1531
    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "X":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1534
    .local v2, "L":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1536
    .local v3, "L2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v1, v3, v5}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public scaleYNegateX(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "scale"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 1547
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->scaleY(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1552
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    return-object p0

    .line 1558
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public tau()Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 10

    .line 1563
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    return-object p0

    .line 1568
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1569
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1571
    .local v1, "coord":I
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1573
    .local v2, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    packed-switch v1, :pswitch_data_0

    .line 1590
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1584
    :pswitch_1
    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v3, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1585
    .local v4, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1586
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    aput-object v9, v8, v5

    .line 1585
    invoke-virtual {v0, v6, v7, v8}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v5

    .line 1578
    .end local v3    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1579
    .restart local v3    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 10
    .param p1, "pow"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pow"
        }
    .end annotation

    .line 1597
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    return-object p0

    .line 1602
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1603
    .local v0, "curve":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1605
    .local v1, "coord":I
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1607
    .local v2, "X1":Lorg/bouncycastle/math/ec/ECFieldElement;
    packed-switch v1, :pswitch_data_0

    .line 1624
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1618
    :pswitch_1
    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .local v3, "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1619
    .local v4, "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v3, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1620
    invoke-virtual {v4, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    aput-object v9, v8, v5

    .line 1619
    invoke-virtual {v0, v6, v7, v8}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v5

    .line 1612
    .end local v3    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z1":Lorg/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 1613
    .restart local v3    # "Y1":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
